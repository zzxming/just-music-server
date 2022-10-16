const router =  require("express").Router();
const { top_playlist_highquality, createRequest, playlist_track_all, playlist_detail } = require("NeteaseCloudMusicApi");


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
            message: e.message || e.code || e.body.msg.code
        })
    });
});
router.get('/track', (req, res) => {
    const { id } = req.query;

    playlist_track_all({id})
    .then(response => {
        // console.log(response)
        const { code, songs, message } = response.body;
        if (code === 200) {
            res.send({code: 1, data: { songs }});
            return;
        }
        res.send({code: 0, message})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.msg.code
        })
    });
});
router.get('/detail', (req, res) => {
    const { id } = req.query;
    // https://music.163.com/playlist?id=373955762
    playlist_detail({id})
    .then(response => {
        console.log(response)
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
        res.send({code: 0, error: response.body, message})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.msg.code
        })
    });
});

module.exports = {
    router
}

