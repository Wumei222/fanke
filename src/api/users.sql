/*
Navicat MySQL Data Transfer

Source Server         : mydatabases
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : 1903

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 10:47:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '', '', null);
INSERT INTO `users` VALUES ('2', '', '', null);
INSERT INTO `users` VALUES ('3', '', '', null);
INSERT INTO `users` VALUES ('4', '15879938363', '123456', '2019-05-14 20:08:19');
SET FOREIGN_KEY_CHECKS=1;
