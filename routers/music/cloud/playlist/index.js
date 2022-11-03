const router =  require("express").Router();
const { personalized, top_playlist_highquality, createRequest, playlist_track_all, playlist_detail } = require("NeteaseCloudMusicApi");


/** 每日随机推荐, limit 为歌单数 */
router.get('/personalized', (req, res) => {
    const { limit } = req.query;
    
    personalized({limit})
    .then(response => {
        // console.log(response)
        res.send({code: 1, data: response.body.result})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
})
/** 精选歌单 */
router.get('/highquality', (req, res) => {
    const { cat, limit, before } = req.query;
    top_playlist_highquality({
        cat, // 全部,华语,欧美,韩语,日语,粤语,小语种,运动,ACG,影视原声,流行,摇滚,后摇,古风,民谣,轻音乐,电子,器乐,说唱,古典,爵士
        limit: limit || 10,
        before,     // 上一首精选歌单的updatetime
    }, createRequest)
    .then(response => {
        // console.log(response)
        res.send({
            code: 1, 
            data: {
                more: response.body.more,
                msg: response.body.msg,
                lasttime: response.body.lasttime,
                playlist: response.body.playlists, 
            }
        })
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
});
/** 获取歌单内所有歌曲 */
router.get('/track', (req, res) => {
    let { id, cookie } = req.query;
    if (Object.prototype.toString.call(id) === '[object Array]') {
        id = id[id.length - 1]
    }
    let headerCookie = undefined;
    if (req.headers.cookie) {
        headerCookie = req.headers.cookie.split('; ').join(';');
    }

    // 等几天之后再用这个 cookie 去请求喜欢的音乐歌单, 看看是不是能够一直用, 这个写的保存日期到 11月8号7:29:40
    // 登录才能查看的歌单需要 cookie 字段 MUSIC_U=8f069545eb4a429a5db0f274c047d1a85f78183878bee4c4f5f14f96832a9919993166e004087dd38514f7b65bd84edccbe961c68eef45197b4755491d668b41484a2707848abb74a89fe7c55eac81f3;

    playlist_track_all({id, cookie: headerCookie ?? cookie})
    .then(response => {
        // console.log(response)
        const { code, songs, message, privileges } = response.body;
        if (code === 200) {
            let data = songs.map((song, index) => ({...song, st: privileges[index].st}))
            res.send({code: 1, data });
            return;
        }
        res.send({code: 0, message})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body?.msg?.errno,
                code: e.body?.msg?.code,
                message: e.body?.message
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
});
/** 获取歌单信息 */
router.get('/detail', (req, res) => {
    const { id } = req.query;
    // https://music.163.com/playlist?id=373955762
    playlist_detail({id})
    .then(response => {
        // console.log(response)
        const { code, playlist, message } = response.body;
        if (code === 200) {
            res.send({
                code: 1, 
                data: { 
                    ...playlist 
                }
            });
            return;
        }
        res.send({code, error: response.body, message})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
});

module.exports = {
    router
}

