/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : homepage

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-26 21:18:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmail` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
