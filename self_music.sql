/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-28 14:22:37
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
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌单id',
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
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES ('1', 'loop', 'just歌单简介', '/imgs/music.jpg', '1666928972000', '1666929015000', '0', '1', '0');
INSERT INTO `playlist` VALUES ('6', '英语', '', 'https://p2.music.126.net/qe3qc7F4LYmm8QsDY5XK8Q==/109951165693358229.jpg', '1666930426000', '1666930426000', '0', '1', '0');
INSERT INTO `playlist` VALUES ('7', 'lindsey', '', 'https://p2.music.126.net/qe3qc7F4LYmm8QsDY5XK8Q==/109951165693358229.jpg', '1666930695000', '1666930695000', '0', '1', '0');
INSERT INTO `playlist` VALUES ('8', '折纸', '', 'https://p2.music.126.net/cpoUinrExafBHL5Nv5iDHQ==/109951166361218466.jpg', '1666930709000', '1666930709000', '0', '1', '0');

-- ----------------------------
-- Table structure for playlist_map
-- ----------------------------
DROP TABLE IF EXISTS `playlist_map`;
CREATE TABLE `playlist_map` (
  `playlist_map_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `playlist_id` int(11) NOT NULL COMMENT '歌单id',
  `music_id` int(11) NOT NULL COMMENT '歌曲id',
  `music_type` enum('cloud','local') NOT NULL DEFAULT 'local' COMMENT '歌曲类型',
  UNIQUE KEY `playlist_map_id` (`playlist_map_id`),
  KEY `playlist_id` (`playlist_id`),
  KEY `music_id` (`music_id`),
  CONSTRAINT `playlist_map_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;

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
INSERT INTO `playlist_map` VALUES ('45', '6', '1893514633', 'cloud');
INSERT INTO `playlist_map` VALUES ('46', '6', '1817627858', 'cloud');
INSERT INTO `playlist_map` VALUES ('47', '6', '28718313', 'cloud');
INSERT INTO `playlist_map` VALUES ('48', '6', '1959043622', 'cloud');
INSERT INTO `playlist_map` VALUES ('49', '6', '1980790109', 'cloud');
INSERT INTO `playlist_map` VALUES ('50', '6', '484344232', 'cloud');
INSERT INTO `playlist_map` VALUES ('51', '6', '26550268', 'cloud');
INSERT INTO `playlist_map` VALUES ('52', '6', '1451332746', 'cloud');
INSERT INTO `playlist_map` VALUES ('53', '6', '1883399', 'cloud');
INSERT INTO `playlist_map` VALUES ('54', '6', '1805317558', 'cloud');
INSERT INTO `playlist_map` VALUES ('55', '6', '1850706877', 'cloud');
INSERT INTO `playlist_map` VALUES ('56', '6', '1367333218', 'cloud');
INSERT INTO `playlist_map` VALUES ('57', '6', '1361104021', 'cloud');
INSERT INTO `playlist_map` VALUES ('58', '6', '1844156620', 'cloud');
INSERT INTO `playlist_map` VALUES ('59', '6', '1480769848', 'cloud');
INSERT INTO `playlist_map` VALUES ('60', '6', '1407910105', 'cloud');
INSERT INTO `playlist_map` VALUES ('61', '6', '1854644975', 'cloud');
INSERT INTO `playlist_map` VALUES ('62', '6', '1449790486', 'cloud');
INSERT INTO `playlist_map` VALUES ('63', '6', '507114414', 'cloud');
INSERT INTO `playlist_map` VALUES ('64', '6', '21234379', 'cloud');
INSERT INTO `playlist_map` VALUES ('65', '6', '3950552', 'cloud');
INSERT INTO `playlist_map` VALUES ('66', '6', '1401302504', 'cloud');
INSERT INTO `playlist_map` VALUES ('67', '6', '1313363105', 'cloud');
INSERT INTO `playlist_map` VALUES ('68', '6', '484056480', 'cloud');
INSERT INTO `playlist_map` VALUES ('69', '6', '1387555989', 'cloud');
INSERT INTO `playlist_map` VALUES ('70', '6', '37988124', 'cloud');
INSERT INTO `playlist_map` VALUES ('71', '6', '1885131100', 'cloud');
INSERT INTO `playlist_map` VALUES ('72', '6', '1365843837', 'cloud');
INSERT INTO `playlist_map` VALUES ('73', '6', '26608507', 'cloud');
INSERT INTO `playlist_map` VALUES ('74', '6', '544247584', 'cloud');
INSERT INTO `playlist_map` VALUES ('75', '6', '26851338', 'cloud');
INSERT INTO `playlist_map` VALUES ('76', '6', '1451259420', 'cloud');
INSERT INTO `playlist_map` VALUES ('77', '6', '1430448840', 'cloud');
INSERT INTO `playlist_map` VALUES ('78', '6', '411322652', 'cloud');
INSERT INTO `playlist_map` VALUES ('79', '6', '1388968666', 'cloud');
INSERT INTO `playlist_map` VALUES ('80', '6', '1495070779', 'cloud');
INSERT INTO `playlist_map` VALUES ('81', '6', '1474554391', 'cloud');
INSERT INTO `playlist_map` VALUES ('82', '6', '1299818', 'cloud');
INSERT INTO `playlist_map` VALUES ('83', '6', '5142293', 'cloud');
INSERT INTO `playlist_map` VALUES ('84', '6', '1824599691', 'cloud');
INSERT INTO `playlist_map` VALUES ('85', '6', '1375803511', 'cloud');
INSERT INTO `playlist_map` VALUES ('86', '6', '1454317928', 'cloud');
INSERT INTO `playlist_map` VALUES ('87', '6', '1876989243', 'cloud');
INSERT INTO `playlist_map` VALUES ('88', '6', '1309795632', 'cloud');
INSERT INTO `playlist_map` VALUES ('89', '6', '1853809171', 'cloud');
INSERT INTO `playlist_map` VALUES ('90', '6', '1826990569', 'cloud');
INSERT INTO `playlist_map` VALUES ('91', '6', '1875183310', 'cloud');
INSERT INTO `playlist_map` VALUES ('92', '6', '1859245776', 'cloud');
INSERT INTO `playlist_map` VALUES ('93', '6', '2867202', 'cloud');
INSERT INTO `playlist_map` VALUES ('94', '6', '16431842', 'cloud');
INSERT INTO `playlist_map` VALUES ('95', '6', '1405120259', 'cloud');
INSERT INTO `playlist_map` VALUES ('96', '6', '1445912884', 'cloud');
INSERT INTO `playlist_map` VALUES ('97', '6', '466122659', 'cloud');
INSERT INTO `playlist_map` VALUES ('98', '6', '36921382', 'cloud');
INSERT INTO `playlist_map` VALUES ('99', '6', '1358188935', 'cloud');
INSERT INTO `playlist_map` VALUES ('100', '6', '34613621', 'cloud');
INSERT INTO `playlist_map` VALUES ('101', '6', '1307789419', 'cloud');
INSERT INTO `playlist_map` VALUES ('102', '6', '30903415', 'cloud');
INSERT INTO `playlist_map` VALUES ('103', '6', '26783438', 'cloud');
INSERT INTO `playlist_map` VALUES ('104', '6', '16432045', 'cloud');
INSERT INTO `playlist_map` VALUES ('105', '6', '2771984', 'cloud');
INSERT INTO `playlist_map` VALUES ('106', '6', '1495177491', 'cloud');
INSERT INTO `playlist_map` VALUES ('107', '6', '514216257', 'cloud');
INSERT INTO `playlist_map` VALUES ('108', '6', '1374552057', 'cloud');
INSERT INTO `playlist_map` VALUES ('109', '6', '26127499', 'cloud');
INSERT INTO `playlist_map` VALUES ('110', '6', '521646021', 'cloud');
INSERT INTO `playlist_map` VALUES ('111', '6', '2175282', 'cloud');
INSERT INTO `playlist_map` VALUES ('112', '6', '34204829', 'cloud');
INSERT INTO `playlist_map` VALUES ('113', '6', '26608504', 'cloud');
INSERT INTO `playlist_map` VALUES ('114', '6', '573652613', 'cloud');
INSERT INTO `playlist_map` VALUES ('115', '6', '38679619', 'cloud');
INSERT INTO `playlist_map` VALUES ('116', '6', '409374302', 'cloud');
INSERT INTO `playlist_map` VALUES ('117', '6', '28310462', 'cloud');
INSERT INTO `playlist_map` VALUES ('118', '6', '1482098353', 'cloud');
INSERT INTO `playlist_map` VALUES ('119', '6', '485964978', 'cloud');
INSERT INTO `playlist_map` VALUES ('120', '6', '1385109619', 'cloud');
INSERT INTO `playlist_map` VALUES ('121', '6', '1313107333', 'cloud');
INSERT INTO `playlist_map` VALUES ('122', '6', '1338490248', 'cloud');
INSERT INTO `playlist_map` VALUES ('123', '6', '29004010', 'cloud');
INSERT INTO `playlist_map` VALUES ('124', '6', '28878559', 'cloud');
INSERT INTO `playlist_map` VALUES ('125', '6', '26256023', 'cloud');
INSERT INTO `playlist_map` VALUES ('126', '6', '500412390', 'cloud');
INSERT INTO `playlist_map` VALUES ('127', '6', '406072775', 'cloud');
INSERT INTO `playlist_map` VALUES ('128', '6', '33599620', 'cloud');
INSERT INTO `playlist_map` VALUES ('129', '6', '534065017', 'cloud');
INSERT INTO `playlist_map` VALUES ('130', '6', '36496695', 'cloud');
INSERT INTO `playlist_map` VALUES ('131', '6', '412175989', 'cloud');
INSERT INTO `playlist_map` VALUES ('132', '6', '1389013281', 'cloud');
INSERT INTO `playlist_map` VALUES ('133', '6', '19558690', 'cloud');
INSERT INTO `playlist_map` VALUES ('134', '6', '492092475', 'cloud');
INSERT INTO `playlist_map` VALUES ('135', '6', '29498914', 'cloud');
INSERT INTO `playlist_map` VALUES ('136', '6', '432780721', 'cloud');
INSERT INTO `playlist_map` VALUES ('137', '6', '19292984', 'cloud');
INSERT INTO `playlist_map` VALUES ('138', '6', '34743154', 'cloud');
INSERT INTO `playlist_map` VALUES ('139', '6', '36307815', 'cloud');
INSERT INTO `playlist_map` VALUES ('140', '6', '1375586740', 'cloud');
INSERT INTO `playlist_map` VALUES ('141', '6', '1373168761', 'cloud');
INSERT INTO `playlist_map` VALUES ('142', '6', '19160471', 'cloud');
INSERT INTO `playlist_map` VALUES ('143', '6', '28402345', 'cloud');
INSERT INTO `playlist_map` VALUES ('144', '6', '20036073', 'cloud');
INSERT INTO `playlist_map` VALUES ('145', '6', '2313952', 'cloud');
INSERT INTO `playlist_map` VALUES ('146', '6', '19081573', 'cloud');
INSERT INTO `playlist_map` VALUES ('147', '6', '33418570', 'cloud');
INSERT INTO `playlist_map` VALUES ('148', '6', '28832241', 'cloud');
INSERT INTO `playlist_map` VALUES ('149', '6', '470547653', 'cloud');
INSERT INTO `playlist_map` VALUES ('150', '6', '32166698', 'cloud');
INSERT INTO `playlist_map` VALUES ('151', '6', '26379201', 'cloud');
INSERT INTO `playlist_map` VALUES ('152', '6', '1388967976', 'cloud');
INSERT INTO `playlist_map` VALUES ('153', '6', '19711382', 'cloud');
INSERT INTO `playlist_map` VALUES ('154', '6', '28157586', 'cloud');
INSERT INTO `playlist_map` VALUES ('155', '6', '513511109', 'cloud');
INSERT INTO `playlist_map` VALUES ('156', '6', '529824982', 'cloud');
INSERT INTO `playlist_map` VALUES ('157', '6', '1340520626', 'cloud');
INSERT INTO `playlist_map` VALUES ('158', '6', '515601126', 'cloud');
INSERT INTO `playlist_map` VALUES ('159', '6', '19567986', 'cloud');
INSERT INTO `playlist_map` VALUES ('160', '6', '401249910', 'cloud');
INSERT INTO `playlist_map` VALUES ('161', '6', '28481189', 'cloud');
INSERT INTO `playlist_map` VALUES ('162', '6', '19610381', 'cloud');
INSERT INTO `playlist_map` VALUES ('163', '6', '33071205', 'cloud');
INSERT INTO `playlist_map` VALUES ('164', '6', '26657845', 'cloud');
INSERT INTO `playlist_map` VALUES ('165', '6', '25657282', 'cloud');
INSERT INTO `playlist_map` VALUES ('166', '6', '1351219081', 'cloud');
INSERT INTO `playlist_map` VALUES ('167', '6', '21974814', 'cloud');
INSERT INTO `playlist_map` VALUES ('168', '6', '17753288', 'cloud');
INSERT INTO `playlist_map` VALUES ('169', '6', '27646851', 'cloud');
INSERT INTO `playlist_map` VALUES ('170', '6', '499384440', 'cloud');
INSERT INTO `playlist_map` VALUES ('171', '6', '491271737', 'cloud');
INSERT INTO `playlist_map` VALUES ('172', '6', '27804336', 'cloud');
INSERT INTO `playlist_map` VALUES ('173', '6', '438981337', 'cloud');
INSERT INTO `playlist_map` VALUES ('174', '6', '18836961', 'cloud');
INSERT INTO `playlist_map` VALUES ('175', '6', '4433364', 'cloud');
INSERT INTO `playlist_map` VALUES ('176', '6', '19572271', 'cloud');
INSERT INTO `playlist_map` VALUES ('177', '6', '28828120', 'cloud');
INSERT INTO `playlist_map` VALUES ('178', '6', '465920383', 'cloud');
INSERT INTO `playlist_map` VALUES ('179', '6', '1300528275', 'cloud');
INSERT INTO `playlist_map` VALUES ('180', '6', '31010566', 'cloud');
INSERT INTO `playlist_map` VALUES ('181', '6', '511678913', 'cloud');
INSERT INTO `playlist_map` VALUES ('182', '6', '472045959', 'cloud');
INSERT INTO `playlist_map` VALUES ('183', '6', '1355147933', 'cloud');
INSERT INTO `playlist_map` VALUES ('184', '6', '25677802', 'cloud');
INSERT INTO `playlist_map` VALUES ('185', '6', '17562882', 'cloud');
INSERT INTO `playlist_map` VALUES ('186', '6', '17804227', 'cloud');
INSERT INTO `playlist_map` VALUES ('187', '6', '480426313', 'cloud');
INSERT INTO `playlist_map` VALUES ('188', '6', '28256115', 'cloud');
INSERT INTO `playlist_map` VALUES ('189', '6', '1329183592', 'cloud');
INSERT INTO `playlist_map` VALUES ('190', '6', '4164317', 'cloud');
INSERT INTO `playlist_map` VALUES ('191', '6', '28593339', 'cloud');
INSERT INTO `playlist_map` VALUES ('192', '6', '31421331', 'cloud');
INSERT INTO `playlist_map` VALUES ('193', '6', '28464997', 'cloud');
INSERT INTO `playlist_map` VALUES ('194', '6', '18836957', 'cloud');
INSERT INTO `playlist_map` VALUES ('195', '6', '26425280', 'cloud');
INSERT INTO `playlist_map` VALUES ('196', '6', '2923152', 'cloud');
INSERT INTO `playlist_map` VALUES ('197', '6', '416700601', 'cloud');
INSERT INTO `playlist_map` VALUES ('198', '6', '18981962', 'cloud');
INSERT INTO `playlist_map` VALUES ('199', '6', '28220107', 'cloud');
INSERT INTO `playlist_map` VALUES ('200', '6', '465920775', 'cloud');
INSERT INTO `playlist_map` VALUES ('201', '6', '32807699', 'cloud');
INSERT INTO `playlist_map` VALUES ('202', '6', '460043708', 'cloud');
INSERT INTO `playlist_map` VALUES ('203', '6', '426291544', 'cloud');
INSERT INTO `playlist_map` VALUES ('204', '6', '27090060', 'cloud');
INSERT INTO `playlist_map` VALUES ('205', '6', '441491080', 'cloud');
INSERT INTO `playlist_map` VALUES ('206', '6', '483223413', 'cloud');
INSERT INTO `playlist_map` VALUES ('207', '6', '32835004', 'cloud');
INSERT INTO `playlist_map` VALUES ('208', '6', '460043704', 'cloud');
INSERT INTO `playlist_map` VALUES ('209', '6', '26613394', 'cloud');
INSERT INTO `playlist_map` VALUES ('210', '6', '401722227', 'cloud');
INSERT INTO `playlist_map` VALUES ('211', '6', '410925171', 'cloud');
INSERT INTO `playlist_map` VALUES ('212', '6', '4153366', 'cloud');
INSERT INTO `playlist_map` VALUES ('213', '6', '1825870', 'cloud');
INSERT INTO `playlist_map` VALUES ('214', '6', '480409513', 'cloud');
INSERT INTO `playlist_map` VALUES ('215', '6', '18922323', 'cloud');
INSERT INTO `playlist_map` VALUES ('216', '6', '17956427', 'cloud');
INSERT INTO `playlist_map` VALUES ('217', '6', '29562296', 'cloud');
INSERT INTO `playlist_map` VALUES ('218', '6', '21803760', 'cloud');
INSERT INTO `playlist_map` VALUES ('219', '6', '17112299', 'cloud');
INSERT INTO `playlist_map` VALUES ('220', '6', '29803676', 'cloud');
INSERT INTO `playlist_map` VALUES ('221', '6', '27514868', 'cloud');
INSERT INTO `playlist_map` VALUES ('222', '6', '33544176', 'cloud');
INSERT INTO `playlist_map` VALUES ('223', '6', '27683337', 'cloud');
INSERT INTO `playlist_map` VALUES ('224', '6', '20707408', 'cloud');
INSERT INTO `playlist_map` VALUES ('225', '6', '409916250', 'cloud');
INSERT INTO `playlist_map` VALUES ('226', '6', '409102911', 'cloud');
INSERT INTO `playlist_map` VALUES ('227', '6', '227724', 'cloud');
INSERT INTO `playlist_map` VALUES ('228', '6', '21343559', 'cloud');
INSERT INTO `playlist_map` VALUES ('229', '6', '27853227', 'cloud');
INSERT INTO `playlist_map` VALUES ('230', '6', '473602620', 'cloud');
INSERT INTO `playlist_map` VALUES ('231', '6', '3305969', 'cloud');
INSERT INTO `playlist_map` VALUES ('232', '6', '33291435', 'cloud');
INSERT INTO `playlist_map` VALUES ('233', '6', '29561077', 'cloud');
INSERT INTO `playlist_map` VALUES ('234', '6', '37955044', 'cloud');
INSERT INTO `playlist_map` VALUES ('235', '6', '421423756', 'cloud');
INSERT INTO `playlist_map` VALUES ('236', '6', '2871217', 'cloud');
INSERT INTO `playlist_map` VALUES ('237', '6', '21606436', 'cloud');
INSERT INTO `playlist_map` VALUES ('238', '6', '3950792', 'cloud');
INSERT INTO `playlist_map` VALUES ('239', '6', '4132379', 'cloud');
INSERT INTO `playlist_map` VALUES ('240', '6', '794080', 'cloud');
INSERT INTO `playlist_map` VALUES ('241', '6', '5253801', 'cloud');
INSERT INTO `playlist_map` VALUES ('242', '6', '28095742', 'cloud');
INSERT INTO `playlist_map` VALUES ('243', '6', '4224657', 'cloud');
INSERT INTO `playlist_map` VALUES ('244', '6', '29561525', 'cloud');
INSERT INTO `playlist_map` VALUES ('245', '6', '427142481', 'cloud');
INSERT INTO `playlist_map` VALUES ('246', '6', '451703096', 'cloud');
INSERT INTO `playlist_map` VALUES ('247', '6', '475073464', 'cloud');
INSERT INTO `playlist_map` VALUES ('248', '6', '29009655', 'cloud');
INSERT INTO `playlist_map` VALUES ('249', '6', '461347998', 'cloud');
INSERT INTO `playlist_map` VALUES ('250', '6', '36990266', 'cloud');
INSERT INTO `playlist_map` VALUES ('251', '6', '28136576', 'cloud');
INSERT INTO `playlist_map` VALUES ('252', '6', '37653063', 'cloud');
INSERT INTO `playlist_map` VALUES ('253', '6', '29732659', 'cloud');
INSERT INTO `playlist_map` VALUES ('254', '6', '1210461', 'cloud');
INSERT INTO `playlist_map` VALUES ('255', '6', '38592976', 'cloud');
INSERT INTO `playlist_map` VALUES ('256', '6', '16232697', 'cloud');
INSERT INTO `playlist_map` VALUES ('257', '6', '16686610', 'cloud');
INSERT INTO `playlist_map` VALUES ('258', '6', '5065581', 'cloud');
INSERT INTO `playlist_map` VALUES ('259', '6', '25704014', 'cloud');
INSERT INTO `playlist_map` VALUES ('260', '6', '16858400', 'cloud');
INSERT INTO `playlist_map` VALUES ('261', '6', '28708061', 'cloud');
INSERT INTO `playlist_map` VALUES ('262', '6', '29307037', 'cloud');
INSERT INTO `playlist_map` VALUES ('263', '6', '3560369', 'cloud');
INSERT INTO `playlist_map` VALUES ('264', '6', '3950546', 'cloud');
INSERT INTO `playlist_map` VALUES ('265', '6', '27552734', 'cloud');
INSERT INTO `playlist_map` VALUES ('266', '6', '21253809', 'cloud');
INSERT INTO `playlist_map` VALUES ('267', '6', '28566210', 'cloud');
INSERT INTO `playlist_map` VALUES ('268', '6', '27969800', 'cloud');
INSERT INTO `playlist_map` VALUES ('269', '6', '17721274', 'cloud');
INSERT INTO `playlist_map` VALUES ('270', '6', '1297841', 'cloud');
INSERT INTO `playlist_map` VALUES ('271', '6', '434974661', 'cloud');
INSERT INTO `playlist_map` VALUES ('272', '6', '19945726', 'cloud');
INSERT INTO `playlist_map` VALUES ('273', '6', '28188171', 'cloud');
INSERT INTO `playlist_map` VALUES ('274', '6', '17282443', 'cloud');
INSERT INTO `playlist_map` VALUES ('275', '6', '28923579', 'cloud');
INSERT INTO `playlist_map` VALUES ('276', '6', '17706535', 'cloud');
INSERT INTO `playlist_map` VALUES ('277', '6', '30780496', 'cloud');
INSERT INTO `playlist_map` VALUES ('278', '6', '21253958', 'cloud');
INSERT INTO `playlist_map` VALUES ('279', '6', '19291941', 'cloud');
INSERT INTO `playlist_map` VALUES ('280', '6', '4172700', 'cloud');
INSERT INTO `playlist_map` VALUES ('281', '6', '28310479', 'cloud');
INSERT INTO `playlist_map` VALUES ('282', '6', '4164331', 'cloud');
INSERT INTO `playlist_map` VALUES ('283', '6', '16375205', 'cloud');
INSERT INTO `playlist_map` VALUES ('284', '6', '26199445', 'cloud');
INSERT INTO `playlist_map` VALUES ('285', '6', '25657280', 'cloud');
INSERT INTO `playlist_map` VALUES ('286', '6', '3406379', 'cloud');
INSERT INTO `playlist_map` VALUES ('287', '6', '2870985', 'cloud');
INSERT INTO `playlist_map` VALUES ('288', '6', '30953009', 'cloud');
INSERT INTO `playlist_map` VALUES ('289', '6', '28577876', 'cloud');
INSERT INTO `playlist_map` VALUES ('290', '6', '29019227', 'cloud');
INSERT INTO `playlist_map` VALUES ('291', '6', '24300493', 'cloud');
INSERT INTO `playlist_map` VALUES ('292', '6', '29019232', 'cloud');
INSERT INTO `playlist_map` VALUES ('293', '6', '25657277', 'cloud');
INSERT INTO `playlist_map` VALUES ('294', '6', '26199446', 'cloud');
INSERT INTO `playlist_map` VALUES ('295', '6', '29307038', 'cloud');
INSERT INTO `playlist_map` VALUES ('296', '6', '16483438', 'cloud');
INSERT INTO `playlist_map` VALUES ('297', '6', '28987626', 'cloud');
INSERT INTO `playlist_map` VALUES ('298', '6', '27580521', 'cloud');
INSERT INTO `playlist_map` VALUES ('299', '6', '28308080', 'cloud');
INSERT INTO `playlist_map` VALUES ('300', '6', '1297650', 'cloud');
INSERT INTO `playlist_map` VALUES ('301', '6', '4083874', 'cloud');
INSERT INTO `playlist_map` VALUES ('302', '6', '4083642', 'cloud');
INSERT INTO `playlist_map` VALUES ('303', '6', '27583305', 'cloud');
INSERT INTO `playlist_map` VALUES ('304', '6', '26060065', 'cloud');
INSERT INTO `playlist_map` VALUES ('305', '6', '5179544', 'cloud');
INSERT INTO `playlist_map` VALUES ('306', '6', '16607998', 'cloud');
INSERT INTO `playlist_map` VALUES ('307', '6', '28661564', 'cloud');
INSERT INTO `playlist_map` VALUES ('308', '6', '1217823', 'cloud');
INSERT INTO `playlist_map` VALUES ('309', '6', '4386589', 'cloud');
INSERT INTO `playlist_map` VALUES ('310', '7', '1805317558', 'cloud');
INSERT INTO `playlist_map` VALUES ('311', '7', '1817627858', 'cloud');
INSERT INTO `playlist_map` VALUES ('312', '7', '28718313', 'cloud');
INSERT INTO `playlist_map` VALUES ('313', '7', '1959043622', 'cloud');
INSERT INTO `playlist_map` VALUES ('314', '7', '1980790109', 'cloud');
INSERT INTO `playlist_map` VALUES ('315', '7', '484344232', 'cloud');
INSERT INTO `playlist_map` VALUES ('316', '7', '26550268', 'cloud');
INSERT INTO `playlist_map` VALUES ('317', '7', '1451332746', 'cloud');
INSERT INTO `playlist_map` VALUES ('318', '7', '1883399', 'cloud');
INSERT INTO `playlist_map` VALUES ('319', '7', '1893514633', 'cloud');
INSERT INTO `playlist_map` VALUES ('320', '7', '1850706877', 'cloud');
INSERT INTO `playlist_map` VALUES ('321', '7', '1367333218', 'cloud');
INSERT INTO `playlist_map` VALUES ('322', '7', '1361104021', 'cloud');
INSERT INTO `playlist_map` VALUES ('323', '7', '1844156620', 'cloud');
INSERT INTO `playlist_map` VALUES ('324', '7', '1480769848', 'cloud');
INSERT INTO `playlist_map` VALUES ('325', '7', '1407910105', 'cloud');
INSERT INTO `playlist_map` VALUES ('326', '7', '1854644975', 'cloud');
INSERT INTO `playlist_map` VALUES ('327', '7', '1449790486', 'cloud');
INSERT INTO `playlist_map` VALUES ('328', '7', '507114414', 'cloud');
INSERT INTO `playlist_map` VALUES ('329', '7', '21234379', 'cloud');
INSERT INTO `playlist_map` VALUES ('330', '7', '3950552', 'cloud');
INSERT INTO `playlist_map` VALUES ('331', '7', '1401302504', 'cloud');
INSERT INTO `playlist_map` VALUES ('332', '7', '1313363105', 'cloud');
INSERT INTO `playlist_map` VALUES ('333', '7', '484056480', 'cloud');
INSERT INTO `playlist_map` VALUES ('334', '7', '1387555989', 'cloud');
INSERT INTO `playlist_map` VALUES ('335', '7', '37988124', 'cloud');
INSERT INTO `playlist_map` VALUES ('336', '7', '1885131100', 'cloud');
INSERT INTO `playlist_map` VALUES ('337', '7', '1365843837', 'cloud');
INSERT INTO `playlist_map` VALUES ('338', '7', '26608507', 'cloud');
INSERT INTO `playlist_map` VALUES ('339', '7', '544247584', 'cloud');
INSERT INTO `playlist_map` VALUES ('340', '7', '26851338', 'cloud');
INSERT INTO `playlist_map` VALUES ('341', '7', '1451259420', 'cloud');
INSERT INTO `playlist_map` VALUES ('342', '7', '1430448840', 'cloud');
INSERT INTO `playlist_map` VALUES ('343', '7', '411322652', 'cloud');
INSERT INTO `playlist_map` VALUES ('344', '7', '1495070779', 'cloud');
INSERT INTO `playlist_map` VALUES ('345', '7', '1388968666', 'cloud');
INSERT INTO `playlist_map` VALUES ('346', '7', '1474554391', 'cloud');
INSERT INTO `playlist_map` VALUES ('347', '7', '1299818', 'cloud');
INSERT INTO `playlist_map` VALUES ('348', '7', '5142293', 'cloud');
INSERT INTO `playlist_map` VALUES ('349', '7', '1824599691', 'cloud');
INSERT INTO `playlist_map` VALUES ('350', '7', '1375803511', 'cloud');
INSERT INTO `playlist_map` VALUES ('351', '7', '1853809171', 'cloud');
INSERT INTO `playlist_map` VALUES ('352', '7', '1454317928', 'cloud');
INSERT INTO `playlist_map` VALUES ('353', '7', '1309795632', 'cloud');
INSERT INTO `playlist_map` VALUES ('354', '7', '1876989243', 'cloud');
INSERT INTO `playlist_map` VALUES ('355', '7', '1826990569', 'cloud');
INSERT INTO `playlist_map` VALUES ('356', '7', '1875183310', 'cloud');
INSERT INTO `playlist_map` VALUES ('357', '7', '1859245776', 'cloud');
INSERT INTO `playlist_map` VALUES ('358', '7', '2867202', 'cloud');
INSERT INTO `playlist_map` VALUES ('359', '7', '16431842', 'cloud');
INSERT INTO `playlist_map` VALUES ('360', '7', '1405120259', 'cloud');
INSERT INTO `playlist_map` VALUES ('361', '7', '1445912884', 'cloud');
INSERT INTO `playlist_map` VALUES ('362', '7', '466122659', 'cloud');
INSERT INTO `playlist_map` VALUES ('363', '7', '36921382', 'cloud');
INSERT INTO `playlist_map` VALUES ('364', '7', '1358188935', 'cloud');
INSERT INTO `playlist_map` VALUES ('365', '7', '34613621', 'cloud');
INSERT INTO `playlist_map` VALUES ('366', '7', '1307789419', 'cloud');
INSERT INTO `playlist_map` VALUES ('367', '7', '30903415', 'cloud');
INSERT INTO `playlist_map` VALUES ('368', '7', '26783438', 'cloud');
INSERT INTO `playlist_map` VALUES ('369', '7', '16432045', 'cloud');
INSERT INTO `playlist_map` VALUES ('370', '7', '2771984', 'cloud');
INSERT INTO `playlist_map` VALUES ('371', '7', '514216257', 'cloud');
INSERT INTO `playlist_map` VALUES ('372', '7', '1374552057', 'cloud');
INSERT INTO `playlist_map` VALUES ('373', '7', '1495177491', 'cloud');
INSERT INTO `playlist_map` VALUES ('374', '7', '26127499', 'cloud');
INSERT INTO `playlist_map` VALUES ('375', '7', '521646021', 'cloud');
INSERT INTO `playlist_map` VALUES ('376', '7', '2175282', 'cloud');
INSERT INTO `playlist_map` VALUES ('377', '7', '34204829', 'cloud');
INSERT INTO `playlist_map` VALUES ('378', '7', '409374302', 'cloud');
INSERT INTO `playlist_map` VALUES ('379', '7', '26608504', 'cloud');
INSERT INTO `playlist_map` VALUES ('380', '7', '573652613', 'cloud');
INSERT INTO `playlist_map` VALUES ('381', '7', '38679619', 'cloud');
INSERT INTO `playlist_map` VALUES ('382', '7', '28310462', 'cloud');
INSERT INTO `playlist_map` VALUES ('383', '7', '1482098353', 'cloud');
INSERT INTO `playlist_map` VALUES ('384', '7', '485964978', 'cloud');
INSERT INTO `playlist_map` VALUES ('385', '7', '1385109619', 'cloud');
INSERT INTO `playlist_map` VALUES ('386', '7', '1313107333', 'cloud');
INSERT INTO `playlist_map` VALUES ('387', '7', '1338490248', 'cloud');
INSERT INTO `playlist_map` VALUES ('388', '7', '28878559', 'cloud');
INSERT INTO `playlist_map` VALUES ('389', '7', '406072775', 'cloud');
INSERT INTO `playlist_map` VALUES ('390', '7', '29004010', 'cloud');
INSERT INTO `playlist_map` VALUES ('391', '7', '26256023', 'cloud');
INSERT INTO `playlist_map` VALUES ('392', '7', '33599620', 'cloud');
INSERT INTO `playlist_map` VALUES ('393', '7', '500412390', 'cloud');
INSERT INTO `playlist_map` VALUES ('394', '7', '534065017', 'cloud');
INSERT INTO `playlist_map` VALUES ('395', '7', '36496695', 'cloud');
INSERT INTO `playlist_map` VALUES ('396', '7', '412175989', 'cloud');
INSERT INTO `playlist_map` VALUES ('397', '7', '1389013281', 'cloud');
INSERT INTO `playlist_map` VALUES ('398', '7', '19558690', 'cloud');
INSERT INTO `playlist_map` VALUES ('399', '7', '492092475', 'cloud');
INSERT INTO `playlist_map` VALUES ('400', '7', '29498914', 'cloud');
INSERT INTO `playlist_map` VALUES ('401', '7', '432780721', 'cloud');
INSERT INTO `playlist_map` VALUES ('402', '7', '19292984', 'cloud');
INSERT INTO `playlist_map` VALUES ('403', '7', '34743154', 'cloud');
INSERT INTO `playlist_map` VALUES ('404', '7', '36307815', 'cloud');
INSERT INTO `playlist_map` VALUES ('405', '7', '1375586740', 'cloud');
INSERT INTO `playlist_map` VALUES ('406', '7', '19160471', 'cloud');
INSERT INTO `playlist_map` VALUES ('407', '7', '28402345', 'cloud');
INSERT INTO `playlist_map` VALUES ('408', '7', '1373168761', 'cloud');
INSERT INTO `playlist_map` VALUES ('409', '7', '20036073', 'cloud');
INSERT INTO `playlist_map` VALUES ('410', '7', '2313952', 'cloud');
INSERT INTO `playlist_map` VALUES ('411', '7', '19081573', 'cloud');
INSERT INTO `playlist_map` VALUES ('412', '7', '33418570', 'cloud');
INSERT INTO `playlist_map` VALUES ('413', '7', '28832241', 'cloud');
INSERT INTO `playlist_map` VALUES ('414', '7', '470547653', 'cloud');
INSERT INTO `playlist_map` VALUES ('415', '7', '32166698', 'cloud');
INSERT INTO `playlist_map` VALUES ('416', '7', '1388967976', 'cloud');
INSERT INTO `playlist_map` VALUES ('417', '7', '19711382', 'cloud');
INSERT INTO `playlist_map` VALUES ('418', '7', '26379201', 'cloud');
INSERT INTO `playlist_map` VALUES ('419', '7', '28157586', 'cloud');
INSERT INTO `playlist_map` VALUES ('420', '7', '513511109', 'cloud');
INSERT INTO `playlist_map` VALUES ('421', '7', '529824982', 'cloud');
INSERT INTO `playlist_map` VALUES ('422', '7', '1340520626', 'cloud');
INSERT INTO `playlist_map` VALUES ('423', '7', '28481189', 'cloud');
INSERT INTO `playlist_map` VALUES ('424', '7', '25657282', 'cloud');
INSERT INTO `playlist_map` VALUES ('425', '7', '515601126', 'cloud');
INSERT INTO `playlist_map` VALUES ('426', '7', '19610381', 'cloud');
INSERT INTO `playlist_map` VALUES ('427', '7', '19567986', 'cloud');
INSERT INTO `playlist_map` VALUES ('428', '7', '401249910', 'cloud');
INSERT INTO `playlist_map` VALUES ('429', '7', '33071205', 'cloud');
INSERT INTO `playlist_map` VALUES ('430', '7', '26657845', 'cloud');
INSERT INTO `playlist_map` VALUES ('431', '7', '1351219081', 'cloud');
INSERT INTO `playlist_map` VALUES ('432', '7', '21974814', 'cloud');
INSERT INTO `playlist_map` VALUES ('433', '7', '17753288', 'cloud');
INSERT INTO `playlist_map` VALUES ('434', '7', '27646851', 'cloud');
INSERT INTO `playlist_map` VALUES ('435', '7', '499384440', 'cloud');
INSERT INTO `playlist_map` VALUES ('436', '7', '491271737', 'cloud');
INSERT INTO `playlist_map` VALUES ('437', '7', '27804336', 'cloud');
INSERT INTO `playlist_map` VALUES ('438', '7', '438981337', 'cloud');
INSERT INTO `playlist_map` VALUES ('439', '7', '18836961', 'cloud');
INSERT INTO `playlist_map` VALUES ('440', '7', '4433364', 'cloud');
INSERT INTO `playlist_map` VALUES ('441', '7', '19572271', 'cloud');
INSERT INTO `playlist_map` VALUES ('442', '7', '28828120', 'cloud');
INSERT INTO `playlist_map` VALUES ('443', '7', '465920383', 'cloud');
INSERT INTO `playlist_map` VALUES ('444', '7', '1300528275', 'cloud');
INSERT INTO `playlist_map` VALUES ('445', '7', '31010566', 'cloud');
INSERT INTO `playlist_map` VALUES ('446', '7', '511678913', 'cloud');
INSERT INTO `playlist_map` VALUES ('447', '7', '472045959', 'cloud');
INSERT INTO `playlist_map` VALUES ('448', '7', '1355147933', 'cloud');
INSERT INTO `playlist_map` VALUES ('449', '7', '25677802', 'cloud');
INSERT INTO `playlist_map` VALUES ('450', '7', '480426313', 'cloud');
INSERT INTO `playlist_map` VALUES ('451', '7', '17562882', 'cloud');
INSERT INTO `playlist_map` VALUES ('452', '7', '28256115', 'cloud');
INSERT INTO `playlist_map` VALUES ('453', '7', '31421331', 'cloud');
INSERT INTO `playlist_map` VALUES ('454', '7', '17804227', 'cloud');
INSERT INTO `playlist_map` VALUES ('455', '7', '1329183592', 'cloud');
INSERT INTO `playlist_map` VALUES ('456', '7', '4164317', 'cloud');
INSERT INTO `playlist_map` VALUES ('457', '7', '28593339', 'cloud');
INSERT INTO `playlist_map` VALUES ('458', '7', '28464997', 'cloud');
INSERT INTO `playlist_map` VALUES ('459', '7', '18836957', 'cloud');
INSERT INTO `playlist_map` VALUES ('460', '7', '2923152', 'cloud');
INSERT INTO `playlist_map` VALUES ('461', '7', '26425280', 'cloud');
INSERT INTO `playlist_map` VALUES ('462', '7', '416700601', 'cloud');
INSERT INTO `playlist_map` VALUES ('463', '7', '18981962', 'cloud');
INSERT INTO `playlist_map` VALUES ('464', '7', '28220107', 'cloud');
INSERT INTO `playlist_map` VALUES ('465', '7', '465920775', 'cloud');
INSERT INTO `playlist_map` VALUES ('466', '7', '32807699', 'cloud');
INSERT INTO `playlist_map` VALUES ('467', '7', '460043708', 'cloud');
INSERT INTO `playlist_map` VALUES ('468', '7', '426291544', 'cloud');
INSERT INTO `playlist_map` VALUES ('469', '7', '27090060', 'cloud');
INSERT INTO `playlist_map` VALUES ('470', '7', '441491080', 'cloud');
INSERT INTO `playlist_map` VALUES ('471', '7', '483223413', 'cloud');
INSERT INTO `playlist_map` VALUES ('472', '7', '460043704', 'cloud');
INSERT INTO `playlist_map` VALUES ('473', '7', '26613394', 'cloud');
INSERT INTO `playlist_map` VALUES ('474', '7', '410925171', 'cloud');
INSERT INTO `playlist_map` VALUES ('475', '7', '4153366', 'cloud');
INSERT INTO `playlist_map` VALUES ('476', '7', '32835004', 'cloud');
INSERT INTO `playlist_map` VALUES ('477', '7', '1825870', 'cloud');
INSERT INTO `playlist_map` VALUES ('478', '7', '480409513', 'cloud');
INSERT INTO `playlist_map` VALUES ('479', '7', '401722227', 'cloud');
INSERT INTO `playlist_map` VALUES ('480', '7', '18922323', 'cloud');
INSERT INTO `playlist_map` VALUES ('481', '7', '17956427', 'cloud');
INSERT INTO `playlist_map` VALUES ('482', '7', '29562296', 'cloud');
INSERT INTO `playlist_map` VALUES ('483', '7', '21803760', 'cloud');
INSERT INTO `playlist_map` VALUES ('484', '7', '17112299', 'cloud');
INSERT INTO `playlist_map` VALUES ('485', '7', '29803676', 'cloud');
INSERT INTO `playlist_map` VALUES ('486', '7', '27683337', 'cloud');
INSERT INTO `playlist_map` VALUES ('487', '7', '27514868', 'cloud');
INSERT INTO `playlist_map` VALUES ('488', '7', '20707408', 'cloud');
INSERT INTO `playlist_map` VALUES ('489', '7', '33544176', 'cloud');
INSERT INTO `playlist_map` VALUES ('490', '7', '409916250', 'cloud');
INSERT INTO `playlist_map` VALUES ('491', '7', '409102911', 'cloud');
INSERT INTO `playlist_map` VALUES ('492', '7', '473602620', 'cloud');
INSERT INTO `playlist_map` VALUES ('493', '7', '227724', 'cloud');
INSERT INTO `playlist_map` VALUES ('494', '7', '3305969', 'cloud');
INSERT INTO `playlist_map` VALUES ('495', '7', '33291435', 'cloud');
INSERT INTO `playlist_map` VALUES ('496', '7', '29561077', 'cloud');
INSERT INTO `playlist_map` VALUES ('497', '7', '21343559', 'cloud');
INSERT INTO `playlist_map` VALUES ('498', '7', '27853227', 'cloud');
INSERT INTO `playlist_map` VALUES ('499', '7', '37955044', 'cloud');
INSERT INTO `playlist_map` VALUES ('500', '7', '2871217', 'cloud');
INSERT INTO `playlist_map` VALUES ('501', '7', '421423756', 'cloud');
INSERT INTO `playlist_map` VALUES ('502', '7', '3950792', 'cloud');
INSERT INTO `playlist_map` VALUES ('503', '7', '4132379', 'cloud');
INSERT INTO `playlist_map` VALUES ('504', '7', '794080', 'cloud');
INSERT INTO `playlist_map` VALUES ('505', '7', '5253801', 'cloud');
INSERT INTO `playlist_map` VALUES ('506', '7', '21606436', 'cloud');
INSERT INTO `playlist_map` VALUES ('507', '7', '28095742', 'cloud');
INSERT INTO `playlist_map` VALUES ('508', '7', '4224657', 'cloud');
INSERT INTO `playlist_map` VALUES ('509', '7', '29561525', 'cloud');
INSERT INTO `playlist_map` VALUES ('510', '7', '475073464', 'cloud');
INSERT INTO `playlist_map` VALUES ('511', '7', '29009655', 'cloud');
INSERT INTO `playlist_map` VALUES ('512', '7', '427142481', 'cloud');
INSERT INTO `playlist_map` VALUES ('513', '7', '461347998', 'cloud');
INSERT INTO `playlist_map` VALUES ('514', '7', '451703096', 'cloud');
INSERT INTO `playlist_map` VALUES ('515', '7', '36990266', 'cloud');
INSERT INTO `playlist_map` VALUES ('516', '7', '28136576', 'cloud');
INSERT INTO `playlist_map` VALUES ('517', '7', '37653063', 'cloud');
INSERT INTO `playlist_map` VALUES ('518', '7', '29732659', 'cloud');
INSERT INTO `playlist_map` VALUES ('519', '7', '1210461', 'cloud');
INSERT INTO `playlist_map` VALUES ('520', '7', '38592976', 'cloud');
INSERT INTO `playlist_map` VALUES ('521', '7', '16232697', 'cloud');
INSERT INTO `playlist_map` VALUES ('522', '7', '16686610', 'cloud');
INSERT INTO `playlist_map` VALUES ('523', '7', '5065581', 'cloud');
INSERT INTO `playlist_map` VALUES ('524', '7', '25704014', 'cloud');
INSERT INTO `playlist_map` VALUES ('525', '7', '16858400', 'cloud');
INSERT INTO `playlist_map` VALUES ('526', '7', '28708061', 'cloud');
INSERT INTO `playlist_map` VALUES ('527', '7', '29307037', 'cloud');
INSERT INTO `playlist_map` VALUES ('528', '7', '3950546', 'cloud');
INSERT INTO `playlist_map` VALUES ('529', '7', '3560369', 'cloud');
INSERT INTO `playlist_map` VALUES ('530', '7', '27552734', 'cloud');
INSERT INTO `playlist_map` VALUES ('531', '7', '21253809', 'cloud');
INSERT INTO `playlist_map` VALUES ('532', '7', '28566210', 'cloud');
INSERT INTO `playlist_map` VALUES ('533', '7', '27969800', 'cloud');
INSERT INTO `playlist_map` VALUES ('534', '7', '17721274', 'cloud');
INSERT INTO `playlist_map` VALUES ('535', '7', '1297841', 'cloud');
INSERT INTO `playlist_map` VALUES ('536', '7', '434974661', 'cloud');
INSERT INTO `playlist_map` VALUES ('537', '7', '19945726', 'cloud');
INSERT INTO `playlist_map` VALUES ('538', '7', '28188171', 'cloud');
INSERT INTO `playlist_map` VALUES ('539', '7', '17282443', 'cloud');
INSERT INTO `playlist_map` VALUES ('540', '7', '28923579', 'cloud');
INSERT INTO `playlist_map` VALUES ('541', '7', '17706535', 'cloud');
INSERT INTO `playlist_map` VALUES ('542', '7', '30780496', 'cloud');
INSERT INTO `playlist_map` VALUES ('543', '7', '19291941', 'cloud');
INSERT INTO `playlist_map` VALUES ('544', '7', '21253958', 'cloud');
INSERT INTO `playlist_map` VALUES ('545', '7', '4172700', 'cloud');
INSERT INTO `playlist_map` VALUES ('546', '7', '28310479', 'cloud');
INSERT INTO `playlist_map` VALUES ('547', '7', '4164331', 'cloud');
INSERT INTO `playlist_map` VALUES ('548', '7', '16375205', 'cloud');
INSERT INTO `playlist_map` VALUES ('549', '7', '26199445', 'cloud');
INSERT INTO `playlist_map` VALUES ('550', '7', '25657280', 'cloud');
INSERT INTO `playlist_map` VALUES ('551', '7', '3406379', 'cloud');
INSERT INTO `playlist_map` VALUES ('552', '7', '2870985', 'cloud');
INSERT INTO `playlist_map` VALUES ('553', '7', '30953009', 'cloud');
INSERT INTO `playlist_map` VALUES ('554', '7', '28577876', 'cloud');
INSERT INTO `playlist_map` VALUES ('555', '7', '24300493', 'cloud');
INSERT INTO `playlist_map` VALUES ('556', '7', '29019227', 'cloud');
INSERT INTO `playlist_map` VALUES ('557', '7', '25657277', 'cloud');
INSERT INTO `playlist_map` VALUES ('558', '7', '26199446', 'cloud');
INSERT INTO `playlist_map` VALUES ('559', '7', '16483438', 'cloud');
INSERT INTO `playlist_map` VALUES ('560', '7', '28987626', 'cloud');
INSERT INTO `playlist_map` VALUES ('561', '7', '29307038', 'cloud');
INSERT INTO `playlist_map` VALUES ('562', '7', '29019232', 'cloud');
INSERT INTO `playlist_map` VALUES ('563', '7', '27580521', 'cloud');
INSERT INTO `playlist_map` VALUES ('564', '7', '28308080', 'cloud');
INSERT INTO `playlist_map` VALUES ('565', '7', '1297650', 'cloud');
INSERT INTO `playlist_map` VALUES ('566', '7', '4083874', 'cloud');
INSERT INTO `playlist_map` VALUES ('567', '7', '4083642', 'cloud');
INSERT INTO `playlist_map` VALUES ('568', '7', '27583305', 'cloud');
INSERT INTO `playlist_map` VALUES ('569', '7', '26060065', 'cloud');
INSERT INTO `playlist_map` VALUES ('570', '7', '16607998', 'cloud');
INSERT INTO `playlist_map` VALUES ('571', '7', '5179544', 'cloud');
INSERT INTO `playlist_map` VALUES ('572', '7', '28661564', 'cloud');
INSERT INTO `playlist_map` VALUES ('573', '7', '1217823', 'cloud');
INSERT INTO `playlist_map` VALUES ('574', '7', '4386589', 'cloud');
INSERT INTO `playlist_map` VALUES ('575', '8', '1804552408', 'cloud');
INSERT INTO `playlist_map` VALUES ('576', '8', '29753702', 'cloud');
INSERT INTO `playlist_map` VALUES ('577', '8', '1804552407', 'cloud');
INSERT INTO `playlist_map` VALUES ('578', '8', '1804555737', 'cloud');
INSERT INTO `playlist_map` VALUES ('579', '8', '1804555744', 'cloud');
INSERT INTO `playlist_map` VALUES ('580', '8', '1804552400', 'cloud');
INSERT INTO `playlist_map` VALUES ('581', '8', '1804552399', 'cloud');
INSERT INTO `playlist_map` VALUES ('582', '8', '1804555743', 'cloud');
INSERT INTO `playlist_map` VALUES ('583', '8', '1804552397', 'cloud');
INSERT INTO `playlist_map` VALUES ('584', '8', '1804552401', 'cloud');

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
