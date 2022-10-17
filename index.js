
const express = require("express");


const app = express();
app.use(express.static('./static'))

app.use('/bili', require('./routers/bili').router)
app.use('/music', require('./routers/music').router)

app.listen(8000, () => console.log(`serve start at 8000`));
