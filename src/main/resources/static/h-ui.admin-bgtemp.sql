/*
Navicat MySQL Data Transfer

Source Server         : local_root
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : h-ui.admin-bgtemp

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-03-15 16:20:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_sys_permis`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_permis`;
CREATE TABLE `tb_sys_permis` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `p_flag` varchar(40) DEFAULT NULL COMMENT '权限标识',
  `p_name` varchar(40) DEFAULT NULL COMMENT '权限名',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '父id',
  `p_type` char(2) DEFAULT NULL COMMENT '权限类型',
  `p_level` varchar(4) DEFAULT NULL COMMENT '权限级别（菜单类型）',
  `p_sort` varchar(4) DEFAULT NULL COMMENT '排序',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `opt_id` int(10) unsigned DEFAULT NULL COMMENT '操作者id',
  `left_icon` varchar(50) DEFAULT NULL COMMENT '左边的icon',
  `expand_1` varchar(100) DEFAULT NULL,
  `expand_2` varchar(100) DEFAULT NULL,
  `expand_3` varchar(100) DEFAULT NULL,
  `record_status` char(2) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of tb_sys_permis
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role`;
CREATE TABLE `tb_sys_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_flag` varchar(30) NOT NULL COMMENT '角色标识',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `opt_id` int(10) unsigned DEFAULT NULL COMMENT '操作者id',
  `record_status` char(2) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of tb_sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_sys_role_permis`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role_permis`;
CREATE TABLE `tb_sys_role_permis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(10) unsigned DEFAULT NULL COMMENT '角色id',
  `permis_id` int(10) unsigned DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色和系统权限中间表';

-- ----------------------------
-- Records of tb_sys_role_permis
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_user`;
CREATE TABLE `tb_sys_user` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `real_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `mobile_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `salt` varchar(40) DEFAULT NULL COMMENT '盐值（用于md5加密）',
  `descri` varchar(200) DEFAULT NULL COMMENT '描述',
  `record_status` char(2) DEFAULT NULL COMMENT '记录状态(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of tb_sys_user
-- ----------------------------
INSERT INTO `tb_sys_user` VALUES ('1', 'admin', 'de4cec05b12a76935ff2daa0f4cc6bf0', '周小莹', 'on', '11566937377@qq.com', '15876240015', 'ticc', null, '02', null, '2019-03-15 07:20:09');
INSERT INTO `tb_sys_user` VALUES ('2', '1234', '7cf5aa3f193c242eca7c088ae49f5482', '', '男', '', '', 'ticc', null, '02', null, '2019-03-15 07:22:23');

-- ----------------------------
-- Table structure for `tb_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_user_role`;
CREATE TABLE `tb_sys_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `role_id` int(10) unsigned DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户和系统角色中间表';

-- ----------------------------
-- Records of tb_sys_user_role
-- ----------------------------
