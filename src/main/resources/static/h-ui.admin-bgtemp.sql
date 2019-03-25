/*
Navicat MySQL Data Transfer

Source Server         : local_root
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : h-ui.admin-bgtemp

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-03-25 17:28:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_dict`;
CREATE TABLE `tb_sys_dict` (
  `dict_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dict_type` varchar(255) DEFAULT NULL COMMENT '字典类型',
  `dict_code` varchar(255) DEFAULT NULL COMMENT '字典编码',
  `code_name` varchar(255) DEFAULT NULL COMMENT '编码名称',
  `description` varchar(255) DEFAULT NULL COMMENT '类型描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `field_1` varchar(255) DEFAULT NULL COMMENT '预留字段1',
  `field_2` varchar(255) DEFAULT NULL COMMENT '预留字段2',
  `field_3` varchar(255) DEFAULT NULL COMMENT '预留字段3',
  `field_4` varchar(255) DEFAULT NULL COMMENT '预留字段4',
  `field_5` varchar(255) DEFAULT NULL COMMENT '预留字段5',
  `field_6` varchar(255) DEFAULT NULL COMMENT '预留字段6',
  `record_status` char(255) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sys_dict
-- ----------------------------
INSERT INTO `tb_sys_dict` VALUES ('10', 'record_status', '00', '已删除', '记录状态', '1', '代表该记录已删除', '', '', '', '', '', '', '01', '2019-03-22 11:56:30', '2019-03-22 11:56:30');
INSERT INTO `tb_sys_dict` VALUES ('11', 'record_status', '01', '已启用', '记录状态', '2', '代表该记录已启用', '', '', '', '', '', '', '01', '2019-03-22 11:57:07', '2019-03-22 11:57:07');
INSERT INTO `tb_sys_dict` VALUES ('12', 'record_status', '02', '已禁用', '记录状态', '3', '代表该记录已禁用', '', '', '', '', '', '', '01', '2019-03-22 11:57:28', '2019-03-22 11:57:28');
INSERT INTO `tb_sys_dict` VALUES ('13', 'menu_type', '-1', '未选择', '菜单类型', '0', '代表没有选择类型', '', '', '', '', '', '', '01', '2019-03-23 11:27:31', '2019-03-23 11:19:52');
INSERT INTO `tb_sys_dict` VALUES ('14', 'menu_type', '01', '菜单', '菜单类型', '1', '代表该记录是菜单', '', '', '', '', '', '', '01', '2019-03-23 11:26:38', '2019-03-23 11:26:38');
INSERT INTO `tb_sys_dict` VALUES ('15', 'menu_type', '02', '按钮', '菜单类型', '2', '代表该记录是按钮', '', '', '', '', '', '', '01', '2019-03-23 11:26:59', '2019-03-23 11:26:59');
INSERT INTO `tb_sys_dict` VALUES ('16', 'menu_level', '1', '根目录', '菜单级别', '1', '代表记录是根目录', '', '', '', '', '', '', '01', '2019-03-24 19:32:45', '2019-03-23 16:07:26');
INSERT INTO `tb_sys_dict` VALUES ('17', 'menu_level', '2', '一级菜单', '菜单级别', '2', '代表记录是一级菜单', '', '', '', '', '', '', '01', '2019-03-24 19:32:52', '2019-03-23 16:07:58');
INSERT INTO `tb_sys_dict` VALUES ('18', 'menu_level', '3', '二级菜单', '菜单级别', '3', '代表记录是二级菜单', '', '', '', '', '', '', '01', '2019-03-24 19:33:28', '2019-03-23 16:08:12');
INSERT INTO `tb_sys_dict` VALUES ('19', 'menu_level', '4', '三级菜单', '菜单级别', '4', '代表记录是三级菜单', '', '', '', '', '', '', '01', '2019-03-24 19:33:37', '2019-03-23 16:08:25');
INSERT INTO `tb_sys_dict` VALUES ('20', 'menu_level', '5', '四级菜单', '菜单级别', '5', '代表记录是四级菜单', '', '', '', '', '', '', '01', '2019-03-24 19:33:50', '2019-03-23 16:08:38');
INSERT INTO `tb_sys_dict` VALUES ('21', 'menu_level', '6', '五级菜单', '菜单级别', '6', '代表记录是五级菜单', '', '', '', '', '', '', '01', '2019-03-24 19:34:24', '2019-03-23 16:09:01');
INSERT INTO `tb_sys_dict` VALUES ('22', 'menu_level', '7', '按钮', '菜单级别', '7', '代表记录是按钮', '', '', '', '', '', '', '01', '2019-03-24 19:34:48', '2019-03-23 16:10:49');
INSERT INTO `tb_sys_dict` VALUES ('23', 'menu_level', '8', '按钮(行)', '菜单级别', '8', '代表记录是行按钮', '', '', '', '', '', '', '01', '2019-03-24 19:35:03', '2019-03-23 16:11:26');
INSERT INTO `tb_sys_dict` VALUES ('24', 'statement_type', '01', 'sql语句', 'sql语句类型', '1', '代表该记录是sql语句', '', '', '', '', '', '', '01', '2019-03-24 15:15:39', '2019-03-24 15:15:39');
INSERT INTO `tb_sys_dict` VALUES ('25', 'statement_type', '02', '存储过程', 'sql语句类型', '2', '代表该记录是存储过程', '', '', '', '', '', '', '01', '2019-03-24 15:15:59', '2019-03-24 15:15:59');

-- ----------------------------
-- Table structure for `tb_sys_permis`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_permis`;
CREATE TABLE `tb_sys_permis` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `p_flag` varchar(40) DEFAULT NULL COMMENT '权限标识',
  `p_name` varchar(40) DEFAULT NULL COMMENT '菜单名',
  `p_url` varchar(255) DEFAULT NULL COMMENT '菜单url',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '父id',
  `p_type` char(2) DEFAULT NULL COMMENT '权限类型',
  `p_level` int(2) DEFAULT NULL COMMENT '权限级别（菜单类型）',
  `p_sort` int(3) DEFAULT NULL COMMENT '排序',
  `descri` varchar(200) DEFAULT NULL COMMENT '描述',
  `opt_id` int(10) unsigned DEFAULT NULL COMMENT '操作者id',
  `left_icon` varchar(50) DEFAULT NULL COMMENT '左边的icon',
  `expand_1` varchar(100) DEFAULT NULL,
  `expand_2` varchar(100) DEFAULT NULL,
  `expand_3` varchar(100) DEFAULT NULL,
  `record_status` char(2) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of tb_sys_permis
-- ----------------------------
INSERT INTO `tb_sys_permis` VALUES ('11', 'root', '根目录', '', null, '', '0', null, '', null, '', null, null, null, '01', '2019-03-23 16:04:24', '2019-03-23 15:59:22');
INSERT INTO `tb_sys_permis` VALUES ('13', 'sysManag', '系统管理', '', '11', '01', '2', '1', '', null, '', null, null, null, '01', '2019-03-24 19:37:39', '2019-03-23 16:17:36');
INSERT INTO `tb_sys_permis` VALUES ('14', 'sysManag', '系统管理', '', '13', '01', '2', '1', '', null, '', null, null, null, '01', '2019-03-24 19:37:50', '2019-03-23 16:20:10');
INSERT INTO `tb_sys_permis` VALUES ('15', 'sysManag', '系统角色管理', '', '13', '01', '3', '2', '', null, '', null, null, null, '01', '2019-03-24 19:37:58', '2019-03-23 16:20:32');
INSERT INTO `tb_sys_permis` VALUES ('16', 'sysManag', '系统权限管理', '', '13', '01', '3', '3', '', null, '', null, null, null, '01', '2019-03-24 19:38:06', '2019-03-23 16:20:45');
INSERT INTO `tb_sys_permis` VALUES ('17', 'sysConf', '系统配置', '', '11', '01', '2', '2', '', null, '', null, null, null, '01', '2019-03-24 17:46:30', '2019-03-24 17:33:45');
INSERT INTO `tb_sys_permis` VALUES ('18', 'sysDict', '数字字典', '', '17', '01', '3', '1', '', null, '', null, null, null, '01', '2019-03-24 17:40:43', '2019-03-24 17:35:37');
INSERT INTO `tb_sys_permis` VALUES ('19', 'sysSqlConf', 'sql语句配置', '', '17', '01', '3', '2', '', null, '', null, null, null, '01', '2019-03-24 17:40:56', '2019-03-24 17:35:59');

-- ----------------------------
-- Table structure for `tb_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role`;
CREATE TABLE `tb_sys_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_flag` varchar(30) NOT NULL COMMENT '角色标识',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `descri` varchar(200) DEFAULT NULL COMMENT '描述',
  `opt_id` int(10) unsigned DEFAULT NULL COMMENT '操作者id',
  `record_status` char(2) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of tb_sys_role
-- ----------------------------
INSERT INTO `tb_sys_role` VALUES ('1', 'admin', '超级管理员', '系统最大的权限', null, null, null, null);
INSERT INTO `tb_sys_role` VALUES ('2', '1', '1', '1', null, '00', '2019-03-21 15:01:13', '2019-03-21 14:34:22');
INSERT INTO `tb_sys_role` VALUES ('3', '2', '2', '2', null, '00', '2019-03-21 15:01:16', '2019-03-21 14:36:18');
INSERT INTO `tb_sys_role` VALUES ('4', '3', '3', '3', null, '00', '2019-03-21 14:38:53', '2019-03-21 14:38:53');
INSERT INTO `tb_sys_role` VALUES ('5', '4', '4', '1114', null, '01', '2019-03-21 15:07:54', '2019-03-21 14:38:59');
INSERT INTO `tb_sys_role` VALUES ('6', '5', '5', '', null, '01', '2019-03-21 16:34:10', '2019-03-21 16:34:10');
INSERT INTO `tb_sys_role` VALUES ('7', '6', '6', '6', null, '02', '2019-03-22 14:05:53', '2019-03-21 16:42:35');
INSERT INTO `tb_sys_role` VALUES ('8', '7', '7', '7', null, '01', '2019-03-22 14:05:50', '2019-03-21 16:42:56');

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
-- Table structure for `tb_sys_sql_conf`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_sql_conf`;
CREATE TABLE `tb_sys_sql_conf` (
  `sc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sc_code` varchar(255) DEFAULT NULL COMMENT '语句编码',
  `sc_name` varchar(100) DEFAULT NULL COMMENT '语句名',
  `sc_statement` text COMMENT '语句',
  `sc_type` char(2) DEFAULT NULL COMMENT '类型（01=sql语句，02=存储过程）',
  `descri` varchar(255) DEFAULT NULL COMMENT '描述',
  `opt_id` int(10) unsigned DEFAULT NULL,
  `field_1` varchar(255) DEFAULT NULL COMMENT '预留字段1',
  `field_2` varchar(255) DEFAULT NULL COMMENT '预留字段2',
  `field_3` varchar(255) DEFAULT NULL COMMENT '预留字段3',
  `field_4` varchar(255) DEFAULT NULL COMMENT '预留字段4',
  `record_status` char(255) DEFAULT NULL COMMENT '(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统sql配置表';

-- ----------------------------
-- Records of tb_sys_sql_conf
-- ----------------------------
INSERT INTO `tb_sys_sql_conf` VALUES ('1', 'sys_permis_tree', '系统权限数', 'select sp.p_id id,sp.parent_id pId,sp.p_name name,\'true\' open,\'false\' nocheck \r\nfrom tb_sys_permis sp WHERE sp.record_status = \'01\' order by sp.p_level', '01', '系统权限页面的父权限树', null, '', '', '', '', '01', '2019-03-24 16:00:01', '2019-03-24 15:22:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of tb_sys_user
-- ----------------------------
INSERT INTO `tb_sys_user` VALUES ('1', 'admin', '0296c496ae8a50a67df31841946ca97c', '周小莹', '女', '11566937377@qq.com', '15876240015', 'ticc', 'zc', '01', '2019-03-22 14:04:18', '2019-03-15 07:20:09');
INSERT INTO `tb_sys_user` VALUES ('2', '1234', '86a9584a0f11399a25b082a0f5027cfb', '', '男', '', '', 'ticc', null, '00', null, '2019-03-15 07:22:23');
INSERT INTO `tb_sys_user` VALUES ('3', 'adfdsfadsf', '057846ab801ac808c086eccf03ea37f7', 'a', '男', '11566937377@qq.com', '15876240015', 'ticc', null, '00', null, '2019-03-20 10:09:26');
INSERT INTO `tb_sys_user` VALUES ('4', 'admin', '0296c496ae8a50a67df31841946ca97c', '1', '男', '11566937377@qq.com', '15876240015', 'ticc', null, '00', null, '2019-03-20 10:10:38');
INSERT INTO `tb_sys_user` VALUES ('5', 'pin1', '0296c496ae8a50a67df31841946ca97c', '', '男', '', '', 'ticc', '', '00', null, '2019-03-19 11:03:01');
INSERT INTO `tb_sys_user` VALUES ('6', 'pin2', '0296c496ae8a50a67df31841946ca97c', '周小莹', '女', '', '15876240015', 'ticc', '', '00', '2019-03-20 11:02:36', '2019-03-20 11:02:27');
INSERT INTO `tb_sys_user` VALUES ('7', '1234', '0296c496ae8a50a67df31841946ca97c', '1', '男', '', '', 'ticc', '', '01', '2019-03-21 15:00:46', '2019-03-20 17:04:20');
INSERT INTO `tb_sys_user` VALUES ('8', '111111', '0296c496ae8a50a67df31841946ca97c', '111', '男', '', '', 'ticc', '', '02', '2019-03-21 09:32:52', '2019-03-20 17:07:39');
INSERT INTO `tb_sys_user` VALUES ('9', '444444', '76f9c5b12359badba289713be0f7152d', '88888', '男', '', '', 'ticc', '', '02', '2019-03-20 17:08:02', '2019-03-20 17:08:02');
INSERT INTO `tb_sys_user` VALUES ('10', 'admin', '0296c496ae8a50a67df31841946ca97c', '周小莹', '男', '', '', 'ticc', '', '02', '2019-03-21 10:52:08', '2019-03-21 10:19:26');
INSERT INTO `tb_sys_user` VALUES ('11', 'admin', '0296c496ae8a50a67df31841946ca97c', '88888', '男', '', '', 'ticc', '', '02', '2019-03-21 10:20:17', '2019-03-21 10:20:17');
INSERT INTO `tb_sys_user` VALUES ('12', 'pin123', '0296c496ae8a50a67df31841946ca97c', 'pin123', '男', '', '', 'ticc', '', '00', '2019-03-21 10:56:55', '2019-03-21 10:21:32');
INSERT INTO `tb_sys_user` VALUES ('13', 'admin', '0296c496ae8a50a67df31841946ca97c', '周小莹', '男', '', '', 'ticc', '', '02', '2019-03-21 10:57:16', '2019-03-21 10:57:16');
INSERT INTO `tb_sys_user` VALUES ('14', '123455', '0296c496ae8a50a67df31841946ca97c', '1', '男', '', '', 'ticc', '', '02', '2019-03-21 10:58:09', '2019-03-21 10:58:09');
INSERT INTO `tb_sys_user` VALUES ('17', '6666', 'ccbd18436928630255bc070c57d94830', '6666', '男', '', '', 'ticc', '', '02', '2019-03-21 10:58:46', '2019-03-21 10:58:46');
INSERT INTO `tb_sys_user` VALUES ('18', 'admin', '0296c496ae8a50a67df31841946ca97c', '88888', '男', '', '', 'ticc', '', '02', '2019-03-21 16:37:05', '2019-03-21 16:37:05');

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
