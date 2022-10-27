const path = require("path");
const { dbQuery } = require('../../../../tools');
const router =  require("express").Router();


router.post('/create', (req, res) => {
    const { title, creator_id = 1, description, songs, cover } = req.body;

    if (!title) {
        res.send({
            code: 0,
            message: '参数错误'
        })
        return;
    }
    
    dbQuery(`
        insert into playlist 
            (playlist_title, creator_id${!!description ? ', description': ''}${!!cover ? ', cover' : ''}) 
        values 
            ('${title}', '${1}'${!!description ? `, '${description}'` : ''}${!!cover ? `, '${cover}'` : ''})
    `)
    .then(response => {
        let playlistId = response.insertId;
        for (let i = 0; i < songs.length; i++) {
            const { type, id } = songs[i];
            dbQuery(`insert into playlist_map (playlist_id, music_id, music_type) values ('${playlistId}', '${id}', '${type}') `)
        }
        res.send({code: 1, message: '创建成功'});
    })
    .catch(e => {
        console.log(e)
        res.status(500).send({
            code: 0,
            message: '数据库错误'
        })
    })
});

module.exports = {
    router
}
