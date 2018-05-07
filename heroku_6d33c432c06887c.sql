/*
Navicat MySQL Data Transfer

Source Server         : media
Source Server Version : 50556
Source Host           : us-cdbr-iron-east-03.cleardb.net:3306
Source Database       : heroku_6d33c432c06887c

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-08 20:49:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of artists
-- ----------------------------
INSERT INTO `artists` VALUES ('1', 'Bằng Cường', '1');
INSERT INTO `artists` VALUES ('2', 'Lâm Chấn Khang', '1');
INSERT INTO `artists` VALUES ('3', 'Hồ Việt Trung', '1');
INSERT INTO `artists` VALUES ('4', 'Văn Mai Hương', '1');
INSERT INTO `artists` VALUES ('5', 'Châu Khải Phong', '1');
INSERT INTO `artists` VALUES ('6', 'Phạm Trưởng', '1');
INSERT INTO `artists` VALUES ('7', 'Đông Nhi', '1');
INSERT INTO `artists` VALUES ('8', 'Nam Cường  ', '1');
INSERT INTO `artists` VALUES ('9', ' Việt My', '1');
INSERT INTO `artists` VALUES ('10', 'Nhiều Ca Sĩ', '1');
INSERT INTO `artists` VALUES ('11', 'Nhật Kim Anh', '1');
INSERT INTO `artists` VALUES ('12', 'Bích Phương', '1');
INSERT INTO `artists` VALUES ('13', 'Quách Tuấn Du', '1');
INSERT INTO `artists` VALUES ('14', 'Uyên Trang', '1');
INSERT INTO `artists` VALUES ('15', 'Vũ Duy Khánh', '1');
INSERT INTO `artists` VALUES ('16', 'Khắc Việt', '1');
INSERT INTO `artists` VALUES ('17', 'Noo Phước Thịnh', '1');
INSERT INTO `artists` VALUES ('18', 'MLee', '1');
INSERT INTO `artists` VALUES ('19', 'Lý Hải', '1');
INSERT INTO `artists` VALUES ('20', 'Min', '1');
INSERT INTO `artists` VALUES ('21', 'Việt My', '1');
INSERT INTO `artists` VALUES ('22', 'Đinh Hương', '1');
INSERT INTO `artists` VALUES ('23', 'Bằng Kiều', '1');
INSERT INTO `artists` VALUES ('24', ' Minh Tuyết', '1');
INSERT INTO `artists` VALUES ('25', 'Anh Khang  ', '1');
INSERT INTO `artists` VALUES ('26', ' Bằng Kiều', '1');
INSERT INTO `artists` VALUES ('27', 'Ed Sheeran', '2');
INSERT INTO `artists` VALUES ('28', 'Miley Cyrus', '2');
INSERT INTO `artists` VALUES ('29', 'Meghan Trainor', '2');
INSERT INTO `artists` VALUES ('30', 'Idina Menzel', '2');
INSERT INTO `artists` VALUES ('31', 'John Legend', '2');
INSERT INTO `artists` VALUES ('32', 'Maroon 5', '2');
INSERT INTO `artists` VALUES ('33', 'Jason Derulo', '2');
INSERT INTO `artists` VALUES ('34', 'Echosmith', '2');
INSERT INTO `artists` VALUES ('35', 'David Guetta  ', '2');
INSERT INTO `artists` VALUES ('36', ' Emeli Sandé', '2');
INSERT INTO `artists` VALUES ('37', 'Rachel Platten', '2');
INSERT INTO `artists` VALUES ('38', 'Omi', '2');
INSERT INTO `artists` VALUES ('39', 'Pitbull  ', '2');
INSERT INTO `artists` VALUES ('40', ' Ke$ha', '2');
INSERT INTO `artists` VALUES ('41', 'Selena Gomez', '2');
INSERT INTO `artists` VALUES ('42', 'Lorde', '2');
INSERT INTO `artists` VALUES ('43', 'DJ Snake  ', '2');
INSERT INTO `artists` VALUES ('44', ' AlunaGeorge', '2');
INSERT INTO `artists` VALUES ('45', 'Iggy Azalea  ', '2');
INSERT INTO `artists` VALUES ('46', ' Rita Ora', '2');
INSERT INTO `artists` VALUES ('47', 'Alesso  ', '2');
INSERT INTO `artists` VALUES ('48', ' Tove Lo', '2');
INSERT INTO `artists` VALUES ('49', 'Nicki Minaj', '2');
INSERT INTO `artists` VALUES ('50', 'Tove Lo', '2');
INSERT INTO `artists` VALUES ('51', 'One Direction', '2');
INSERT INTO `artists` VALUES ('52', 'Walk The Moon', '2');
INSERT INTO `artists` VALUES ('53', 'Katy Perry', '2');
INSERT INTO `artists` VALUES ('54', 'Rixton', '2');
INSERT INTO `artists` VALUES ('55', 'Avicii', '2');
INSERT INTO `artists` VALUES ('56', 'Pharrell Williams', '2');
INSERT INTO `artists` VALUES ('57', 'Hilary Duff', '2');
INSERT INTO `artists` VALUES ('58', 'Mark Ronson  ', '2');
INSERT INTO `artists` VALUES ('59', ' Bruno Mars', '2');
INSERT INTO `artists` VALUES ('60', 'Carly Rae Jepsen', '2');
INSERT INTO `artists` VALUES ('61', 'Jessie J', '2');
INSERT INTO `artists` VALUES ('62', 'Calvin Harris  ', '2');
INSERT INTO `artists` VALUES ('63', ' John Newman', '2');
INSERT INTO `artists` VALUES ('64', 'OneRepublic', '2');
INSERT INTO `artists` VALUES ('65', 'Andy Grammer', '2');
INSERT INTO `artists` VALUES ('66', 'Justin Bieber', '2');
INSERT INTO `artists` VALUES ('67', 'Lady Gaga  ', '2');
INSERT INTO `artists` VALUES ('68', ' R. Kelly', '2');
INSERT INTO `artists` VALUES ('69', 'MAGIC!', '2');
INSERT INTO `artists` VALUES ('70', ' 2 Chainz', '2');
INSERT INTO `artists` VALUES ('71', 'EXO', '2');
INSERT INTO `artists` VALUES ('72', 'MC Mong  ', '2');
INSERT INTO `artists` VALUES ('73', ' Sweden Laundry', '2');
INSERT INTO `artists` VALUES ('74', 'G-Dragon', '2');
INSERT INTO `artists` VALUES ('75', 'Tae Yang', '2');
INSERT INTO `artists` VALUES ('76', ' G-Dragon', '2');
INSERT INTO `artists` VALUES ('77', 'Tablo  ', '2');
INSERT INTO `artists` VALUES ('78', ' Tae Yang', '2');
INSERT INTO `artists` VALUES ('79', 'Epik High', '2');
INSERT INTO `artists` VALUES ('80', '2NE1', '2');
INSERT INTO `artists` VALUES ('81', 'SeungRi  ', '2');
INSERT INTO `artists` VALUES ('82', ' Jenny', '2');
INSERT INTO `artists` VALUES ('83', 'T-ARA', '2');
INSERT INTO `artists` VALUES ('84', 'SNSD', '2');
INSERT INTO `artists` VALUES ('85', 'HA:TFELT', '2');
INSERT INTO `artists` VALUES ('86', 'SISTAR', '2');
INSERT INTO `artists` VALUES ('87', 'WINNER', '2');
INSERT INTO `artists` VALUES ('88', 'Hi Suhyun  ', '2');
INSERT INTO `artists` VALUES ('89', ' Bobby', '2');
INSERT INTO `artists` VALUES ('90', 'T.O.P', '2');
INSERT INTO `artists` VALUES ('91', 'Henry', '2');
INSERT INTO `artists` VALUES ('92', 'BEAST', '2');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'Việt Nam');
INSERT INTO `countries` VALUES ('2', 'US-UK');
INSERT INTO `countries` VALUES ('3', 'K-POP');

-- ----------------------------
-- Table structure for favourite
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite` (
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of favourite
-- ----------------------------
INSERT INTO `favourite` VALUES ('148', '1');
INSERT INTO `favourite` VALUES ('152', '1');
INSERT INTO `favourite` VALUES ('167', '1');
INSERT INTO `favourite` VALUES ('0', '1');
INSERT INTO `favourite` VALUES ('96', '1');
INSERT INTO `favourite` VALUES ('149', '1');
INSERT INTO `favourite` VALUES ('93', '1');
INSERT INTO `favourite` VALUES ('153', '1');
INSERT INTO `favourite` VALUES ('92', '1');

-- ----------------------------
-- Table structure for performers
-- ----------------------------
DROP TABLE IF EXISTS `performers`;
CREATE TABLE `performers` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`artist_id`,`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of performers
-- ----------------------------
INSERT INTO `performers` VALUES ('1', '1');
INSERT INTO `performers` VALUES ('2', '1');
INSERT INTO `performers` VALUES ('6', '1');
INSERT INTO `performers` VALUES ('16', '1');
INSERT INTO `performers` VALUES ('17', '1');
INSERT INTO `performers` VALUES ('21', '1');
INSERT INTO `performers` VALUES ('24', '1');
INSERT INTO `performers` VALUES ('25', '1');
INSERT INTO `performers` VALUES ('26', '1');
INSERT INTO `performers` VALUES ('29', '1');
INSERT INTO `performers` VALUES ('30', '1');
INSERT INTO `performers` VALUES ('36', '1');
INSERT INTO `performers` VALUES ('38', '1');
INSERT INTO `performers` VALUES ('42', '1');
INSERT INTO `performers` VALUES ('43', '1');
INSERT INTO `performers` VALUES ('46', '1');
INSERT INTO `performers` VALUES ('52', '1');
INSERT INTO `performers` VALUES ('57', '1');
INSERT INTO `performers` VALUES ('58', '1');
INSERT INTO `performers` VALUES ('59', '1');
INSERT INTO `performers` VALUES ('60', '1');
INSERT INTO `performers` VALUES ('61', '1');
INSERT INTO `performers` VALUES ('62', '1');
INSERT INTO `performers` VALUES ('63', '1');
INSERT INTO `performers` VALUES ('64', '1');
INSERT INTO `performers` VALUES ('66', '1');
INSERT INTO `performers` VALUES ('70', '1');
INSERT INTO `performers` VALUES ('74', '1');
INSERT INTO `performers` VALUES ('75', '1');
INSERT INTO `performers` VALUES ('78', '1');
INSERT INTO `performers` VALUES ('3', '2');
INSERT INTO `performers` VALUES ('5', '2');
INSERT INTO `performers` VALUES ('9', '2');
INSERT INTO `performers` VALUES ('10', '2');
INSERT INTO `performers` VALUES ('27', '2');
INSERT INTO `performers` VALUES ('28', '2');
INSERT INTO `performers` VALUES ('33', '2');
INSERT INTO `performers` VALUES ('41', '2');
INSERT INTO `performers` VALUES ('44', '2');
INSERT INTO `performers` VALUES ('76', '2');
INSERT INTO `performers` VALUES ('4', '3');
INSERT INTO `performers` VALUES ('11', '3');
INSERT INTO `performers` VALUES ('40', '3');
INSERT INTO `performers` VALUES ('53', '3');
INSERT INTO `performers` VALUES ('77', '3');
INSERT INTO `performers` VALUES ('7', '4');
INSERT INTO `performers` VALUES ('8', '5');
INSERT INTO `performers` VALUES ('15', '5');
INSERT INTO `performers` VALUES ('31', '5');
INSERT INTO `performers` VALUES ('54', '5');
INSERT INTO `performers` VALUES ('72', '5');
INSERT INTO `performers` VALUES ('12', '6');
INSERT INTO `performers` VALUES ('19', '6');
INSERT INTO `performers` VALUES ('20', '6');
INSERT INTO `performers` VALUES ('35', '6');
INSERT INTO `performers` VALUES ('73', '6');
INSERT INTO `performers` VALUES ('13', '7');
INSERT INTO `performers` VALUES ('14', '8');
INSERT INTO `performers` VALUES ('14', '9');
INSERT INTO `performers` VALUES ('18', '10');
INSERT INTO `performers` VALUES ('34', '10');
INSERT INTO `performers` VALUES ('68', '10');
INSERT INTO `performers` VALUES ('81', '10');
INSERT INTO `performers` VALUES ('84', '10');
INSERT INTO `performers` VALUES ('102', '10');
INSERT INTO `performers` VALUES ('103', '10');
INSERT INTO `performers` VALUES ('110', '10');
INSERT INTO `performers` VALUES ('115', '10');
INSERT INTO `performers` VALUES ('123', '10');
INSERT INTO `performers` VALUES ('135', '10');
INSERT INTO `performers` VALUES ('146', '10');
INSERT INTO `performers` VALUES ('156', '10');
INSERT INTO `performers` VALUES ('162', '10');
INSERT INTO `performers` VALUES ('22', '11');
INSERT INTO `performers` VALUES ('23', '12');
INSERT INTO `performers` VALUES ('32', '12');
INSERT INTO `performers` VALUES ('50', '12');
INSERT INTO `performers` VALUES ('56', '12');
INSERT INTO `performers` VALUES ('37', '13');
INSERT INTO `performers` VALUES ('45', '13');
INSERT INTO `performers` VALUES ('71', '13');
INSERT INTO `performers` VALUES ('39', '14');
INSERT INTO `performers` VALUES ('47', '15');
INSERT INTO `performers` VALUES ('48', '16');
INSERT INTO `performers` VALUES ('49', '17');
INSERT INTO `performers` VALUES ('51', '17');
INSERT INTO `performers` VALUES ('55', '18');
INSERT INTO `performers` VALUES ('65', '19');
INSERT INTO `performers` VALUES ('67', '20');
INSERT INTO `performers` VALUES ('69', '21');
INSERT INTO `performers` VALUES ('79', '22');
INSERT INTO `performers` VALUES ('80', '23');
INSERT INTO `performers` VALUES ('82', '23');
INSERT INTO `performers` VALUES ('83', '23');
INSERT INTO `performers` VALUES ('85', '23');
INSERT INTO `performers` VALUES ('86', '23');
INSERT INTO `performers` VALUES ('88', '23');
INSERT INTO `performers` VALUES ('89', '23');
INSERT INTO `performers` VALUES ('90', '23');
INSERT INTO `performers` VALUES ('91', '23');
INSERT INTO `performers` VALUES ('83', '24');
INSERT INTO `performers` VALUES ('88', '24');
INSERT INTO `performers` VALUES ('87', '25');
INSERT INTO `performers` VALUES ('87', '26');
INSERT INTO `performers` VALUES ('92', '27');
INSERT INTO `performers` VALUES ('141', '27');
INSERT INTO `performers` VALUES ('93', '28');
INSERT INTO `performers` VALUES ('94', '29');
INSERT INTO `performers` VALUES ('127', '29');
INSERT INTO `performers` VALUES ('95', '30');
INSERT INTO `performers` VALUES ('96', '31');
INSERT INTO `performers` VALUES ('97', '32');
INSERT INTO `performers` VALUES ('109', '32');
INSERT INTO `performers` VALUES ('116', '32');
INSERT INTO `performers` VALUES ('119', '32');
INSERT INTO `performers` VALUES ('130', '32');
INSERT INTO `performers` VALUES ('98', '33');
INSERT INTO `performers` VALUES ('99', '34');
INSERT INTO `performers` VALUES ('100', '35');
INSERT INTO `performers` VALUES ('100', '36');
INSERT INTO `performers` VALUES ('101', '37');
INSERT INTO `performers` VALUES ('104', '38');
INSERT INTO `performers` VALUES ('105', '39');
INSERT INTO `performers` VALUES ('105', '40');
INSERT INTO `performers` VALUES ('106', '41');
INSERT INTO `performers` VALUES ('107', '42');
INSERT INTO `performers` VALUES ('108', '43');
INSERT INTO `performers` VALUES ('108', '44');
INSERT INTO `performers` VALUES ('111', '45');
INSERT INTO `performers` VALUES ('111', '46');
INSERT INTO `performers` VALUES ('112', '47');
INSERT INTO `performers` VALUES ('112', '48');
INSERT INTO `performers` VALUES ('113', '49');
INSERT INTO `performers` VALUES ('114', '50');
INSERT INTO `performers` VALUES ('117', '51');
INSERT INTO `performers` VALUES ('129', '51');
INSERT INTO `performers` VALUES ('144', '51');
INSERT INTO `performers` VALUES ('118', '52');
INSERT INTO `performers` VALUES ('120', '53');
INSERT INTO `performers` VALUES ('139', '53');
INSERT INTO `performers` VALUES ('121', '54');
INSERT INTO `performers` VALUES ('122', '55');
INSERT INTO `performers` VALUES ('136', '55');
INSERT INTO `performers` VALUES ('124', '56');
INSERT INTO `performers` VALUES ('125', '57');
INSERT INTO `performers` VALUES ('126', '58');
INSERT INTO `performers` VALUES ('143', '58');
INSERT INTO `performers` VALUES ('126', '59');
INSERT INTO `performers` VALUES ('143', '59');
INSERT INTO `performers` VALUES ('128', '60');
INSERT INTO `performers` VALUES ('131', '61');
INSERT INTO `performers` VALUES ('145', '61');
INSERT INTO `performers` VALUES ('132', '62');
INSERT INTO `performers` VALUES ('134', '62');
INSERT INTO `performers` VALUES ('132', '63');
INSERT INTO `performers` VALUES ('133', '64');
INSERT INTO `performers` VALUES ('137', '65');
INSERT INTO `performers` VALUES ('138', '66');
INSERT INTO `performers` VALUES ('140', '67');
INSERT INTO `performers` VALUES ('140', '68');
INSERT INTO `performers` VALUES ('142', '69');
INSERT INTO `performers` VALUES ('145', '70');
INSERT INTO `performers` VALUES ('147', '71');
INSERT INTO `performers` VALUES ('164', '71');
INSERT INTO `performers` VALUES ('181', '71');
INSERT INTO `performers` VALUES ('148', '72');
INSERT INTO `performers` VALUES ('158', '72');
INSERT INTO `performers` VALUES ('148', '73');
INSERT INTO `performers` VALUES ('149', '74');
INSERT INTO `performers` VALUES ('167', '74');
INSERT INTO `performers` VALUES ('169', '74');
INSERT INTO `performers` VALUES ('172', '74');
INSERT INTO `performers` VALUES ('182', '74');
INSERT INTO `performers` VALUES ('183', '74');
INSERT INTO `performers` VALUES ('191', '74');
INSERT INTO `performers` VALUES ('193', '74');
INSERT INTO `performers` VALUES ('150', '75');
INSERT INTO `performers` VALUES ('151', '75');
INSERT INTO `performers` VALUES ('155', '75');
INSERT INTO `performers` VALUES ('163', '75');
INSERT INTO `performers` VALUES ('180', '75');
INSERT INTO `performers` VALUES ('151', '76');
INSERT INTO `performers` VALUES ('152', '77');
INSERT INTO `performers` VALUES ('152', '78');
INSERT INTO `performers` VALUES ('193', '78');
INSERT INTO `performers` VALUES ('153', '79');
INSERT INTO `performers` VALUES ('154', '80');
INSERT INTO `performers` VALUES ('159', '80');
INSERT INTO `performers` VALUES ('170', '80');
INSERT INTO `performers` VALUES ('189', '80');
INSERT INTO `performers` VALUES ('157', '81');
INSERT INTO `performers` VALUES ('166', '81');
INSERT INTO `performers` VALUES ('173', '81');
INSERT INTO `performers` VALUES ('157', '82');
INSERT INTO `performers` VALUES ('160', '83');
INSERT INTO `performers` VALUES ('171', '83');
INSERT INTO `performers` VALUES ('175', '83');
INSERT INTO `performers` VALUES ('184', '83');
INSERT INTO `performers` VALUES ('192', '83');
INSERT INTO `performers` VALUES ('161', '84');
INSERT INTO `performers` VALUES ('176', '84');
INSERT INTO `performers` VALUES ('177', '84');
INSERT INTO `performers` VALUES ('186', '84');
INSERT INTO `performers` VALUES ('188', '84');
INSERT INTO `performers` VALUES ('165', '85');
INSERT INTO `performers` VALUES ('168', '86');
INSERT INTO `performers` VALUES ('174', '87');
INSERT INTO `performers` VALUES ('185', '87');
INSERT INTO `performers` VALUES ('178', '88');
INSERT INTO `performers` VALUES ('178', '89');
INSERT INTO `performers` VALUES ('179', '90');
INSERT INTO `performers` VALUES ('187', '91');
INSERT INTO `performers` VALUES ('190', '92');

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES ('1', 'nhạc hay', '1');
INSERT INTO `playlist` VALUES ('42', 'playmoi', '1');
INSERT INTO `playlist` VALUES ('52', 'triet', '1');

-- ----------------------------
-- Table structure for playlist_song
-- ----------------------------
DROP TABLE IF EXISTS `playlist_song`;
CREATE TABLE `playlist_song` (
  `id_playlist` int(11) NOT NULL,
  `id_song` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_playlist`,`id_song`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of playlist_song
-- ----------------------------
INSERT INTO `playlist_song` VALUES ('1', '92');
INSERT INTO `playlist_song` VALUES ('1', '93');
INSERT INTO `playlist_song` VALUES ('1', '94');
INSERT INTO `playlist_song` VALUES ('1', '95');
INSERT INTO `playlist_song` VALUES ('1', '147');
INSERT INTO `playlist_song` VALUES ('42', '92');
INSERT INTO `playlist_song` VALUES ('42', '93');
INSERT INTO `playlist_song` VALUES ('42', '94');
INSERT INTO `playlist_song` VALUES ('52', '92');
INSERT INTO `playlist_song` VALUES ('52', '93');

-- ----------------------------
-- Table structure for songs
-- ----------------------------
DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_artist` int(11) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `name_artist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of songs
-- ----------------------------
INSERT INTO `songs` VALUES ('1', 'what-is-love-nguyen-dinh-vu-edm-remix-1495956911873', 'what-is-love-nguyen-dinh-vu-edm-remix-1495956911873', 'What Is Love (Nguyễn Đình Vũ EDM Remix)', '1', '1', 'Bằng Cường');
INSERT INTO `songs` VALUES ('2', 'nu-hong-mong-manh-dj-deelee-remix-1495956911873', 'nu-hong-mong-manh-dj-deelee-remix-1495956911873', 'Nụ Hồng Mong Manh (DJ DeeLee Remix)', '1', '1', 'Bằng Cường');
INSERT INTO `songs` VALUES ('3', 'lan-va-diep-nonstop-remix-1495956911873', 'lan-va-diep-nonstop-remix-1495956911873', 'Lan Và Điệp (Nonstop Remix)', '2', '1', 'Lâm Chấn Khang');
INSERT INTO `songs` VALUES ('4', 'nguoi-quan-trong-nhat-remix-1495956911873', 'nguoi-quan-trong-nhat-remix-1495956911873', 'Người Quan Trọng Nhất (Remix)', '3', '1', 'Hồ Việt Trung');
INSERT INTO `songs` VALUES ('5', 'chuyen-bay-di-chuyen-bay-ve-remix-1495956911873', 'chuyen-bay-di-chuyen-bay-ve-remix-1495956911873', 'Chuyến Bay Đi Chuyến Bay Về (Remix)', '2', '1', 'Lâm Chấn Khang');
INSERT INTO `songs` VALUES ('6', 'what-is-love-vina-house-remix-1495956911873', 'what-is-love-vina-house-remix-1495956911873', 'What Is Love (Vina House Remix)', '1', '1', 'Bằng Cường');
INSERT INTO `songs` VALUES ('7', 'neu-nhu-anh-den-daniel-mastro-remix-1495956911873', 'neu-nhu-anh-den-daniel-mastro-remix-1495956911873', 'Nếu Như Anh Đến (Daniel Mastro Remix)', '4', '1', 'Văn Mai Hương');
INSERT INTO `songs` VALUES ('8', 'khong-the-ben-em-remix1495956911873', 'khong-the-ben-em-remix1495956911873', 'Không Thể Bên Em Remix', '5', '1', 'Châu Khải Phong');
INSERT INTO `songs` VALUES ('92', 'photograph1495964865375', 'photograph1495964865375', 'Photograph', '27', '2', 'Ed Sheeran');
INSERT INTO `songs` VALUES ('93', 'wrecking-ball1495964865375', 'wrecking-ball1495964865375', 'Wrecking Ball', '28', '2', 'Miley Cyrus');
INSERT INTO `songs` VALUES ('94', 'lips-are-movin1495964865375', 'lips-are-movin1495964865375', 'Lips Are Movin', '29', '2', 'Meghan Trainor');
INSERT INTO `songs` VALUES ('95', 'let-it-go1495964865375', 'let-it-go1495964865375', 'Let It Go', '30', '2', 'Idina Menzel');
INSERT INTO `songs` VALUES ('96', 'all-of-me1495964865375', 'all-of-me1495964865375', 'All Of Me', '31', '2', 'John Legend');
INSERT INTO `songs` VALUES ('97', 'sugar1495964865375', 'sugar1495964865375', 'Sugar', '32', '2', 'Maroon 5');
INSERT INTO `songs` VALUES ('98', 'want-to-want-me1495964865375', 'want-to-want-me1495964865375', 'Want To Want Me', '33', '2', 'Jason Derulo');
INSERT INTO `songs` VALUES ('99', 'cool-kids1495964865375', 'cool-kids1495964865375', 'Cool Kids', '34', '2', 'Echosmith');
INSERT INTO `songs` VALUES ('100', 'what-i-did-for-love1495964865375', 'what-i-did-for-love1495964865375', 'What I Did For Love', '35', '2', 'David Guetta  ');
INSERT INTO `songs` VALUES ('142', 'rude1495964865375', 'rude1495964865375', 'Rude', '69', '2', 'MAGIC!');
INSERT INTO `songs` VALUES ('147', 'exodus1495964989014', 'exodus1495964989014', 'Exodus', '71', '3', 'EXO');
INSERT INTO `songs` VALUES ('148', 'sick-to-death-part-21495964989014', 'sick-to-death-part-21495964989014', 'Sick To Death Part.2', '72', '3', 'MC Mong  ');
INSERT INTO `songs` VALUES ('149', 'shake-the-world1495964989014', 'shake-the-world1495964989014', 'Shake The World', '74', '3', 'G-Dragon');
INSERT INTO `songs` VALUES ('150', '1am1495964989014', '1am1495964989014', '1AM', '75', '3', 'Tae Yang');
INSERT INTO `songs` VALUES ('151', 'stay-with-me1495964989014', 'stay-with-me1495964989014', 'Stay With Me', '75', '3', 'Tae Yang');
INSERT INTO `songs` VALUES ('152', 'eyes-nose-lips-english-version-1495964989014', 'eyes-nose-lips-english-version-1495964989014', 'Eyes, Nose, Lips (English Version)', '77', '3', 'Tablo  ');
INSERT INTO `songs` VALUES ('153', 'happen-ending1495964989014', 'happen-ending1495964989014', 'Happen Ending', '79', '3', 'Epik High');
INSERT INTO `songs` VALUES ('154', 'missing-you1495964989014', 'missing-you1495964989014', 'Missing You', '80', '3', '2NE1');
INSERT INTO `songs` VALUES ('155', 'ringa-linga1495964989014', 'ringa-linga1495964989014', 'Ringa Linga', '75', '3', 'Tae Yang');
INSERT INTO `songs` VALUES ('156', 'let-s-talk-about-love1495964989014', 'let-s-talk-about-love1495964989014', 'Let\'s Talk About Love', '10', '3', 'Nhiều Ca Sĩ');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Xuân Triết', 'lxtriet', 'lxtriet', '123');
