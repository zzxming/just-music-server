/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-13 20:21:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `music_name` varchar(255) NOT NULL COMMENT '显示的音乐名称',
  `singer_name` varchar(255) NOT NULL COMMENT '歌手名称, 逗号分割',
  `music_url` varchar(255) NOT NULL COMMENT '音乐本地路径',
  PRIMARY KEY (`music_id`),
  KEY `singer_id` (`singer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '趁人之危', '圣代', 'bili_audio/BV1wV41187FK.mp3');
INSERT INTO `music` VALUES ('2', 'Counting Stars', 'OneRepublicOneRepublic', 'counting stars/counting stars.mp3');
INSERT INTO `music` VALUES ('3', 'Creepin\' up on You', 'Darren Hayes', 'creepin\' up on you/creepin\' up on you.mp3');
INSERT INTO `music` VALUES ('4', 'Eutopia', '钟岚珠', 'Eutopia/Eutopia.mp3');
INSERT INTO `music` VALUES ('5', 'How Long', 'Charlie Puth', 'how long - Charlie Puth/how long-Charlie Puth.mp3');
INSERT INTO `music` VALUES ('6', 'I Love You Forever', 'Jewel', 'i love you forever/i love you forever.mp3');
INSERT INTO `music` VALUES ('7', 'Lock Me Up', 'The Cab', 'lock me up/lock me up.mp3');
INSERT INTO `music` VALUES ('8', 'Morning Glory', '(K)NoW_NAME', 'Morning Glory - (K)NoW_NAME/Morning Glory - (K)NoW_NAME.mp3');
INSERT INTO `music` VALUES ('9', 'New Soul', 'Vox Angeli', 'new soul/new soul.mp3');
INSERT INTO `music` VALUES ('10', 'Overcomer', 'Mandisa', 'overcomer/overcomer.mp3');
INSERT INTO `music` VALUES ('11', 'Regression', '阿云嘎', 'Regression - 阿云嘎/Regression-阿云嘎.mp3');
INSERT INTO `music` VALUES ('12', 'September', 'Earth, Wind & Fire', 'september - Earth, Wind & Fire/september-Earth, Wind & Fire.mp3');
INSERT INTO `music` VALUES ('13', 'Stereo Hearts', 'Gym Class Heroes', 'stereo hearts/stereo hearts.mp3');
INSERT INTO `music` VALUES ('14', 'Until You', 'Shayne Ward', 'until you/until you.mp3');
INSERT INTO `music` VALUES ('15', 'We Own The Night', 'The Wanted', 'we own the night/we own the night.mp3');
INSERT INTO `music` VALUES ('16', 'What Do I Konw', 'Ed Sheeran', 'what do i konw/what do i konw.mp3');
INSERT INTO `music` VALUES ('17', '1/2如梦', '星尘,H.K.(HEROAR)', '½如梦.mp3');
INSERT INTO `music` VALUES ('18', '7 Years', 'Lukas Graham', '7 years.mp3');
INSERT INTO `music` VALUES ('19', 'Contact', 'Lulleaux,Giang Pham', 'Contact.mp3');
INSERT INTO `music` VALUES ('20', 'dududu', '咬人猫', 'dududu.m4a');
INSERT INTO `music` VALUES ('21', 'HAVE A NICE DAY', 'WORLD ORDER', 'have a nice day.mp3');
INSERT INTO `music` VALUES ('22', 'Imagination', 'Shawn Mendes', 'imagination.mp3');
INSERT INTO `music` VALUES ('23', 'Love Story', 'Taylor Swift', 'love store.mp3');
INSERT INTO `music` VALUES ('24', 'Love Youself', 'Justin Bieber', 'love youself.mp3');
INSERT INTO `music` VALUES ('25', 'Magic', 'One Direction', 'Magic - One Direction.mp3');
INSERT INTO `music` VALUES ('26', 'Marine Dreamin\' ', '鹿乃,P*Light', 'Marine Dreamin\' .mp3');
INSERT INTO `music` VALUES ('27', 'Masayume Chasing', 'BoA', 'MASAYUME CHASING.mp3');
INSERT INTO `music` VALUES ('28', 'Mine Mine', '周杰伦', 'mine mine.mp3');
INSERT INTO `music` VALUES ('29', 'Mr.Music', '巡音ルカ,れるりり,初音ミク,鏡音リン,鏡音レン,歌愛ユキ,GUMI', 'mr.music.mp3');
INSERT INTO `music` VALUES ('30', 'You(=I)', '脸红的思春期', 'You(=I).mp3');
INSERT INTO `music` VALUES ('31', 'Your Song', 'Rita Ora', 'your song.mp3');
INSERT INTO `music` VALUES ('32', 'カサネテク (千层套路) ', '中村千尋', 'カサネテク (千层套路) .mp3');
INSERT INTO `music` VALUES ('33', '爱的飞行日记', '周杰伦', '爱的飞行日记.mp3');
INSERT INTO `music` VALUES ('34', '傲娇系男孩的告白日', '乐正绫,ilem', '傲娇系男孩的告白日.mp3');
INSERT INTO `music` VALUES ('35', '【墨清弦&乐正龙牙】不正常恋爱物语', '月蚀音乐,乐正龙牙,墨清弦', '不正常恋爱物语.mp3');
INSERT INTO `music` VALUES ('36', '单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin\r\n单向地铁 Feat.Karin', '小野道ono,karin', '单项地铁.mp3');
INSERT INTO `music` VALUES ('37', '枫', '周杰伦', '枫.mp3');
INSERT INTO `music` VALUES ('38', '黑凤梨', 'Z新豪,洛天依', '黑凤梨.mp3');
INSERT INTO `music` VALUES ('39', '横竖撇点折', '米白', '横竖撇点折.mp3');
INSERT INTO `music` VALUES ('40', '回到过去', '周杰伦', '回到过去.mp3');
INSERT INTO `music` VALUES ('41', '僵尸舞', 'ilem,洛天依,言和', '僵尸舞.mp3');
INSERT INTO `music` VALUES ('42', '快乐手账', '洛天依', '快乐手账.mp3');
INSERT INTO `music` VALUES ('43', '恋爱语音导航', '泠鸢yousa', '恋爱语音导航.mp3');
INSERT INTO `music` VALUES ('44', '流光月夜', '泠鸢yousa,H.,三无MarBlue,冥月,岚AYA,Mes', '流光月夜.m4a');
INSERT INTO `music` VALUES ('45', '流浪诗人', '周杰伦', '流浪诗人.mp3');
INSERT INTO `music` VALUES ('46', '魔术先生', '周杰伦', '魔术先生.mp3');
INSERT INTO `music` VALUES ('47', '努力婊（hardworking bitch）', 'hanser,YUKIri', '努力婊.mp3');
INSERT INTO `music` VALUES ('48', '神的随波逐流', '泠鸢yousa', '神的随波逐流.mp3');
INSERT INTO `music` VALUES ('49', '霜雪千年', '乐正绫,洛天依', '霜雪千年.mp3');
INSERT INTO `music` VALUES ('50', '死神', '米津玄師', '死神.m4a');
INSERT INTO `music` VALUES ('51', '她的睫毛', '周杰伦', '她的睫毛.mp3');
INSERT INTO `music` VALUES ('52', '游园会', '周杰伦', '游园会.mp3');
INSERT INTO `music` VALUES ('53', '夜宴风波', '泠鸢yousa', '夜宴风波.mp3');
INSERT INTO `music` VALUES ('62', '星之回响【2020拜年祭单品】', '琉绮Ruki', 'bili_audio/BV1KJ411C7qF.mp3');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1');
INSERT INTO `singer` VALUES ('2');
INSERT INTO `singer` VALUES ('3');
INSERT INTO `singer` VALUES ('4');
INSERT INTO `singer` VALUES ('5');
INSERT INTO `singer` VALUES ('6');
INSERT INTO `singer` VALUES ('7');
INSERT INTO `singer` VALUES ('8');
INSERT INTO `singer` VALUES ('9');
INSERT INTO `singer` VALUES ('10');
INSERT INTO `singer` VALUES ('11');
INSERT INTO `singer` VALUES ('12');
INSERT INTO `singer` VALUES ('13');
INSERT INTO `singer` VALUES ('14');
INSERT INTO `singer` VALUES ('15');
INSERT INTO `singer` VALUES ('16');
INSERT INTO `singer` VALUES ('17');
INSERT INTO `singer` VALUES ('18');
INSERT INTO `singer` VALUES ('19');
INSERT INTO `singer` VALUES ('20');
INSERT INTO `singer` VALUES ('21');
INSERT INTO `singer` VALUES ('22');
INSERT INTO `singer` VALUES ('23');
INSERT INTO `singer` VALUES ('24');
INSERT INTO `singer` VALUES ('25');
INSERT INTO `singer` VALUES ('26');
INSERT INTO `singer` VALUES ('27');
INSERT INTO `singer` VALUES ('28');
INSERT INTO `singer` VALUES ('29');
INSERT INTO `singer` VALUES ('30');
INSERT INTO `singer` VALUES ('31');
INSERT INTO `singer` VALUES ('32');
INSERT INTO `singer` VALUES ('33');
INSERT INTO `singer` VALUES ('34');
INSERT INTO `singer` VALUES ('35');
INSERT INTO `singer` VALUES ('36');
INSERT INTO `singer` VALUES ('37');
INSERT INTO `singer` VALUES ('38');
INSERT INTO `singer` VALUES ('39');
INSERT INTO `singer` VALUES ('40');
INSERT INTO `singer` VALUES ('41');
INSERT INTO `singer` VALUES ('42');
INSERT INTO `singer` VALUES ('43');
INSERT INTO `singer` VALUES ('44');
INSERT INTO `singer` VALUES ('45');
INSERT INTO `singer` VALUES ('46');
INSERT INTO `singer` VALUES ('47');
INSERT INTO `singer` VALUES ('48');
INSERT INTO `singer` VALUES ('49');
INSERT INTO `singer` VALUES ('50');
INSERT INTO `singer` VALUES ('51');
INSERT INTO `singer` VALUES ('52');
INSERT INTO `singer` VALUES ('53');
INSERT INTO `singer` VALUES ('54');
INSERT INTO `singer` VALUES ('55');
INSERT INTO `singer` VALUES ('56');
INSERT INTO `singer` VALUES ('57');
INSERT INTO `singer` VALUES ('58');
INSERT INTO `singer` VALUES ('59');
INSERT INTO `singer` VALUES ('60');
INSERT INTO `singer` VALUES ('61');
INSERT INTO `singer` VALUES ('62');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

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
INSERT INTO `singer_map` VALUES ('106', '62', 'ハチ');
