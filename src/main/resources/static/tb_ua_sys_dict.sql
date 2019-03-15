/*
Navicat MySQL Data Transfer

Source Server         : DB测试服务器
Source Server Version : 50724
Source Host           : 172.31.23.182:3306
Source Database       : ticc_unify_account

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-03-14 16:37:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_ua_sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ua_sys_dict`;
CREATE TABLE `tb_ua_sys_dict` (
  `dict_id` int(11) NOT NULL,
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
  `dict_status` varchar(255) DEFAULT NULL COMMENT '状态 0=停用，1=启用',
  `delete_flag` varchar(255) DEFAULT NULL COMMENT '是否删除 1=删除',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ua_sys_dict
-- ----------------------------
INSERT INTO `tb_ua_sys_dict` VALUES ('1', 'DATA_TYPE', '0', '启用', '数据状态', '1', '', null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('2', 'DATA_TYPE', '1', '停用', '数据状态', '2', '', null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('3', 'NATION', '1', '汉族', '民族分类', '1', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('4', 'NATION', '2', '壮族', '民族分类', '2', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('5', 'NATION', '3', '满族', '民族分类', '3', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('6', 'NATION', '4', '回族', '民族分类', '4', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('7', 'NATION', '5', '苗族', '民族分类', '5', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('8', 'NATION', '6', '维吾尔族', '民族分类', '6', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('9', 'NATION', '7', '土家族', '民族分类', '7', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('10', 'NATION', '8', '彝族', '民族分类', '8', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('11', 'NATION', '9', '蒙古族', '民族分类', '9', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('12', 'NATION', '10', '藏族', '民族分类', '10', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('13', 'NATION', '11', '布依族', '民族分类', '11', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('14', 'NATION', '12', '侗族', '民族分类', '12', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('15', 'NATION', '13', '瑶族', '民族分类', '13', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('16', 'NATION', '14', '朝鲜族', '民族分类', '14', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('17', 'NATION', '15', '白族', '民族分类', '15', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('18', 'NATION', '16', '哈尼族', '民族分类', '16', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('19', 'NATION', '17', '哈萨克族', '民族分类', '17', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('20', 'NATION', '18', '黎族', '民族分类', '18', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('21', 'NATION', '19', '傣族', '民族分类', '19', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('22', 'NATION', '20', '畲族', '民族分类', '20', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('23', 'NATION', '21', '僳僳族', '民族分类', '21', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('24', 'NATION', '22', '仡佬族', '民族分类', '22', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('25', 'NATION', '23', '东乡族', '民族分类', '23', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('26', 'NATION', '24', '拉祜族', '民族分类', '24', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('27', 'NATION', '25', '水族', '民族分类', '25', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('28', 'NATION', '26', '佤族', '民族分类', '26', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('29', 'NATION', '27', '纳西族', '民族分类', '27', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('30', 'NATION', '28', '羌族', '民族分类', '28', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('31', 'NATION', '29', '土族', '民族分类', '29', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('32', 'NATION', '30', '仫佬族', '民族分类', '30', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('33', 'NATION', '31', '锡伯族', '民族分类', '31', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('34', 'NATION', '32', '柯尔克孜族', '民族分类', '32', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('35', 'NATION', '33', '达翰尔族', '民族分类', '33', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('36', 'NATION', '34', '景颇族', '民族分类', '34', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('37', 'NATION', '35', '毛南族', '民族分类', '35', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('38', 'NATION', '36', '撒拉族', '民族分类', '36', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('39', 'NATION', '37', '布朗族', '民族分类', '37', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('40', 'NATION', '38', '塔吉克族', '民族分类', '38', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('41', 'NATION', '39', '阿昌族', '民族分类', '39', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('42', 'NATION', '40', '普米族', '民族分类', '40', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('43', 'NATION', '41', '鄂温克族', '民族分类', '41', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('44', 'NATION', '42', '怒族', '民族分类', '42', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('45', 'NATION', '43', '京族', '民族分类', '43', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('46', 'NATION', '44', '基诺族', '民族分类', '44', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('47', 'NATION', '45', '德昂族', '民族分类', '45', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('48', 'NATION', '46', '保安族', '民族分类', '46', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('49', 'NATION', '47', '俄罗斯族', '民族分类', '47', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('50', 'NATION', '48', '裕固族', '民族分类', '48', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('51', 'NATION', '49', '乌孜别克族', '民族分类', '49', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('52', 'NATION', '50', '门巴族', '民族分类', '50', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('53', 'NATION', '51', '鄂伦春族', '民族分类', '51', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('54', 'NATION', '52', '独龙族', '民族分类', '52', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('55', 'NATION', '53', '塔塔尔族', '民族分类', '53', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('56', 'NATION', '54', '赫哲族', '民族分类', '54', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('57', 'NATION', '55', '高山族', '民族分类', '55', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('58', 'NATION', '56', '珞巴族', '民族分类', '56', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('59', 'EDUCATION', '1', '本科', '学历分类', '1', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('60', 'EDUCATION', '2', '中专', '学历分类', '2', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('61', 'EDUCATION', '3', '大专', '学历分类', '3', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('62', 'EDUCATION', '4', '硕士研究生', '学历分类', '4', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('63', 'EDUCATION', '5', '博士研究生', '学历分类', '5', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('64', 'EDUCATION', '6', '初中及以下', '学历分类', '6', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('65', 'POLITICAL', '1', '党员', '政治面貌', '1', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('66', 'POLITICAL', '2', '预备党员', '政治面貌', '2', null, null, null, null, null, null, null, '1', '0');
INSERT INTO `tb_ua_sys_dict` VALUES ('67', 'POLITICAL', '3', '群众', '政治面貌', '3', null, null, null, null, null, null, null, '1', '0');
