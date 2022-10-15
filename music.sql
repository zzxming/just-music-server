/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : self_music

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-10-14 09:28:37
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

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
