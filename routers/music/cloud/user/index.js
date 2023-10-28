import NeteaseCloudMusicApi from 'NeteaseCloudMusicApi';
import express from 'express';
const router = express.Router();
const { login_cellphone, login_status, login_refresh, logout } = NeteaseCloudMusicApi;

router.post('/login', (req, res) => {
	const { phone, password } = req.body;

	login_cellphone({ phone, password })
		.then((response) => {
			// console.log(response)
			res.setHeader('set-cookie', response.cookie);
			res.send({
				code: response.body.code,
				cookie: response.body.cookie,
				account: response.body.account,
			});
		})
		.catch((e) => {
			console.log(e, 'error');
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
				},
				e,
				message: e.message || e.code || e.body.message || e.body.msg || '',
			});
		});
});
router.post('/status', (req, res) => {
	if (!req.headers.cookie) {
		res.send({
			code: 200,
			data: null,
		});
		return;
	}
	// cookie 自己切分会导致 cookie 名前带一个空格, 导致识别失败
	let cookie = req.headers.cookie.split('; ').join(';');

	login_status({ cookie })
		.then((response) => {
			// console.log(response)
			res.send({
				code: response.body.data.code,
				data: response.body.data,
			});
		})
		.catch((e) => {
			console.log(e, '/cloud/user/status');
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
				},
				message: e.message || e.code || e.body.message || e.body.status || '',
			});
		});
});
router.post('/logout', (req, res) => {
	let cookie = req.headers.cookie.split('; ').join(';');

	logout({ cookie })
		.then((response) => {
			// console.log(response)
			res.setHeader('set-cookie', response.cookie);
			res.send({
				code: response.body.code,
				data: response.body,
			});
		})
		.catch((e) => {
			console.log(e, 'error');
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
				},
				e,
				message: e.message || e.code || e.body.message || e.body.msg || '',
			});
		});
});
router.post('/refresh', (req, res) => {
	let cookie = req.headers.cookie.split('; ').join(';');

	login_refresh({ cookie })
		.then((response) => {
			// console.log(response)
			res.setHeader('set-cookie', response.cookie);
			res.send({
				code: response.body.code,
				data: response.body,
			});
		})
		.catch((e) => {
			console.log(e, 'error');
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
				},
				e,
				message: e.message || e.code || e.body.message || e.body.msg || '',
			});
		});
});

export default router;
