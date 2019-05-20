/*
Navicat MySQL Data Transfer

Source Server         : mydatabases
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : 1903

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 10:46:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ordersheet
-- ----------------------------
DROP TABLE IF EXISTS `ordersheet`;
CREATE TABLE `ordersheet` (
  `gid` int(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `nowprice` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `youhui` varchar(255) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordersheet
-- ----------------------------
INSERT INTO `ordersheet` VALUES ('23', 'shirt002.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.0 紫色方格', '699', '', 'M', '9', null, '13');
INSERT INTO `ordersheet` VALUES ('24', 'shirt003.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', '700', '白色', 'M', '8', null, '14');
INSERT INTO `ordersheet` VALUES ('1', 't-shirt0011.jpg', 'T恤 山鸟叔 69 白色', '38', '', 'L', '2', null, '21');
SET FOREIGN_KEY_CHECKS=1;
