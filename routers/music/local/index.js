import express from 'express';
const router = express.Router();
import { musicPath } from '../../../config/index.js';
import { staticMusic, getMusicInfoWithId } from './utils.js';

import playlistRouter from './playlist.js';
router.use('/playlist', playlistRouter);

router.get('/info', (req, res) => {
	const { id } = req.query;
	getMusicInfoWithId(id)
		.then((response) => {
			res.send({ code: 1, data: response });
		})
		.catch((e) => {
			console.log(e);
			res.send({
				code: 0,
			});
		});
});
router.get('/:id', async (req, res) => {
	const { id } = req.params;
	staticMusic(id, req, res);
});

export default router;
