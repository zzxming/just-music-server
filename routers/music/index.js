const { cloudsearch } = require('NeteaseCloudMusicApi');
const { fromFile } = require("file-type");
const fs = require("fs");
const path = require("path");
const { dbQuery } = require('../../tools');
const router =  require("express").Router();

const musicPath = 'D:/cloud_music'


router.use('/cloud', require('./cloud').router)

router.get('/search/local', async (req, res) => {
    let { kw: keywords, t: type, limit } = req.query;
    if (!limit) limit = 1
    dbQuery(`
        select
            m.* 
        from 
            music m, singer s
        where 
            m.music_name like '%${keywords}%' and s.singer_id = m.singer_id 
        limit 
            ${(limit - 1) * 10}, 10
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
        res.send({code: 0, error: e, message: e.message || e.code});
    })
});
router.get('/search/cloud', async (req, res) => {
    let { kw: keywords, t: type, limit } = req.query;
    // console.log(keywords, type, limit)
    // 1: 单曲, 10: 专辑, 100: 歌手, 1000: 歌单, 1002: 用户, 1004: MV, 1006: 歌词, 1009: 电台, 1014: 视频
    if (!limit) limit = 1;
    let result = await cloudsearch({
        keywords,
        type,
        limit: 10,
        offset: (limit - 1) * 10
    })
    .catch(e => {
        res.send({code: 0, error: e, message: e.body.msg})
    });
    if (!result) return;
    if (result.status !== 200) {
        console.log(result)
        res.send({code: 0, data: [], result})
        return;
    }
    res.send({code: 1, data: result.body.result.songs})
});

router.get('/:id', async (req, res) => {
    const { id } = req.params;
    staticMusic(id, req, res);
});
router.get('/info/:id', async (req, res) => {
    const { id } = req.params;
    let result = await dbQuery(`select * from music where music_id = '${id}'`).
    catch(e => {
        console.log(e)
        res.send({code: 0, error: e, message: e.message || e.code})
    });
    if (!result) return;


    res.send({code: 1, data: result[0]})
});




/**
 * 返回文件夹下的所有音频文件
 * @param {string} dirPath 
 * @returns {string[]}
 */
async function getAudioFromDir(dirPath) {
    if (!fs.existsSync(dirPath)) {
        return Promise.reject(new Error(`file path not exist`));
    }
    if (!fs.statSync(dirPath).isDirectory()) {
        return Promise.reject(new Error(`file path is not a directory`));
    }

    try {
        let files = fs.readdirSync(dirPath);
        for (let i = 0; i < files.length; i++) {
            let filename = files[i];
            let filepath = path.resolve(dirPath, filename);
            // 需要先使用 exitsSync 判断路径是否正确, 再进行 statSync 判断是否为文件夹, 否则 fs.stat 将抛出 ENOENT 错误
            if (!fs.existsSync(filepath)) {
                continue;
            }
            if (fs.statSync(filepath).isDirectory()) {
                // console.log(filepath)
                let result = await getAudioFromDir(filepath)
                // console.log(result)
                files.splice(i--, 1, ...result)
                continue;
            }
            let fileAttr = await fromFile(filepath);
            // 读取不到属性的文件直接跳过
            if (!fileAttr) {
                files.splice(i--, 1);
                continue;
            }
            let fileType = fileAttr.mime.split('/')[0];
            let isMP3 = filepath.endsWith('.mp3');
            // 非音频文件, 因为 bilibili 下载的 mp3 文件其实是 mp4 文件, 只是改后缀成的 mp3, 需要包含进来
            if (fileType !== 'audio' && !isMP3) {
                files.splice(i--, 1);
            }
        }
        return files;
    }
    catch(e) {
        console.log(e)
        return Promise.reject(e);
    }
    
}
/**
 * 发送对应路径或 music_id 的数据流
 * @param {string | number} staticPath 
 * @param {*} req 
 * @param {*} res 
 * @returns 
 */
async function staticMusic(staticPath, req, res) {
    let filePath;
    // console.log(staticPath)
    // 当是 id 时在数据库查找歌曲路径
    if (!isNaN(Number(staticPath))) {
        let id = staticPath;
        let result = await dbQuery(`select music_url from music where music_id = '${id}'`)
        if (result.length < 1) {
            res.status(401).send({code: 0, message: '未找到歌曲'});
            return;
        }
        filePath = path.resolve(musicPath, result[0].music_url)
    }
    // filePath 未赋值表示为直接输入的路径
    if (!filePath) filePath = path.resolve(musicPath, staticPath);
    // 读取文件 stat
	try {
        const stat = fs.statSync(filePath);
        const fileSize = stat.size;
        const range = req.headers.range;
        if (range) {
            //有range头才使用206状态码
            const parts = range.replace(/bytes=/, '').split('-');
            const start = parseInt(parts[0], 10);
            // end 在最后取值为 fileSize - 1
            const end = start + 3000000 > fileSize ? fileSize - 1 : start + 3000000;
            const chunksize = (end - start) + 1;
            const file = fs.createReadStream(filePath, { start, end });
            const head = {
                'Content-Range': `bytes ${start}-${end}/${fileSize}`,
                'Accept-Ranges': 'bytes',
                'Content-Length': chunksize,
                'Content-Type': 'audio/mp4',
            };
            res.writeHead(206, head);
            file.pipe(res);
        } else {
            const head = {
                'Content-Length': fileSize,
                'Content-Range': `bytes 0-3000000/${fileSize}`,
                'Content-Type': 'audio/mp4',
            };
            res.writeHead(200, head);
            fs.createReadStream(filePath).pipe(res);
        }
    }
    catch(e) {
        console.log(e, `static read error`)
        res.status(500).send({code: 0, error: e, message: e.message || e.code})
    }
}

module.exports = {
    router,
    musicPath,
    getAudioFromDir,
    staticMusic,
}