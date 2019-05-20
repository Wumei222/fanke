/*
Navicat MySQL Data Transfer

Source Server         : mydatabases
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : 1903

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 10:45:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for allshirt
-- ----------------------------
DROP TABLE IF EXISTS `allshirt`;
CREATE TABLE `allshirt` (
  `gid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `colorcharge` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `nowprice` int(255) DEFAULT NULL,
  `recharge` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `store` int(255) DEFAULT NULL,
  `buy` int(255) DEFAULT NULL,
  `comment` int(255) DEFAULT NULL,
  `code` int(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allshirt
-- ----------------------------
INSERT INTO `allshirt` VALUES ('1', 't-shirt001.jpg&t-shirt0011.jpg&t-shirt001color.jpg&t-shirt001color1.jpg', '', 'T恤 山鸟叔 69 白色', '118', '38', '19', '白色&黑色', 'S&L&XXL', '21', '1', '2', '6378888');
INSERT INTO `allshirt` VALUES ('2', 't-shirt002.jpg&t-shirt0021.jpg&t-shirt002color&t-shirt002color1', '', 'T恤 欧飞鸿 怒火街头1 黑色', '118', '38', '19', '白色', 'S&M&XL', '22', '1', '2', '6378889');
INSERT INTO `allshirt` VALUES ('3', 't-shirt003.jpg&t-shirt0031', '', 'T恤 山鸟叔 广告位 白色', '118', '38', '19', '白色', 'S&M&XL', '23', '1', '2', '6378890');
INSERT INTO `allshirt` VALUES ('4', 't-shirt004.jpg&t-shirt0041', '', 'T恤 山鸟叔 鸟类学1 白色', '118', '38', '19', '白色', 'S&M&XL', '24', '1', '2', '6378891');
INSERT INTO `allshirt` VALUES ('5', 't-shirt005.jpg&t-shirt0051', '', '童装卫衣 圆领 熊本熊 S6 黑色', '118', '38', '59', '白色', 'S&M&XL', '25', '1', '2', '6378892');
INSERT INTO `allshirt` VALUES ('6', 'xp_01.jpg&show001.jpg&show0011.jpg', '', 'T恤 简鱼 牛肉干 白色', '', '58', '', '白色', 'S&M&XL', '26', '1', '3', '6378893');
INSERT INTO `allshirt` VALUES ('7', 'xp_02.jpg&show001.jpg&show0011.jpg', '', 'T恤 欧飞鸿 文明的骨头1 白色', '', '59', '', '白色', 'S&M&XL', '27', '1', '4', '6378894');
INSERT INTO `allshirt` VALUES ('8', 'xp_03.jpg&show001.jpg&show0011.jpg', '', 'T恤 周南 西毒 白色', '', '60', '', '白色', 'S&M&XL', '28', '1', '5', '6378895');
INSERT INTO `allshirt` VALUES ('9', 'xp_04.jpg&show001.jpg&show0011.jpg', '', 'T恤 欧飞鸿 发横财 白色', '', '61', '', '白色', 'S&M&XL', '29', '2', '6', '6378896');
INSERT INTO `allshirt` VALUES ('10', 'big1.jpg&big1001.jpg&big1002.jpg&big1003.jpg', '', '4.0日式免烫衬衫&牛津纺衬衫&凡客新品&全棉舒适素色T', '', '62', '', '白色', 'S&M&XL', '30', '3', '7', '6378897');
INSERT INTO `allshirt` VALUES ('11', 'big2.jpg&big2001.jpg&big2002.jpg&big2003.jpg', '', 'POLO 新品上市&第二件半价&沙滩裤&户外运动', '', '66', '', '白色', 'S&M&XL', '34', '7', '11', '6378901');
INSERT INTO `allshirt` VALUES ('12', 'k1.jpg', '', '休闲裤', '', '70', '', '白色', 'S&M&XL', '38', '11', '15', '6378905');
INSERT INTO `allshirt` VALUES ('13', 'k2.jpg', '', '牛仔裤', '', '71', '', '白色', 'S&M&XL', '39', '12', '16', '6378906');
INSERT INTO `allshirt` VALUES ('14', 'k3.jpg', '', '低裆锥形', '', '72', '', '白色', 'S&M&XL', '40', '13', '17', '6378907');
INSERT INTO `allshirt` VALUES ('15', 'k4.jpg', '', '窄脚休闲裤', '', '73', '', '白色', 'S&M&XL', '41', '14', '18', '6378908');
INSERT INTO `allshirt` VALUES ('16', 'about1.jpg', '', '', '', '74', '', '白色', 'S&M&XL', '42', '15', '19', '6378909');
INSERT INTO `allshirt` VALUES ('17', 'about2.jpg', '', '', '', '75', '', '白色', 'S&M&XL', '43', '16', '20', '6378910');
INSERT INTO `allshirt` VALUES ('18', 'about3.jpg', '', '', '', '76', '', '白色', 'S&M&XL', '44', '17', '21', '6378911');
INSERT INTO `allshirt` VALUES ('19', 'about4.jpg', '', '', '', '77', '', '白色', 'S&M&XL', '45', '18', '22', '6378912');
INSERT INTO `allshirt` VALUES ('20', 'about5.jpg', '', '', '', '78', '', '白色', 'S&M&XL', '46', '19', '23', '6378913');
INSERT INTO `allshirt` VALUES ('21', 'about6.jpg', '', '', '', '79', '', '白色', 'S&M&XL', '47', '20', '24', '6378914');
INSERT INTO `allshirt` VALUES ('22', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.0 紫色条纹', '', '698', '', '蓝色&白色', 'S&M&L', '12', '97', '10', '6379790');
INSERT INTO `allshirt` VALUES ('23', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.0 紫色方格', '', '699', '', '蓝色&白色', 'S&M&L', '13', '98', '13', '6379791');
INSERT INTO `allshirt` VALUES ('24', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '700', '', '蓝色&白色', 'S&M&L', '14', '233', '12', '6379792');
INSERT INTO `allshirt` VALUES ('25', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '701', '', '蓝色&白色', 'S&M&L', '15', '444', '11', '6379793');
INSERT INTO `allshirt` VALUES ('26', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.0 浅紫', '', '702', '', '蓝色&白色', 'S&M&L', '16', '655', '13', '6379794');
INSERT INTO `allshirt` VALUES ('27', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.0 深蓝维系格', '', '703', '', '蓝色&白色', 'S&M&L', '17', '866', '15', '6379795');
INSERT INTO `allshirt` VALUES ('28', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.1 紫色条纹', '', '704', '', '蓝色&白色', 'S&M&L', '18', '1077', '17', '6379796');
INSERT INTO `allshirt` VALUES ('29', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.1 紫色方格', '', '705', '', '蓝色&白色', 'S&M&L', '19', '1288', '19', '6379797');
INSERT INTO `allshirt` VALUES ('30', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '706', '', '蓝色&白色', 'S&M&L', '20', '1499', '21', '6379798');
INSERT INTO `allshirt` VALUES ('31', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '707', '', '蓝色&白色', 'S&M&L', '21', '1710', '23', '6379799');
INSERT INTO `allshirt` VALUES ('32', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.1 浅紫', '', '708', '', '蓝色&白色', 'S&M&L', '22', '1921', '25', '6379800');
INSERT INTO `allshirt` VALUES ('33', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.1 深蓝维系格', '', '709', '', '蓝色&白色', 'S&M&L', '23', '2132', '27', '6379801');
INSERT INTO `allshirt` VALUES ('34', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.2 紫色条纹', '', '710', '', '蓝色&白色', 'S&M&L', '24', '2343', '29', '6379802');
INSERT INTO `allshirt` VALUES ('35', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.2 紫色方格', '', '711', '', '蓝色&白色', 'S&M&L', '25', '2554', '31', '6379803');
INSERT INTO `allshirt` VALUES ('36', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '712', '', '蓝色&白色', 'S&M&L', '26', '2765', '33', '6379804');
INSERT INTO `allshirt` VALUES ('37', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '713', '', '蓝色&白色', 'S&M&L', '27', '2976', '35', '6379805');
INSERT INTO `allshirt` VALUES ('38', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.2 浅紫', '', '714', '', '蓝色&白色', 'S&M&L', '28', '3187', '37', '6379806');
INSERT INTO `allshirt` VALUES ('39', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.2 深蓝维系格', '', '715', '', '蓝色&白色', 'S&M&L', '29', '3398', '39', '6379807');
INSERT INTO `allshirt` VALUES ('40', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.3 紫色条纹', '', '716', '', '蓝色&白色', 'S&M&L', '30', '3609', '41', '6379808');
INSERT INTO `allshirt` VALUES ('41', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.3 紫色方格', '', '717', '', '蓝色&白色', 'S&M&L', '31', '3820', '43', '6379809');
INSERT INTO `allshirt` VALUES ('42', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '718', '', '蓝色&白色', 'S&M&L', '32', '4031', '45', '6379810');
INSERT INTO `allshirt` VALUES ('43', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '719', '', '蓝色&白色', 'S&M&L', '33', '4242', '47', '6379811');
INSERT INTO `allshirt` VALUES ('44', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.3 浅紫', '', '720', '', '蓝色&白色', 'S&M&L', '34', '4453', '49', '6379812');
INSERT INTO `allshirt` VALUES ('45', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.3 深蓝维系格', '', '721', '', '蓝色&白色', 'S&M&L', '35', '4664', '51', '6379813');
INSERT INTO `allshirt` VALUES ('46', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.4 紫色条纹', '', '722', '', '蓝色&白色', 'S&M&L', '36', '4875', '53', '6379814');
INSERT INTO `allshirt` VALUES ('47', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.4 紫色方格', '', '723', '', '蓝色&白色', 'S&M&L', '37', '5086', '55', '6379815');
INSERT INTO `allshirt` VALUES ('48', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '724', '', '蓝色&白色', 'S&M&L', '38', '5297', '57', '6379816');
INSERT INTO `allshirt` VALUES ('49', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '725', '', '蓝色&白色', 'S&M&L', '39', '5508', '59', '6379817');
INSERT INTO `allshirt` VALUES ('50', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.4 浅紫', '', '726', '', '蓝色&白色', 'S&M&L', '40', '5719', '61', '6379818');
INSERT INTO `allshirt` VALUES ('51', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.4 深蓝维系格', '', '727', '', '蓝色&白色', 'S&M&L', '41', '5930', '63', '6379819');
INSERT INTO `allshirt` VALUES ('52', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.5 紫色条纹', '', '728', '', '蓝色&白色', 'S&M&L', '42', '6141', '65', '6379820');
INSERT INTO `allshirt` VALUES ('53', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.5 紫色方格', '', '729', '', '蓝色&白色', 'S&M&L', '43', '6352', '67', '6379821');
INSERT INTO `allshirt` VALUES ('54', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '730', '', '蓝色&白色', 'S&M&L', '44', '6563', '69', '6379822');
INSERT INTO `allshirt` VALUES ('55', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '731', '', '蓝色&白色', 'S&M&L', '45', '6774', '71', '6379823');
INSERT INTO `allshirt` VALUES ('56', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.5 浅紫', '', '732', '', '蓝色&白色', 'S&M&L', '46', '6985', '73', '6379824');
INSERT INTO `allshirt` VALUES ('57', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.5 深蓝维系格', '', '733', '', '蓝色&白色', 'S&M&L', '47', '7196', '75', '6379825');
INSERT INTO `allshirt` VALUES ('58', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.6 紫色条纹', '', '734', '', '蓝色&白色', 'S&M&L', '48', '7407', '77', '6379826');
INSERT INTO `allshirt` VALUES ('59', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.6 紫色方格', '', '735', '', '蓝色&白色', 'S&M&L', '49', '7618', '79', '6379827');
INSERT INTO `allshirt` VALUES ('60', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '736', '', '蓝色&白色', 'S&M&L', '50', '7829', '81', '6379828');
INSERT INTO `allshirt` VALUES ('61', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '737', '', '蓝色&白色', 'S&M&L', '51', '8040', '83', '6379829');
INSERT INTO `allshirt` VALUES ('62', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.6 浅紫', '', '738', '', '蓝色&白色', 'S&M&L', '52', '8251', '85', '6379830');
INSERT INTO `allshirt` VALUES ('63', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.6 深蓝维系格', '', '739', '', '蓝色&白色', 'S&M&L', '53', '8462', '87', '6379831');
INSERT INTO `allshirt` VALUES ('64', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.7 紫色条纹', '', '740', '', '蓝色&白色', 'S&M&L', '54', '8673', '89', '6379832');
INSERT INTO `allshirt` VALUES ('65', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.7 紫色方格', '', '741', '', '蓝色&白色', 'S&M&L', '55', '8884', '91', '6379833');
INSERT INTO `allshirt` VALUES ('66', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '742', '', '蓝色&白色', 'S&M&L', '56', '9095', '93', '6379834');
INSERT INTO `allshirt` VALUES ('67', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '743', '', '蓝色&白色', 'S&M&L', '57', '9306', '95', '6379835');
INSERT INTO `allshirt` VALUES ('68', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.7 浅紫', '', '744', '', '蓝色&白色', 'S&M&L', '58', '9517', '97', '6379836');
INSERT INTO `allshirt` VALUES ('69', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.7 深蓝维系格', '', '745', '', '蓝色&白色', 'S&M&L', '59', '9728', '99', '6379837');
INSERT INTO `allshirt` VALUES ('70', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.8 紫色条纹', '', '746', '', '蓝色&白色', 'S&M&L', '60', '9939', '101', '6379838');
INSERT INTO `allshirt` VALUES ('71', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.8 紫色方格', '', '747', '', '蓝色&白色', 'S&M&L', '61', '10150', '103', '6379839');
INSERT INTO `allshirt` VALUES ('72', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '748', '', '蓝色&白色', 'S&M&L', '62', '10361', '105', '6379840');
INSERT INTO `allshirt` VALUES ('73', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '749', '', '蓝色&白色', 'S&M&L', '63', '10572', '107', '6379841');
INSERT INTO `allshirt` VALUES ('74', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.8 浅紫', '', '750', '', '蓝色&白色', 'S&M&L', '64', '10783', '109', '6379842');
INSERT INTO `allshirt` VALUES ('75', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.8 深蓝维系格', '', '751', '', '蓝色&白色', 'S&M&L', '65', '10994', '111', '6379843');
INSERT INTO `allshirt` VALUES ('76', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.9 紫色条纹', '', '752', '', '蓝色&白色', 'S&M&L', '66', '11205', '113', '6379844');
INSERT INTO `allshirt` VALUES ('77', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.9 紫色方格', '', '753', '', '蓝色&白色', 'S&M&L', '67', '11416', '115', '6379845');
INSERT INTO `allshirt` VALUES ('78', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '754', '', '蓝色&白色', 'S&M&L', '68', '11627', '117', '6379846');
INSERT INTO `allshirt` VALUES ('79', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '755', '', '蓝色&白色', 'S&M&L', '69', '11838', '119', '6379847');
INSERT INTO `allshirt` VALUES ('80', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.9 浅紫', '', '756', '', '蓝色&白色', 'S&M&L', '70', '12049', '121', '6379848');
INSERT INTO `allshirt` VALUES ('81', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.9 深蓝维系格', '', '757', '', '蓝色&白色', 'S&M&L', '71', '12260', '123', '6379849');
INSERT INTO `allshirt` VALUES ('82', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.10 紫色条纹', '', '758', '', '蓝色&白色', 'S&M&L', '72', '12471', '125', '6379850');
INSERT INTO `allshirt` VALUES ('83', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.10 紫色方格', '', '759', '', '蓝色&白色', 'S&M&L', '73', '12682', '127', '6379851');
INSERT INTO `allshirt` VALUES ('84', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '760', '', '蓝色&白色', 'S&M&L', '74', '12893', '129', '6379852');
INSERT INTO `allshirt` VALUES ('85', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '761', '', '蓝色&白色', 'S&M&L', '75', '13104', '131', '6379853');
INSERT INTO `allshirt` VALUES ('86', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.10 浅紫', '', '762', '', '蓝色&白色', 'S&M&L', '76', '13315', '133', '6379854');
INSERT INTO `allshirt` VALUES ('87', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.10 深蓝维系格', '', '763', '', '蓝色&白色', 'S&M&L', '77', '13526', '135', '6379855');
INSERT INTO `allshirt` VALUES ('88', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.11 紫色条纹', '', '764', '', '蓝色&白色', 'S&M&L', '78', '13737', '137', '6379856');
INSERT INTO `allshirt` VALUES ('89', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.11 紫色方格', '', '765', '', '蓝色&白色', 'S&M&L', '79', '13948', '139', '6379857');
INSERT INTO `allshirt` VALUES ('90', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '766', '', '蓝色&白色', 'S&M&L', '80', '14159', '141', '6379858');
INSERT INTO `allshirt` VALUES ('91', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '767', '', '蓝色&白色', 'S&M&L', '81', '14370', '143', '6379859');
INSERT INTO `allshirt` VALUES ('92', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.11 浅紫', '', '768', '', '蓝色&白色', 'S&M&L', '82', '14581', '145', '6379860');
INSERT INTO `allshirt` VALUES ('93', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.11 深蓝维系格', '', '769', '', '蓝色&白色', 'S&M&L', '83', '14792', '147', '6379861');
INSERT INTO `allshirt` VALUES ('94', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.12 紫色条纹', '', '770', '', '蓝色&白色', 'S&M&L', '84', '15003', '149', '6379862');
INSERT INTO `allshirt` VALUES ('95', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.12 紫色方格', '', '771', '', '蓝色&白色', 'S&M&L', '85', '15214', '151', '6379863');
INSERT INTO `allshirt` VALUES ('96', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '772', '', '蓝色&白色', 'S&M&L', '86', '15425', '153', '6379864');
INSERT INTO `allshirt` VALUES ('97', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '773', '', '蓝色&白色', 'S&M&L', '87', '15636', '155', '6379865');
INSERT INTO `allshirt` VALUES ('98', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.12 浅紫', '', '774', '', '蓝色&白色', 'S&M&L', '88', '15847', '157', '6379866');
INSERT INTO `allshirt` VALUES ('99', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.12 深蓝维系格', '', '775', '', '蓝色&白色', 'S&M&L', '89', '16058', '159', '6379867');
INSERT INTO `allshirt` VALUES ('100', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.13 紫色条纹', '', '776', '', '蓝色&白色', 'S&M&L', '90', '16269', '161', '6379868');
INSERT INTO `allshirt` VALUES ('101', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.13 紫色方格', '', '777', '', '蓝色&白色', 'S&M&L', '91', '16480', '163', '6379869');
INSERT INTO `allshirt` VALUES ('102', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '778', '', '蓝色&白色', 'S&M&L', '92', '16691', '165', '6379870');
INSERT INTO `allshirt` VALUES ('103', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '779', '', '蓝色&白色', 'S&M&L', '93', '16902', '167', '6379871');
INSERT INTO `allshirt` VALUES ('104', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.13 浅紫', '', '780', '', '蓝色&白色', 'S&M&L', '94', '17113', '169', '6379872');
INSERT INTO `allshirt` VALUES ('105', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.13 深蓝维系格', '', '781', '', '蓝色&白色', 'S&M&L', '95', '17324', '171', '6379873');
INSERT INTO `allshirt` VALUES ('106', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.14 紫色条纹', '', '782', '', '蓝色&白色', 'S&M&L', '96', '17535', '173', '6379874');
INSERT INTO `allshirt` VALUES ('107', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.14 紫色方格', '', '783', '', '蓝色&白色', 'S&M&L', '97', '17746', '175', '6379875');
INSERT INTO `allshirt` VALUES ('108', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '784', '', '蓝色&白色', 'S&M&L', '98', '17957', '177', '6379876');
INSERT INTO `allshirt` VALUES ('109', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '785', '', '蓝色&白色', 'S&M&L', '99', '18168', '179', '6379877');
INSERT INTO `allshirt` VALUES ('110', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.14 浅紫', '', '786', '', '蓝色&白色', 'S&M&L', '100', '18379', '181', '6379878');
INSERT INTO `allshirt` VALUES ('111', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.14 深蓝维系格', '', '787', '', '蓝色&白色', 'S&M&L', '101', '18590', '183', '6379879');
INSERT INTO `allshirt` VALUES ('112', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.15 紫色条纹', '', '788', '', '蓝色&白色', 'S&M&L', '102', '18801', '185', '6379880');
INSERT INTO `allshirt` VALUES ('113', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.15 紫色方格', '', '789', '', '蓝色&白色', 'S&M&L', '103', '19012', '187', '6379881');
INSERT INTO `allshirt` VALUES ('114', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '790', '', '蓝色&白色', 'S&M&L', '104', '19223', '189', '6379882');
INSERT INTO `allshirt` VALUES ('115', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '791', '', '蓝色&白色', 'S&M&L', '105', '19434', '191', '6379883');
INSERT INTO `allshirt` VALUES ('116', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.15 浅紫', '', '792', '', '蓝色&白色', 'S&M&L', '106', '19645', '193', '6379884');
INSERT INTO `allshirt` VALUES ('117', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.15 深蓝维系格', '', '793', '', '蓝色&白色', 'S&M&L', '107', '19856', '195', '6379885');
INSERT INTO `allshirt` VALUES ('118', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.16 紫色条纹', '', '794', '', '蓝色&白色', 'S&M&L', '108', '20067', '197', '6379886');
INSERT INTO `allshirt` VALUES ('119', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.16 紫色方格', '', '795', '', '蓝色&白色', 'S&M&L', '109', '20278', '199', '6379887');
INSERT INTO `allshirt` VALUES ('120', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '796', '', '蓝色&白色', 'S&M&L', '110', '20489', '201', '6379888');
INSERT INTO `allshirt` VALUES ('121', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '797', '', '蓝色&白色', 'S&M&L', '111', '20700', '203', '6379889');
INSERT INTO `allshirt` VALUES ('122', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.16 浅紫', '', '798', '', '蓝色&白色', 'S&M&L', '112', '20911', '205', '6379890');
INSERT INTO `allshirt` VALUES ('123', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.16 深蓝维系格', '', '799', '', '蓝色&白色', 'S&M&L', '113', '21122', '207', '6379891');
INSERT INTO `allshirt` VALUES ('124', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.17 紫色条纹', '', '800', '', '蓝色&白色', 'S&M&L', '114', '21333', '209', '6379892');
INSERT INTO `allshirt` VALUES ('125', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.17 紫色方格', '', '801', '', '蓝色&白色', 'S&M&L', '115', '21544', '211', '6379893');
INSERT INTO `allshirt` VALUES ('126', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '802', '', '蓝色&白色', 'S&M&L', '116', '21755', '213', '6379894');
INSERT INTO `allshirt` VALUES ('127', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '803', '', '蓝色&白色', 'S&M&L', '117', '21966', '215', '6379895');
INSERT INTO `allshirt` VALUES ('128', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.17 浅紫', '', '804', '', '蓝色&白色', 'S&M&L', '118', '22177', '217', '6379896');
INSERT INTO `allshirt` VALUES ('129', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.17 深蓝维系格', '', '805', '', '蓝色&白色', 'S&M&L', '119', '22388', '219', '6379897');
INSERT INTO `allshirt` VALUES ('130', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.18 紫色条纹', '', '806', '', '蓝色&白色', 'S&M&L', '120', '22599', '221', '6379898');
INSERT INTO `allshirt` VALUES ('131', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.18 紫色方格', '', '807', '', '蓝色&白色', 'S&M&L', '121', '22810', '223', '6379899');
INSERT INTO `allshirt` VALUES ('132', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '808', '', '蓝色&白色', 'S&M&L', '122', '23021', '225', '6379900');
INSERT INTO `allshirt` VALUES ('133', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '809', '', '蓝色&白色', 'S&M&L', '123', '23232', '227', '6379901');
INSERT INTO `allshirt` VALUES ('134', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.18 浅紫', '', '810', '', '蓝色&白色', 'S&M&L', '124', '23443', '229', '6379902');
INSERT INTO `allshirt` VALUES ('135', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.18 深蓝维系格', '', '811', '', '蓝色&白色', 'S&M&L', '125', '23654', '231', '6379903');
INSERT INTO `allshirt` VALUES ('136', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.19 紫色条纹', '', '812', '', '蓝色&白色', 'S&M&L', '126', '23865', '233', '6379904');
INSERT INTO `allshirt` VALUES ('137', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.19 紫色方格', '', '813', '', '蓝色&白色', 'S&M&L', '127', '24076', '235', '6379905');
INSERT INTO `allshirt` VALUES ('138', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '814', '', '蓝色&白色', 'S&M&L', '128', '24287', '237', '6379906');
INSERT INTO `allshirt` VALUES ('139', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '815', '', '蓝色&白色', 'S&M&L', '129', '24498', '239', '6379907');
INSERT INTO `allshirt` VALUES ('140', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.19 浅紫', '', '816', '', '蓝色&白色', 'S&M&L', '130', '24709', '241', '6379908');
INSERT INTO `allshirt` VALUES ('141', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.19 深蓝维系格', '', '817', '', '蓝色&白色', 'S&M&L', '131', '24920', '243', '6379909');
INSERT INTO `allshirt` VALUES ('142', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.20 紫色条纹', '', '818', '', '蓝色&白色', 'S&M&L', '222', '25131', '245', '6379910');
INSERT INTO `allshirt` VALUES ('143', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.20 紫色方格', '', '819', '', '蓝色&白色', 'S&M&L', '4457', '25342', '247', '6379911');
INSERT INTO `allshirt` VALUES ('144', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '820', '', '蓝色&白色', 'S&M&L', '122', '25553', '249', '6379912');
INSERT INTO `allshirt` VALUES ('145', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '821', '', '蓝色&白色', 'S&M&L', '124', '25764', '251', '6379913');
INSERT INTO `allshirt` VALUES ('146', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.20 浅紫', '', '822', '', '蓝色&白色', 'S&M&L', '122', '25975', '253', '6379914');
INSERT INTO `allshirt` VALUES ('147', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.20 深蓝维系格', '', '823', '', '蓝色&白色', 'S&M&L', '120', '26186', '255', '6379915');
INSERT INTO `allshirt` VALUES ('148', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.21 紫色条纹', '', '824', '', '蓝色&白色', 'S&M&L', '118', '26397', '257', '6379916');
INSERT INTO `allshirt` VALUES ('149', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.21 紫色方格', '', '825', '', '蓝色&白色', 'S&M&L', '116', '26608', '259', '6379917');
INSERT INTO `allshirt` VALUES ('150', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '826', '', '蓝色&白色', 'S&M&L', '114', '26819', '261', '6379918');
INSERT INTO `allshirt` VALUES ('151', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '827', '', '蓝色&白色', 'S&M&L', '112', '27030', '263', '6379919');
INSERT INTO `allshirt` VALUES ('152', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.21 浅紫', '', '828', '', '蓝色&白色', 'S&M&L', '110', '27241', '265', '6379920');
INSERT INTO `allshirt` VALUES ('153', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.21 深蓝维系格', '', '829', '', '蓝色&白色', 'S&M&L', '108', '27452', '267', '6379921');
INSERT INTO `allshirt` VALUES ('154', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.22 紫色条纹', '', '830', '', '蓝色&白色', 'S&M&L', '106', '27663', '269', '6379922');
INSERT INTO `allshirt` VALUES ('155', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.22 紫色方格', '', '831', '', '蓝色&白色', 'S&M&L', '104', '27874', '271', '6379923');
INSERT INTO `allshirt` VALUES ('156', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '832', '', '蓝色&白色', 'S&M&L', '102', '28085', '273', '6379924');
INSERT INTO `allshirt` VALUES ('157', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '833', '', '蓝色&白色', 'S&M&L', '100', '28296', '275', '6379925');
INSERT INTO `allshirt` VALUES ('158', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.22 浅紫', '', '834', '', '蓝色&白色', 'S&M&L', '98', '28507', '277', '6379926');
INSERT INTO `allshirt` VALUES ('159', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.22 深蓝维系格', '', '835', '', '蓝色&白色', 'S&M&L', '96', '28718', '279', '6379927');
INSERT INTO `allshirt` VALUES ('160', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.23 紫色条纹', '', '836', '', '蓝色&白色', 'S&M&L', '94', '28929', '281', '6379928');
INSERT INTO `allshirt` VALUES ('161', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.23 紫色方格', '', '837', '', '蓝色&白色', 'S&M&L', '92', '29140', '283', '6379929');
INSERT INTO `allshirt` VALUES ('162', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '838', '', '蓝色&白色', 'S&M&L', '90', '29351', '285', '6379930');
INSERT INTO `allshirt` VALUES ('163', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '839', '', '蓝色&白色', 'S&M&L', '88', '29562', '287', '6379931');
INSERT INTO `allshirt` VALUES ('164', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.23 浅紫', '', '840', '', '蓝色&白色', 'S&M&L', '86', '29773', '289', '6379932');
INSERT INTO `allshirt` VALUES ('165', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.23 深蓝维系格', '', '841', '', '蓝色&白色', 'S&M&L', '84', '29984', '291', '6379933');
INSERT INTO `allshirt` VALUES ('166', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.24 紫色条纹', '', '842', '', '蓝色&白色', 'S&M&L', '82', '30195', '293', '6379934');
INSERT INTO `allshirt` VALUES ('167', 'shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.24 紫色方格', '', '843', '', '蓝色&白色', 'S&M&L', '80', '30406', '295', '6379935');
INSERT INTO `allshirt` VALUES ('168', 'shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '', '844', '', '蓝色&白色', 'S&M&L', '78', '30617', '297', '6379936');
INSERT INTO `allshirt` VALUES ('169', 'shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', '', '845', '', '蓝色&白色', 'S&M&L', '76', '30828', '299', '6379937');
INSERT INTO `allshirt` VALUES ('170', 'shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.24 浅紫', '', '846', '', '蓝色&白色', 'S&M&L', '74', '31039', '301', '6379938');
INSERT INTO `allshirt` VALUES ('171', 'shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.24 深蓝维系格', '', '847', '', '蓝色&白色', 'S&M&L', '72', '31250', '303', '6379939');
SET FOREIGN_KEY_CHECKS=1;
