const express = require('express');
const timeout = require('connect-timeout');
const axios = require('axios');

const app = express();
app.timeout = 3000;
app.use(timeout(120000));
app.use(express.json({ limit: '50mb' }));
app.use(express.urlencoded({ extended: false }));

// // 添加了下面的代码之后无法从其他地方(postman)通过 url 访问接口
// // 处理vue路由的history模式
// const history = require('connect-history-api-fallback');
// // 不然的话当有路径时进行刷新会404. 官方文档https://github.com/bripkens/connect-history-api-fallback
// app.use(
// 	history({
// 		rewrites: [
// 			{
// 				from: /^\/bili\/.*$/,
// 				to: function (context) {
// 					return context.parsedUrl.path;
// 				},
// 			},
// 		],
// 	})
// );

axios.interceptors.response.use(
	(response) => {
		// 对响应数据做点什么
		return response;
	},
	(error) => {
		console.log(error, 'axios error');
		if ((error.code && error.code === 'ECONNRESET') || error.code === 'ETIMEDOUT') {
			error.status = 504;
		}
		// 对响应错误做点什么
		return Promise.reject(error);
	}
);

app.use(express.static('./static'));

app.use('/bili', require('./routers/bili').router);
app.use('/music', require('./routers/music').router);

const port = 8000;
app.listen(port, () => console.log(`serve start at ${port}`));
