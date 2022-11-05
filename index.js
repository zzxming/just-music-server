
const express = require("express");

const app = express();
app.use(express.json({ limit: '50mb' }));
app.use(express.urlencoded({ extended: false }));

const history = require('connect-history-api-fallback');		// 处理vue路由的history模式
app.use('/', history({}));		// 不然的话当有路径时进行刷新会404. 官方文档https://github.com/bripkens/connect-history-api-fallback

app.use(express.static('./static'));


app.use('/bili', require('./routers/bili').router)
app.use('/music', require('./routers/music').router)

app.listen(8000, () => console.log(`serve start at 8000`));
