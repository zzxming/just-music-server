const axios = require("axios");
const cheerio = require("cheerio");
const fs = require("fs");
const path = require("path");
const { dbQuery } = require("../../tools");
const { staticMusic, getAudioFromDir, musicPath } = require("../music");
const router = require("express").Router();

const biliAudioPathAbsolute = 'D:/cloud_music/bili_audio';
const biliAudioPathRelative = 'bili_audio';

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



    // 本地没有请求视频地址获取 html 解析 playinfo
    // await axios.get(`https://www.bilibili.com/video/${bv}`)
    // .then(async data => {
    //     let { title, playinfo } = parseHTMLGetPlayinfo(data.data);
    //     if (!playinfo) {
    //         res.send({code: 0, message: 'playinfo parse error'})
    //         return;
    //     }
    //     let audioUrl = playinfo.data.dash.audio.map(item => item.baseUrl)
        
    //     await getAudio(audioUrl[0], bv, title, req, res)
    // })
    // .catch(err => {
    //     console.log('get bili video error', err)
    //     res.send({code: 0, message: '视频没找到'})
    // });





    await axios.get(`https://www.bilibili.com/video/${bv}`)
    .then(async data => {
        let initialState = parseHTMLGetInitalState(data.data)
        let { bvid, cidMap, videoData: { title, staff } } = initialState;
        let cid, singer;
        if (!bvid || !cidMap) {
            bvid = initialState.videoInfo.bvid;
            cid = initialState.videoInfo.cid;
            title = initialState.videoInfo.title;
            singer = initialState.videoInfo.upName;
        }
        else {
            cid = cidMap[bvid].cids['1'];
            singer = staff[0].name;
        }
        // console.log(bvid, cid)
        let playinfo = await getPlayinfo(bvid, cid);
        if (!playinfo) {
            res.status(404).send({code: 0, message: '视频没找到'});
            return;
        }
        let url = playinfo.dash.audio[0].baseUrl;
        // console.log(playinfo.dash.audio[0].baseUrl)
        await getAudio({url, bvid, title, singer}, req, res)
        .catch(e => {
            res.status(500).send({
                code: 0, 
                error: {
                    errno: e.body.msg.errno,
                    code: e.body.msg.code,
                }, 
                message: e.message || e.code || e.body.msg.code
            })
        })
    })
    .catch(err => {
        console.log('get bili video error', err)
        res.status(500).send({code: 0, message: '视频没找到'})
    });


    
});
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
            let arr = scripts[i].children[0].data.split('window.__INITIAL_STATE__=');
            if (arr.length === 2) {
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
/**
 * 根据 url 下载 bilibili 的音频
 * @param {string} url 音频 url 路径
 * @param {string} bv 视频 bv 号
 * @returns 
 */
async function getAudio({url, bvid, title, singer}, req, res) {
    // console.log(bvid)
    return new Promise(async (resolve, reject) => {
        await axios.get(url, {
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
                let music_id = await saveAudio(biliAudioPathRelative + `/${bvid}.mp3`, { title, singer })
                if (!music_id) {
                    res.status(500).send({code: 0, message: '数据保存出现错误'})
                    return;
                }
                await staticMusic(music_id, req, res);
                console.log('The file name ${bvid} has been saved!');
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
async function saveAudio(path, { title, singer }) {
    if (!title || !singer) {
        console.log(`title or singer not found`)
        return null;
    }
    // console.log(path, title, singer)
    return await dbQuery(`insert into music (music_name, singer_name, music_url) values ('${title}', '${singer}', '${path}')`)
    .then(response => {
        // console.log(response)
        return response.insertId
    })
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