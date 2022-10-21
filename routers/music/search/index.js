const router =  require("express").Router();
const { cloudsearch } = require('NeteaseCloudMusicApi');
const { dbQuery } = require('../../../tools');


router.get('/local', async (req, res) => {
    let { kw: keywords, t: type, limit, offset } = req.query;
    if (!offset) offset = 10;
    if (!limit) limit = 1;
    dbQuery(`
        select
            m.* 
        from 
            music m, singer s
        where 
            m.music_name like '%${keywords}%' and s.singer_id = m.singer_id 
        limit 
            ${(limit - 1) * offset}, ${offset}
    `)
    .then(async (localData) => {
        let locaResultData = []
        // console.log(localData)
        for (let index = 0; index < localData.length; index ++) {
            // 歌手 id 由逗号字符串拼接而成
            let resultData = localData[index];
            const singer_id = resultData.singer_id;
            delete resultData.singer_id
            let singers_id = singer_id.split(',');
            // console.log(singers_id)
            let singers = [];
            await Promise.all(singers_id.map(async singerId => {
                let result = await dbQuery(`select * from singer where singer_id ='${singerId}'`)
                if (result.length < 1) return;
                singers.push({...result[0]})
            }))
            // console.log(singers)
            locaResultData[index] = { ...resultData, singers }

        }
        // console.log(locaResultData)
        res.send({code: 1, data: [...locaResultData]})
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
router.get('/cloud', async (req, res) => {
    let { kw: keywords, t: type, limit } = req.query;
    // console.log(keywords, type, limit)
    // 1: 单曲, 10: 专辑, 100: 歌手, 1000: 歌单, 1002: 用户, 1004: MV, 1006: 歌词, 1009: 电台, 1014: 视频
    if (!limit) limit = 1;
    let result = await cloudsearch({
        keywords,
        type,
        limit: 20,
        offset: (limit - 1) * 20
    })
    .catch(e => {
        res.send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    });
    if (!result) return;
    if (result.status !== 200) {
        console.log(result)
        res.send({code: 0, data: [], result})
        return;
    }
    // console.dir(result)
    res.send({
        code: 1, 
        data: result.body?.result?.songs ?? [], 
        count: result.body?.result?.songCount
    })
});

module.exports = {
    router,
}
