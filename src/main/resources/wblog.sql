/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : wblog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-10-23 16:41:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wblog_admin
-- ----------------------------
DROP TABLE IF EXISTS `wblog_admin`;
CREATE TABLE `wblog_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_admin
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_article
-- ----------------------------
DROP TABLE IF EXISTS `wblog_article`;
CREATE TABLE `wblog_article` (
  `id` int(11) NOT NULL COMMENT '发表文章的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_article
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_comment
-- ----------------------------
DROP TABLE IF EXISTS `wblog_comment`;
CREATE TABLE `wblog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_group
-- ----------------------------
DROP TABLE IF EXISTS `wblog_group`;
CREATE TABLE `wblog_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_group
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_msg_info
-- ----------------------------
DROP TABLE IF EXISTS `wblog_msg_info`;
CREATE TABLE `wblog_msg_info` (
  `User_id` int(11) NOT NULL COMMENT '发消息用户编号（联合主键）',
  `Msg_id` int(11) NOT NULL,
  `Content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `Type` varchar(255) DEFAULT NULL COMMENT '消息类型（0，原创；1，评论；2，转发）',
  `Commented_count` varchar(255) DEFAULT NULL COMMENT '评论过数量（只增不减，删除评论不影响此值，可以作为评论多页显示的页码）',
  `Time_t` datetime DEFAULT NULL COMMENT '发布时间',
  `Transfer_count` varchar(255) DEFAULT NULL COMMENT '保留的转发数量',
  `Transferred_count` varchar(255) DEFAULT NULL COMMENT '转发过数量（只增不减，删除转发不影响此值，可以作为转发多页显示的页码）',
  PRIMARY KEY (`User_id`,`Msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_msg_info
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_msg_msg_relation
-- ----------------------------
DROP TABLE IF EXISTS `wblog_msg_msg_relation`;
CREATE TABLE `wblog_msg_msg_relation` (
  `Reference_id` int(11) NOT NULL COMMENT '引用消息用户编号（联合主键）',
  `Reference _msg_id` int(11) NOT NULL COMMENT '引用消息编号（联合主键）',
  `Referenced_id` int(11) NOT NULL COMMENT '消息发布者编号',
  `Referenced _msg_id` int(11) DEFAULT NULL COMMENT '被引用消息编号',
  `type` varchar(255) DEFAULT NULL COMMENT '操作类型(1,评论；2，转发)',
  `Time_t` datetime DEFAULT NULL COMMENT '发布时间',
  `page_index` varchar(255) DEFAULT NULL COMMENT '转发或者评论页码',
  PRIMARY KEY (`Reference_id`,`Reference _msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_msg_msg_relation
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_reply
-- ----------------------------
DROP TABLE IF EXISTS `wblog_reply`;
CREATE TABLE `wblog_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `replyid` int(11) DEFAULT NULL COMMENT '回复人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_reply
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_user
-- ----------------------------
DROP TABLE IF EXISTS `wblog_user`;
CREATE TABLE `wblog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_user
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_user_info
-- ----------------------------
DROP TABLE IF EXISTS `wblog_user_info`;
CREATE TABLE `wblog_user_info` (
  `User_id` int(11) NOT NULL COMMENT '用户编号（主键）',
  `User_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `Msg_count` varchar(255) DEFAULT NULL COMMENT '发布消息数量,可以作为t_msg_info水平切分新表的auto_increment',
  `Fans_count` varchar(255) DEFAULT NULL COMMENT '粉丝数量',
  `Follow_count` varchar(255) DEFAULT NULL COMMENT '关注对象数量',
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_user_msg_index
-- ----------------------------
DROP TABLE IF EXISTS `wblog_user_msg_index`;
CREATE TABLE `wblog_user_msg_index` (
  `User_id` int(11) NOT NULL COMMENT '用户id',
  `Author_id` int(11) NOT NULL COMMENT '消息发布者编号',
  `Msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发布者发送消息的编号',
  `Time_t` datetime DEFAULT NULL,
  PRIMARY KEY (`Msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_user_msg_index
-- ----------------------------

-- ----------------------------
-- Table structure for wblog_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `wblog_user_relation`;
CREATE TABLE `wblog_user_relation` (
  `User_id` int(11) NOT NULL COMMENT '用户编号（联合主键）',
  `Follow_id` int(11) NOT NULL COMMENT '被关注者编号（联合主键）',
  `Type` varchar(255) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '关系类型（0，粉丝；1，关注）',
  PRIMARY KEY (`User_id`,`Follow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wblog_user_relation
-- ----------------------------
