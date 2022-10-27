const { fromFile } = require("file-type");
const fs = require("fs");
const path = require("path");
const { dbQuery } = require('../../../tools');
const router =  require("express").Router();
const { musicPath } = require("../../../config");


router.get('/info', async (req, res) => {
    const { id } = req.query;
    let result = await dbQuery(`select * from music where music_id = '${id}'`).
    catch(e => {
        console.log(e)
        res.send({code: 0, error: e, message: e.message || e.code})
    });
    if (!result) return;
    const music_info = { ...result[0] };
    let singersId = music_info.singer_id.split(',');
    delete music_info.singer_id

    Promise.all(
        singersId.map(singerId => dbQuery(`select * from singer where singer_id = '${singerId}'`))
    )
    .then(singers => {
        // 排除singer表中不存在的singer_id查找结果(空数组)
        for (let i = 0; i < singers.length; i++) {
            if (!singers[i][0]) {
                singers.splice(i--, 1);
            }
            else {
                singers[i] = singers[i][0];
            }
        }
        res.send({code: 1, data: { ...music_info, singers }})
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
router.get('/:id', async (req, res) => {
    const { id } = req.params;
    staticMusic(id, req, res);
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
                'Content-Type': 'audio/mp3',
            };
            res.writeHead(206, head);
            file.pipe(res);
        } else {
            const head = {
                'Content-Length': fileSize,
                'Content-Range': `bytes 0-3000000/${fileSize}`,
                'Content-Type': 'audio/mp3',
            };
            res.writeHead(200, head);
            fs.createReadStream(filePath).pipe(res);
        }
    }
    catch(e) {
        console.log(e, `static read error`)
        res.status(500).send({
            code: 0, 
            error: {
                errno: e.body.msg.errno,
                code: e.body.msg.code,
            }, 
            message: e.message || e.code || e.body.message || e.body.msg.code
        })
    }
}

module.exports = {
    router,
    musicPath,
    getAudioFromDir,
    staticMusic,
}