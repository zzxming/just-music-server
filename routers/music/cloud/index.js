const { createRequest, song_url, song_detail } = require("NeteaseCloudMusicApi");
const router =  require("express").Router();

router.use('/playlist', require('./playlist').router);

router.get('/info', (req, res) => {
    const { ids } = req.query;
    // https://music.163.com/song?id=569105662
    if (!ids) {
        res.send({code: 0, message: '参数错误'})
        return;
    }
    song_detail({ids})
    .then(response => {
        // console.log(response)
        if (response.body.songs) {
            res.send({code: 1, data: response.body.songs[0]});
            return;
        }
        res.send({code: 0, message: '参数错误'});
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
    })
});
router.get('/:id', (req, res) => {
    const { id } = req.params;
    song_url({
        id,
        cookie: {}
    }, createRequest)
    .then(response => {
        // console.log(response)
        res.send({
            code: 1, 
            data: {
                src: response.body.data[0].url
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
    })
});


module.exports = {
    router
}
