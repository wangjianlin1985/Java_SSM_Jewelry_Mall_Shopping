/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : onlinesshopping

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2019-04-18 16:13:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `address` varchar(200) collate utf8_unicode_ci NOT NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('11', '10', '天津市河西区丰和路1039号', 'USER', '2018-04-20 00:34:41', '', '2019-04-21 15:33:09');
INSERT INTO `address` VALUES ('12', '10', '天津市南开区1048号', 'USER', '2018-04-20 00:35:14', '', '2019-04-21 15:33:09');
INSERT INTO `address` VALUES ('13', '12', '江苏省苏州市工业区1039号', 'USER', '2018-04-20 00:47:58', '', '2019-04-21 15:33:09');
INSERT INTO `address` VALUES ('14', '9', '成都红星路13号', 'USER', '2018-05-15 11:57:59', null, null);

-- ----------------------------
-- Table structure for `aftersales`
-- ----------------------------
DROP TABLE IF EXISTS `aftersales`;
CREATE TABLE `aftersales` (
  `int` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(20) collate utf8_unicode_ci NOT NULL,
  `cause` varchar(255) collate utf8_unicode_ci NOT NULL,
  `creater` varchar(20) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY  (`int`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aftersales
-- ----------------------------
INSERT INTO `aftersales` VALUES ('1', '10', '18', '31', '2', '2', 'dddd', 'USER', '2019-04-21 15:37:10');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) collate utf8_unicode_ci NOT NULL,
  `typeid` int(11) NOT NULL,
  `title` varchar(150) collate utf8_unicode_ci NOT NULL,
  `descript` varchar(500) collate utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `messageurl` varchar(200) collate utf8_unicode_ci NOT NULL,
  `photourl` varchar(200) collate utf8_unicode_ci NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `total` int(11) NOT NULL,
  `count` int(11) NOT NULL COMMENT '还剩下多少',
  `tuijian` int(11) NOT NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('30', '会动的耳钉网红超仙耳坠', '14', '会动的耳钉网红超仙耳坠女气质韩国简约百搭长款个性925纯银耳环', '品牌: 晶姿材质: 银饰金属材质: 925银图案: 爱心/水滴/铃铛风格: 日韩成色: 全新价格区间: 101-200元适用性别: 女新奇特: 新鲜出炉', '39.00', '74861770-419e-4d99-b689-6a289a57ff1b.jpg', 'c8cc03b6-6510-4004-86ba-068b22754c97.jpg', '0.25', '2', '28', '1', 'ADMIN', '2019-04-15 23:49:05', null, null);
INSERT INTO `goods` VALUES ('31', 'vana纯银耳钉女镶施华洛', '14', 'vana纯银耳钉女镶施华洛世奇锆气质韩国简约耳环18K白金网红耳饰', '品牌: vana材质: 银饰金属材质: 925银图案: 其他风格: 日韩成色: 全新价格区间: 101-200元适用性别: 女新奇特: 新鲜出炉颜色分类: 镶施华洛世奇锆耳钉 镶施华洛世奇锆耳钉（蓝） 项链+耳钉（白） 项链+耳钉（蓝） 项链+耳钉+手链（白） 项链+耳钉+闪电手链（蓝） 18K白金耳钉+施华洛世奇锆（白） 现货顺丰包邮 18K白金耳钉+施华洛世奇锆（蓝）现货顺丰包邮 18K金三叶草耳钉+18K金三叶草项链（白） 18K金三叶草耳钉+18K金三叶草项链（蓝）是否现货: 现货上市时间: 2017年秋冬货号: AE217镶嵌材质: 其他是否商场同款: 否', '59.00', '5c35e602-b53c-478d-8253-26a682c2034c.jpg', 'a74ef9ff-c152-48f7-8273-d07e9a4f46cb.jpg', '0.30', '1', '22', '1', 'ADMIN', '2019-04-16 00:00:01', null, null);
INSERT INTO `goods` VALUES ('32', '星星月亮9K金钻石星月项链', '16', '礼品周大福MONOLOGUE独白MIX系列星星月亮9K金钻石星月项链MA616', '品牌: 周大福售后服务: 专柜联保 店铺保修贵金属成色: 9K金上市时间: 2018年秋季规格: 1798元货号: MA616价格类型: 定价镶嵌材质: 带配石镶嵌适用对象: 女款式: 项链是否商场同款: 是销售渠道类型: 商场同款(线上线下都销', '50.00', 'a9a1eb15-dad6-4483-b720-0dc3532fbbcd.jpg', '1f9a8dad-aad8-4793-9b68-7906ba7a556f.jpg', '0.35', '0', '50', '0', 'ADMIN', '2019-04-16 00:09:47', null, null);

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL auto_increment,
  `goodstype` varchar(30) collate utf8_unicode_ci NOT NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('14', '耳环', 'ADMIN', '2018-04-21 14:58:14', null, null);
INSERT INTO `goodstype` VALUES ('16', '项链', 'ADMIN', '2018-04-21 14:58:39', null, null);
INSERT INTO `goodstype` VALUES ('17', '手镯', 'ADMIN', '2018-04-21 14:58:57', null, null);
INSERT INTO `goodstype` VALUES ('18', '钻戒', 'ADMIN', '2018-04-21 14:59:41', null, null);
INSERT INTO `goodstype` VALUES ('19', '玛瑙', 'ADMIN', '2018-04-21 15:00:17', null, null);

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `ordernum` varchar(20) collate utf8_unicode_ci NOT NULL,
  `goodsid` int(11) NOT NULL,
  `address` varchar(100) collate utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(5) collate utf8_unicode_ci NOT NULL,
  `senddate` datetime default NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('34', '9', '347938', '31', '14', '1', '59.00', '2', null, 'USER', '2019-04-16 00:11:27', null, null);
INSERT INTO `orderdetail` VALUES ('35', '9', '347938', '30', '14', '2', '78.00', '1', null, 'USER', '2019-04-16 00:11:27', null, null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `ordernum` varchar(20) collate utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('44', '347938', '9', 'USER', '2019-04-16 00:11:27', null, null);

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `creater` varchar(30) collate utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(30) collate utf8_unicode_ci default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('1', '10', '23', '1', '80.00', 'USER', '2019-04-21 15:32:16', null, null);
INSERT INTO `shoppingcart` VALUES ('9', '9', '31', '1', '59.00', 'USER', '2019-04-16 00:17:22', null, null);
INSERT INTO `shoppingcart` VALUES ('10', '9', '30', '2', '78.00', 'USER', '2019-04-16 00:17:42', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) default NULL,
  `sex` varchar(10) default NULL,
  `age` varchar(10) default NULL,
  `mobile` varchar(20) default NULL,
  `role` int(11) NOT NULL,
  `usersign` varchar(200) default NULL,
  `creater` varchar(20) NOT NULL,
  `createdate` datetime NOT NULL,
  `updater` varchar(20) default NULL,
  `updatedate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('9', 'lingyu', '111111', '143wee4545@qq.com', '1', '23', '18322698594', '0', '如风如雨', 'REGISTER', '2019-04-01 02:58:43', '', '2019-04-21 14:48:02');
INSERT INTO `user` VALUES ('10', 'fengyu', '111111', '34343434545@qq.com', '2', '23', '15210259635', '0', '再见为了下一次相遇', 'REGISTER', '2019-04-01 03:03:20', '', '2019-04-21 15:22:53');
INSERT INTO `user` VALUES ('11', 'admin', 'admin', '14567676545@qq.com', '1', '44', '15825789685', '1', '开开心心就好', 'admin', '2019-04-01 03:35:17', '', '2019-04-21 14:48:09');
INSERT INTO `user` VALUES ('12', 'suhong', '111111', '14676004545@qq.com', '1', '22', '13958642589', '0', '无心无为', 'REGISTER', '2019-04-01 03:03:20', '', '2019-04-19 23:03:41');
