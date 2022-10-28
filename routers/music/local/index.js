
const router =  require("express").Router();
const { musicPath } = require("../../../config");
const { staticMusic, getMusicInfoWithId } = require('./utils')

router.use('/playlist', require('./playlist').router);

router.get('/info', (req, res) => {
    const { id } = req.query;
    getMusicInfoWithId(id)
    .then(response => {
        res.send({code: 1, data: response})
    })
    .catch(e => {
        console.log(e)
        res.send({
            code: 0, 
        })
    })
});
router.get('/:id', async (req, res) => {
    const { id } = req.params;
    staticMusic(id, req, res);
});




module.exports = {
    router,
    musicPath,
}

