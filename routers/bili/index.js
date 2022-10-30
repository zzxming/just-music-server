
const router = require("express").Router();
const { getBiliVideoInitialState, getAudio, getPlayinfo } = require('./utils');


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
        res.status(e.status).send({code: 0, message: e.message, data: []});
    })
});
/** 保存并返回 bili 音频 */
router.get('/audio', async (req, res) => {
    const { query } = req;
    const { bvid, cid } = query;

    if (!bvid || !cid) {
        res.status(401).send({code: 0, message: '参数bv缺失'})
        return;
    }


    let playInfo = await getPlayinfo(bvid, cid)
    .catch(e => {
        res.status(404).send({code: 0, message: e, data: []});
        return;
    });

    if (playInfo) {
        await getAudio(playInfo, req, res)
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



// 如果视频带分p, 获取会有问题




module.exports = {
    router
}
