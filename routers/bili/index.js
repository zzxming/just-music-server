const { staticMusic, getAudioFromDir } = require("../music/local/utils");
const router = require("express").Router();
const { biliAudioPathRelative, musicPath } = require("../../config");
const { getBiliVideoInitialState, getAudio } = require('./utils');


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



// 如果视频带分p, 获取会有问题
// 修改获取的singer, 当前是singer是up主, 如果是联合投稿再加上"演唱"





module.exports = {
    router
}
