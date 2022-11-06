
const axios = require("axios");
const cheerio = require("cheerio");
const { dbQuery } = require("../../tools");

/** 根据 bvid 获取音频信息 */
async function getBiliVideoInitialState(bvid) {
    return new Promise((resolve, reject) => {
        axios.get(`https://www.bilibili.com/video/${bvid}`)
        .then(async data => {
            let initialState = parseHTMLGetInitalState(data.data);
            if (!initialState) {
                reject('视频state未找到');
                return;
            }
            
            // console.log(initialState)
            let bvid, staff, cover, pages, pubdate;
            if (initialState.videoData) {
                bvid = initialState.videoData.bvid;
                // 联合投稿有 videoData.staff, 个人投稿只有 upData
                staff = initialState.videoData.staff || [initialState.upData];
                cover = initialState.videoData.pic;
                pages = initialState.videoData.pages;
                pubdate = initialState.videoData.pubdate * 1000;
            }
            else {
                bvid = initialState.videoInfo.bvid;
                staff = initialState.videoStaffs;
                cover = initialState.sectionEpisodes.find(info => info.bvid === bvid).cover;
                // cover =  await getVideoCover(bvid);
                //     if (!cover) {
                //         console.log(`视频${bvid}封面未找到`);
                //         cover = '';
                //     }
                pages = initialState.videoInfo.pages;
                pubdate = initialState.videoInfo.pubdate * 1000;
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
            // console.log(initialState)

            let datas = pages.map(item => {
                return {
                    type: 'bili', bvid,  singers, pubdate,
                    cid: item.cid,
                    title: item.part,
                    album: item.part,
                    duration: item.duration * 1000,
                    cover: item.first_frame ?? cover,
                }
            })
            
            resolve(datas)
        })
        .catch(err => {
            console.log(err)
            console.log(`get bili video https://www.bilibili.com/video/${bvid} error`, {
                errtxt: err.code,
                errno: err.errno,
                response: err.response
            })
            reject({message: '视频没找到', status: err.response?.status ?? 404})
        });
    })
}
/** 获取 playInfo */
async function getPlayinfo(bvid, cid) {
    if (!bvid || !cid) {
        return;
    }
    
    return await axios.get(`https://api.bilibili.com/x/player/playurl?cid=${cid}&bvid=${bvid}&fnval=4048`)
    .then(response => response.data.data)
    .catch(e => {
        // console.log(e.response.data)
        console.log(`get video ${bvid} cid: ${cid} playinfo error`, {
            code: e.code,
            status: e.response.status,
            statusText: e.response.statusText,
            data: e.response.data
        })
        let result = {}
        result.status = e.response.status ?? 400;
        result.message = e.response.message ?? '网络错误';
        result.code = e.code ?? 'ECONNRESET';
        result.errno = e.errno ?? '-4077';
        return Promise.reject(result)
    });
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
            console.log('initialState parse error', e)
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
            console.log('bili cover error', e);
            reject(e);
        });
    })
}
/**
 * 根据 url 获取 bilibili 的音频
 * @param {string} src 音频 src 路径
 * @param {string} bv 视频 bv 号
 * @returns 
 */
async function getAudio(playInfo, req, res) {
    let src = playInfo.dash.audio[0].baseUrl;
    let range = req.headers.range
    if (!range) {
        range = 'bytes=0';
    }
    let headerRange = range.split('bytes=')[1];
    let [startRange] = headerRange.split('-').map(Number);
    return new Promise(async (resolve, reject) => {
        await axios.get(src, {
            headers: {
                referer: `https://www.bilibili.com/video`,
                range: `bytes=${startRange}-`
            },
            responseType: 'stream'
        })
        .then(data => {
            // console.dir(data.headers)
            // content-range 的结束 range 值不能超出 content-length, 否则会导致音频加载不能播放
            res.set({
                'Content-Length': data.headers['content-length'],
                'Content-Type': 'video/mp4',
                "Accept-Ranges": "bytes",
                'Content-Range': data.headers['content-range'],
            })
            res.status(206);

            let result = Buffer.from([]);
            data.data.on('data', (chunk) => {
                result = Buffer.concat([result, chunk])
            });
            data.data.on('end', () => {
                res.end(result)
            });
        })
        .catch(e => {
            console.log('bili video get error', e);
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




module.exports = {
    getBiliVideoInitialState,
    getPlayinfo,
    parseHTMLGetInitalState,
    getVideoCover,
    getAudio,
    saveAudio
}
