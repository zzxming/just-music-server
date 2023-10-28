import express from 'express';
const router = express.Router();
import NeteaseCloudMusicApi from 'NeteaseCloudMusicApi';
import { getCloudMusicInfoWithId } from './utils.js';
const { createRequest, song_url } = NeteaseCloudMusicApi;

import playlistRouter from './playlist/index.js';
import userRouter from './user/index.js';
router.use('/playlist', playlistRouter);
router.use('/user', userRouter);

router.get('/info', (req, res) => {
	const { ids } = req.query;
	// https://music.163.com/song?id=569105662
	if (!ids) {
		res.send({ code: 0, message: '参数错误' });
		return;
	}
	getCloudMusicInfoWithId(ids)
		.then((response) => {
			res.send({ code: 1, data: response });
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				status: e.status,
				message: e.msg?.code,
			});
		});
});
router.get('/:id', (req, res) => {
	const { id } = req.params;
	song_url(
		{
			id,
			cookie: {},
		},
		createRequest
	)
		.then((response) => {
			// console.log(response)
			res.send({
				code: 1,
				data: {
					src: response.body.data[0].url,
				},
			});
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
				error: {
					errno: e.body?.msg?.errno,
					code: e.body?.msg?.code,
				},
				message: e.message || e.code || e.body?.message || e.body?.msg?.code,
			});
		});
});

export default router;
