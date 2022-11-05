const mysql = require('mysql');
const db = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '123456',
	database: 'self_music'
});

module.exports = db;
