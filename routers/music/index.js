const router =  require("express").Router();

router.use('/cloud', require('./cloud').router);
router.use('/search', require('./search').router);
router.use('/local', require('./local').router);


module.exports = {
    router,
}