/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : localhost

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-10-10 18:54:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `categoryId` int(11) NOT NULL COMMENT '分类编号',
  `title` varchar(50) NOT NULL COMMENT '图书名称',
  `summary` varchar(200) DEFAULT NULL COMMENT '摘要',
  `uploaduser` varchar(50) DEFAULT NULL COMMENT '上传人',
  `createdate` datetime DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '3465', '一个程序员的奋斗史', 'lalala', 'dxh', '2020-10-08 00:00:00');
INSERT INTO `book` VALUES ('10', '2159', 'Java-从入门到放弃', '周某人', '周某人', '2018-08-30 18:31:20');
INSERT INTO `book` VALUES ('11', '3594', 'MySQL-从删库到跑路', '周某人', '周某人', '2018-08-27 18:31:23');
INSERT INTO `book` VALUES ('13', '2517', 'C语言-从看懂到看开', '周某人', '周某人', '2018-09-10 18:31:27');
INSERT INTO `book` VALUES ('14', '4947', 'Go语言-从入门到改行', '周某人', '周某人', '2018-09-23 18:33:04');
INSERT INTO `book` VALUES ('18', '2521', 'java-从精通到女装', '熊猫头', '熊猫头', null);
INSERT INTO `book` VALUES ('48', '2556', 'PHP-从放弃到坚持放弃', '少年', '你渴望力量吗？', null);
INSERT INTO `book` VALUES ('56', '5898', 'WebStorm网页设计-从安装到卸载', '', null, null);
INSERT INTO `book` VALUES ('85', '89638', '程序员-从黑头到秃头', null, null, null);
INSERT INTO `book` VALUES ('88', '45', 'oo', '无', 'tjw', '2020-10-08 00:00:00');
INSERT INTO `book` VALUES ('90', '666', '算法导论', '算法', 'dxh', '2020-10-09 00:00:00');
INSERT INTO `book` VALUES ('91', '999', 'pp', '123', 'tjw', '2020-10-09 00:00:00');
INSERT INTO `book` VALUES ('92', '999', 'pp', '123', 'tjw', '2020-10-09 00:00:00');
INSERT INTO `book` VALUES ('93', '241312', 'aa', 'aa', 'tjw', '2020-10-09 00:00:00');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `borrowDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('1', 'tjw', '2020-10-1');
INSERT INTO `borrow` VALUES ('2', 'tjw', '2020-10-10');
