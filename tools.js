import db from './db.js';

export const dbQuery = async (query) => {
	return await new Promise((resolve, reject) => {
		db.query(query, function (err, data) {
			if (err) {
				reject(err);
				return;
			}
			resolve(data);
		});
	});
};
export const dbError = (res, error, message = '数据库错误') => {
	console.log(error);
	res.status(500).send({ code: 0, message, error: error.sqlMessage });
};
/**
 * sql 字符串将 ' 替换成 "
 * @param {string} str
 * @returns {string}
 */
export const sqlStrQuotationHandle = (str) => str.replace(/'/g, "''").replace(/"/g, '""');
