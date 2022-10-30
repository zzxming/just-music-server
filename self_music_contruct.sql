/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-30 11:52:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `music_name` varchar(255) NOT NULL COMMENT '显示的音乐名称',
  `singer_id` varchar(255) NOT NULL COMMENT '歌手id, 逗号分割',
  `music_url` varchar(255) NOT NULL COMMENT '音乐本地路径',
  `music_cover` varchar(255) NOT NULL DEFAULT '',
  `album` varchar(255) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL,
  `fee` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`music_id`),
  UNIQUE KEY `music_id` (`music_id`),
  KEY `singer_id` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_title` varchar(255) NOT NULL DEFAULT '歌单名称' COMMENT '歌单名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '歌单简介',
  `cover` varchar(255) NOT NULL DEFAULT '/img/music.jpg' COMMENT '歌单封面',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `updateTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `public` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否公开，1公开，0不公开',
  `creator_id` int(11) NOT NULL DEFAULT '1' COMMENT '创建者id',
  `playCount` int(11) NOT NULL DEFAULT '0' COMMENT '歌单播放数',
  PRIMARY KEY (`playlist_id`),
  UNIQUE KEY `playlist_id` (`playlist_id`),
  KEY `creator_id` (`creator_id`),
  CONSTRAINT `playlist_creator_fk` FOREIGN KEY (`creator_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for playlist_map
-- ----------------------------
DROP TABLE IF EXISTS `playlist_map`;
CREATE TABLE `playlist_map` (
  `playlist_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_id` int(11) NOT NULL COMMENT '歌单id',
  `music_id` varchar(255) NOT NULL COMMENT '歌曲id',
  `music_type` enum('cloud','local','bili') NOT NULL DEFAULT 'local' COMMENT '歌曲类型',
  PRIMARY KEY (`playlist_map_id`),
  UNIQUE KEY `playlist_map_id` (`playlist_map_id`),
  KEY `playlist_id` (`playlist_id`),
  KEY `music_id` (`music_id`),
  CONSTRAINT `playlist_id_fk` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `singer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`singer_id`),
  UNIQUE KEY `singer_id` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer_map
-- ----------------------------
DROP TABLE IF EXISTS `singer_map`;
CREATE TABLE `singer_map` (
  `singer_map_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `singer_id` int(11) NOT NULL COMMENT '歌手id',
  `singer_name` varchar(255) NOT NULL COMMENT '歌手名称',
  PRIMARY KEY (`singer_map_id`),
  UNIQUE KEY `singer_map_id` (`singer_map_id`),
  KEY `singer_id` (`singer_id`),
  CONSTRAINT `singer_map_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(255) NOT NULL DEFAULT '/img/music.jpg' COMMENT '用户头像',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'just用户', '/img/music.jpg');

DROP TRIGGER IF EXISTS `date_to_timestamp`;
DELIMITER ;;
CREATE TRIGGER `date_to_timestamp` BEFORE INSERT ON `playlist` FOR EACH ROW BEGIN
	if (new.createTime is null) THEN
		set new.createTime = unix_timestamp() * 1000;
	end if;
	if (new.updateTime is null) THEN
		set new.updateTime = unix_timestamp() * 1000;
	end if;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_updateTime`;
DELIMITER ;;
CREATE TRIGGER `update_updateTime` BEFORE UPDATE ON `playlist` FOR EACH ROW BEGIN
		set new.updateTime = unix_timestamp() * 1000;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `default_user_name`;
DELIMITER ;;
CREATE TRIGGER `default_user_name` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
	if(LENGTH(trim(new.user_name))<1) then 
		set new.user_name=concat("用户",LPAD(FLOOR(RAND()*999999),6,0));
	end IF;
END
;;
DELIMITER ;
