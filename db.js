const mysql = require('mysql');
const db = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '123456',
	database: 'self_music'
});

module.exports = db;


/**

create table singer (
	singer_id int(11) auto_increment PRIMARY key not null comment "id"
);
create table singer_map (
	singer_map_id int(11) auto_increment not null PRIMARY key comment "id",
	singer_id int(11) not null comment "歌手id",
	singer_name varchar(11) not null comment "歌手名称",
	foreign key(singer_id) references singer(singer_id)
);
create table music (
	music_id int(11) auto_increment PRIMARY key not null comment "id",
	music_name varchar(255) not null comment "显示的音乐名称",
	singer_id varchar(255) not null comment "歌手id, 逗号分割",
	music_url varchar(255) not null comment "音乐本地路径"
)

 */