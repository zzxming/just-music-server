/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-29 14:44:38
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
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '趁人之危', '1', 'bili_audio/BV1wV41187FK.mp3', '', '趁人之危', '193000', '0');
INSERT INTO `music` VALUES ('2', 'Counting Stars', '2', 'counting stars/counting stars.mp3', '', 'Counting Stars', '256000', '0');
INSERT INTO `music` VALUES ('3', 'Creepin\' up on You', '3', 'creepin\' up on you/creepin\' up on you.mp3', '', 'Creepin\' up on You', '293000', '0');
INSERT INTO `music` VALUES ('4', 'Eutopia', '4', 'Eutopia/Eutopia.mp3', '', 'Eutopia', '249000', '0');
INSERT INTO `music` VALUES ('5', 'How Long', '5', 'how long - Charlie Puth/how long-Charlie Puth.mp3', '', 'How Long', '198000', '0');
INSERT INTO `music` VALUES ('6', 'I Love You Forever', '6', 'i love you forever/i love you forever.mp3', '', 'I Love You Forever', '259000', '0');
INSERT INTO `music` VALUES ('7', 'Lock Me Up', '7', 'lock me up/lock me up.mp3', '', 'Lock Me Up', '209000', '0');
INSERT INTO `music` VALUES ('8', 'Morning Glory', '8', 'Morning Glory - (K)NoW_NAME/Morning Glory - (K)NoW_NAME.mp3', '', 'Morning Glory', '220000', '0');
INSERT INTO `music` VALUES ('9', 'New Soul', '9', 'new soul/new soul.mp3', '', 'New Soul', '200000', '0');
INSERT INTO `music` VALUES ('10', 'Overcomer', '10', 'overcomer/overcomer.mp3', '', 'Overcomer', '225000', '0');
INSERT INTO `music` VALUES ('11', 'Regression', '11', 'Regression - 阿云嘎/Regression-阿云嘎.mp3', '', 'Regression', '236000', '0');
INSERT INTO `music` VALUES ('12', 'September', '12', 'september - Earth, Wind & Fire/september-Earth, Wind & Fire.mp3', '', 'September', '214000', '0');
INSERT INTO `music` VALUES ('13', 'Stereo Hearts', '13', 'stereo hearts/stereo hearts.mp3', '', 'Stereo Hearts', '211000', '0');
INSERT INTO `music` VALUES ('14', 'Until You', '14', 'until you/until you.mp3', '', 'Until You', '248000', '0');
INSERT INTO `music` VALUES ('15', 'We Own The Night', '15', 'we own the night/we own the night.mp3', '', 'We Own The Night', '205000', '0');
INSERT INTO `music` VALUES ('16', 'What Do I Konw', '16', 'what do i konw/what do i konw.mp3', '', 'What Do I Konw', '237000', '0');
INSERT INTO `music` VALUES ('17', '½如梦', '17,18,19', '½如梦.mp3', '', '½如梦', '234000', '0');
INSERT INTO `music` VALUES ('18', '7 Years', '20', '7 years.mp3', '', '7 Years', '237000', '0');
INSERT INTO `music` VALUES ('19', 'Contact', '21,22', 'Contact.mp3', '', 'Contact', '141000', '0');
INSERT INTO `music` VALUES ('20', 'dududu', '23', 'dududu.m4a', '', 'dududu', '220000', '0');
INSERT INTO `music` VALUES ('21', 'HAVE A NICE DAY', '24', 'have a nice day.mp3', '', 'HAVE A NICE DAY', '240000', '0');
INSERT INTO `music` VALUES ('22', 'Imagination', '25', 'imagination.mp3', '', 'Imagination', '217000', '0');
INSERT INTO `music` VALUES ('23', 'Love Story', '26', 'love store.mp3', '', 'Love Story', '235000', '0');
INSERT INTO `music` VALUES ('24', 'Love Youself', '27', 'love youself.mp3', '', 'Love Youself', '232000', '0');
INSERT INTO `music` VALUES ('25', 'Magic', '28', 'Magic - One Direction.mp3', '', 'Magic', '184000', '0');
INSERT INTO `music` VALUES ('26', 'Marine Dreamin\' ', '29,30', 'Marine Dreamin\' .mp3', '', 'Marine Dreamin\' ', '206000', '0');
INSERT INTO `music` VALUES ('27', 'Masayume Chasing', '31', 'MASAYUME CHASING.mp3', '', 'Masayume Chasing', '221000', '0');
INSERT INTO `music` VALUES ('28', 'Mine Mine', '32', 'mine mine.mp3', '', 'Mine Mine', '268000', '0');
INSERT INTO `music` VALUES ('29', 'Mr.Music', '33,34,35,36,37,38,39', 'mr.music.mp3', '', 'Mr.Music', '271000', '0');
INSERT INTO `music` VALUES ('30', 'You(=I)', '40', 'You(=I).mp3', '', 'You(=I)', '170000', '0');
INSERT INTO `music` VALUES ('31', 'Your Song', '41', 'your song.mp3', '', 'Your Song', '180000', '0');
INSERT INTO `music` VALUES ('32', 'カサネテク (千层套路) ', '42', 'カサネテク (千层套路) .mp3', '', 'カサネテク (千层套路) ', '262000', '0');
INSERT INTO `music` VALUES ('33', '爱的飞行日记', '32', '爱的飞行日记.mp3', '', '爱的飞行日记', '256000', '0');
INSERT INTO `music` VALUES ('34', '傲娇系男孩的告白日', '43,44', '傲娇系男孩的告白日.mp3', '', '傲娇系男孩的告白日', '178000', '0');
INSERT INTO `music` VALUES ('35', '【墨清弦&乐正龙牙】不正常恋爱物语', '45,46,47', '不正常恋爱物语.mp3', '', '【墨清弦&乐正龙牙】不正常恋爱物语', '279000', '0');
INSERT INTO `music` VALUES ('36', '单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin', '48,49', '单项地铁.mp3', '', '单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin', '255000', '0');
INSERT INTO `music` VALUES ('37', '枫', '32', '枫.mp3', '', '枫', '275000', '0');
INSERT INTO `music` VALUES ('38', '黑凤梨', '50,51', '黑凤梨.mp3', '', '黑凤梨', '238000', '0');
INSERT INTO `music` VALUES ('39', '横竖撇点折', '52', '横竖撇点折.mp3', '', '横竖撇点折', '229000', '0');
INSERT INTO `music` VALUES ('40', '回到过去', '32', '回到过去.mp3', '', '回到过去', '233000', '0');
INSERT INTO `music` VALUES ('41', '僵尸舞', '44,51,53', '僵尸舞.mp3', '', '僵尸舞', '181000', '0');
INSERT INTO `music` VALUES ('42', '快乐手账', '51', '快乐手账.mp3', '', '快乐手账', '252000', '0');
INSERT INTO `music` VALUES ('43', '恋爱语音导航', '54', '恋爱语音导航.mp3', '', '恋爱语音导航', '241000', '0');
INSERT INTO `music` VALUES ('44', '流光月夜', '54,55,56,57,58,59', '流光月夜.m4a', '', '流光月夜', '231000', '0');
INSERT INTO `music` VALUES ('45', '流浪诗人', '32', '流浪诗人.mp3', '', '流浪诗人', '169000', '0');
INSERT INTO `music` VALUES ('46', '魔术先生', '32', '魔术先生.mp3', '', '魔术先生', '227000', '0');
INSERT INTO `music` VALUES ('47', '努力婊（hardworking bitch）', '60,61', '努力婊.mp3', '', '努力婊（hardworking bitch）', '240000', '0');
INSERT INTO `music` VALUES ('48', '神的随波逐流', '54', '神的随波逐流.mp3', '', '神的随波逐流', '256000', '0');
INSERT INTO `music` VALUES ('49', '霜雪千年', '43,51', '霜雪千年.mp3', '', '霜雪千年', '240000', '0');
INSERT INTO `music` VALUES ('50', '死神', '62', '死神.m4a', '', '死神', '180000', '0');
INSERT INTO `music` VALUES ('51', '她的睫毛', '32', '她的睫毛.mp3', '', '她的睫毛', '233000', '0');
INSERT INTO `music` VALUES ('52', '游园会', '32', '游园会.mp3', '', '游园会', '205000', '0');
INSERT INTO `music` VALUES ('53', '夜宴风波', '54', '夜宴风波.mp3', '', '夜宴风波', '255000', '0');
INSERT INTO `music` VALUES ('54', '星之回响【2020拜年祭单品】', '63,54,65,66,67,68,69,64', 'bili_audio/BV1KJ411C7qF.mp3', 'http://i2.hdslb.com/bfs/archive/c39ad6fbe8ce79d4e0ff9b1dc76b02c37aa14907.jpg', '星之回响【2020拜年祭单品】', '300000', '0');
INSERT INTO `music` VALUES ('55', '【原神生日会】如果突然想起我', '70', 'bili_audio/BV1tG4y1B7xU.mp3', 'http://i1.hdslb.com/bfs/archive/262b48d3314562522d7698c9d089f8f10000f725.jpg', '【原神生日会】如果突然想起我', '231000', '0');
INSERT INTO `music` VALUES ('56', '另一个我【2022拜年纪单品】', '70,75,74', 'bili_audio/BV1WR4y1j7Ar.mp3', 'http://i1.hdslb.com/bfs/archive/2895edff4ab99115f7ccc0b6861c43a6f23fb49e.jpg', '另一个我【2022拜年纪单品】', '200179', '0');

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
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES ('1', 'loop', 'just歌单简介', '/imgs/music.jpg', '1666928972000', '1667008670000', '1', '1', '0');
INSERT INTO `playlist` VALUES ('2', '折纸', '', 'https://p2.music.126.net/cpoUinrExafBHL5Nv5iDHQ==/109951166361218466.jpg', '1666930709000', '1667013432000', '1', '1', '0');
INSERT INTO `playlist` VALUES ('3', 'test', '', 'http://i0.hdslb.com/bfs/archive/9be5ef5fe2fd1f9b9eb109c22d8a50b132af57fc.jpg', '1667003449000', '1667013434000', '1', '1', '0');
INSERT INTO `playlist` VALUES ('4', '-_-黑羽喜欢的音乐', '', 'https://p2.music.126.net/vYEM9aA_4Vo71wWgAM_l7w==/109951163322607811.jpg', '1667023152000', '1667023165000', '1', '1', '0');
INSERT INTO `playlist` VALUES ('5', '英文歌', '', 'https://p1.music.126.net/qe3qc7F4LYmm8QsDY5XK8Q==/109951165693358229.jpg', '1667023222000', '1667024343000', '1', '1', '0');

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
-- Records of playlist_map
-- ----------------------------
INSERT INTO `playlist_map` VALUES ('1', '1', '30', 'local');
INSERT INTO `playlist_map` VALUES ('2', '1', '1953104779', 'cloud');
INSERT INTO `playlist_map` VALUES ('3', '1', '480630243', 'cloud');
INSERT INTO `playlist_map` VALUES ('4', '1', '29753702', 'cloud');
INSERT INTO `playlist_map` VALUES ('5', '1', '459115010', 'cloud');
INSERT INTO `playlist_map` VALUES ('6', '1', '460389527', 'cloud');
INSERT INTO `playlist_map` VALUES ('7', '1', '29046140', 'cloud');
INSERT INTO `playlist_map` VALUES ('8', '1', '31721034', 'cloud');
INSERT INTO `playlist_map` VALUES ('9', '2', '1804552408', 'cloud');
INSERT INTO `playlist_map` VALUES ('10', '2', '29753702', 'cloud');
INSERT INTO `playlist_map` VALUES ('11', '2', '1804552407', 'cloud');
INSERT INTO `playlist_map` VALUES ('12', '2', '1804555737', 'cloud');
INSERT INTO `playlist_map` VALUES ('13', '2', '1804555744', 'cloud');
INSERT INTO `playlist_map` VALUES ('14', '2', '1804552400', 'cloud');
INSERT INTO `playlist_map` VALUES ('15', '2', '1804552399', 'cloud');
INSERT INTO `playlist_map` VALUES ('16', '2', '1804555743', 'cloud');
INSERT INTO `playlist_map` VALUES ('17', '2', '1804552397', 'cloud');
INSERT INTO `playlist_map` VALUES ('18', '2', '1804552401', 'cloud');
INSERT INTO `playlist_map` VALUES ('19', '3', 'BV1Rd4y1y7bs', 'bili');
INSERT INTO `playlist_map` VALUES ('20', '4', '1957515353', 'cloud');
INSERT INTO `playlist_map` VALUES ('21', '4', '569105663', 'cloud');
INSERT INTO `playlist_map` VALUES ('22', '4', '569105661', 'cloud');
INSERT INTO `playlist_map` VALUES ('23', '4', '569105662', 'cloud');
INSERT INTO `playlist_map` VALUES ('24', '4', '1987604310', 'cloud');
INSERT INTO `playlist_map` VALUES ('25', '4', '1444071945', 'cloud');
INSERT INTO `playlist_map` VALUES ('26', '4', '1983534049', 'cloud');
INSERT INTO `playlist_map` VALUES ('27', '4', '1913478990', 'cloud');
INSERT INTO `playlist_map` VALUES ('28', '4', '465807622', 'cloud');
INSERT INTO `playlist_map` VALUES ('29', '4', '1953104779', 'cloud');
INSERT INTO `playlist_map` VALUES ('30', '4', '1924072773', 'cloud');
INSERT INTO `playlist_map` VALUES ('31', '4', '1964015645', 'cloud');
INSERT INTO `playlist_map` VALUES ('32', '4', '1851022762', 'cloud');
INSERT INTO `playlist_map` VALUES ('33', '4', '1877996649', 'cloud');
INSERT INTO `playlist_map` VALUES ('34', '4', '1942064163', 'cloud');
INSERT INTO `playlist_map` VALUES ('35', '4', '1442466883', 'cloud');
INSERT INTO `playlist_map` VALUES ('36', '4', '1849825723', 'cloud');
INSERT INTO `playlist_map` VALUES ('37', '4', '1917046062', 'cloud');
INSERT INTO `playlist_map` VALUES ('38', '4', '1486506463', 'cloud');
INSERT INTO `playlist_map` VALUES ('39', '4', '1885184020', 'cloud');
INSERT INTO `playlist_map` VALUES ('40', '4', '1900224553', 'cloud');
INSERT INTO `playlist_map` VALUES ('41', '4', '1393645970', 'cloud');
INSERT INTO `playlist_map` VALUES ('42', '4', '1375316359', 'cloud');
INSERT INTO `playlist_map` VALUES ('43', '4', '1895145666', 'cloud');
INSERT INTO `playlist_map` VALUES ('44', '4', '1922362038', 'cloud');
INSERT INTO `playlist_map` VALUES ('45', '4', '1456890009', 'cloud');
INSERT INTO `playlist_map` VALUES ('46', '4', '1922281537', 'cloud');
INSERT INTO `playlist_map` VALUES ('47', '4', '555959', 'cloud');
INSERT INTO `playlist_map` VALUES ('48', '4', '27876224', 'cloud');
INSERT INTO `playlist_map` VALUES ('49', '4', '488249475', 'cloud');
INSERT INTO `playlist_map` VALUES ('50', '4', '22820999', 'cloud');
INSERT INTO `playlist_map` VALUES ('51', '4', '1909424933', 'cloud');
INSERT INTO `playlist_map` VALUES ('52', '4', '1916169611', 'cloud');
INSERT INTO `playlist_map` VALUES ('53', '4', '1915730110', 'cloud');
INSERT INTO `playlist_map` VALUES ('54', '4', '1913819637', 'cloud');
INSERT INTO `playlist_map` VALUES ('55', '4', '1893308333', 'cloud');
INSERT INTO `playlist_map` VALUES ('56', '4', '1883113720', 'cloud');
INSERT INTO `playlist_map` VALUES ('57', '4', '1803358235', 'cloud');
INSERT INTO `playlist_map` VALUES ('58', '4', '1821558162', 'cloud');
INSERT INTO `playlist_map` VALUES ('59', '4', '4981397', 'cloud');
INSERT INTO `playlist_map` VALUES ('60', '4', '486194050', 'cloud');
INSERT INTO `playlist_map` VALUES ('61', '4', '1385117201', 'cloud');
INSERT INTO `playlist_map` VALUES ('62', '4', '1850219401', 'cloud');
INSERT INTO `playlist_map` VALUES ('63', '4', '1842951635', 'cloud');
INSERT INTO `playlist_map` VALUES ('64', '4', '1857014541', 'cloud');
INSERT INTO `playlist_map` VALUES ('65', '4', '1887917182', 'cloud');
INSERT INTO `playlist_map` VALUES ('66', '4', '1459343252', 'cloud');
INSERT INTO `playlist_map` VALUES ('67', '4', '1803908863', 'cloud');
INSERT INTO `playlist_map` VALUES ('68', '4', '30245064', 'cloud');
INSERT INTO `playlist_map` VALUES ('69', '4', '1472480890', 'cloud');
INSERT INTO `playlist_map` VALUES ('70', '4', '1479930555', 'cloud');
INSERT INTO `playlist_map` VALUES ('71', '4', '430053896', 'cloud');
INSERT INTO `playlist_map` VALUES ('72', '4', '1454317928', 'cloud');
INSERT INTO `playlist_map` VALUES ('73', '4', '1859245776', 'cloud');
INSERT INTO `playlist_map` VALUES ('74', '4', '1859601669', 'cloud');
INSERT INTO `playlist_map` VALUES ('75', '4', '1842992032', 'cloud');
INSERT INTO `playlist_map` VALUES ('76', '4', '406730444', 'cloud');
INSERT INTO `playlist_map` VALUES ('77', '4', '139893', 'cloud');
INSERT INTO `playlist_map` VALUES ('78', '4', '1466303986', 'cloud');
INSERT INTO `playlist_map` VALUES ('79', '4', '5255441', 'cloud');
INSERT INTO `playlist_map` VALUES ('80', '4', '1375725396', 'cloud');
INSERT INTO `playlist_map` VALUES ('81', '4', '22745550', 'cloud');
INSERT INTO `playlist_map` VALUES ('82', '4', '28838493', 'cloud');
INSERT INTO `playlist_map` VALUES ('83', '4', '1840383399', 'cloud');
INSERT INTO `playlist_map` VALUES ('84', '4', '1859938906', 'cloud');
INSERT INTO `playlist_map` VALUES ('85', '4', '1859652717', 'cloud');
INSERT INTO `playlist_map` VALUES ('86', '4', '1842200743', 'cloud');
INSERT INTO `playlist_map` VALUES ('87', '4', '209643', 'cloud');
INSERT INTO `playlist_map` VALUES ('88', '4', '1488990337', 'cloud');
INSERT INTO `playlist_map` VALUES ('89', '4', '1308782735', 'cloud');
INSERT INTO `playlist_map` VALUES ('90', '4', '375328', 'cloud');
INSERT INTO `playlist_map` VALUES ('91', '4', '1437285525', 'cloud');
INSERT INTO `playlist_map` VALUES ('92', '4', '1824454154', 'cloud');
INSERT INTO `playlist_map` VALUES ('93', '4', '509781593', 'cloud');
INSERT INTO `playlist_map` VALUES ('94', '4', '1347673545', 'cloud');
INSERT INTO `playlist_map` VALUES ('95', '4', '1804888684', 'cloud');
INSERT INTO `playlist_map` VALUES ('96', '4', '432821964', 'cloud');
INSERT INTO `playlist_map` VALUES ('97', '4', '1451998397', 'cloud');
INSERT INTO `playlist_map` VALUES ('98', '4', '1488990357', 'cloud');
INSERT INTO `playlist_map` VALUES ('99', '4', '1486106274', 'cloud');
INSERT INTO `playlist_map` VALUES ('100', '4', '1824457772', 'cloud');
INSERT INTO `playlist_map` VALUES ('101', '4', '1360942077', 'cloud');
INSERT INTO `playlist_map` VALUES ('102', '4', '22682066', 'cloud');
INSERT INTO `playlist_map` VALUES ('103', '4', '1419052849', 'cloud');
INSERT INTO `playlist_map` VALUES ('104', '4', '1418788252', 'cloud');
INSERT INTO `playlist_map` VALUES ('105', '4', '28941708', 'cloud');
INSERT INTO `playlist_map` VALUES ('106', '4', '26619066', 'cloud');
INSERT INTO `playlist_map` VALUES ('107', '4', '1824222230', 'cloud');
INSERT INTO `playlist_map` VALUES ('108', '4', '419594624', 'cloud');
INSERT INTO `playlist_map` VALUES ('109', '4', '1371568154', 'cloud');
INSERT INTO `playlist_map` VALUES ('110', '4', '1423299026', 'cloud');
INSERT INTO `playlist_map` VALUES ('111', '4', '1818031620', 'cloud');
INSERT INTO `playlist_map` VALUES ('112', '4', '1456659704', 'cloud');
INSERT INTO `playlist_map` VALUES ('113', '4', '1409311773', 'cloud');
INSERT INTO `playlist_map` VALUES ('114', '4', '1333199831', 'cloud');
INSERT INTO `playlist_map` VALUES ('115', '4', '1815684465', 'cloud');
INSERT INTO `playlist_map` VALUES ('116', '4', '1495093451', 'cloud');
INSERT INTO `playlist_map` VALUES ('117', '4', '1460966070', 'cloud');
INSERT INTO `playlist_map` VALUES ('118', '4', '1367524443', 'cloud');
INSERT INTO `playlist_map` VALUES ('119', '4', '1804555737', 'cloud');
INSERT INTO `playlist_map` VALUES ('120', '4', '1432491214', 'cloud');
INSERT INTO `playlist_map` VALUES ('121', '4', '4304701', 'cloud');
INSERT INTO `playlist_map` VALUES ('122', '4', '412785540', 'cloud');
INSERT INTO `playlist_map` VALUES ('123', '4', '509135734', 'cloud');
INSERT INTO `playlist_map` VALUES ('124', '4', '1439814454', 'cloud');
INSERT INTO `playlist_map` VALUES ('125', '4', '403710393', 'cloud');
INSERT INTO `playlist_map` VALUES ('126', '4', '509106775', 'cloud');
INSERT INTO `playlist_map` VALUES ('127', '4', '28941711', 'cloud');
INSERT INTO `playlist_map` VALUES ('128', '4', '1461430536', 'cloud');
INSERT INTO `playlist_map` VALUES ('129', '4', '1390644161', 'cloud');
INSERT INTO `playlist_map` VALUES ('130', '4', '1465351409', 'cloud');
INSERT INTO `playlist_map` VALUES ('131', '4', '515143077', 'cloud');
INSERT INTO `playlist_map` VALUES ('132', '4', '1698458', 'cloud');
INSERT INTO `playlist_map` VALUES ('133', '4', '19558690', 'cloud');
INSERT INTO `playlist_map` VALUES ('134', '4', '1429505324', 'cloud');
INSERT INTO `playlist_map` VALUES ('135', '4', '550059604', 'cloud');
INSERT INTO `playlist_map` VALUES ('136', '4', '34923862', 'cloud');
INSERT INTO `playlist_map` VALUES ('137', '4', '857619', 'cloud');
INSERT INTO `playlist_map` VALUES ('138', '4', '1394847947', 'cloud');
INSERT INTO `playlist_map` VALUES ('139', '4', '1321424246', 'cloud');
INSERT INTO `playlist_map` VALUES ('140', '4', '1320634307', 'cloud');
INSERT INTO `playlist_map` VALUES ('141', '4', '1404531407', 'cloud');
INSERT INTO `playlist_map` VALUES ('142', '4', '30496836', 'cloud');
INSERT INTO `playlist_map` VALUES ('143', '4', '1436910205', 'cloud');
INSERT INTO `playlist_map` VALUES ('144', '4', '534540498', 'cloud');
INSERT INTO `playlist_map` VALUES ('145', '4', '395962', 'cloud');
INSERT INTO `playlist_map` VALUES ('146', '4', '448316041', 'cloud');
INSERT INTO `playlist_map` VALUES ('147', '4', '33346943', 'cloud');
INSERT INTO `playlist_map` VALUES ('148', '4', '36307863', 'cloud');
INSERT INTO `playlist_map` VALUES ('149', '4', '28461167', 'cloud');
INSERT INTO `playlist_map` VALUES ('150', '4', '1426087898', 'cloud');
INSERT INTO `playlist_map` VALUES ('151', '4', '1293951677', 'cloud');
INSERT INTO `playlist_map` VALUES ('152', '4', '1413154744', 'cloud');
INSERT INTO `playlist_map` VALUES ('153', '4', '108950', 'cloud');
INSERT INTO `playlist_map` VALUES ('154', '4', '29814175', 'cloud');
INSERT INTO `playlist_map` VALUES ('155', '4', '1382351570', 'cloud');
INSERT INTO `playlist_map` VALUES ('156', '4', '22646894', 'cloud');
INSERT INTO `playlist_map` VALUES ('157', '4', '16232697', 'cloud');
INSERT INTO `playlist_map` VALUES ('158', '4', '480630243', 'cloud');
INSERT INTO `playlist_map` VALUES ('159', '4', '1344874921', 'cloud');
INSERT INTO `playlist_map` VALUES ('160', '4', '562594166', 'cloud');
INSERT INTO `playlist_map` VALUES ('161', '4', '1369798757', 'cloud');
INSERT INTO `playlist_map` VALUES ('162', '4', '474739593', 'cloud');
INSERT INTO `playlist_map` VALUES ('163', '4', '32358454', 'cloud');
INSERT INTO `playlist_map` VALUES ('164', '4', '28872157', 'cloud');
INSERT INTO `playlist_map` VALUES ('165', '4', '29794281', 'cloud');
INSERT INTO `playlist_map` VALUES ('166', '4', '520461943', 'cloud');
INSERT INTO `playlist_map` VALUES ('167', '4', '512359195', 'cloud');
INSERT INTO `playlist_map` VALUES ('168', '4', '476081899', 'cloud');
INSERT INTO `playlist_map` VALUES ('169', '4', '443875380', 'cloud');
INSERT INTO `playlist_map` VALUES ('170', '4', '22736827', 'cloud');
INSERT INTO `playlist_map` VALUES ('171', '4', '1324873177', 'cloud');
INSERT INTO `playlist_map` VALUES ('172', '4', '29450303', 'cloud');
INSERT INTO `playlist_map` VALUES ('173', '4', '1360592706', 'cloud');
INSERT INTO `playlist_map` VALUES ('174', '4', '1396151812', 'cloud');
INSERT INTO `playlist_map` VALUES ('175', '4', '432698061', 'cloud');
INSERT INTO `playlist_map` VALUES ('176', '4', '863974', 'cloud');
INSERT INTO `playlist_map` VALUES ('177', '4', '546724682', 'cloud');
INSERT INTO `playlist_map` VALUES ('178', '4', '26830207', 'cloud');
INSERT INTO `playlist_map` VALUES ('179', '4', '425295701', 'cloud');
INSERT INTO `playlist_map` VALUES ('180', '4', '1317420870', 'cloud');
INSERT INTO `playlist_map` VALUES ('181', '4', '30245517', 'cloud');
INSERT INTO `playlist_map` VALUES ('182', '4', '1331964784', 'cloud');
INSERT INTO `playlist_map` VALUES ('183', '4', '1318430023', 'cloud');
INSERT INTO `playlist_map` VALUES ('184', '4', '566261001', 'cloud');
INSERT INTO `playlist_map` VALUES ('185', '4', '503058959', 'cloud');
INSERT INTO `playlist_map` VALUES ('186', '4', '3019798', 'cloud');
INSERT INTO `playlist_map` VALUES ('187', '4', '1385144622', 'cloud');
INSERT INTO `playlist_map` VALUES ('188', '4', '1357785909', 'cloud');
INSERT INTO `playlist_map` VALUES ('189', '4', '31010566', 'cloud');
INSERT INTO `playlist_map` VALUES ('190', '4', '511678913', 'cloud');
INSERT INTO `playlist_map` VALUES ('191', '4', '472137233', 'cloud');
INSERT INTO `playlist_map` VALUES ('192', '4', '409872465', 'cloud');
INSERT INTO `playlist_map` VALUES ('193', '4', '1358276018', 'cloud');
INSERT INTO `playlist_map` VALUES ('194', '4', '1379839469', 'cloud');
INSERT INTO `playlist_map` VALUES ('195', '4', '418708385', 'cloud');
INSERT INTO `playlist_map` VALUES ('196', '4', '1334591437', 'cloud');
INSERT INTO `playlist_map` VALUES ('197', '4', '28256115', 'cloud');
INSERT INTO `playlist_map` VALUES ('198', '4', '17562882', 'cloud');
INSERT INTO `playlist_map` VALUES ('199', '4', '1302601503', 'cloud');
INSERT INTO `playlist_map` VALUES ('200', '4', '794098', 'cloud');
INSERT INTO `playlist_map` VALUES ('201', '4', '436016476', 'cloud');
INSERT INTO `playlist_map` VALUES ('202', '4', '26201899', 'cloud');
INSERT INTO `playlist_map` VALUES ('203', '4', '537470060', 'cloud');
INSERT INTO `playlist_map` VALUES ('204', '4', '17804227', 'cloud');
INSERT INTO `playlist_map` VALUES ('205', '4', '511332759', 'cloud');
INSERT INTO `playlist_map` VALUES ('206', '4', '1353381404', 'cloud');
INSERT INTO `playlist_map` VALUES ('207', '4', '405998844', 'cloud');
INSERT INTO `playlist_map` VALUES ('208', '4', '405998838', 'cloud');
INSERT INTO `playlist_map` VALUES ('209', '4', '411349020', 'cloud');
INSERT INTO `playlist_map` VALUES ('210', '4', '31421331', 'cloud');
INSERT INTO `playlist_map` VALUES ('211', '4', '1345368792', 'cloud');
INSERT INTO `playlist_map` VALUES ('212', '4', '1346201529', 'cloud');
INSERT INTO `playlist_map` VALUES ('213', '4', '453463573', 'cloud');
INSERT INTO `playlist_map` VALUES ('214', '4', '438462344', 'cloud');
INSERT INTO `playlist_map` VALUES ('215', '4', '29535436', 'cloud');
INSERT INTO `playlist_map` VALUES ('216', '4', '1345872140', 'cloud');
INSERT INTO `playlist_map` VALUES ('217', '4', '41602869', 'cloud');
INSERT INTO `playlist_map` VALUES ('218', '4', '2923152', 'cloud');
INSERT INTO `playlist_map` VALUES ('219', '4', '1353168484', 'cloud');
INSERT INTO `playlist_map` VALUES ('220', '4', '1350265597', 'cloud');
INSERT INTO `playlist_map` VALUES ('221', '4', '30148832', 'cloud');
INSERT INTO `playlist_map` VALUES ('222', '4', '490602922', 'cloud');
INSERT INTO `playlist_map` VALUES ('223', '4', '574921594', 'cloud');
INSERT INTO `playlist_map` VALUES ('224', '4', '1343946237', 'cloud');
INSERT INTO `playlist_map` VALUES ('225', '4', '417250969', 'cloud');
INSERT INTO `playlist_map` VALUES ('226', '4', '27493175', 'cloud');
INSERT INTO `playlist_map` VALUES ('227', '4', '416700601', 'cloud');
INSERT INTO `playlist_map` VALUES ('228', '4', '1323158801', 'cloud');
INSERT INTO `playlist_map` VALUES ('229', '4', '27955597', 'cloud');
INSERT INTO `playlist_map` VALUES ('230', '4', '27625424', 'cloud');
INSERT INTO `playlist_map` VALUES ('231', '4', '542145', 'cloud');
INSERT INTO `playlist_map` VALUES ('232', '4', '399342886', 'cloud');
INSERT INTO `playlist_map` VALUES ('233', '4', '1304882046', 'cloud');
INSERT INTO `playlist_map` VALUES ('234', '4', '399342488', 'cloud');
INSERT INTO `playlist_map` VALUES ('235', '4', '433681888', 'cloud');
INSERT INTO `playlist_map` VALUES ('236', '4', '35090756', 'cloud');
INSERT INTO `playlist_map` VALUES ('237', '4', '1326377141', 'cloud');
INSERT INTO `playlist_map` VALUES ('238', '4', '537787665', 'cloud');
INSERT INTO `playlist_map` VALUES ('239', '4', '1323323672', 'cloud');
INSERT INTO `playlist_map` VALUES ('240', '4', '1317003118', 'cloud');
INSERT INTO `playlist_map` VALUES ('241', '4', '33414791', 'cloud');
INSERT INTO `playlist_map` VALUES ('242', '4', '1320990503', 'cloud');
INSERT INTO `playlist_map` VALUES ('243', '4', '30798845', 'cloud');
INSERT INTO `playlist_map` VALUES ('244', '4', '1311323190', 'cloud');
INSERT INTO `playlist_map` VALUES ('245', '4', '486814412', 'cloud');
INSERT INTO `playlist_map` VALUES ('246', '4', '448316045', 'cloud');
INSERT INTO `playlist_map` VALUES ('247', '4', '28220107', 'cloud');
INSERT INTO `playlist_map` VALUES ('248', '4', '1298714100', 'cloud');
INSERT INTO `playlist_map` VALUES ('249', '4', '32807699', 'cloud');
INSERT INTO `playlist_map` VALUES ('250', '4', '789254', 'cloud');
INSERT INTO `playlist_map` VALUES ('251', '4', '1308819645', 'cloud');
INSERT INTO `playlist_map` VALUES ('252', '4', '439665043', 'cloud');
INSERT INTO `playlist_map` VALUES ('253', '4', '41416576', 'cloud');
INSERT INTO `playlist_map` VALUES ('254', '4', '507795470', 'cloud');
INSERT INTO `playlist_map` VALUES ('255', '4', '494865824', 'cloud');
INSERT INTO `playlist_map` VALUES ('256', '4', '725692', 'cloud');
INSERT INTO `playlist_map` VALUES ('257', '4', '518896460', 'cloud');
INSERT INTO `playlist_map` VALUES ('258', '4', '1295928507', 'cloud');
INSERT INTO `playlist_map` VALUES ('259', '4', '1294924781', 'cloud');
INSERT INTO `playlist_map` VALUES ('260', '4', '210049', 'cloud');
INSERT INTO `playlist_map` VALUES ('261', '4', '1293905026', 'cloud');
INSERT INTO `playlist_map` VALUES ('262', '4', '27901389', 'cloud');
INSERT INTO `playlist_map` VALUES ('263', '4', '34516399', 'cloud');
INSERT INTO `playlist_map` VALUES ('264', '4', '416531748', 'cloud');
INSERT INTO `playlist_map` VALUES ('265', '4', '27853416', 'cloud');
INSERT INTO `playlist_map` VALUES ('266', '4', '32192205', 'cloud');
INSERT INTO `playlist_map` VALUES ('267', '4', '25704014', 'cloud');
INSERT INTO `playlist_map` VALUES ('268', '4', '427419509', 'cloud');
INSERT INTO `playlist_map` VALUES ('269', '4', '30394711', 'cloud');
INSERT INTO `playlist_map` VALUES ('270', '4', '26379201', 'cloud');
INSERT INTO `playlist_map` VALUES ('271', '4', '454549729', 'cloud');
INSERT INTO `playlist_map` VALUES ('272', '4', '569214246', 'cloud');
INSERT INTO `playlist_map` VALUES ('273', '4', '565841060', 'cloud');
INSERT INTO `playlist_map` VALUES ('274', '4', '29414561', 'cloud');
INSERT INTO `playlist_map` VALUES ('275', '4', '447303772', 'cloud');
INSERT INTO `playlist_map` VALUES ('276', '4', '21803760', 'cloud');
INSERT INTO `playlist_map` VALUES ('277', '4', '198946', 'cloud');
INSERT INTO `playlist_map` VALUES ('278', '4', '31168707', 'cloud');
INSERT INTO `playlist_map` VALUES ('279', '4', '536622304', 'cloud');
INSERT INTO `playlist_map` VALUES ('280', '4', '477683799', 'cloud');
INSERT INTO `playlist_map` VALUES ('281', '4', '551337659', 'cloud');
INSERT INTO `playlist_map` VALUES ('282', '4', '582003', 'cloud');
INSERT INTO `playlist_map` VALUES ('283', '4', '441491862', 'cloud');
INSERT INTO `playlist_map` VALUES ('284', '4', '502238478', 'cloud');
INSERT INTO `playlist_map` VALUES ('285', '4', '29107447', 'cloud');
INSERT INTO `playlist_map` VALUES ('286', '4', '460528', 'cloud');
INSERT INTO `playlist_map` VALUES ('287', '4', '32174188', 'cloud');
INSERT INTO `playlist_map` VALUES ('288', '4', '32835004', 'cloud');
INSERT INTO `playlist_map` VALUES ('289', '4', '25657233', 'cloud');
INSERT INTO `playlist_map` VALUES ('290', '4', '5143941', 'cloud');
INSERT INTO `playlist_map` VALUES ('291', '4', '33392461', 'cloud');
INSERT INTO `playlist_map` VALUES ('292', '4', '534542416', 'cloud');
INSERT INTO `playlist_map` VALUES ('293', '4', '541511325', 'cloud');
INSERT INTO `playlist_map` VALUES ('294', '4', '543607481', 'cloud');
INSERT INTO `playlist_map` VALUES ('295', '4', '29343447', 'cloud');
INSERT INTO `playlist_map` VALUES ('296', '4', '27511030', 'cloud');
INSERT INTO `playlist_map` VALUES ('297', '4', '483268099', 'cloud');
INSERT INTO `playlist_map` VALUES ('298', '4', '28936181', 'cloud');
INSERT INTO `playlist_map` VALUES ('299', '4', '518894060', 'cloud');
INSERT INTO `playlist_map` VALUES ('300', '4', '479938319', 'cloud');
INSERT INTO `playlist_map` VALUES ('301', '4', '542374682', 'cloud');
INSERT INTO `playlist_map` VALUES ('302', '4', '466146665', 'cloud');
INSERT INTO `playlist_map` VALUES ('303', '4', '31152277', 'cloud');
INSERT INTO `playlist_map` VALUES ('304', '4', '29812321', 'cloud');
INSERT INTO `playlist_map` VALUES ('305', '4', '529834569', 'cloud');
INSERT INTO `playlist_map` VALUES ('306', '4', '445845783', 'cloud');
INSERT INTO `playlist_map` VALUES ('307', '4', '534065323', 'cloud');
INSERT INTO `playlist_map` VALUES ('308', '4', '368760', 'cloud');
INSERT INTO `playlist_map` VALUES ('309', '4', '5079654', 'cloud');
INSERT INTO `playlist_map` VALUES ('310', '4', '34928700', 'cloud');
INSERT INTO `playlist_map` VALUES ('311', '4', '496869422', 'cloud');
INSERT INTO `playlist_map` VALUES ('312', '4', '579954', 'cloud');
INSERT INTO `playlist_map` VALUES ('313', '4', '526413163', 'cloud');
INSERT INTO `playlist_map` VALUES ('314', '4', '527629786', 'cloud');
INSERT INTO `playlist_map` VALUES ('315', '4', '33937479', 'cloud');
INSERT INTO `playlist_map` VALUES ('316', '4', '31917314', 'cloud');
INSERT INTO `playlist_map` VALUES ('317', '4', '27533153', 'cloud');
INSERT INTO `playlist_map` VALUES ('318', '4', '405987145', 'cloud');
INSERT INTO `playlist_map` VALUES ('319', '4', '41500546', 'cloud');
INSERT INTO `playlist_map` VALUES ('320', '4', '516318205', 'cloud');
INSERT INTO `playlist_map` VALUES ('321', '4', '22821586', 'cloud');
INSERT INTO `playlist_map` VALUES ('322', '4', '4887942', 'cloud');
INSERT INTO `playlist_map` VALUES ('323', '4', '30245467', 'cloud');
INSERT INTO `playlist_map` VALUES ('324', '4', '413961906', 'cloud');
INSERT INTO `playlist_map` VALUES ('325', '4', '34723470', 'cloud');
INSERT INTO `playlist_map` VALUES ('326', '4', '26199445', 'cloud');
INSERT INTO `playlist_map` VALUES ('327', '4', '21312234', 'cloud');
INSERT INTO `playlist_map` VALUES ('328', '4', '519935307', 'cloud');
INSERT INTO `playlist_map` VALUES ('329', '4', '27620334', 'cloud');
INSERT INTO `playlist_map` VALUES ('330', '4', '30830369', 'cloud');
INSERT INTO `playlist_map` VALUES ('331', '4', '583281', 'cloud');
INSERT INTO `playlist_map` VALUES ('332', '4', '445844962', 'cloud');
INSERT INTO `playlist_map` VALUES ('333', '4', '509728887', 'cloud');
INSERT INTO `playlist_map` VALUES ('334', '4', '28872103', 'cloud');
INSERT INTO `playlist_map` VALUES ('335', '4', '139547', 'cloud');
INSERT INTO `playlist_map` VALUES ('336', '4', '32317208', 'cloud');
INSERT INTO `playlist_map` VALUES ('337', '4', '19945726', 'cloud');
INSERT INTO `playlist_map` VALUES ('338', '4', '437250704', 'cloud');
INSERT INTO `playlist_map` VALUES ('339', '4', '34986002', 'cloud');
INSERT INTO `playlist_map` VALUES ('340', '4', '470697847', 'cloud');
INSERT INTO `playlist_map` VALUES ('341', '4', '29480187', 'cloud');
INSERT INTO `playlist_map` VALUES ('342', '4', '459160315', 'cloud');
INSERT INTO `playlist_map` VALUES ('343', '4', '408328050', 'cloud');
INSERT INTO `playlist_map` VALUES ('344', '4', '516735800', 'cloud');
INSERT INTO `playlist_map` VALUES ('345', '4', '516320214', 'cloud');
INSERT INTO `playlist_map` VALUES ('346', '4', '473440587', 'cloud');
INSERT INTO `playlist_map` VALUES ('347', '4', '27965044', 'cloud');
INSERT INTO `playlist_map` VALUES ('348', '4', '32341324', 'cloud');
INSERT INTO `playlist_map` VALUES ('349', '4', '500686170', 'cloud');
INSERT INTO `playlist_map` VALUES ('350', '4', '431610015', 'cloud');
INSERT INTO `playlist_map` VALUES ('351', '4', '509726890', 'cloud');
INSERT INTO `playlist_map` VALUES ('352', '4', '461083054', 'cloud');
INSERT INTO `playlist_map` VALUES ('353', '4', '470772280', 'cloud');
INSERT INTO `playlist_map` VALUES ('354', '4', '459004290', 'cloud');
INSERT INTO `playlist_map` VALUES ('355', '4', '493041341', 'cloud');
INSERT INTO `playlist_map` VALUES ('356', '4', '460478768', 'cloud');
INSERT INTO `playlist_map` VALUES ('357', '4', '426881487', 'cloud');
INSERT INTO `playlist_map` VALUES ('358', '4', '426881503', 'cloud');
INSERT INTO `playlist_map` VALUES ('359', '4', '426881480', 'cloud');
INSERT INTO `playlist_map` VALUES ('360', '4', '34229976', 'cloud');
INSERT INTO `playlist_map` VALUES ('361', '4', '493042314', 'cloud');
INSERT INTO `playlist_map` VALUES ('362', '4', '368962', 'cloud');
INSERT INTO `playlist_map` VALUES ('363', '4', '471403823', 'cloud');
INSERT INTO `playlist_map` VALUES ('364', '4', '473964449', 'cloud');
INSERT INTO `playlist_map` VALUES ('365', '4', '28613680', 'cloud');
INSERT INTO `playlist_map` VALUES ('366', '4', '3305969', 'cloud');
INSERT INTO `playlist_map` VALUES ('367', '4', '482633048', 'cloud');
INSERT INTO `playlist_map` VALUES ('368', '4', '32192783', 'cloud');
INSERT INTO `playlist_map` VALUES ('369', '4', '28315238', 'cloud');
INSERT INTO `playlist_map` VALUES ('370', '4', '35345243', 'cloud');
INSERT INTO `playlist_map` VALUES ('371', '4', '482636058', 'cloud');
INSERT INTO `playlist_map` VALUES ('372', '4', '29561077', 'cloud');
INSERT INTO `playlist_map` VALUES ('373', '4', '30148963', 'cloud');
INSERT INTO `playlist_map` VALUES ('374', '4', '33911781', 'cloud');
INSERT INTO `playlist_map` VALUES ('375', '4', '29046140', 'cloud');
INSERT INTO `playlist_map` VALUES ('376', '4', '16483438', 'cloud');
INSERT INTO `playlist_map` VALUES ('377', '4', '410821967', 'cloud');
INSERT INTO `playlist_map` VALUES ('378', '4', '25657280', 'cloud');
INSERT INTO `playlist_map` VALUES ('379', '4', '404784667', 'cloud');
INSERT INTO `playlist_map` VALUES ('380', '4', '2869492', 'cloud');
INSERT INTO `playlist_map` VALUES ('381', '4', '28228004', 'cloud');
INSERT INTO `playlist_map` VALUES ('382', '4', '108485', 'cloud');
INSERT INTO `playlist_map` VALUES ('383', '4', '424060340', 'cloud');
INSERT INTO `playlist_map` VALUES ('384', '4', '476114873', 'cloud');
INSERT INTO `playlist_map` VALUES ('385', '4', '108251', 'cloud');
INSERT INTO `playlist_map` VALUES ('386', '4', '185684', 'cloud');
INSERT INTO `playlist_map` VALUES ('387', '4', '465675773', 'cloud');
INSERT INTO `playlist_map` VALUES ('388', '4', '479979547', 'cloud');
INSERT INTO `playlist_map` VALUES ('389', '4', '29932307', 'cloud');
INSERT INTO `playlist_map` VALUES ('390', '4', '29747727', 'cloud');
INSERT INTO `playlist_map` VALUES ('391', '4', '33291435', 'cloud');
INSERT INTO `playlist_map` VALUES ('392', '4', '444323376', 'cloud');
INSERT INTO `playlist_map` VALUES ('393', '4', '445781206', 'cloud');
INSERT INTO `playlist_map` VALUES ('394', '4', '38689097', 'cloud');
INSERT INTO `playlist_map` VALUES ('395', '4', '443292321', 'cloud');
INSERT INTO `playlist_map` VALUES ('396', '4', '31352739', 'cloud');
INSERT INTO `playlist_map` VALUES ('397', '4', '469272730', 'cloud');
INSERT INTO `playlist_map` VALUES ('398', '4', '476081883', 'cloud');
INSERT INTO `playlist_map` VALUES ('399', '4', '27853410', 'cloud');
INSERT INTO `playlist_map` VALUES ('400', '4', '31967335', 'cloud');
INSERT INTO `playlist_map` VALUES ('401', '4', '28941709', 'cloud');
INSERT INTO `playlist_map` VALUES ('402', '4', '31967343', 'cloud');
INSERT INTO `playlist_map` VALUES ('403', '4', '796989', 'cloud');
INSERT INTO `playlist_map` VALUES ('404', '4', '472361333', 'cloud');
INSERT INTO `playlist_map` VALUES ('405', '4', '471403860', 'cloud');
INSERT INTO `playlist_map` VALUES ('406', '4', '28283665', 'cloud');
INSERT INTO `playlist_map` VALUES ('407', '4', '439915614', 'cloud');
INSERT INTO `playlist_map` VALUES ('408', '4', '28461161', 'cloud');
INSERT INTO `playlist_map` VALUES ('409', '4', '461332138', 'cloud');
INSERT INTO `playlist_map` VALUES ('410', '4', '483925', 'cloud');
INSERT INTO `playlist_map` VALUES ('411', '4', '475279331', 'cloud');
INSERT INTO `playlist_map` VALUES ('412', '4', '26214459', 'cloud');
INSERT INTO `playlist_map` VALUES ('413', '4', '26260650', 'cloud');
INSERT INTO `playlist_map` VALUES ('414', '4', '208902', 'cloud');
INSERT INTO `playlist_map` VALUES ('415', '4', '30431278', 'cloud');
INSERT INTO `playlist_map` VALUES ('416', '4', '26508121', 'cloud');
INSERT INTO `playlist_map` VALUES ('417', '4', '29307041', 'cloud');
INSERT INTO `playlist_map` VALUES ('418', '4', '406716121', 'cloud');
INSERT INTO `playlist_map` VALUES ('419', '4', '498096', 'cloud');
INSERT INTO `playlist_map` VALUES ('420', '4', '29562296', 'cloud');
INSERT INTO `playlist_map` VALUES ('421', '4', '28138228', 'cloud');
INSERT INTO `playlist_map` VALUES ('422', '4', '794080', 'cloud');
INSERT INTO `playlist_map` VALUES ('423', '4', '26160588', 'cloud');
INSERT INTO `playlist_map` VALUES ('424', '4', '29307195', 'cloud');
INSERT INTO `playlist_map` VALUES ('425', '4', '814264', 'cloud');
INSERT INTO `playlist_map` VALUES ('426', '4', '31721034', 'cloud');
INSERT INTO `playlist_map` VALUES ('427', '4', '749768', 'cloud');
INSERT INTO `playlist_map` VALUES ('428', '4', '426850114', 'cloud');
INSERT INTO `playlist_map` VALUES ('429', '4', '445781219', 'cloud');
INSERT INTO `playlist_map` VALUES ('430', '4', '457537752', 'cloud');
INSERT INTO `playlist_map` VALUES ('431', '4', '444803276', 'cloud');
INSERT INTO `playlist_map` VALUES ('432', '4', '22793308', 'cloud');
INSERT INTO `playlist_map` VALUES ('433', '4', '32408961', 'cloud');
INSERT INTO `playlist_map` VALUES ('434', '4', '29777035', 'cloud');
INSERT INTO `playlist_map` VALUES ('435', '4', '459115010', 'cloud');
INSERT INTO `playlist_map` VALUES ('436', '4', '460389527', 'cloud');
INSERT INTO `playlist_map` VALUES ('437', '4', '750905', 'cloud');
INSERT INTO `playlist_map` VALUES ('438', '4', '22722555', 'cloud');
INSERT INTO `playlist_map` VALUES ('439', '4', '29460679', 'cloud');
INSERT INTO `playlist_map` VALUES ('440', '4', '431259256', 'cloud');
INSERT INTO `playlist_map` VALUES ('441', '4', '29498102', 'cloud');
INSERT INTO `playlist_map` VALUES ('442', '4', '399367220', 'cloud');
INSERT INTO `playlist_map` VALUES ('443', '4', '752043', 'cloud');
INSERT INTO `playlist_map` VALUES ('444', '4', '3416986', 'cloud');
INSERT INTO `playlist_map` VALUES ('445', '4', '28996501', 'cloud');
INSERT INTO `playlist_map` VALUES ('446', '4', '82932', 'cloud');
INSERT INTO `playlist_map` VALUES ('447', '4', '411314681', 'cloud');
INSERT INTO `playlist_map` VALUES ('448', '4', '32803125', 'cloud');
INSERT INTO `playlist_map` VALUES ('449', '4', '423228325', 'cloud');
INSERT INTO `playlist_map` VALUES ('450', '4', '2698075', 'cloud');
INSERT INTO `playlist_map` VALUES ('451', '4', '21038748', 'cloud');
INSERT INTO `playlist_map` VALUES ('452', '4', '3545717', 'cloud');
INSERT INTO `playlist_map` VALUES ('453', '4', '458496804', 'cloud');
INSERT INTO `playlist_map` VALUES ('454', '4', '26107913', 'cloud');
INSERT INTO `playlist_map` VALUES ('455', '4', '368764', 'cloud');
INSERT INTO `playlist_map` VALUES ('456', '4', '3949444', 'cloud');
INSERT INTO `playlist_map` VALUES ('457', '4', '19542337', 'cloud');
INSERT INTO `playlist_map` VALUES ('458', '4', '21865897', 'cloud');
INSERT INTO `playlist_map` VALUES ('459', '4', '26218091', 'cloud');
INSERT INTO `playlist_map` VALUES ('460', '4', '399411603', 'cloud');
INSERT INTO `playlist_map` VALUES ('461', '4', '22745576', 'cloud');
INSERT INTO `playlist_map` VALUES ('462', '4', '622458', 'cloud');
INSERT INTO `playlist_map` VALUES ('463', '4', '4346391', 'cloud');
INSERT INTO `playlist_map` VALUES ('464', '4', '820340', 'cloud');
INSERT INTO `playlist_map` VALUES ('465', '4', '21311956', 'cloud');
INSERT INTO `playlist_map` VALUES ('466', '4', '419596411', 'cloud');
INSERT INTO `playlist_map` VALUES ('467', '4', '3025340', 'cloud');
INSERT INTO `playlist_map` VALUES ('468', '4', '21274655', 'cloud');
INSERT INTO `playlist_map` VALUES ('469', '4', '410042104', 'cloud');
INSERT INTO `playlist_map` VALUES ('470', '4', '406716741', 'cloud');
INSERT INTO `playlist_map` VALUES ('471', '4', '5260494', 'cloud');
INSERT INTO `playlist_map` VALUES ('472', '4', '28941713', 'cloud');
INSERT INTO `playlist_map` VALUES ('473', '4', '4975665', 'cloud');
INSERT INTO `playlist_map` VALUES ('474', '4', '22660279', 'cloud');
INSERT INTO `playlist_map` VALUES ('475', '4', '29712183', 'cloud');
INSERT INTO `playlist_map` VALUES ('476', '4', '417247652', 'cloud');
INSERT INTO `playlist_map` VALUES ('477', '4', '1345018', 'cloud');
INSERT INTO `playlist_map` VALUES ('478', '4', '28310479', 'cloud');
INSERT INTO `playlist_map` VALUES ('479', '4', '28892408', 'cloud');
INSERT INTO `playlist_map` VALUES ('480', '4', '30394891', 'cloud');
INSERT INTO `playlist_map` VALUES ('481', '4', '108543', 'cloud');
INSERT INTO `playlist_map` VALUES ('482', '4', '17783969', 'cloud');
INSERT INTO `playlist_map` VALUES ('483', '4', '2529311', 'cloud');
INSERT INTO `playlist_map` VALUES ('484', '4', '28629028', 'cloud');
INSERT INTO `playlist_map` VALUES ('485', '4', '41654827', 'cloud');
INSERT INTO `playlist_map` VALUES ('486', '4', '417250210', 'cloud');
INSERT INTO `playlist_map` VALUES ('487', '4', '4164331', 'cloud');
INSERT INTO `playlist_map` VALUES ('488', '4', '26279806', 'cloud');
INSERT INTO `playlist_map` VALUES ('489', '4', '186001', 'cloud');
INSERT INTO `playlist_map` VALUES ('490', '4', '186016', 'cloud');
INSERT INTO `playlist_map` VALUES ('491', '4', '186002', 'cloud');
INSERT INTO `playlist_map` VALUES ('492', '4', '185818', 'cloud');
INSERT INTO `playlist_map` VALUES ('493', '4', '21253958', 'cloud');
INSERT INTO `playlist_map` VALUES ('494', '4', '186010', 'cloud');
INSERT INTO `playlist_map` VALUES ('495', '4', '618325', 'cloud');
INSERT INTO `playlist_map` VALUES ('496', '4', '22778302', 'cloud');
INSERT INTO `playlist_map` VALUES ('497', '4', '185946', 'cloud');
INSERT INTO `playlist_map` VALUES ('498', '4', '29534449', 'cloud');
INSERT INTO `playlist_map` VALUES ('499', '4', '25731319', 'cloud');
INSERT INTO `playlist_map` VALUES ('500', '4', '247491', 'cloud');
INSERT INTO `playlist_map` VALUES ('501', '4', '31234244', 'cloud');
INSERT INTO `playlist_map` VALUES ('502', '4', '86365', 'cloud');
INSERT INTO `playlist_map` VALUES ('503', '4', '17194024', 'cloud');
INSERT INTO `playlist_map` VALUES ('504', '4', '26389092', 'cloud');
INSERT INTO `playlist_map` VALUES ('505', '4', '809268', 'cloud');
INSERT INTO `playlist_map` VALUES ('506', '4', '640295', 'cloud');
INSERT INTO `playlist_map` VALUES ('507', '4', '30967261', 'cloud');
INSERT INTO `playlist_map` VALUES ('508', '4', '28993089', 'cloud');
INSERT INTO `playlist_map` VALUES ('509', '4', '29307038', 'cloud');
INSERT INTO `playlist_map` VALUES ('510', '4', '25706285', 'cloud');
INSERT INTO `playlist_map` VALUES ('511', '4', '27548257', 'cloud');
INSERT INTO `playlist_map` VALUES ('512', '4', '17793698', 'cloud');
INSERT INTO `playlist_map` VALUES ('513', '4', '356034', 'cloud');
INSERT INTO `playlist_map` VALUES ('514', '4', '4884807', 'cloud');
INSERT INTO `playlist_map` VALUES ('515', '4', '16607971', 'cloud');
INSERT INTO `playlist_map` VALUES ('516', '4', '186008', 'cloud');
INSERT INTO `playlist_map` VALUES ('517', '4', '26115245', 'cloud');
INSERT INTO `playlist_map` VALUES ('518', '4', '33516495', 'cloud');
INSERT INTO `playlist_map` VALUES ('519', '4', '1696373', 'cloud');
INSERT INTO `playlist_map` VALUES ('520', '4', '584155', 'cloud');
INSERT INTO `playlist_map` VALUES ('521', '4', '26545241', 'cloud');
INSERT INTO `playlist_map` VALUES ('522', '4', '29814898', 'cloud');
INSERT INTO `playlist_map` VALUES ('523', '4', '411907897', 'cloud');
INSERT INTO `playlist_map` VALUES ('524', '4', '405998841', 'cloud');
INSERT INTO `playlist_map` VALUES ('525', '4', '25731320', 'cloud');
INSERT INTO `playlist_map` VALUES ('526', '4', '21974794', 'cloud');
INSERT INTO `playlist_map` VALUES ('527', '4', '287035', 'cloud');
INSERT INTO `playlist_map` VALUES ('528', '4', '376417', 'cloud');
INSERT INTO `playlist_map` VALUES ('529', '4', '28258452', 'cloud');
INSERT INTO `playlist_map` VALUES ('530', '4', '857606', 'cloud');
INSERT INTO `playlist_map` VALUES ('531', '4', '25706282', 'cloud');
INSERT INTO `playlist_map` VALUES ('532', '4', '26111145', 'cloud');
INSERT INTO `playlist_map` VALUES ('533', '4', '29732992', 'cloud');
INSERT INTO `playlist_map` VALUES ('534', '4', '22782025', 'cloud');
INSERT INTO `playlist_map` VALUES ('535', '4', '30841076', 'cloud');
INSERT INTO `playlist_map` VALUES ('536', '4', '5179544', 'cloud');
INSERT INTO `playlist_map` VALUES ('537', '4', '185709', 'cloud');
INSERT INTO `playlist_map` VALUES ('538', '4', '28850212', 'cloud');
INSERT INTO `playlist_map` VALUES ('539', '4', '489929', 'cloud');
INSERT INTO `playlist_map` VALUES ('540', '4', '186158', 'cloud');
INSERT INTO `playlist_map` VALUES ('541', '4', '185813', 'cloud');
INSERT INTO `playlist_map` VALUES ('542', '4', '185811', 'cloud');
INSERT INTO `playlist_map` VALUES ('543', '4', '186017', 'cloud');
INSERT INTO `playlist_map` VALUES ('544', '4', '29753702', 'cloud');
INSERT INTO `playlist_map` VALUES ('545', '4', '31877806', 'cloud');
INSERT INTO `playlist_map` VALUES ('546', '4', '29771231', 'cloud');
INSERT INTO `playlist_map` VALUES ('547', '4', '307475', 'cloud');
INSERT INTO `playlist_map` VALUES ('548', '4', '29722263', 'cloud');
INSERT INTO `playlist_map` VALUES ('549', '4', '26060065', 'cloud');
INSERT INTO `playlist_map` VALUES ('550', '4', '22290519', 'cloud');
INSERT INTO `playlist_map` VALUES ('551', '4', '418603077', 'cloud');
INSERT INTO `playlist_map` VALUES ('552', '4', '28457401', 'cloud');
INSERT INTO `playlist_map` VALUES ('553', '4', '27965522', 'cloud');
INSERT INTO `playlist_map` VALUES ('554', '4', '29491235', 'cloud');
INSERT INTO `playlist_map` VALUES ('555', '4', '22741412', 'cloud');
INSERT INTO `playlist_map` VALUES ('556', '4', '41462778', 'cloud');
INSERT INTO `playlist_map` VALUES ('557', '4', '39224531', 'cloud');
INSERT INTO `playlist_map` VALUES ('558', '4', '28018274', 'cloud');
INSERT INTO `playlist_map` VALUES ('559', '4', '26349201', 'cloud');
INSERT INTO `playlist_map` VALUES ('560', '4', '40915694', 'cloud');
INSERT INTO `playlist_map` VALUES ('561', '4', '28606030', 'cloud');
INSERT INTO `playlist_map` VALUES ('562', '4', '27733050', 'cloud');
INSERT INTO `playlist_map` VALUES ('563', '4', '29758212', 'cloud');
INSERT INTO `playlist_map` VALUES ('564', '4', '28364361', 'cloud');
INSERT INTO `playlist_map` VALUES ('565', '4', '27747330', 'cloud');
INSERT INTO `playlist_map` VALUES ('566', '4', '36308916', 'cloud');
INSERT INTO `playlist_map` VALUES ('567', '4', '22640571', 'cloud');
INSERT INTO `playlist_map` VALUES ('568', '4', '406238', 'cloud');
INSERT INTO `playlist_map` VALUES ('569', '4', '26447698', 'cloud');
INSERT INTO `playlist_map` VALUES ('570', '4', '1297650', 'cloud');
INSERT INTO `playlist_map` VALUES ('571', '4', '411236802', 'cloud');
INSERT INTO `playlist_map` VALUES ('572', '5', '1367333218', 'cloud');
INSERT INTO `playlist_map` VALUES ('573', '5', '1817627858', 'cloud');
INSERT INTO `playlist_map` VALUES ('574', '5', '28718313', 'cloud');
INSERT INTO `playlist_map` VALUES ('575', '5', '484344232', 'cloud');
INSERT INTO `playlist_map` VALUES ('576', '5', '26550268', 'cloud');
INSERT INTO `playlist_map` VALUES ('577', '5', '1451332746', 'cloud');
INSERT INTO `playlist_map` VALUES ('578', '5', '1883399', 'cloud');
INSERT INTO `playlist_map` VALUES ('579', '5', '1893514633', 'cloud');
INSERT INTO `playlist_map` VALUES ('580', '5', '1805317558', 'cloud');
INSERT INTO `playlist_map` VALUES ('581', '5', '1850706877', 'cloud');
INSERT INTO `playlist_map` VALUES ('582', '5', '1361104021', 'cloud');
INSERT INTO `playlist_map` VALUES ('583', '5', '507114414', 'cloud');
INSERT INTO `playlist_map` VALUES ('584', '5', '1844156620', 'cloud');
INSERT INTO `playlist_map` VALUES ('585', '5', '1480769848', 'cloud');
INSERT INTO `playlist_map` VALUES ('586', '5', '1407910105', 'cloud');
INSERT INTO `playlist_map` VALUES ('587', '5', '1854644975', 'cloud');
INSERT INTO `playlist_map` VALUES ('588', '5', '1449790486', 'cloud');
INSERT INTO `playlist_map` VALUES ('589', '5', '21234379', 'cloud');
INSERT INTO `playlist_map` VALUES ('590', '5', '3950552', 'cloud');
INSERT INTO `playlist_map` VALUES ('591', '5', '1401302504', 'cloud');
INSERT INTO `playlist_map` VALUES ('592', '5', '1313363105', 'cloud');
INSERT INTO `playlist_map` VALUES ('593', '5', '484056480', 'cloud');
INSERT INTO `playlist_map` VALUES ('594', '5', '1387555989', 'cloud');
INSERT INTO `playlist_map` VALUES ('595', '5', '37988124', 'cloud');
INSERT INTO `playlist_map` VALUES ('596', '5', '1885131100', 'cloud');
INSERT INTO `playlist_map` VALUES ('597', '5', '1365843837', 'cloud');
INSERT INTO `playlist_map` VALUES ('598', '5', '26608507', 'cloud');
INSERT INTO `playlist_map` VALUES ('599', '5', '544247584', 'cloud');
INSERT INTO `playlist_map` VALUES ('600', '5', '26851338', 'cloud');
INSERT INTO `playlist_map` VALUES ('601', '5', '1451259420', 'cloud');
INSERT INTO `playlist_map` VALUES ('602', '5', '1430448840', 'cloud');
INSERT INTO `playlist_map` VALUES ('603', '5', '411322652', 'cloud');
INSERT INTO `playlist_map` VALUES ('604', '5', '1495070779', 'cloud');
INSERT INTO `playlist_map` VALUES ('605', '5', '1388968666', 'cloud');
INSERT INTO `playlist_map` VALUES ('606', '5', '1474554391', 'cloud');
INSERT INTO `playlist_map` VALUES ('607', '5', '1299818', 'cloud');
INSERT INTO `playlist_map` VALUES ('608', '5', '5142293', 'cloud');
INSERT INTO `playlist_map` VALUES ('609', '5', '1824599691', 'cloud');
INSERT INTO `playlist_map` VALUES ('610', '5', '1375803511', 'cloud');
INSERT INTO `playlist_map` VALUES ('611', '5', '1454317928', 'cloud');
INSERT INTO `playlist_map` VALUES ('612', '5', '1876989243', 'cloud');
INSERT INTO `playlist_map` VALUES ('613', '5', '1309795632', 'cloud');
INSERT INTO `playlist_map` VALUES ('614', '5', '2867202', 'cloud');
INSERT INTO `playlist_map` VALUES ('615', '5', '1853809171', 'cloud');
INSERT INTO `playlist_map` VALUES ('616', '5', '1826990569', 'cloud');
INSERT INTO `playlist_map` VALUES ('617', '5', '1875183310', 'cloud');
INSERT INTO `playlist_map` VALUES ('618', '5', '1859245776', 'cloud');
INSERT INTO `playlist_map` VALUES ('619', '5', '16431842', 'cloud');
INSERT INTO `playlist_map` VALUES ('620', '5', '1405120259', 'cloud');
INSERT INTO `playlist_map` VALUES ('621', '5', '1445912884', 'cloud');
INSERT INTO `playlist_map` VALUES ('622', '5', '466122659', 'cloud');
INSERT INTO `playlist_map` VALUES ('623', '5', '36921382', 'cloud');
INSERT INTO `playlist_map` VALUES ('624', '5', '1358188935', 'cloud');
INSERT INTO `playlist_map` VALUES ('625', '5', '34613621', 'cloud');
INSERT INTO `playlist_map` VALUES ('626', '5', '1307789419', 'cloud');
INSERT INTO `playlist_map` VALUES ('627', '5', '30903415', 'cloud');
INSERT INTO `playlist_map` VALUES ('628', '5', '26783438', 'cloud');
INSERT INTO `playlist_map` VALUES ('629', '5', '16432045', 'cloud');
INSERT INTO `playlist_map` VALUES ('630', '5', '514216257', 'cloud');
INSERT INTO `playlist_map` VALUES ('631', '5', '2771984', 'cloud');
INSERT INTO `playlist_map` VALUES ('632', '5', '1495177491', 'cloud');
INSERT INTO `playlist_map` VALUES ('633', '5', '1374552057', 'cloud');
INSERT INTO `playlist_map` VALUES ('634', '5', '26127499', 'cloud');
INSERT INTO `playlist_map` VALUES ('635', '5', '521646021', 'cloud');
INSERT INTO `playlist_map` VALUES ('636', '5', '2175282', 'cloud');
INSERT INTO `playlist_map` VALUES ('637', '5', '34204829', 'cloud');
INSERT INTO `playlist_map` VALUES ('638', '5', '26608504', 'cloud');
INSERT INTO `playlist_map` VALUES ('639', '5', '573652613', 'cloud');
INSERT INTO `playlist_map` VALUES ('640', '5', '409374302', 'cloud');
INSERT INTO `playlist_map` VALUES ('641', '5', '28310462', 'cloud');
INSERT INTO `playlist_map` VALUES ('642', '5', '38679619', 'cloud');
INSERT INTO `playlist_map` VALUES ('643', '5', '1482098353', 'cloud');
INSERT INTO `playlist_map` VALUES ('644', '5', '485964978', 'cloud');
INSERT INTO `playlist_map` VALUES ('645', '5', '1385109619', 'cloud');
INSERT INTO `playlist_map` VALUES ('646', '5', '1313107333', 'cloud');
INSERT INTO `playlist_map` VALUES ('647', '5', '1338490248', 'cloud');
INSERT INTO `playlist_map` VALUES ('648', '5', '29004010', 'cloud');
INSERT INTO `playlist_map` VALUES ('649', '5', '26256023', 'cloud');
INSERT INTO `playlist_map` VALUES ('650', '5', '406072775', 'cloud');
INSERT INTO `playlist_map` VALUES ('651', '5', '28878559', 'cloud');
INSERT INTO `playlist_map` VALUES ('652', '5', '500412390', 'cloud');
INSERT INTO `playlist_map` VALUES ('653', '5', '33599620', 'cloud');
INSERT INTO `playlist_map` VALUES ('654', '5', '534065017', 'cloud');
INSERT INTO `playlist_map` VALUES ('655', '5', '36496695', 'cloud');
INSERT INTO `playlist_map` VALUES ('656', '5', '412175989', 'cloud');
INSERT INTO `playlist_map` VALUES ('657', '5', '1389013281', 'cloud');
INSERT INTO `playlist_map` VALUES ('658', '5', '19558690', 'cloud');
INSERT INTO `playlist_map` VALUES ('659', '5', '432780721', 'cloud');
INSERT INTO `playlist_map` VALUES ('660', '5', '36307815', 'cloud');
INSERT INTO `playlist_map` VALUES ('661', '5', '492092475', 'cloud');
INSERT INTO `playlist_map` VALUES ('662', '5', '29498914', 'cloud');
INSERT INTO `playlist_map` VALUES ('663', '5', '19292984', 'cloud');
INSERT INTO `playlist_map` VALUES ('664', '5', '34743154', 'cloud');
INSERT INTO `playlist_map` VALUES ('665', '5', '1375586740', 'cloud');
INSERT INTO `playlist_map` VALUES ('666', '5', '1373168761', 'cloud');
INSERT INTO `playlist_map` VALUES ('667', '5', '19160471', 'cloud');
INSERT INTO `playlist_map` VALUES ('668', '5', '28402345', 'cloud');
INSERT INTO `playlist_map` VALUES ('669', '5', '20036073', 'cloud');
INSERT INTO `playlist_map` VALUES ('670', '5', '2313952', 'cloud');
INSERT INTO `playlist_map` VALUES ('671', '5', '19081573', 'cloud');
INSERT INTO `playlist_map` VALUES ('672', '5', '33418570', 'cloud');
INSERT INTO `playlist_map` VALUES ('673', '5', '28832241', 'cloud');
INSERT INTO `playlist_map` VALUES ('674', '5', '32166698', 'cloud');
INSERT INTO `playlist_map` VALUES ('675', '5', '470547653', 'cloud');
INSERT INTO `playlist_map` VALUES ('676', '5', '19711382', 'cloud');
INSERT INTO `playlist_map` VALUES ('677', '5', '28157586', 'cloud');
INSERT INTO `playlist_map` VALUES ('678', '5', '26379201', 'cloud');
INSERT INTO `playlist_map` VALUES ('679', '5', '1388967976', 'cloud');
INSERT INTO `playlist_map` VALUES ('680', '5', '513511109', 'cloud');
INSERT INTO `playlist_map` VALUES ('681', '5', '529824982', 'cloud');
INSERT INTO `playlist_map` VALUES ('682', '5', '1340520626', 'cloud');
INSERT INTO `playlist_map` VALUES ('683', '5', '28481189', 'cloud');
INSERT INTO `playlist_map` VALUES ('684', '5', '515601126', 'cloud');
INSERT INTO `playlist_map` VALUES ('685', '5', '19610381', 'cloud');
INSERT INTO `playlist_map` VALUES ('686', '5', '19567986', 'cloud');
INSERT INTO `playlist_map` VALUES ('687', '5', '401249910', 'cloud');
INSERT INTO `playlist_map` VALUES ('688', '5', '25657282', 'cloud');
INSERT INTO `playlist_map` VALUES ('689', '5', '1351219081', 'cloud');
INSERT INTO `playlist_map` VALUES ('690', '5', '33071205', 'cloud');
INSERT INTO `playlist_map` VALUES ('691', '5', '26657845', 'cloud');
INSERT INTO `playlist_map` VALUES ('692', '5', '21974814', 'cloud');
INSERT INTO `playlist_map` VALUES ('693', '5', '17753288', 'cloud');
INSERT INTO `playlist_map` VALUES ('694', '5', '18836961', 'cloud');
INSERT INTO `playlist_map` VALUES ('695', '5', '27646851', 'cloud');
INSERT INTO `playlist_map` VALUES ('696', '5', '499384440', 'cloud');
INSERT INTO `playlist_map` VALUES ('697', '5', '491271737', 'cloud');
INSERT INTO `playlist_map` VALUES ('698', '5', '27804336', 'cloud');
INSERT INTO `playlist_map` VALUES ('699', '5', '438981337', 'cloud');
INSERT INTO `playlist_map` VALUES ('700', '5', '4433364', 'cloud');
INSERT INTO `playlist_map` VALUES ('701', '5', '19572271', 'cloud');
INSERT INTO `playlist_map` VALUES ('702', '5', '28828120', 'cloud');
INSERT INTO `playlist_map` VALUES ('703', '5', '465920383', 'cloud');
INSERT INTO `playlist_map` VALUES ('704', '5', '1300528275', 'cloud');
INSERT INTO `playlist_map` VALUES ('705', '5', '31010566', 'cloud');
INSERT INTO `playlist_map` VALUES ('706', '5', '511678913', 'cloud');
INSERT INTO `playlist_map` VALUES ('707', '5', '472045959', 'cloud');
INSERT INTO `playlist_map` VALUES ('708', '5', '1355147933', 'cloud');
INSERT INTO `playlist_map` VALUES ('709', '5', '25677802', 'cloud');
INSERT INTO `playlist_map` VALUES ('710', '5', '480426313', 'cloud');
INSERT INTO `playlist_map` VALUES ('711', '5', '17562882', 'cloud');
INSERT INTO `playlist_map` VALUES ('712', '5', '28256115', 'cloud');
INSERT INTO `playlist_map` VALUES ('713', '5', '17804227', 'cloud');
INSERT INTO `playlist_map` VALUES ('714', '5', '4164317', 'cloud');
INSERT INTO `playlist_map` VALUES ('715', '5', '28593339', 'cloud');
INSERT INTO `playlist_map` VALUES ('716', '5', '1329183592', 'cloud');
INSERT INTO `playlist_map` VALUES ('717', '5', '31421331', 'cloud');
INSERT INTO `playlist_map` VALUES ('718', '5', '28464997', 'cloud');
INSERT INTO `playlist_map` VALUES ('719', '5', '18836957', 'cloud');
INSERT INTO `playlist_map` VALUES ('720', '5', '26425280', 'cloud');
INSERT INTO `playlist_map` VALUES ('721', '5', '2923152', 'cloud');
INSERT INTO `playlist_map` VALUES ('722', '5', '18981962', 'cloud');
INSERT INTO `playlist_map` VALUES ('723', '5', '416700601', 'cloud');
INSERT INTO `playlist_map` VALUES ('724', '5', '28220107', 'cloud');
INSERT INTO `playlist_map` VALUES ('725', '5', '465920775', 'cloud');
INSERT INTO `playlist_map` VALUES ('726', '5', '32807699', 'cloud');
INSERT INTO `playlist_map` VALUES ('727', '5', '460043708', 'cloud');
INSERT INTO `playlist_map` VALUES ('728', '5', '426291544', 'cloud');
INSERT INTO `playlist_map` VALUES ('729', '5', '27090060', 'cloud');
INSERT INTO `playlist_map` VALUES ('730', '5', '441491080', 'cloud');
INSERT INTO `playlist_map` VALUES ('731', '5', '483223413', 'cloud');
INSERT INTO `playlist_map` VALUES ('732', '5', '32835004', 'cloud');
INSERT INTO `playlist_map` VALUES ('733', '5', '460043704', 'cloud');
INSERT INTO `playlist_map` VALUES ('734', '5', '26613394', 'cloud');
INSERT INTO `playlist_map` VALUES ('735', '5', '410925171', 'cloud');
INSERT INTO `playlist_map` VALUES ('736', '5', '4153366', 'cloud');
INSERT INTO `playlist_map` VALUES ('737', '5', '1825870', 'cloud');
INSERT INTO `playlist_map` VALUES ('738', '5', '480409513', 'cloud');
INSERT INTO `playlist_map` VALUES ('739', '5', '401722227', 'cloud');
INSERT INTO `playlist_map` VALUES ('740', '5', '18922323', 'cloud');
INSERT INTO `playlist_map` VALUES ('741', '5', '17956427', 'cloud');
INSERT INTO `playlist_map` VALUES ('742', '5', '29562296', 'cloud');
INSERT INTO `playlist_map` VALUES ('743', '5', '21803760', 'cloud');
INSERT INTO `playlist_map` VALUES ('744', '5', '17112299', 'cloud');
INSERT INTO `playlist_map` VALUES ('745', '5', '29803676', 'cloud');
INSERT INTO `playlist_map` VALUES ('746', '5', '27683337', 'cloud');
INSERT INTO `playlist_map` VALUES ('747', '5', '27514868', 'cloud');
INSERT INTO `playlist_map` VALUES ('748', '5', '20707408', 'cloud');
INSERT INTO `playlist_map` VALUES ('749', '5', '33544176', 'cloud');
INSERT INTO `playlist_map` VALUES ('750', '5', '409102911', 'cloud');
INSERT INTO `playlist_map` VALUES ('751', '5', '409916250', 'cloud');
INSERT INTO `playlist_map` VALUES ('752', '5', '227724', 'cloud');
INSERT INTO `playlist_map` VALUES ('753', '5', '473602620', 'cloud');
INSERT INTO `playlist_map` VALUES ('754', '5', '3305969', 'cloud');
INSERT INTO `playlist_map` VALUES ('755', '5', '33291435', 'cloud');
INSERT INTO `playlist_map` VALUES ('756', '5', '29561077', 'cloud');
INSERT INTO `playlist_map` VALUES ('757', '5', '21343559', 'cloud');
INSERT INTO `playlist_map` VALUES ('758', '5', '27853227', 'cloud');
INSERT INTO `playlist_map` VALUES ('759', '5', '3950792', 'cloud');
INSERT INTO `playlist_map` VALUES ('760', '5', '37955044', 'cloud');
INSERT INTO `playlist_map` VALUES ('761', '5', '421423756', 'cloud');
INSERT INTO `playlist_map` VALUES ('762', '5', '2871217', 'cloud');
INSERT INTO `playlist_map` VALUES ('763', '5', '4132379', 'cloud');
INSERT INTO `playlist_map` VALUES ('764', '5', '794080', 'cloud');
INSERT INTO `playlist_map` VALUES ('765', '5', '5253801', 'cloud');
INSERT INTO `playlist_map` VALUES ('766', '5', '21606436', 'cloud');
INSERT INTO `playlist_map` VALUES ('767', '5', '28095742', 'cloud');
INSERT INTO `playlist_map` VALUES ('768', '5', '4224657', 'cloud');
INSERT INTO `playlist_map` VALUES ('769', '5', '29561525', 'cloud');
INSERT INTO `playlist_map` VALUES ('770', '5', '475073464', 'cloud');
INSERT INTO `playlist_map` VALUES ('771', '5', '29009655', 'cloud');
INSERT INTO `playlist_map` VALUES ('772', '5', '427142481', 'cloud');
INSERT INTO `playlist_map` VALUES ('773', '5', '461347998', 'cloud');
INSERT INTO `playlist_map` VALUES ('774', '5', '451703096', 'cloud');
INSERT INTO `playlist_map` VALUES ('775', '5', '36990266', 'cloud');
INSERT INTO `playlist_map` VALUES ('776', '5', '28136576', 'cloud');
INSERT INTO `playlist_map` VALUES ('777', '5', '37653063', 'cloud');
INSERT INTO `playlist_map` VALUES ('778', '5', '29732659', 'cloud');
INSERT INTO `playlist_map` VALUES ('779', '5', '1210461', 'cloud');
INSERT INTO `playlist_map` VALUES ('780', '5', '38592976', 'cloud');
INSERT INTO `playlist_map` VALUES ('781', '5', '16232697', 'cloud');
INSERT INTO `playlist_map` VALUES ('782', '5', '16686610', 'cloud');
INSERT INTO `playlist_map` VALUES ('783', '5', '5065581', 'cloud');
INSERT INTO `playlist_map` VALUES ('784', '5', '16858400', 'cloud');
INSERT INTO `playlist_map` VALUES ('785', '5', '28708061', 'cloud');
INSERT INTO `playlist_map` VALUES ('786', '5', '29307037', 'cloud');
INSERT INTO `playlist_map` VALUES ('787', '5', '25704014', 'cloud');
INSERT INTO `playlist_map` VALUES ('788', '5', '3950546', 'cloud');
INSERT INTO `playlist_map` VALUES ('789', '5', '3560369', 'cloud');
INSERT INTO `playlist_map` VALUES ('790', '5', '27552734', 'cloud');
INSERT INTO `playlist_map` VALUES ('791', '5', '21253809', 'cloud');
INSERT INTO `playlist_map` VALUES ('792', '5', '28566210', 'cloud');
INSERT INTO `playlist_map` VALUES ('793', '5', '27969800', 'cloud');
INSERT INTO `playlist_map` VALUES ('794', '5', '17721274', 'cloud');
INSERT INTO `playlist_map` VALUES ('795', '5', '1297841', 'cloud');
INSERT INTO `playlist_map` VALUES ('796', '5', '434974661', 'cloud');
INSERT INTO `playlist_map` VALUES ('797', '5', '19945726', 'cloud');
INSERT INTO `playlist_map` VALUES ('798', '5', '17282443', 'cloud');
INSERT INTO `playlist_map` VALUES ('799', '5', '28188171', 'cloud');
INSERT INTO `playlist_map` VALUES ('800', '5', '28923579', 'cloud');
INSERT INTO `playlist_map` VALUES ('801', '5', '17706535', 'cloud');
INSERT INTO `playlist_map` VALUES ('802', '5', '30780496', 'cloud');
INSERT INTO `playlist_map` VALUES ('803', '5', '21253958', 'cloud');
INSERT INTO `playlist_map` VALUES ('804', '5', '4172700', 'cloud');
INSERT INTO `playlist_map` VALUES ('805', '5', '19291941', 'cloud');
INSERT INTO `playlist_map` VALUES ('806', '5', '4164331', 'cloud');
INSERT INTO `playlist_map` VALUES ('807', '5', '16375205', 'cloud');
INSERT INTO `playlist_map` VALUES ('808', '5', '28310479', 'cloud');
INSERT INTO `playlist_map` VALUES ('809', '5', '26199445', 'cloud');
INSERT INTO `playlist_map` VALUES ('810', '5', '25657280', 'cloud');
INSERT INTO `playlist_map` VALUES ('811', '5', '3406379', 'cloud');
INSERT INTO `playlist_map` VALUES ('812', '5', '2870985', 'cloud');
INSERT INTO `playlist_map` VALUES ('813', '5', '30953009', 'cloud');
INSERT INTO `playlist_map` VALUES ('814', '5', '28577876', 'cloud');
INSERT INTO `playlist_map` VALUES ('815', '5', '29019227', 'cloud');
INSERT INTO `playlist_map` VALUES ('816', '5', '24300493', 'cloud');
INSERT INTO `playlist_map` VALUES ('817', '5', '25657277', 'cloud');
INSERT INTO `playlist_map` VALUES ('818', '5', '26199446', 'cloud');
INSERT INTO `playlist_map` VALUES ('819', '5', '29307038', 'cloud');
INSERT INTO `playlist_map` VALUES ('820', '5', '16483438', 'cloud');
INSERT INTO `playlist_map` VALUES ('821', '5', '28987626', 'cloud');
INSERT INTO `playlist_map` VALUES ('822', '5', '29019232', 'cloud');
INSERT INTO `playlist_map` VALUES ('823', '5', '27580521', 'cloud');
INSERT INTO `playlist_map` VALUES ('824', '5', '28308080', 'cloud');
INSERT INTO `playlist_map` VALUES ('825', '5', '1297650', 'cloud');
INSERT INTO `playlist_map` VALUES ('826', '5', '4083874', 'cloud');
INSERT INTO `playlist_map` VALUES ('827', '5', '4083642', 'cloud');
INSERT INTO `playlist_map` VALUES ('828', '5', '27583305', 'cloud');
INSERT INTO `playlist_map` VALUES ('829', '5', '26060065', 'cloud');
INSERT INTO `playlist_map` VALUES ('830', '5', '5179544', 'cloud');
INSERT INTO `playlist_map` VALUES ('831', '5', '16607998', 'cloud');
INSERT INTO `playlist_map` VALUES ('832', '5', '28661564', 'cloud');
INSERT INTO `playlist_map` VALUES ('833', '5', '1217823', 'cloud');
INSERT INTO `playlist_map` VALUES ('834', '5', '4386589', 'cloud');

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
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '圣代');
INSERT INTO `singer` VALUES ('2', 'OneRepublic');
INSERT INTO `singer` VALUES ('3', 'Darren Hayes');
INSERT INTO `singer` VALUES ('4', '钟岚珠');
INSERT INTO `singer` VALUES ('5', 'Charlie Puth');
INSERT INTO `singer` VALUES ('6', 'Jewel');
INSERT INTO `singer` VALUES ('7', 'The Cab');
INSERT INTO `singer` VALUES ('8', '(K)NoW_NAME');
INSERT INTO `singer` VALUES ('9', 'Vox Angeli');
INSERT INTO `singer` VALUES ('10', 'Mandisa');
INSERT INTO `singer` VALUES ('11', '阿云嘎');
INSERT INTO `singer` VALUES ('12', 'Earth, Wind & Fire');
INSERT INTO `singer` VALUES ('13', 'Gym Class Heroes');
INSERT INTO `singer` VALUES ('14', 'Shayne Ward');
INSERT INTO `singer` VALUES ('15', 'The Wanted');
INSERT INTO `singer` VALUES ('16', 'Ed Sheeran');
INSERT INTO `singer` VALUES ('17', '星尘');
INSERT INTO `singer` VALUES ('18', 'H.K.(HEROAR)');
INSERT INTO `singer` VALUES ('19', 'JazMaybe(HEROAR)');
INSERT INTO `singer` VALUES ('20', 'Lukas Graham');
INSERT INTO `singer` VALUES ('21', 'Lulleaux');
INSERT INTO `singer` VALUES ('22', 'Giang Pham');
INSERT INTO `singer` VALUES ('23', '咬人猫');
INSERT INTO `singer` VALUES ('24', 'WORLD ORDER');
INSERT INTO `singer` VALUES ('25', 'Shawn Mendes');
INSERT INTO `singer` VALUES ('26', 'Taylor Swift');
INSERT INTO `singer` VALUES ('27', 'Justin Bieber');
INSERT INTO `singer` VALUES ('28', 'One Direction');
INSERT INTO `singer` VALUES ('29', '鹿乃');
INSERT INTO `singer` VALUES ('30', 'P*Light');
INSERT INTO `singer` VALUES ('31', 'BoA');
INSERT INTO `singer` VALUES ('32', '周杰伦');
INSERT INTO `singer` VALUES ('33', '巡音ルカ');
INSERT INTO `singer` VALUES ('34', 'れるりり');
INSERT INTO `singer` VALUES ('35', '初音ミク');
INSERT INTO `singer` VALUES ('36', '鏡音リン');
INSERT INTO `singer` VALUES ('37', '鏡音レン');
INSERT INTO `singer` VALUES ('38', '歌愛ユキ');
INSERT INTO `singer` VALUES ('39', 'GUMI');
INSERT INTO `singer` VALUES ('40', '脸红的思春期');
INSERT INTO `singer` VALUES ('41', 'Rita Ora');
INSERT INTO `singer` VALUES ('42', '中村千尋');
INSERT INTO `singer` VALUES ('43', '乐正绫');
INSERT INTO `singer` VALUES ('44', 'ilem');
INSERT INTO `singer` VALUES ('45', '月蚀音乐');
INSERT INTO `singer` VALUES ('46', '乐正龙牙');
INSERT INTO `singer` VALUES ('47', '墨清弦');
INSERT INTO `singer` VALUES ('48', '小野道ono');
INSERT INTO `singer` VALUES ('49', 'karin');
INSERT INTO `singer` VALUES ('50', 'Z新豪');
INSERT INTO `singer` VALUES ('51', '洛天依');
INSERT INTO `singer` VALUES ('52', '米白');
INSERT INTO `singer` VALUES ('53', '言和');
INSERT INTO `singer` VALUES ('54', '泠鸢yousa');
INSERT INTO `singer` VALUES ('55', 'H.');
INSERT INTO `singer` VALUES ('56', '三无MarBlue');
INSERT INTO `singer` VALUES ('57', '冥月');
INSERT INTO `singer` VALUES ('58', '岚AYA');
INSERT INTO `singer` VALUES ('59', 'Mes');
INSERT INTO `singer` VALUES ('60', 'hanser');
INSERT INTO `singer` VALUES ('61', 'YUKIri');
INSERT INTO `singer` VALUES ('62', '米津玄師');
INSERT INTO `singer` VALUES ('63', '琉绮Ruki');
INSERT INTO `singer` VALUES ('64', '夏色祭Official');
INSERT INTO `singer` VALUES ('65', '鹿乃ちゃん');
INSERT INTO `singer` VALUES ('66', '花丸晴琉Official');
INSERT INTO `singer` VALUES ('67', '神楽Mea_NHOTBOT');
INSERT INTO `singer` VALUES ('68', '物述有栖Official');
INSERT INTO `singer` VALUES ('69', '白上吹雪Official');
INSERT INTO `singer` VALUES ('70', 'YuH_ChiliChill');
INSERT INTO `singer` VALUES ('71', '西瓜Kune');
INSERT INTO `singer` VALUES ('72', 'cu夏_ChiliChill');

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
-- Records of singer_map
-- ----------------------------
INSERT INTO `singer_map` VALUES ('1', '1', '圣代');
INSERT INTO `singer_map` VALUES ('2', '2', 'OneRepublic');
INSERT INTO `singer_map` VALUES ('3', '2', '共和时代');
INSERT INTO `singer_map` VALUES ('4', '3', 'Darren Hayes');
INSERT INTO `singer_map` VALUES ('5', '3', '戴伦.汉斯');
INSERT INTO `singer_map` VALUES ('6', '4', '钟岚珠');
INSERT INTO `singer_map` VALUES ('7', '4', '鐘 嵐珠');
INSERT INTO `singer_map` VALUES ('8', '4', 'ジョウ ランジュウ');
INSERT INTO `singer_map` VALUES ('9', '5', 'Charlie Puth');
INSERT INTO `singer_map` VALUES ('10', '5', '查理·普斯');
INSERT INTO `singer_map` VALUES ('11', '6', 'Jewel');
INSERT INTO `singer_map` VALUES ('12', '6', '珠儿');
INSERT INTO `singer_map` VALUES ('13', '7', 'The Cab');
INSERT INTO `singer_map` VALUES ('14', '8', '(K)NoW_NAME');
INSERT INTO `singer_map` VALUES ('15', '9', 'Vox Angeli');
INSERT INTO `singer_map` VALUES ('16', '10', 'Mandisa');
INSERT INTO `singer_map` VALUES ('17', '11', '阿云嘎');
INSERT INTO `singer_map` VALUES ('18', '12', 'Earth, Wind & Fire');
INSERT INTO `singer_map` VALUES ('19', '12', '地,风,火');
INSERT INTO `singer_map` VALUES ('20', '13', 'Gym Class Heroes');
INSERT INTO `singer_map` VALUES ('21', '14', 'Shayne Ward');
INSERT INTO `singer_map` VALUES ('22', '14', '肖恩·沃德');
INSERT INTO `singer_map` VALUES ('23', '15', 'The Wanted');
INSERT INTO `singer_map` VALUES ('24', '15', '通缉男孩');
INSERT INTO `singer_map` VALUES ('25', '16', 'Ed Sheeran');
INSERT INTO `singer_map` VALUES ('26', '16', '艾德·希兰');
INSERT INTO `singer_map` VALUES ('27', '16', '黄老板');
INSERT INTO `singer_map` VALUES ('28', '17', '星尘');
INSERT INTO `singer_map` VALUES ('29', '18', 'H.K.(HEROAR)');
INSERT INTO `singer_map` VALUES ('30', '19', 'JazMaybe(HEROAR)');
INSERT INTO `singer_map` VALUES ('31', '20', 'Lukas Graham');
INSERT INTO `singer_map` VALUES ('32', '21', 'Lulleaux');
INSERT INTO `singer_map` VALUES ('33', '22', 'Giang Pham');
INSERT INTO `singer_map` VALUES ('35', '23', '咬人猫');
INSERT INTO `singer_map` VALUES ('36', '24', 'WORLD ORDER');
INSERT INTO `singer_map` VALUES ('37', '24', 'ワールド・オーダー');
INSERT INTO `singer_map` VALUES ('38', '25', 'Shawn Mendes');
INSERT INTO `singer_map` VALUES ('39', '25', '肖恩·蒙德兹');
INSERT INTO `singer_map` VALUES ('40', '26', 'Taylor Swift');
INSERT INTO `singer_map` VALUES ('41', '26', '泰勒·斯威夫特');
INSERT INTO `singer_map` VALUES ('42', '27', 'Justin Bieber');
INSERT INTO `singer_map` VALUES ('43', '27', '贾斯汀·比伯');
INSERT INTO `singer_map` VALUES ('44', '28', 'One Direction');
INSERT INTO `singer_map` VALUES ('45', '29', '鹿乃');
INSERT INTO `singer_map` VALUES ('46', '29', 'かの');
INSERT INTO `singer_map` VALUES ('47', '30', 'P*Light');
INSERT INTO `singer_map` VALUES ('48', '30', '八王子P');
INSERT INTO `singer_map` VALUES ('49', '30', '8#Prince');
INSERT INTO `singer_map` VALUES ('50', '30', 'ピライト');
INSERT INTO `singer_map` VALUES ('51', '31', 'BoA');
INSERT INTO `singer_map` VALUES ('52', '32', '周杰伦');
INSERT INTO `singer_map` VALUES ('53', '32', 'Jay Chou');
INSERT INTO `singer_map` VALUES ('54', '32', '周董');
INSERT INTO `singer_map` VALUES ('55', '33', '巡音ルカ');
INSERT INTO `singer_map` VALUES ('56', '34', 'れるりり');
INSERT INTO `singer_map` VALUES ('57', '34', '当社比P');
INSERT INTO `singer_map` VALUES ('58', '35', '初音ミク');
INSERT INTO `singer_map` VALUES ('59', '35', '初音未来');
INSERT INTO `singer_map` VALUES ('60', '35', 'Hatsune Miku');
INSERT INTO `singer_map` VALUES ('61', '33', '巡音流歌');
INSERT INTO `singer_map` VALUES ('62', '36', '鏡音リン');
INSERT INTO `singer_map` VALUES ('63', '36', '镜音铃');
INSERT INTO `singer_map` VALUES ('64', '37', '鏡音レン');
INSERT INTO `singer_map` VALUES ('65', '37', '镜音连');
INSERT INTO `singer_map` VALUES ('66', '38', '歌愛ユキ');
INSERT INTO `singer_map` VALUES ('67', '38', '歌爱雪');
INSERT INTO `singer_map` VALUES ('68', '39', 'GUMI');
INSERT INTO `singer_map` VALUES ('69', '39', 'Megpoid');
INSERT INTO `singer_map` VALUES ('70', '39', 'グミ');
INSERT INTO `singer_map` VALUES ('71', '39', 'メグッポイド');
INSERT INTO `singer_map` VALUES ('72', '40', '脸红的思春期');
INSERT INTO `singer_map` VALUES ('75', '40', '볼빨간 사춘기');
INSERT INTO `singer_map` VALUES ('76', '40', 'BOL4');
INSERT INTO `singer_map` VALUES ('77', '41', 'Rita Ora');
INSERT INTO `singer_map` VALUES ('78', '41', '瑞塔·奥拉');
INSERT INTO `singer_map` VALUES ('79', '42', '中村千尋');
INSERT INTO `singer_map` VALUES ('80', '42', '中村千寻');
INSERT INTO `singer_map` VALUES ('81', '43', '乐正绫');
INSERT INTO `singer_map` VALUES ('82', '44', 'ilem');
INSERT INTO `singer_map` VALUES ('83', '45', '月蚀音乐');
INSERT INTO `singer_map` VALUES ('84', '46', '乐正龙牙');
INSERT INTO `singer_map` VALUES ('85', '46', '乐正十万');
INSERT INTO `singer_map` VALUES ('86', '46', '龙十万');
INSERT INTO `singer_map` VALUES ('87', '47', '墨清弦');
INSERT INTO `singer_map` VALUES ('88', '48', '小野道ono');
INSERT INTO `singer_map` VALUES ('89', '49', 'karin');
INSERT INTO `singer_map` VALUES ('90', '50', 'Z新豪');
INSERT INTO `singer_map` VALUES ('91', '51', '洛天依');
INSERT INTO `singer_map` VALUES ('92', '52', '米白');
INSERT INTO `singer_map` VALUES ('93', '53', '言和');
INSERT INTO `singer_map` VALUES ('94', '54', '泠鸢yousa');
INSERT INTO `singer_map` VALUES ('95', '55', 'H.');
INSERT INTO `singer_map` VALUES ('96', '56', '三无MarBlue');
INSERT INTO `singer_map` VALUES ('97', '56', '三无');
INSERT INTO `singer_map` VALUES ('98', '57', '冥月');
INSERT INTO `singer_map` VALUES ('99', '57', '冥月の翼');
INSERT INTO `singer_map` VALUES ('100', '58', '岚AYA');
INSERT INTO `singer_map` VALUES ('101', '59', 'Mes');
INSERT INTO `singer_map` VALUES ('102', '60', 'hanser');
INSERT INTO `singer_map` VALUES ('103', '61', 'YUKIri');
INSERT INTO `singer_map` VALUES ('104', '62', '米津玄師');
INSERT INTO `singer_map` VALUES ('105', '62', '米津玄师');
INSERT INTO `singer_map` VALUES ('107', '62', 'ハチ');
INSERT INTO `singer_map` VALUES ('108', '63', '琉绮Ruki');
INSERT INTO `singer_map` VALUES ('109', '69', '白上吹雪Official');
INSERT INTO `singer_map` VALUES ('110', '68', '物述有栖Official');
INSERT INTO `singer_map` VALUES ('111', '67', '神楽Mea_NHOTBOT');
INSERT INTO `singer_map` VALUES ('112', '66', '花丸晴琉Official');
INSERT INTO `singer_map` VALUES ('113', '65', '鹿乃ちゃん');
INSERT INTO `singer_map` VALUES ('114', '64', '夏色祭Official');
INSERT INTO `singer_map` VALUES ('115', '70', 'YuH_ChiliChill');
INSERT INTO `singer_map` VALUES ('116', '72', 'cu夏_ChiliChill');
INSERT INTO `singer_map` VALUES ('127', '71', '西瓜Kune');

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
