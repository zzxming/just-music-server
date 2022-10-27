const axios = require("axios");
const cheerio = require("cheerio");
const fs = require("fs");
const path = require("path");
const { dbQuery } = require("../../tools");
const { staticMusic, getAudioFromDir, musicPath } = require("../music/local");
const router = require("express").Router();
const { biliAudioPathAbsolute, biliAudioPathRelative } = require("../../config");

/** 获取 bili 音频数据 */
router.get('/info', async (req, res) => {
    const { query } = req;
    const { bv } = query;
    if (!bv) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }

    getBiliVideoInitialState(bv)
    .then(response => {
        // console.log(response)
        res.send({code: 1, data: response});
    })
    .catch(e => {
        console.log(e)
        res.send(e);
    })
});
/** 保存并返回 bili 音频 */
router.get('/audio', async (req, res) => {
    const { query } = req;
    const { bv } = query;

    if (!bv) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }
    // 本地已有, res 发送音频文件
    if ((await getAudioFromDir(musicPath)).includes(`${bv}.mp3`)) {
        await staticMusic(biliAudioPathRelative + `/${bv}.mp3`, req, res);
        return;
    }

// BV1tG4y1B7xU, 合集类

// BV1KJ411C7qF, 单品投稿
    let initialState = await getBiliVideoInitialState(bv)
    .catch(e => {
        console.log(e)
        res.status(404).send(e);
        return;
    })

    if (initialState) {
        await getAudio(initialState, req, res)
        .catch(e => {
            res.status(500).send({
                code: 0, 
                error: {
                    errno: e.message ?? e.body.msg ?? undefined,
                }, 
                message: e.message || e.code || e.body.message || e.body.msg.code
            })
        });
    }
    
});
/** 无 reference 获取 bili 资源文件 */
// router.get('/static', (req, res) => {
//     const { url } = req.query;
//     axios.get(url)
//     .then(response => {
//         res.send(response)
//     })
//     .catch(err => {
//         console.log('get bili static error', err)
//         res.status(500).send({code: 0, message: '资源没找到'})
//     });
// })


/** 根据 bvid 获取音频信息 */
async function getBiliVideoInitialState(bvid) {
    return new Promise((resolve, reject) => {
        axios.get(`https://www.bilibili.com/video/${bvid}`)
        .then(async data => {
            let initialState = parseHTMLGetInitalState(data.data);
            if (!initialState) {
                reject({code: 0, message: '视频state未找到'})
                return;
            }
            let bvid, cid, title, staff, cover;
            if (initialState.videoData) {
                bvid = initialState.videoData.bvid;
                cid = initialState.videoData.cid;
                title = initialState.videoData.title;
                // 联合投稿有 videoData.staff, 个人投稿只有 upData
                staff = initialState.videoData.staff || [initialState.upData];
                cover = initialState.videoData.pic;
            }
            else {
                bvid = initialState.videoInfo.bvid;
                cid = initialState.videoInfo.cid;
                title = initialState.videoInfo.title;
                staff = initialState.videoStaffs;
                cover =  await getVideoCover(bvid);
                if (!cover) {
                    console.log(`视频${bvid}封面未找到`);
                    cover = '';
                }
            }
            // console.log(bvid, cid)
            let singers = [];
            if (staff.length < 2) {
                staff.map((item) => {
                    singers.push({name: item.name, id: item.mid})
                })
            }
            else {
                staff.map((item) => {
                    if (item.title === '演唱' || item.title === 'UP主') {
                        singers.push({name: item.name, id: item.mid})
                    }
                })
            }
            // console.log(singer)
            let playinfo = await getPlayinfo(bvid, cid);
            if (!playinfo) {
                res.status(404).send({code: 0, message: '视频没找到'});
                return;
            }
            // res.send(playinfo)
    
            let src = playinfo.dash.audio[0].baseUrl;
            let duration = playinfo.timelength;
            resolve({
                bvid, cid, title, singers, cover, src, duration, album: title
            })
        })
        .catch(err => {
            console.log('get bili video error', {
                code: err.code,
                response: err
            })
            reject({code: 0, message: '视频没找到'})
        });
    })
}
/** 获取 playInfo */
async function getPlayinfo(bvid, cid) {
    if (!bvid || !cid) {
        return;
    }
    
    return await axios.get(`https://api.bilibili.com/x/player/playurl?cid=${cid}&bvid=${bvid}&fnval=4048`).then(response => response.data.data);
}
/** 解析 html 获取 initialState, 失败返回 null  */
function parseHTMLGetInitalState(html) {
    let $ = cheerio.load(html);
    let scripts = $('script');
    let initialState = null;
    for (let i = 0; i < scripts.length; i++) {
        try {
            let arr = scripts[i].children[0]?.data?.split('window.__INITIAL_STATE__=');
            if (arr?.length === 2) {
                initialState = arr[1].split(';(function(){var s;(s=document.currentScript||document.scripts[document.scripts.length-1]).parentNode.removeChild(s);}());')[0]
                break;
            }
        }
        catch(e) {
            console.log(e, 'initialState parse error')
            return null;
        }
    }
    // console.log(initialState)
    return JSON.parse(initialState)
}
/** 获取视频封面路径 */
function getVideoCover(bvid) {
    return new Promise(async (resolve, reject) => {
        await axios.get(`https://api.bilibili.com/x/web-interface/view?bvid=${bvid}`)
        .then(response => {
            if (response.data.code === 0) {
                resolve(response.data.data.pic);
            }
            else {
                reject('');
            }
        })
        .catch(e => {
            console.log(e);
            reject(e);
        });
    })
}
/**
 * 根据 url 下载 bilibili 的音频
 * @param {string} src 音频 src 路径
 * @param {string} bv 视频 bv 号
 * @returns 
 */
async function getAudio({src, bvid, title, singers, cover, duration}, req, res) {
    // console.log(bvid)
    return new Promise(async (resolve, reject) => {
        await axios.get(src, {
            headers: {
                // cookie: "_uuid=54E7E79E-E228-C46F-1548-95BF96DE8EC414097infoc; buvid3=F80E042E-7EE0-D0E7-6EE1-E54392E1736214090infoc; b_nut=1662371114; buvid_fp_plain=undefined; hit-dyn-v2=1; LIVE_BUVID=AUTO4016623711373480; CURRENT_BLACKGAP=0; rpdid=|(YYR)R|muu0J'uYYkJ~umul; nostalgia_conf=-1; i-wanna-go-back=-1; b_ut=5; CURRENT_QUALITY=64; DedeUserID=12640044; DedeUserID__ckMd5=9923fd290277cb2b; buvid4=E8641656-28DE-3530-ED92-211189CE28EB83733-022072420-o%2FFdW6FI6sz7iaOIokl5SQ%3D%3D; fingerprint3=2418f49739abe6d422ee904f4112b407; fingerprint=ffce548d57a0467b98df1783ced52cb5; PVID=1; buvid_fp=ffce548d57a0467b98df1783ced52cb5; bp_video_offset_12640044=714153529921503400; SESSDATA=9bb5b22b%2C1680921476%2Ca1729%2Aa1; bili_jct=6cb7ccbc486662d4442dbc7f2a704951; sid=6p6641o3; b_lsid=7D324F73_183C175DE1E; CURRENT_FNVAL=4048",
                referer: `https://www.bilibili.com/video/${bvid}`,
            },
            responseType: 'stream'
        })
        .then(data => {
            // 创建写入流写入本地
            let writeStream = fs.createWriteStream(path.resolve(biliAudioPathAbsolute, `${bvid}.mp3`), { encoding: "binary" })
            data.data.pipe(writeStream);
            data.data.on('close', async () => {
                writeStream.close();
                // 保存至数据库并返回对应的music_id
                let music_id = await saveAudio(biliAudioPathRelative + `/${bvid}.mp3`, { title, singers, cover, duration })
                if (!music_id) {
                    res.status(500).send({code: 0, message: '数据保存出现错误'})
                    return;
                }
                await staticMusic(music_id, req, res);
                console.log(`The file name ${bvid} has been saved!`);
                resolve({code: 1});
            })

        })
        .catch(e => {
            console.log(e);
            reject(e);
        })
    })
}
/**
 * 保存音频
 * @param {string} path music path
 * @param {string} param1 title, singer
 */
async function saveAudio(path, { title, singers, cover, duration }) {
    if (!title || !singers) {
        console.log(`title or singer not found`)
        return null;
    }
    // console.log(path, title, singer)
    // 歌手保存并返回id
    let singersId = await Promise.all(singers.map(async ({name: singer_name}) => {
        let singerData = await dbQuery(`select * from singer where singer_name = '${singer_name}'`)
        if (singerData.length > 0) {
            return {
                insertId: singerData[0].singer_id
            }
        }

        let result = await dbQuery(`insert into singer (singer_name) values ('${singer_name}')`)
        .catch(e => {
            console.log(`insert singer error`, e);
        });
        // console.log(result)
        dbQuery(`insert into singer_map (singer_id, singer_name) values ('${result.insertId}', '${singer_name}')`)
        .catch(e => {
            console.log(`insert singer_map error`, e);
        });
        return result
    }))
    .then(data => {
        return data.map(result => result.insertId);
    })
    .catch(e => {
        console.log(`insert all singer error`, e)
    });
    // console.log(singersId)

    return await dbQuery(`
        insert into 
            music 
        (music_name, singer_id, music_url, music_cover, album, duration) 
        values 
        ('${title}', '${singersId.join(',')}', '${path}', '${cover}', '${title}', '${duration}')
    `)
    .then(response => {
        // console.log(response)
        return response.insertId
    });
}




// 如果视频带分p, 获取会有问题
// 修改获取的singer, 当前是singer是up主, 如果是联合投稿再加上"演唱"


















module.exports = {
    router
};

/** 解析 html 获取 playinfo, 失败返回 null */
function parseHTMLGetPlayinfo(html) {
    let $ = cheerio.load(html)
    let playinfoStr = $('script')[2].children[0].data.split('window.__playinfo__=')[1];
    let title = $('title')[0].children[0].data;
    try {
        return {
            title,
            playinfo: JSON.parse(playinfoStr),
        }
    } 
    catch(e) {
        console.log(`playinfo parse error`)
        console.log(e)
        return null;
    }
}