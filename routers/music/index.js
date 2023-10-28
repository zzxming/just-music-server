import express from 'express';
const router = express.Router();

import cloudRouter from './cloud/index.js';
import searchRouter from './search/index.js';

router.use('/cloud', cloudRouter);
router.use('/search', searchRouter);
// router.use('/local', require('./local').router);

export default router;
