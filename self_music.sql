/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-20 16:12:08
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
  PRIMARY KEY (`music_id`),
  KEY `singer_id` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '趁人之危', '1', 'bili_audio/BV1wV41187FK.mp3', '', '趁人之危', '193000');
INSERT INTO `music` VALUES ('2', 'Counting Stars', '2', 'counting stars/counting stars.mp3', '', 'Counting Stars', '256000');
INSERT INTO `music` VALUES ('3', 'Creepin\' up on You', '3', 'creepin\' up on you/creepin\' up on you.mp3', '', 'Creepin\' up on You', '293000');
INSERT INTO `music` VALUES ('4', 'Eutopia', '4', 'Eutopia/Eutopia.mp3', '', 'Eutopia', '249000');
INSERT INTO `music` VALUES ('5', 'How Long', '5', 'how long - Charlie Puth/how long-Charlie Puth.mp3', '', 'How Long', '198000');
INSERT INTO `music` VALUES ('6', 'I Love You Forever', '6', 'i love you forever/i love you forever.mp3', '', 'I Love You Forever', '259000');
INSERT INTO `music` VALUES ('7', 'Lock Me Up', '7', 'lock me up/lock me up.mp3', '', 'Lock Me Up', '209000');
INSERT INTO `music` VALUES ('8', 'Morning Glory', '8', 'Morning Glory - (K)NoW_NAME/Morning Glory - (K)NoW_NAME.mp3', '', 'Morning Glory', '220000');
INSERT INTO `music` VALUES ('9', 'New Soul', '9', 'new soul/new soul.mp3', '', 'New Soul', '200000');
INSERT INTO `music` VALUES ('10', 'Overcomer', '10', 'overcomer/overcomer.mp3', '', 'Overcomer', '225000');
INSERT INTO `music` VALUES ('11', 'Regression', '11', 'Regression - 阿云嘎/Regression-阿云嘎.mp3', '', 'Regression', '236000');
INSERT INTO `music` VALUES ('12', 'September', '12', 'september - Earth, Wind & Fire/september-Earth, Wind & Fire.mp3', '', 'September', '214000');
INSERT INTO `music` VALUES ('13', 'Stereo Hearts', '13', 'stereo hearts/stereo hearts.mp3', '', 'Stereo Hearts', '211000');
INSERT INTO `music` VALUES ('14', 'Until You', '14', 'until you/until you.mp3', '', 'Until You', '248000');
INSERT INTO `music` VALUES ('15', 'We Own The Night', '15', 'we own the night/we own the night.mp3', '', 'We Own The Night', '205000');
INSERT INTO `music` VALUES ('16', 'What Do I Konw', '16', 'what do i konw/what do i konw.mp3', '', 'What Do I Konw', '237000');
INSERT INTO `music` VALUES ('17', '½如梦', '17,18,19', '½如梦.mp3', '', '½如梦', '234000');
INSERT INTO `music` VALUES ('18', '7 Years', '20', '7 years.mp3', '', '7 Years', '237000');
INSERT INTO `music` VALUES ('19', 'Contact', '21,22', 'Contact.mp3', '', 'Contact', '141000');
INSERT INTO `music` VALUES ('20', 'dududu', '23', 'dududu.m4a', '', 'dududu', '220000');
INSERT INTO `music` VALUES ('21', 'HAVE A NICE DAY', '24', 'have a nice day.mp3', '', 'HAVE A NICE DAY', '240000');
INSERT INTO `music` VALUES ('22', 'Imagination', '25', 'imagination.mp3', '', 'Imagination', '217000');
INSERT INTO `music` VALUES ('23', 'Love Story', '26', 'love store.mp3', '', 'Love Story', '235000');
INSERT INTO `music` VALUES ('24', 'Love Youself', '27', 'love youself.mp3', '', 'Love Youself', '232000');
INSERT INTO `music` VALUES ('25', 'Magic', '28', 'Magic - One Direction.mp3', '', 'Magic', '184000');
INSERT INTO `music` VALUES ('26', 'Marine Dreamin\' ', '29,30', 'Marine Dreamin\' .mp3', '', 'Marine Dreamin\' ', '206000');
INSERT INTO `music` VALUES ('27', 'Masayume Chasing', '31', 'MASAYUME CHASING.mp3', '', 'Masayume Chasing', '221000');
INSERT INTO `music` VALUES ('28', 'Mine Mine', '32', 'mine mine.mp3', '', 'Mine Mine', '268000');
INSERT INTO `music` VALUES ('29', 'Mr.Music', '33,34,35,36,37,38,39', 'mr.music.mp3', '', 'Mr.Music', '271000');
INSERT INTO `music` VALUES ('30', 'You(=I)', '40', 'You(=I).mp3', '', 'You(=I)', '170000');
INSERT INTO `music` VALUES ('31', 'Your Song', '41', 'your song.mp3', '', 'Your Song', '180000');
INSERT INTO `music` VALUES ('32', 'カサネテク (千层套路) ', '42', 'カサネテク (千层套路) .mp3', '', 'カサネテク (千层套路) ', '262000');
INSERT INTO `music` VALUES ('33', '爱的飞行日记', '32', '爱的飞行日记.mp3', '', '爱的飞行日记', '256000');
INSERT INTO `music` VALUES ('34', '傲娇系男孩的告白日', '43,44', '傲娇系男孩的告白日.mp3', '', '傲娇系男孩的告白日', '178000');
INSERT INTO `music` VALUES ('35', '【墨清弦&乐正龙牙】不正常恋爱物语', '45,46,47', '不正常恋爱物语.mp3', '', '【墨清弦&乐正龙牙】不正常恋爱物语', '279000');
INSERT INTO `music` VALUES ('36', '单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin', '48,49', '单项地铁.mp3', '', '单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin', '255000');
INSERT INTO `music` VALUES ('37', '枫', '32', '枫.mp3', '', '枫', '275000');
INSERT INTO `music` VALUES ('38', '黑凤梨', '50,51', '黑凤梨.mp3', '', '黑凤梨', '238000');
INSERT INTO `music` VALUES ('39', '横竖撇点折', '52', '横竖撇点折.mp3', '', '横竖撇点折', '229000');
INSERT INTO `music` VALUES ('40', '回到过去', '32', '回到过去.mp3', '', '回到过去', '233000');
INSERT INTO `music` VALUES ('41', '僵尸舞', '44,51,53', '僵尸舞.mp3', '', '僵尸舞', '181000');
INSERT INTO `music` VALUES ('42', '快乐手账', '51', '快乐手账.mp3', '', '快乐手账', '252000');
INSERT INTO `music` VALUES ('43', '恋爱语音导航', '54', '恋爱语音导航.mp3', '', '恋爱语音导航', '241000');
INSERT INTO `music` VALUES ('44', '流光月夜', '54,55,56,57,58,59', '流光月夜.m4a', '', '流光月夜', '231000');
INSERT INTO `music` VALUES ('45', '流浪诗人', '32', '流浪诗人.mp3', '', '流浪诗人', '169000');
INSERT INTO `music` VALUES ('46', '魔术先生', '32', '魔术先生.mp3', '', '魔术先生', '227000');
INSERT INTO `music` VALUES ('47', '努力婊（hardworking bitch）', '60,61', '努力婊.mp3', '', '努力婊（hardworking bitch）', '240000');
INSERT INTO `music` VALUES ('48', '神的随波逐流', '54', '神的随波逐流.mp3', '', '神的随波逐流', '256000');
INSERT INTO `music` VALUES ('49', '霜雪千年', '43,51', '霜雪千年.mp3', '', '霜雪千年', '240000');
INSERT INTO `music` VALUES ('50', '死神', '62', '死神.m4a', '', '死神', '180000');
INSERT INTO `music` VALUES ('51', '她的睫毛', '32', '她的睫毛.mp3', '', '她的睫毛', '233000');
INSERT INTO `music` VALUES ('52', '游园会', '32', '游园会.mp3', '', '游园会', '205000');
INSERT INTO `music` VALUES ('53', '夜宴风波', '54', '夜宴风波.mp3', '', '夜宴风波', '255000');
INSERT INTO `music` VALUES ('54', '星之回响【2020拜年祭单品】', '63,54,65,66,67,68,69,64', 'bili_audio/BV1KJ411C7qF.mp3', 'http://i2.hdslb.com/bfs/archive/c39ad6fbe8ce79d4e0ff9b1dc76b02c37aa14907.jpg', '星之回响【2020拜年祭单品】', '300000');
INSERT INTO `music` VALUES ('55', '【原神生日会】如果突然想起我', '70', 'bili_audio/BV1tG4y1B7xU.mp3', 'http://i1.hdslb.com/bfs/archive/262b48d3314562522d7698c9d089f8f10000f725.jpg', '【原神生日会】如果突然想起我', '231000');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `singer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for singer_map
-- ----------------------------
DROP TABLE IF EXISTS `singer_map`;
CREATE TABLE `singer_map` (
  `singer_map_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `singer_id` int(11) NOT NULL COMMENT '歌手id',
  `singer_name` varchar(255) NOT NULL COMMENT '歌手名称',
  PRIMARY KEY (`singer_map_id`),
  KEY `singer_id` (`singer_id`),
  CONSTRAINT `singer_map_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

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
