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
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uploadDate` datetime DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of diary
-- ----------------------------

-- ----------------------------
-- Table structure for dia_category
-- ----------------------------
DROP TABLE IF EXISTS `dia_category`;
CREATE TABLE `dia_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `diaNum` int(11) DEFAULT NULL,
  `dia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dia_category
-- ----------------------------

-- ----------------------------
-- Table structure for dia_comment
-- ----------------------------
DROP TABLE IF EXISTS `dia_comment`;
CREATE TABLE `dia_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `postDate` datetime DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `dia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dia_comment
-- ----------------------------

-- ----------------------------
-- Table structure for dia_tag
-- ----------------------------
DROP TABLE IF EXISTS `dia_tag`;
CREATE TABLE `dia_tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `diaNum` int(11) DEFAULT NULL,
  `dia_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dia_tag
-- ----------------------------

-- ----------------------------
-- Table structure for mind
-- ----------------------------
DROP TABLE IF EXISTS `mind`;
CREATE TABLE `mind` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uploadDate` datetime DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mind
-- ----------------------------

-- ----------------------------
-- Table structure for mind_comment
-- ----------------------------
DROP TABLE IF EXISTS `mind_comment`;
CREATE TABLE `mind_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `postDate` datetime DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `mind_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mind_comment
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uploadDate` datetime DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for pic_category
-- ----------------------------
DROP TABLE IF EXISTS `pic_category`;
CREATE TABLE `pic_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `picNum` int(11) DEFAULT NULL,
  `pic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pic_category
-- ----------------------------

-- ----------------------------
-- Table structure for pic_comment
-- ----------------------------
DROP TABLE IF EXISTS `pic_comment`;
CREATE TABLE `pic_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `postDate` datetime DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `pic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pic_comment
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `registTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------