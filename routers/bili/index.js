
const router = require("express").Router();
const { getBiliVideoInitialState, getAudio, getPlayinfo, parseHTMLGetInitalState } = require('./utils');
const axios = require("axios");


router.get('/playlist', (req, res) => {
    let { bv } = req.query;
    if (!bv) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }

    axios.get(`https://www.bilibili.com/video/${bv}`)
    .then(async data => {
        let initialState = parseHTMLGetInitalState(data.data);
        if (!initialState) {
            return Promise.reject({
                message: '视频state未找到'
            });
        }
        // console.log(initialState)
        
        let bvid, cover, title, pages, pubdate, creator, description, createTime, trackCount, playCount;
        if (initialState.videoData) {
            title = initialState.videoData.title;
            bvid = initialState.videoData.bvid;
            cover = initialState.videoData.pic;
            pages = initialState.videoData.pages;
            pubdate = initialState.videoData.pubdate * 1000;
            description = initialState.videoData.desc;
            createTime = initialState.videoData.ctime * 1000;
            trackCount = initialState.videoData.pages.length;
            playCount = initialState.videoData.stat.view;
            creator = {
                userId: initialState.videoData.owner.mid,
                name: initialState.videoData.owner.name,
                avatarUrl: initialState.videoData.owner.face
            }
        }
        else {
            title = initialState.videoInfo.title;
            bvid = initialState.videoInfo.bvid;
            cover = initialState.sectionEpisodes.find(info => info.bvid === bvid).cover;
            // cover =  await getVideoCover(bvid);
            // if (!cover) {
            //     console.log(`视频${bvid}封面未找到`);
            //     cover = '';
            // }
            pages = initialState.videoInfo.pages;
            pubdate = initialState.videoInfo.pubdate * 1000;
            description = initialState.videoInfo.desc;
            createTime = initialState.videoInfo.pubdate * 1000;
            trackCount = initialState.videoInfo.pages.length;
            playCount = initialState.videoInfo.viewCount;
            creator = {
                userId: initialState.videoStaffs[0].mid,
                name: initialState.videoStaffs[0].name,
                avatarUrl: initialState.videoStaffs[0].face
            }
        }


        res.send({
            code: 1,
            data: {
                type: 'bili',
                id: bvid,
                title,
                cover,
                trackCount,
                updateTime: createTime,
                createTime,
                description,
                playCount,
                creator
            }
        })
    })
    .catch(e => {
        console.log(e, 'info error')
        res.status(e.status ?? 400).send({code: 0, message: e.message, data: []});
    })
})
/** 获取 bili 音频数据 */
router.get('/info', (req, res) => {
    let { bv } = req.query;
    if (!bv) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }

    getBiliVideoInitialState(bv)
    .then(response => {
        // console.log(response)
        let data = response;
      
        res.send({code: 1, data});
    })
    .catch(e => {
        // console.log(e, 'info')
        res.status(e.status ?? 400).send({code: 0, message: e.message, data: []});
    })
});
/** 保存并返回 bili 音频 */
router.get('/audio', async (req, res) => {
    const { query } = req;
    const { bvid, cid, partialrange } = query;

    if (!bvid || !cid) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }

    let playInfo = await getPlayinfo(bvid, cid)
    .catch(e => {
        console.log('get bilibili playurl error', e)
        res.status(e.status).send({
            code: 0, 
            error: e.code,
            message: e.message
        })
    });
    if (!playInfo) {
        return;
    }

    await getAudio(playInfo, partialrange, req, res)
    .catch(e => {
        console.log('get bilibili audio error', e)
        res.status(503).send({
            code: 0, 
            error: {
                errno: e.message ?? e.body.msg ?? undefined,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
    
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



// 如果视频带分p, 获取会有问题




module.exports = {
    router
}
