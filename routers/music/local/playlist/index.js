const { dbQuery } = require('../../../../tools');
const router =  require("express").Router();
const { getCloudMusicInfoWithId } = require('../../cloud/index');
const { getMusicInfoWithId, getSingerByIds } = require('../utils');

// 上传时如果有 bilibili 的音频, type='bili', id 是 bv 号, 导致无法赋值到数据库的 id 中, 会报错
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
router.get('/track', async (req, res) => {
    const { id } = req.query;

    let playlistResult = await dbQuery(`select music_id id, music_type type from playlist_map where playlist_id = '${id}'`)
    .catch(err => {
        console.log(err);
        res.status(500).send({
            code: 0,
            message: '数据库错误'
        });
        return;
    });
    if (!playlistResult) return;

    
    let musicResult = await Promise.all(playlistResult.map(musicInfo => {
        if (musicInfo.type === 'local') {
            return getMusicInfoWithId(musicInfo.id)
        }
        else {
            return getCloudMusicInfoWithId(musicInfo.id+'')
        }
    }));

    let data = playlistResult.map((info, index) => ({type: info.type, ...musicResult[index]}))

    res.send({code: 1, data});
});
router.get('/detail', (req, res) => {
    const { id } = req.query;

    dbQuery(`
        select 
            u.*,
            p.*,
            p.playlist_id id,
            p.playlist_title title
        from 
            user u,
            (select * from playlist where playlist_id = '${id}') p
        where u.user_id = p.creator_id
    `)
    .then(response => {
        // console.log(response)
        let data = response[0];
        delete data.creator_id;
        const userInfo = {
            userId: data.user_id,
            name: data.user_name,
            avatarUrl: data.avatar
        }
        delete data.user_id;
        delete data.user_name;
        delete data.avatar;

        res.send({
            code: 1,
            data: {
                type: 'local',
                ...data,
                creator: userInfo
            }
        });
    })
    .catch(e => {
        console.log(e)
        res.status(500).send({
            code: 0,
            message: '数据库错误'
        })
    })
});
router.get('/delete', async (req, res) => {
    const { id } = req.query;
    await dbQuery(`delete from playlist_map where playlist_id = '${id}'`)
    await dbQuery(`delete from playlist where playlist_id = '${id}'`)
    res.send({
        code: 1,
        message: '删除成功'
    })
});
router.get('/random', (req, res) => {
    const { limit = 10 } = req.query;

    dbQuery(`
        SELECT
            u.*,
            p.*
        from 
            user u,
            (
                SELECT * FROM playlist 
                WHERE 
                        playlist_id >= (
                                (SELECT MAX(playlist_id) FROM playlist)-(SELECT MIN(playlist_id) FROM playlist)
                        ) * RAND() + (SELECT MIN(playlist_id) FROM playlist)
                LIMIT ${limit}
            ) p
        where u.user_id = p.creator_id
    `)
    .then(response => {
        
        let data = response.map(info => {
            let creator = {
                userId: info.user_id,
                name: info.user_name,
                avatarUrl: info.avatar
            }
            let id = info.playlist_id;
            let title = info.playlist_title;
            delete info.user_id
            delete info.user_name
            delete info.avatar
            delete info.playlist_id
            delete info.playlist_title
            delete info.creator_id
            return {
                id, 
                title,
                creator,
                ...info, 
            }
        })

        res.send({ 
            code: 1,
            data
        })
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
