const { login_cellphone, login_status, login_refresh, createRequest, logout } = require("NeteaseCloudMusicApi");

const router =  require("express").Router();


router.post('/login', (req, res) => {
    const { phone, password } = req.body;

    login_cellphone({ phone, password })
    .then(response => {
        // console.log(response)
        res.setHeader('set-cookie', response.cookie)
        res.send({
            code: response.status,
            data: response.body
        });
    })
    .catch(e => {
        console.log(e, 'error')
        res.send({
            code: 0, 
            error: {
                errno: e.body?.msg?.errno,
                code: e.body?.msg?.code,
            }, 
            e,
            message: e.message || e.code || e.body.message || e.body.msg || ''
        })
    })
});
router.get('/status', (req, res) => {
    // console.log(req.headers.cookie)
// postman 可以获取到, 浏览器获取不到
    login_status({cookie: req.headers.cookie}, createRequest)
    .then(response => {
        // console.log(response)
        res.send({
            code: 1,
            data: response.body.data
        });
    })
    .catch(e => {
        console.log(e, 'error')
        res.send({
            code: 0, 
            error: {
                errno: e.body?.msg?.errno,
                code: e.body?.msg?.code,
            }, 
            e,
            message: e.message || e.code || e.body.message || e.body.msg || ''
        })
    })
});
router.get('/logout', (req, res) => {

    logout({cookie: req.headers.cookie})
    .then(response => {
        // console.log(response)
        res.send({
            code: 1,
            data: response.body.data
        });
    })
    .catch(e => {
        console.log(e, 'error')
        res.send({
            code: 0, 
            error: {
                errno: e.body?.msg?.errno,
                code: e.body?.msg?.code,
            }, 
            e,
            message: e.message || e.code || e.body.message || e.body.msg || ''
        })
    })
});
router.get('/refresh', (req, res) => {

    login_refresh({cookie: req.headers.cookie})
    .then(response => {
        console.log(response)
        res.send({
            code: 1,
            data: response.body.data
        });
    })
    .catch(e => {
        console.log(e, 'error')
        res.send({
            code: 0, 
            error: {
                errno: e.body?.msg?.errno,
                code: e.body?.msg?.code,
            }, 
            e,
            message: e.message || e.code || e.body.message || e.body.msg || ''
        })
    })
});

module.exports = {
    router
}

