/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : h-ui.admin-bgtemp

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-03-31 21:52:27
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

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
INSERT INTO `tb_sys_dict` VALUES ('26', 'btn_——icon', '01', '添加', '按钮图', null, '', '', '', '', '', '', '', '00', '2019-03-25 21:33:44', '2019-03-25 21:33:44');
INSERT INTO `tb_sys_dict` VALUES ('27', 'oprt_icon', '01', '<i class=\"Hui-iconfont\">&#xe600;</i>', '操作相关图标', '1', '添加', '', '', '', '', '', '', '01', '2019-03-26 09:21:13', '2019-03-25 21:41:29');
INSERT INTO `tb_sys_dict` VALUES ('28', 'oprt_icon', '02', '<i class=\"Hui-iconfont\">&#xe6df;</i>', '操作相关图标', '2', '编辑', '', '', '', '', '', '', '01', '2019-03-26 09:21:07', '2019-03-25 21:44:28');
INSERT INTO `tb_sys_dict` VALUES ('29', 'oprt_icon', '03', '<i class=\"Hui-iconfont\">&#xe6e2;</i>', '操作相关图标', '3', '删除', '', '', '', '', '', '', '01', '2019-03-26 09:17:31', '2019-03-26 09:17:31');
INSERT INTO `tb_sys_dict` VALUES ('30', 'oprt_icon', '04', '<i class=\"Hui-iconfont\">&#xe665;</i>', '操作相关图标', '4', '搜索', '', '', '', '', '', '', '01', '2019-03-26 09:19:01', '2019-03-26 09:19:01');
INSERT INTO `tb_sys_dict` VALUES ('31', 'oprt_icon', '06', '<i class=\"Hui-iconfont\">&#xe644;</i>', '操作相关图标', '6', '导出', '', '', '', '', '', '', '01', '2019-03-26 09:19:42', '2019-03-26 09:19:42');
INSERT INTO `tb_sys_dict` VALUES ('32', 'oprt_icon', '07', '<i class=\"Hui-iconfont\">&#xe645;</i>', '操作相关图标', '7', '导入', '', '', '', '', '', '', '01', '2019-03-26 09:20:01', '2019-03-26 09:20:01');
INSERT INTO `tb_sys_dict` VALUES ('33', 'oprt_icon', '08', '<i class=\"Hui-iconfont\">&#xe642;</i>', '操作相关图标', '8', '上传', '', '', '', '', '', '', '01', '2019-03-26 09:20:27', '2019-03-26 09:20:27');
INSERT INTO `tb_sys_dict` VALUES ('34', 'oprt_icon', '09', '<i class=\"Hui-iconfont\">&#xe641;</i>', '操作相关图标', '9', '下载', '', '', '', '', '', '', '01', '2019-03-26 09:20:55', '2019-03-26 09:20:55');
INSERT INTO `tb_sys_dict` VALUES ('35', 'oprt_icon', '10', '<i class=\"Hui-iconfont\">&#xe615;</i>', '操作相关图标', '10', '启用', '', '', '', '', '', '', '01', '2019-03-26 09:24:06', '2019-03-26 09:24:06');
INSERT INTO `tb_sys_dict` VALUES ('36', 'oprt_icon', '11', '<i class=\"Hui-iconfont\">&#xe631;</i>', '操作相关图标', '11', '停用', '', '', '', '', '', '', '01', '2019-03-26 09:24:43', '2019-03-26 09:24:43');
INSERT INTO `tb_sys_dict` VALUES ('37', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '00', '2019-03-29 20:53:50', '2019-03-29 20:53:50');

-- ----------------------------
-- Table structure for `tb_sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_log`;
CREATE TABLE `tb_sys_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(100) DEFAULT NULL COMMENT '操作',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(255) DEFAULT NULL COMMENT '参数',
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `request_url` varchar(255) DEFAULT NULL COMMENT ' 请求url',
  `request_type` varchar(20) DEFAULT NULL COMMENT '请求类型',
  `expan_1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `expan_2` varchar(255) DEFAULT NULL,
  `expan_3` varchar(255) DEFAULT NULL,
  `expan_4` varchar(255) DEFAULT NULL,
  `expan_5` varchar(255) DEFAULT NULL,
  `expan_6` varchar(255) DEFAULT NULL,
  `record_status` char(2) DEFAULT NULL COMMENT '记录状态(00=已删除，01=可用，02=禁用)',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sys_log
-- ----------------------------
INSERT INTO `tb_sys_log` VALUES ('1', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.sys.controller.SysUserController.list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:11:58');
INSERT INTO `tb_sys_log` VALUES ('2', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:49');
INSERT INTO `tb_sys_log` VALUES ('3', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:50');
INSERT INTO `tb_sys_log` VALUES ('4', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:53');
INSERT INTO `tb_sys_log` VALUES ('5', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:54');
INSERT INTO `tb_sys_log` VALUES ('6', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:55');
INSERT INTO `tb_sys_log` VALUES ('7', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:21:56');
INSERT INTO `tb_sys_log` VALUES ('8', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:22:13');
INSERT INTO `tb_sys_log` VALUES ('9', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:23:17');
INSERT INTO `tb_sys_log` VALUES ('10', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:24:21');
INSERT INTO `tb_sys_log` VALUES ('11', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:24:40');
INSERT INTO `tb_sys_log` VALUES ('12', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:30:17');
INSERT INTO `tb_sys_log` VALUES ('13', null, '以后修改', 'oprt查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:32:28');
INSERT INTO `tb_sys_log` VALUES ('14', null, '以后修改', 'oprt查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:32:30');
INSERT INTO `tb_sys_log` VALUES ('15', null, '以后修改', 'oprt查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:32:31');
INSERT INTO `tb_sys_log` VALUES ('16', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:46:05');
INSERT INTO `tb_sys_log` VALUES ('17', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:47:36');
INSERT INTO `tb_sys_log` VALUES ('18', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:47:37');
INSERT INTO `tb_sys_log` VALUES ('19', null, '以后修改', '查询', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, '01', null, '2019-03-29 22:48:44');
INSERT INTO `tb_sys_log` VALUES ('20', null, '以后修改', '查询', 'MethodSignatureImpl_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 22:58:38');
INSERT INTO `tb_sys_log` VALUES ('21', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 22:59:41');
INSERT INTO `tb_sys_log` VALUES ('22', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:34');
INSERT INTO `tb_sys_log` VALUES ('23', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:35');
INSERT INTO `tb_sys_log` VALUES ('24', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:35');
INSERT INTO `tb_sys_log` VALUES ('25', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:36');
INSERT INTO `tb_sys_log` VALUES ('26', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:36');
INSERT INTO `tb_sys_log` VALUES ('27', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:37');
INSERT INTO `tb_sys_log` VALUES ('28', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:37');
INSERT INTO `tb_sys_log` VALUES ('29', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:37');
INSERT INTO `tb_sys_log` VALUES ('30', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:38');
INSERT INTO `tb_sys_log` VALUES ('31', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:39');
INSERT INTO `tb_sys_log` VALUES ('32', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', null, null, 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', null, '2019-03-29 23:00:40');
INSERT INTO `tb_sys_log` VALUES ('33', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:47:09', '2019-03-30 10:47:09');
INSERT INTO `tb_sys_log` VALUES ('34', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:47:13', '2019-03-30 10:47:13');
INSERT INTO `tb_sys_log` VALUES ('35', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:49:50', '2019-03-30 10:49:50');
INSERT INTO `tb_sys_log` VALUES ('36', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:49:51', '2019-03-30 10:49:51');
INSERT INTO `tb_sys_log` VALUES ('37', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:49:52', '2019-03-30 10:49:52');
INSERT INTO `tb_sys_log` VALUES ('38', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:51:03', '2019-03-30 10:51:03');
INSERT INTO `tb_sys_log` VALUES ('39', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:51:40', '2019-03-30 10:51:40');
INSERT INTO `tb_sys_log` VALUES ('40', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:51:44', '2019-03-30 10:51:44');
INSERT INTO `tb_sys_log` VALUES ('41', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:51:48', '2019-03-30 10:51:48');
INSERT INTO `tb_sys_log` VALUES ('42', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:54:52', '2019-03-30 10:54:52');
INSERT INTO `tb_sys_log` VALUES ('43', null, '以后修改', '软删除', 'SysLogController_delete', '[[\"1\"]]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/delete', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_delete', null, null, null, null, null, '01', '2019-03-30 10:55:13', '2019-03-30 10:55:13');
INSERT INTO `tb_sys_log` VALUES ('44', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:55:17', '2019-03-30 10:55:17');
INSERT INTO `tb_sys_log` VALUES ('45', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:55:55', '2019-03-30 10:55:55');
INSERT INTO `tb_sys_log` VALUES ('46', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:55:56', '2019-03-30 10:55:56');
INSERT INTO `tb_sys_log` VALUES ('47', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:56:02', '2019-03-30 10:56:02');
INSERT INTO `tb_sys_log` VALUES ('48', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:56:21', '2019-03-30 10:56:21');
INSERT INTO `tb_sys_log` VALUES ('49', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:57:12', '2019-03-30 10:57:12');
INSERT INTO `tb_sys_log` VALUES ('50', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:32', '2019-03-30 10:59:32');
INSERT INTO `tb_sys_log` VALUES ('51', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:33', '2019-03-30 10:59:33');
INSERT INTO `tb_sys_log` VALUES ('52', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:34', '2019-03-30 10:59:34');
INSERT INTO `tb_sys_log` VALUES ('53', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '00', '2019-03-30 10:59:36', '2019-03-30 10:59:36');
INSERT INTO `tb_sys_log` VALUES ('54', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:52', '2019-03-30 10:59:52');
INSERT INTO `tb_sys_log` VALUES ('55', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:53', '2019-03-30 10:59:53');
INSERT INTO `tb_sys_log` VALUES ('56', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 10:59:54', '2019-03-30 10:59:54');
INSERT INTO `tb_sys_log` VALUES ('57', null, '以后修改', '添加', 'SysPermisController_add', '[{\"descri\":\"\",\"leftIcon\":\"\",\"pFlag\":\"sysLog\",\"pLevel\":3,\"pName\":\"系统日志管理\",\"pSort\":4,\"pType\":\"01\",\"pUrl\":\"\",\"parentId\":13,\"recordStatus\":\"01\"}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/add', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_add', null, null, null, null, null, '01', '2019-03-30 11:25:35', '2019-03-30 11:25:35');
INSERT INTO `tb_sys_log` VALUES ('58', null, '以后修改', '软删除', 'SysLogController_delete', '[[\"53\"]]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/delete', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_delete', null, null, null, null, null, '01', '2019-03-30 12:44:39', '2019-03-30 12:44:39');
INSERT INTO `tb_sys_log` VALUES ('59', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:52:09', '2019-03-30 12:52:09');
INSERT INTO `tb_sys_log` VALUES ('60', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:52:45', '2019-03-30 12:52:45');
INSERT INTO `tb_sys_log` VALUES ('61', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:52:59', '2019-03-30 12:52:59');
INSERT INTO `tb_sys_log` VALUES ('62', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:52:59', '2019-03-30 12:52:59');
INSERT INTO `tb_sys_log` VALUES ('63', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:00', '2019-03-30 12:53:00');
INSERT INTO `tb_sys_log` VALUES ('64', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:00', '2019-03-30 12:53:00');
INSERT INTO `tb_sys_log` VALUES ('65', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:10', '2019-03-30 12:53:10');
INSERT INTO `tb_sys_log` VALUES ('66', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":2,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"2019-03-30 11:53:11\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:22', '2019-03-30 12:53:22');
INSERT INTO `tb_sys_log` VALUES ('67', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":3,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"2019-03-30 11:53:11\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:25', '2019-03-30 12:53:25');
INSERT INTO `tb_sys_log` VALUES ('68', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":4,\"endCreatTime\":\"2019-03-30 12:00:26\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"2019-03-30 11:53:11\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:38', '2019-03-30 12:53:38');
INSERT INTO `tb_sys_log` VALUES ('69', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:56', '2019-03-30 12:53:56');
INSERT INTO `tb_sys_log` VALUES ('70', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:53:59', '2019-03-30 12:53:59');
INSERT INTO `tb_sys_log` VALUES ('71', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:00', '2019-03-30 12:54:00');
INSERT INTO `tb_sys_log` VALUES ('72', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:00', '2019-03-30 12:54:00');
INSERT INTO `tb_sys_log` VALUES ('73', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:00', '2019-03-30 12:54:00');
INSERT INTO `tb_sys_log` VALUES ('74', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:01', '2019-03-30 12:54:01');
INSERT INTO `tb_sys_log` VALUES ('75', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:02', '2019-03-30 12:54:02');
INSERT INTO `tb_sys_log` VALUES ('76', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:03', '2019-03-30 12:54:03');
INSERT INTO `tb_sys_log` VALUES ('77', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:04', '2019-03-30 12:54:04');
INSERT INTO `tb_sys_log` VALUES ('78', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:05', '2019-03-30 12:54:05');
INSERT INTO `tb_sys_log` VALUES ('79', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:20', '2019-03-30 12:54:20');
INSERT INTO `tb_sys_log` VALUES ('80', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:23', '2019-03-30 12:54:23');
INSERT INTO `tb_sys_log` VALUES ('81', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:23', '2019-03-30 12:54:23');
INSERT INTO `tb_sys_log` VALUES ('82', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:24', '2019-03-30 12:54:24');
INSERT INTO `tb_sys_log` VALUES ('83', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 12:54:24', '2019-03-30 12:54:24');
INSERT INTO `tb_sys_log` VALUES ('84', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":2,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:22', '2019-03-30 13:07:22');
INSERT INTO `tb_sys_log` VALUES ('85', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:46', '2019-03-30 13:07:46');
INSERT INTO `tb_sys_log` VALUES ('86', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:47', '2019-03-30 13:07:47');
INSERT INTO `tb_sys_log` VALUES ('87', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:48', '2019-03-30 13:07:48');
INSERT INTO `tb_sys_log` VALUES ('88', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:48', '2019-03-30 13:07:48');
INSERT INTO `tb_sys_log` VALUES ('89', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:49', '2019-03-30 13:07:49');
INSERT INTO `tb_sys_log` VALUES ('90', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:49', '2019-03-30 13:07:49');
INSERT INTO `tb_sys_log` VALUES ('91', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:50', '2019-03-30 13:07:50');
INSERT INTO `tb_sys_log` VALUES ('92', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:51', '2019-03-30 13:07:51');
INSERT INTO `tb_sys_log` VALUES ('93', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:52', '2019-03-30 13:07:52');
INSERT INTO `tb_sys_log` VALUES ('94', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:52', '2019-03-30 13:07:52');
INSERT INTO `tb_sys_log` VALUES ('95', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:54', '2019-03-30 13:07:54');
INSERT INTO `tb_sys_log` VALUES ('96', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:55', '2019-03-30 13:07:55');
INSERT INTO `tb_sys_log` VALUES ('97', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:55', '2019-03-30 13:07:55');
INSERT INTO `tb_sys_log` VALUES ('98', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:56', '2019-03-30 13:07:56');
INSERT INTO `tb_sys_log` VALUES ('99', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:56', '2019-03-30 13:07:56');
INSERT INTO `tb_sys_log` VALUES ('100', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:56', '2019-03-30 13:07:56');
INSERT INTO `tb_sys_log` VALUES ('101', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:07:57', '2019-03-30 13:07:57');
INSERT INTO `tb_sys_log` VALUES ('102', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:01', '2019-03-30 13:08:01');
INSERT INTO `tb_sys_log` VALUES ('103', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:02', '2019-03-30 13:08:02');
INSERT INTO `tb_sys_log` VALUES ('104', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:12', '2019-03-30 13:08:12');
INSERT INTO `tb_sys_log` VALUES ('105', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":2,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:20', '2019-03-30 13:08:20');
INSERT INTO `tb_sys_log` VALUES ('106', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:23', '2019-03-30 13:08:23');
INSERT INTO `tb_sys_log` VALUES ('107', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:23', '2019-03-30 13:08:23');
INSERT INTO `tb_sys_log` VALUES ('108', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:24', '2019-03-30 13:08:24');
INSERT INTO `tb_sys_log` VALUES ('109', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:29', '2019-03-30 13:08:29');
INSERT INTO `tb_sys_log` VALUES ('110', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:29', '2019-03-30 13:08:29');
INSERT INTO `tb_sys_log` VALUES ('111', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:30', '2019-03-30 13:08:30');
INSERT INTO `tb_sys_log` VALUES ('112', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:31', '2019-03-30 13:08:31');
INSERT INTO `tb_sys_log` VALUES ('113', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:31', '2019-03-30 13:08:31');
INSERT INTO `tb_sys_log` VALUES ('114', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:32', '2019-03-30 13:08:32');
INSERT INTO `tb_sys_log` VALUES ('115', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:32', '2019-03-30 13:08:32');
INSERT INTO `tb_sys_log` VALUES ('116', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:32', '2019-03-30 13:08:32');
INSERT INTO `tb_sys_log` VALUES ('117', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:33', '2019-03-30 13:08:33');
INSERT INTO `tb_sys_log` VALUES ('118', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:33', '2019-03-30 13:08:33');
INSERT INTO `tb_sys_log` VALUES ('119', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:34', '2019-03-30 13:08:34');
INSERT INTO `tb_sys_log` VALUES ('120', null, '以后修改', '查询', 'SysSqlConfController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysSqlConfCustom\":{\"scCode\":\"\",\"scName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysSqlConf/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:35', '2019-03-30 13:08:35');
INSERT INTO `tb_sys_log` VALUES ('121', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '127.0.0.1', 'http://127.0.0.1:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-30 13:08:42', '2019-03-30 13:08:42');
INSERT INTO `tb_sys_log` VALUES ('122', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:38', '2019-03-31 14:33:38');
INSERT INTO `tb_sys_log` VALUES ('123', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:42', '2019-03-31 14:33:42');
INSERT INTO `tb_sys_log` VALUES ('124', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:43', '2019-03-31 14:33:43');
INSERT INTO `tb_sys_log` VALUES ('125', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:44', '2019-03-31 14:33:44');
INSERT INTO `tb_sys_log` VALUES ('126', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:44', '2019-03-31 14:33:44');
INSERT INTO `tb_sys_log` VALUES ('127', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:47', '2019-03-31 14:33:47');
INSERT INTO `tb_sys_log` VALUES ('128', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:48', '2019-03-31 14:33:48');
INSERT INTO `tb_sys_log` VALUES ('129', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:49', '2019-03-31 14:33:49');
INSERT INTO `tb_sys_log` VALUES ('130', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:49', '2019-03-31 14:33:49');
INSERT INTO `tb_sys_log` VALUES ('131', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:50', '2019-03-31 14:33:50');
INSERT INTO `tb_sys_log` VALUES ('132', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:50', '2019-03-31 14:33:50');
INSERT INTO `tb_sys_log` VALUES ('133', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:51', '2019-03-31 14:33:51');
INSERT INTO `tb_sys_log` VALUES ('134', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:52', '2019-03-31 14:33:52');
INSERT INTO `tb_sys_log` VALUES ('135', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:52', '2019-03-31 14:33:52');
INSERT INTO `tb_sys_log` VALUES ('136', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:53', '2019-03-31 14:33:53');
INSERT INTO `tb_sys_log` VALUES ('137', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:54', '2019-03-31 14:33:54');
INSERT INTO `tb_sys_log` VALUES ('138', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:54', '2019-03-31 14:33:54');
INSERT INTO `tb_sys_log` VALUES ('139', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:33:55', '2019-03-31 14:33:55');
INSERT INTO `tb_sys_log` VALUES ('140', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:34:00', '2019-03-31 14:34:00');
INSERT INTO `tb_sys_log` VALUES ('141', null, '以后修改', '查询', 'SysUserController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysUserCustom\":{\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysUser/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:34:22', '2019-03-31 14:34:22');
INSERT INTO `tb_sys_log` VALUES ('142', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:34:23', '2019-03-31 14:34:23');
INSERT INTO `tb_sys_log` VALUES ('143', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:34:24', '2019-03-31 14:34:24');
INSERT INTO `tb_sys_log` VALUES ('144', null, '以后修改', '查询', 'SysLogController_list', '[{\"draw\":1,\"endCreatTime\":\"\",\"isNoLike\":{},\"length\":5,\"orderBy\":\"update_time desc\",\"start\":0,\"startCreatTime\":\"\",\"sysLogCustom\":{\"operation\":\"\",\"userName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysLog/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 14:34:24', '2019-03-31 14:34:24');
INSERT INTO `tb_sys_log` VALUES ('145', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:00:57', '2019-03-31 15:00:57');
INSERT INTO `tb_sys_log` VALUES ('146', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":2,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":10,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:01:01', '2019-03-31 15:01:01');
INSERT INTO `tb_sys_log` VALUES ('147', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":3,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":20,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:01:18', '2019-03-31 15:01:18');
INSERT INTO `tb_sys_log` VALUES ('148', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":4,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":10,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:01:27', '2019-03-31 15:01:27');
INSERT INTO `tb_sys_log` VALUES ('149', null, '以后修改', '查询', 'SysDictController_list', '[{\"draw\":5,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":20,\"sysDictCustom\":{\"dictCode\":\"\",\"dictType\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysDict/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:01:32', '2019-03-31 15:01:32');
INSERT INTO `tb_sys_log` VALUES ('150', null, '以后修改', '查询', 'SysRoleController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysRoleCustom\":{\"roleFlag\":\"\",\"roleName\":\"\"}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysRole/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:22:41', '2019-03-31 15:22:41');
INSERT INTO `tb_sys_log` VALUES ('151', null, '以后修改', '查询', 'SysPermisController_list', '[{\"draw\":1,\"isNoLike\":{},\"length\":10,\"orderBy\":\"update_time desc\",\"start\":0,\"sysPermisCustom\":{\"pName\":\"\",\"parentId\":11}}]', '0:0:0:0:0:0:0:1', 'http://localhost:8083/temp/sysPermis/query', 'POST', 'cn.sk.huiadminbgtemp.base.controller.BaseController_list', null, null, null, null, null, '01', '2019-03-31 15:22:42', '2019-03-31 15:22:42');

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
INSERT INTO `tb_sys_permis` VALUES ('13', 'sysManag', '系统管理', '', '11', '01', '2', '1', '', null, '', null, null, null, '01', '2019-03-26 16:56:37', '2019-03-23 16:17:36');
INSERT INTO `tb_sys_permis` VALUES ('14', 'sysManag', '系统管理', '', '13', '01', '2', '1', '', null, '', null, null, null, '01', '2019-03-24 19:37:50', '2019-03-23 16:20:10');
INSERT INTO `tb_sys_permis` VALUES ('15', 'sysManag', '系统角色管理', '', '13', '01', '3', '2', '', null, '', null, null, null, '01', '2019-03-24 19:37:58', '2019-03-23 16:20:32');
INSERT INTO `tb_sys_permis` VALUES ('16', 'sysManag', '系统权限管理', '', '13', '01', '3', '3', '', null, '', null, null, null, '01', '2019-03-24 19:38:06', '2019-03-23 16:20:45');
INSERT INTO `tb_sys_permis` VALUES ('17', 'sysConf', '系统配置', '', '11', '01', '2', '2', '', null, '', null, null, null, '01', '2019-03-26 16:51:28', '2019-03-24 17:33:45');
INSERT INTO `tb_sys_permis` VALUES ('18', 'sysDict', '数字字典', '', '17', '01', '3', '1', '', null, '', null, null, null, '01', '2019-03-24 17:40:43', '2019-03-24 17:35:37');
INSERT INTO `tb_sys_permis` VALUES ('19', 'sysSqlConf', 'sql语句配置', '', '17', '01', '3', '2', '', null, '', null, null, null, '01', '2019-03-24 17:40:56', '2019-03-24 17:35:59');
INSERT INTO `tb_sys_permis` VALUES ('20', 'sysLog', '系统日志管理', '', '13', '01', '3', '4', '', null, '', null, null, null, '01', '2019-03-30 11:25:35', '2019-03-30 11:25:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of tb_sys_role
-- ----------------------------
INSERT INTO `tb_sys_role` VALUES ('1', 'admin', '超级管理员', '系统最大的权限', null, null, null, null);
INSERT INTO `tb_sys_role` VALUES ('2', '1', '1', '1', null, '00', '2019-03-21 15:01:13', '2019-03-21 14:34:22');
INSERT INTO `tb_sys_role` VALUES ('3', '2', '2', '2', null, '00', '2019-03-21 15:01:16', '2019-03-21 14:36:18');
INSERT INTO `tb_sys_role` VALUES ('4', '3', '3', '3', null, '00', '2019-03-21 14:38:53', '2019-03-21 14:38:53');
INSERT INTO `tb_sys_role` VALUES ('5', 'superAdmin', '超级管理员', '拥有最高的权限', null, '01', '2019-03-29 21:02:24', '2019-03-21 14:38:59');
INSERT INTO `tb_sys_role` VALUES ('6', 'sysUser', '系统用户管理', '管理系统用户信息', null, '01', '2019-03-28 14:13:39', '2019-03-21 16:34:10');
INSERT INTO `tb_sys_role` VALUES ('7', '6', '6', '6', null, '02', '2019-03-22 14:05:53', '2019-03-21 16:42:35');
INSERT INTO `tb_sys_role` VALUES ('8', '7', '7', '7', null, '01', '2019-03-22 14:05:50', '2019-03-21 16:42:56');
INSERT INTO `tb_sys_role` VALUES ('9', '2', '2', '', null, '01', '2019-03-29 14:06:32', '2019-03-29 14:06:32');
INSERT INTO `tb_sys_role` VALUES ('10', 'test', 'test', '', null, '01', '2019-03-29 14:50:21', '2019-03-29 14:50:21');
INSERT INTO `tb_sys_role` VALUES ('11', 'test1', 'test2', '123', null, '01', '2019-03-29 15:32:51', '2019-03-29 15:09:52');
INSERT INTO `tb_sys_role` VALUES ('12', 'test12', '****', '', null, '01', '2019-03-29 15:33:14', '2019-03-29 15:33:14');
INSERT INTO `tb_sys_role` VALUES ('13', 'test13', '333', '33', null, '01', '2019-03-29 15:35:01', '2019-03-29 15:35:01');
INSERT INTO `tb_sys_role` VALUES ('14', 'test31', 'test31', 'test31', null, '00', '2019-03-29 15:36:39', '2019-03-29 15:36:39');

-- ----------------------------
-- Table structure for `tb_sys_role_permis`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_role_permis`;
CREATE TABLE `tb_sys_role_permis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(10) unsigned DEFAULT NULL COMMENT '角色id',
  `permis_id` int(10) unsigned DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统角色和系统权限中间表';

-- ----------------------------
-- Records of tb_sys_role_permis
-- ----------------------------
INSERT INTO `tb_sys_role_permis` VALUES ('10', '5', '11');
INSERT INTO `tb_sys_role_permis` VALUES ('11', '5', '13');
INSERT INTO `tb_sys_role_permis` VALUES ('12', '5', '14');
INSERT INTO `tb_sys_role_permis` VALUES ('13', '5', '15');
INSERT INTO `tb_sys_role_permis` VALUES ('14', '5', '16');
INSERT INTO `tb_sys_role_permis` VALUES ('15', '5', '17');
INSERT INTO `tb_sys_role_permis` VALUES ('16', '5', '18');
INSERT INTO `tb_sys_role_permis` VALUES ('17', '5', '19');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统sql配置表';

-- ----------------------------
-- Records of tb_sys_sql_conf
-- ----------------------------
INSERT INTO `tb_sys_sql_conf` VALUES ('1', 'sys_permis_tree', '系统权限树', 'select sp.p_id id,sp.parent_id pId,sp.p_name name,\'true\' open,\'false\' nocheck \r\nfrom tb_sys_permis sp WHERE sp.record_status = \'01\' order by sp.p_level', '01', '系统权限页面的父权限树', null, '', '', '', '', '01', '2019-03-28 15:09:24', '2019-03-24 15:22:17');
INSERT INTO `tb_sys_sql_conf` VALUES ('2', 'sys_role_select', '系统角色下拉框', 'select sr.role_id id,sr.role_name name,0 pId,\'true\' open,\'false\' nocheck from tb_sys_role sr where sr.record_status=\'01\'', '01', '', null, '', '', '', '', '01', '2019-03-28 16:49:07', '2019-03-28 15:16:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

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
INSERT INTO `tb_sys_user` VALUES ('19', 'zhouxy', '47f53271fe6b3e6630caf5272c8096d7', '周小莹', '男', '11566937377@qq.com', '15876240015', 'ticc', '', '02', '2019-03-29 09:48:25', '2019-03-29 09:48:25');
INSERT INTO `tb_sys_user` VALUES ('20', 'admin', '0296c496ae8a50a67df31841946ca97c', '周小莹', '男', '', '', 'ticc', '', '02', '2019-03-29 09:49:17', '2019-03-29 09:49:17');
INSERT INTO `tb_sys_user` VALUES ('21', 'admin', '0296c496ae8a50a67df31841946ca97c', '周小莹', '男', '', '', 'ticc', '', '02', '2019-03-29 09:59:27', '2019-03-29 09:59:27');
INSERT INTO `tb_sys_user` VALUES ('22', 'admin1', '035d1c16a0d1124357f4bfe479a8d266', '周小莹', '男', '', '15876240015', 'ticc', '', '02', '2019-03-29 11:35:47', '2019-03-29 10:15:28');
INSERT INTO `tb_sys_user` VALUES ('23', '15677', '0296c496ae8a50a67df31841946ca97c', '', '女', '', '', 'ticc', '', '02', '2019-03-29 16:19:49', '2019-03-29 16:18:51');
INSERT INTO `tb_sys_user` VALUES ('24', 'zhoucp', '47f53271fe6b3e6630caf5272c8096d7', '周小品', '男', '1156352323@qq.com', '15920928193', 'ticc', '', '01', '2019-03-29 21:03:42', '2019-03-29 21:03:42');

-- ----------------------------
-- Table structure for `tb_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_user_role`;
CREATE TABLE `tb_sys_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `role_id` int(10) unsigned DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='系统用户和系统角色中间表';

-- ----------------------------
-- Records of tb_sys_user_role
-- ----------------------------
INSERT INTO `tb_sys_user_role` VALUES ('9', '22', '6');
INSERT INTO `tb_sys_user_role` VALUES ('10', '24', '5');
