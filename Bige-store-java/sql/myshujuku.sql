/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : myshujuku

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2021-05-23 10:23:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('41', 'mall_dormitory', '宿舍楼', null, null, 'MallDormitory', 'crud', 'com.bige.system', 'system', 'dormitory', '宿舍楼', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('42', 'mall_room', '宿舍房间', null, null, 'MallRoom', 'crud', 'com.bige.system', 'system', 'room', '宿舍房间', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('43', 'mall_student', '学生', null, null, 'MallStudent', 'crud', 'com.bige.system', 'system', 'student', '学生', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('44', 'sys_config', '参数配置表', null, null, 'SysConfig', 'crud', 'com.bige.system', 'system', 'config', '参数配置', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('45', 'sys_dept', '部门表', null, null, 'SysDept', 'crud', 'com.bige.system', 'system', 'dept', '部门', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('46', 'sys_dict_data', '字典数据表', null, null, 'SysDictData', 'crud', 'com.bige.system', 'system', 'data', '字典数据', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('47', 'sys_dict_type', '字典类型表', null, null, 'SysDictType', 'crud', 'com.bige.system', 'system', 'type', '字典类型', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('48', 'sys_job', '定时任务调度表', null, null, 'SysJob', 'crud', 'com.bige.system', 'system', 'job', '定时任务调度', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('49', 'sys_job_log', '定时任务调度日志表', null, null, 'SysJobLog', 'crud', 'com.bige.system', 'system', 'log', '定时任务调度日志', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('50', 'sys_logininfor', '系统访问记录', null, null, 'SysLogininfor', 'crud', 'com.bige.system', 'system', 'logininfor', '系统访问记录', 'bige', '0', '/', null, 'admin', '2021-05-22 14:47:08', '', null, null);
INSERT INTO `gen_table` VALUES ('51', 'mall_houseparent', '宿管', null, null, 'MallHouseparent', 'crud', 'com.bige.system', 'mall', 'houseparent', '宿管', 'bige', '0', '/', '{}', 'admin', '2021-05-22 16:28:21', '', '2021-05-22 16:28:57', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('272', '41', 'dormitory_id', 'Id', 'int(10)', 'Integer', 'dormitoryId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('273', '41', 'dormitory_name', '名称', 'varchar(20)', 'String', 'dormitoryName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('274', '41', 'dormitory_describe', '描述', 'varchar(50)', 'String', 'dormitoryDescribe', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('275', '42', 'room_id', '主键ID', 'int(10)', 'Integer', 'roomId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('276', '42', 'room_name', '宿舍名', 'varchar(20)', 'String', 'roomName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('277', '42', 'room_describe', '宿舍描述', 'varchar(50)', 'String', 'roomDescribe', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('278', '42', 'room_floor', '楼层', 'int(10)', 'Integer', 'roomFloor', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('279', '42', 'student_num', '最高学生人数', 'int(10)', 'Integer', 'studentNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('280', '42', 'dormitory_id', '宿舍楼Id', 'int(10)', 'Integer', 'dormitoryId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('281', '43', 'student_id', '学生ID', 'int(10)', 'Integer', 'studentId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('282', '43', 'student_name', '学生名字', 'varchar(20)', 'String', 'studentName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('283', '43', 'student_describe', '学生描述', 'varchar(50)', 'String', 'studentDescribe', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('284', '43', 'class_name', '班级', 'varchar(20)', 'String', 'className', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('285', '43', 'room_id', '宿舍', 'int(10)', 'Integer', 'roomId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('286', '44', 'config_id', '参数主键', 'int(5)', 'Integer', 'configId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('287', '44', 'config_name', '参数名称', 'varchar(100)', 'String', 'configName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('288', '44', 'config_key', '参数键名', 'varchar(100)', 'String', 'configKey', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('289', '44', 'config_value', '参数键值', 'varchar(500)', 'String', 'configValue', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('290', '44', 'config_type', '系统内置（Y是 N否）', 'char(1)', 'String', 'configType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('291', '44', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('292', '44', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('293', '44', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('294', '44', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('295', '44', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '10', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('296', '45', 'dept_id', '部门id', 'bigint(20)', 'Long', 'deptId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('297', '45', 'parent_id', '父部门id', 'bigint(20)', 'Long', 'parentId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('298', '45', 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('299', '45', 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('300', '45', 'order_num', '显示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('301', '45', 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('302', '45', 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('303', '45', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('304', '45', 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('305', '45', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '10', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('306', '45', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('307', '45', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '12', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('308', '45', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('309', '45', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('310', '46', 'dict_code', '字典编码', 'bigint(20)', 'Long', 'dictCode', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('311', '46', 'dict_sort', '字典排序', 'int(4)', 'Integer', 'dictSort', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('312', '46', 'dict_label', '字典标签', 'varchar(100)', 'String', 'dictLabel', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('313', '46', 'dict_value', '字典键值', 'varchar(100)', 'String', 'dictValue', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('314', '46', 'dict_type', '字典类型', 'varchar(100)', 'String', 'dictType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('315', '46', 'css_class', '样式属性（其他样式扩展）', 'varchar(100)', 'String', 'cssClass', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('316', '46', 'list_class', '表格回显样式', 'varchar(100)', 'String', 'listClass', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('317', '46', 'is_default', '是否默认（Y是 N否）', 'char(1)', 'String', 'isDefault', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('318', '46', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('319', '46', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '10', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('320', '46', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '11', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('321', '46', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '12', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('322', '46', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '13', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('323', '46', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '14', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('324', '47', 'dict_id', '字典主键', 'bigint(20)', 'Long', 'dictId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('325', '47', 'dict_name', '字典名称', 'varchar(100)', 'String', 'dictName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('326', '47', 'dict_type', '字典类型', 'varchar(100)', 'String', 'dictType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('327', '47', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('328', '47', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('329', '47', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('330', '47', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('331', '47', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('332', '47', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('333', '48', 'job_id', '任务ID', 'bigint(20)', 'Long', 'jobId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('334', '48', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '1', '0', null, '1', null, null, null, 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('335', '48', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('336', '48', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('337', '48', 'cron_expression', 'cron执行表达式', 'varchar(255)', 'String', 'cronExpression', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('338', '48', 'misfire_policy', '计划执行错误策略（1立即执行 2执行一次 3放弃执行）', 'varchar(20)', 'String', 'misfirePolicy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('339', '48', 'concurrent', '是否并发执行（0允许 1禁止）', 'char(1)', 'String', 'concurrent', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('340', '48', 'status', '状态（0正常 1暂停）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('341', '48', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('342', '48', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('343', '48', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '11', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('344', '48', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '12', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('345', '48', 'remark', '备注信息', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '13', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('346', '49', 'job_log_id', '任务日志ID', 'bigint(20)', 'Long', 'jobLogId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('347', '49', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('348', '49', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('349', '49', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('350', '49', 'job_message', '日志信息', 'varchar(500)', 'String', 'jobMessage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('351', '49', 'status', '执行状态（0正常 1失败）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('352', '49', 'exception_info', '异常信息', 'varchar(2000)', 'String', 'exceptionInfo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('353', '49', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('354', '50', 'info_id', '访问ID', 'bigint(20)', 'Long', 'infoId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('355', '50', 'user_name', '用户账号', 'varchar(50)', 'String', 'userName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('356', '50', 'ipaddr', '登录IP地址', 'varchar(128)', 'String', 'ipaddr', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('357', '50', 'login_location', '登录地点', 'varchar(255)', 'String', 'loginLocation', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('358', '50', 'browser', '浏览器类型', 'varchar(50)', 'String', 'browser', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('359', '50', 'os', '操作系统', 'varchar(50)', 'String', 'os', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('360', '50', 'status', '登录状态（0成功 1失败）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '7', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('361', '50', 'msg', '提示消息', 'varchar(255)', 'String', 'msg', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('362', '50', 'login_time', '访问时间', 'datetime', 'Date', 'loginTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2021-05-22 14:47:08', '', null);
INSERT INTO `gen_table_column` VALUES ('363', '51', 'houseparent_id', '宿管ID', 'int(10)', 'Integer', 'houseparentId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-05-22 16:28:22', '', '2021-05-22 16:28:57');
INSERT INTO `gen_table_column` VALUES ('364', '51', 'houseparent_name', '名称', 'varchar(20)', 'String', 'houseparentName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-05-22 16:28:22', '', '2021-05-22 16:28:57');
INSERT INTO `gen_table_column` VALUES ('365', '51', 'houseparent_describe', '描述', 'varchar(50)', 'String', 'houseparentDescribe', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-05-22 16:28:22', '', '2021-05-22 16:28:57');
INSERT INTO `gen_table_column` VALUES ('366', '51', 'dormitory_id', '宿舍楼ID', 'int(10)', 'Integer', 'dormitoryId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-05-22 16:28:22', '', '2021-05-22 16:28:57');

-- ----------------------------
-- Table structure for mall_dormitory
-- ----------------------------
DROP TABLE IF EXISTS `mall_dormitory`;
CREATE TABLE `mall_dormitory` (
  `dormitory_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `dormitory_name` varchar(20) DEFAULT NULL COMMENT '名称',
  `dormitory_describe` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`dormitory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='宿舍楼';

-- ----------------------------
-- Records of mall_dormitory
-- ----------------------------
INSERT INTO `mall_dormitory` VALUES ('3', '4坡1栋', '4坡1栋宿舍楼');
INSERT INTO `mall_dormitory` VALUES ('4', '四坡2栋', '四坡2栋宿舍楼');

-- ----------------------------
-- Table structure for mall_houseparent
-- ----------------------------
DROP TABLE IF EXISTS `mall_houseparent`;
CREATE TABLE `mall_houseparent` (
  `houseparent_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '宿管ID',
  `houseparent_name` varchar(20) DEFAULT NULL COMMENT '名称',
  `houseparent_describe` varchar(50) DEFAULT NULL COMMENT '描述',
  `dormitory_id` int(10) DEFAULT NULL COMMENT '宿舍楼ID',
  PRIMARY KEY (`houseparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宿管';

-- ----------------------------
-- Records of mall_houseparent
-- ----------------------------
INSERT INTO `mall_houseparent` VALUES ('1', '4坡1栋舍管1', '4坡1栋舍管', '3');

-- ----------------------------
-- Table structure for mall_room
-- ----------------------------
DROP TABLE IF EXISTS `mall_room`;
CREATE TABLE `mall_room` (
  `room_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `room_name` varchar(20) DEFAULT NULL COMMENT '宿舍名',
  `room_describe` varchar(50) DEFAULT NULL COMMENT '宿舍描述',
  `room_floor` int(10) DEFAULT NULL COMMENT '楼层',
  `student_num` int(10) DEFAULT NULL COMMENT '最高学生人数',
  `dormitory_id` int(10) DEFAULT NULL COMMENT '宿舍楼Id',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='宿舍房间';

-- ----------------------------
-- Records of mall_room
-- ----------------------------
INSERT INTO `mall_room` VALUES ('3', '101', '101宿舍', '1', '6', '4');
INSERT INTO `mall_room` VALUES ('4', '102', '102舍', '1', '6', '3');

-- ----------------------------
-- Table structure for mall_student
-- ----------------------------
DROP TABLE IF EXISTS `mall_student`;
CREATE TABLE `mall_student` (
  `student_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `student_name` varchar(20) DEFAULT NULL COMMENT '学生名字',
  `student_describe` varchar(50) DEFAULT NULL COMMENT '学生描述',
  `class_name` varchar(20) DEFAULT NULL COMMENT '班级',
  `room_id` int(10) DEFAULT NULL COMMENT '宿舍',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

-- ----------------------------
-- Records of mall_student
-- ----------------------------
INSERT INTO `mall_student` VALUES ('4', '啊实打实', '啊实打实', '啊实打实', '3');
INSERT INTO `mall_student` VALUES ('5', '阿大撒', '啊实打实', '阿松大', '3');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-8BLM6N81621673089335', '1621676767015', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1621673090000', '-1', '5', 'PAUSED', 'CRON', '1621673089000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1621673100000', '-1', '5', 'PAUSED', 'CRON', '1621673089000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1621673100000', '-1', '5', 'PAUSED', 'CRON', '1621673089000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-05-19 18:37:09', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-05-19 18:37:09', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-05-19 18:37:09', '', null, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-05-19 18:37:09', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-05-19 18:37:09', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-05-19 18:37:09', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-05-19 18:37:09', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-05-19 18:37:09', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-05-19 18:37:09', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-05-19 18:37:09', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-05-19 18:37:09', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-05-19 18:37:09', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-05-19 18:37:09', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 18:40:55');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 18:42:13');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 09:49:40');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 10:10:58');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 16:07:30');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-20 19:44:50');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-20 19:44:56');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 19:45:07');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:22:10');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-21 11:49:24');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:49:31');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:54:59');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 20:26:21');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-22 09:36:16');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 09:36:20');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 09:40:59');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 12:33:49');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 13:30:25');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 14:34:58');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 15:38:09');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2043 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '1', '0', 'M', '0', '0', '', 'system', 'admin', '2021-05-19 18:37:09', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2021-05-19 18:37:09', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2021-05-19 18:37:09', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '1', '0', 'M', '1', '0', '', 'guide', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-20 16:07:51', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-05-19 18:37:09', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-05-19 18:37:09', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-05-19 18:37:09', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-05-19 18:37:09', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-05-19 18:37:09', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-05-19 18:37:09', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-05-19 18:37:09', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-05-19 18:37:09', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2021-05-19 18:37:09', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-05-19 18:37:09', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-05-19 18:37:09', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-05-19 18:37:09', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-05-19 18:37:09', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-05-19 18:37:09', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-05-19 18:37:09', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-05-19 18:37:09', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 15:59:07', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-05-19 18:37:09', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-05-19 18:37:09', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '115', '1', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '115', '2', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '115', '3', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '115', '2', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '115', '4', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '115', '5', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-05-19 18:37:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '宿舍', '0', '10', 'housemaster', null, '1', '0', 'M', '0', '0', '', 'druid', 'admin', '2021-05-20 17:00:45', 'admin', '2021-05-22 16:11:40', '');
INSERT INTO `sys_menu` VALUES ('2019', '宿舍楼', '2000', '1', 'dormitory', 'mall/dormitory/index', '1', '0', 'C', '0', '0', 'mall:dormitory:list', '#', 'admin', '2021-05-20 17:38:17', '', null, '宿舍楼菜单');
INSERT INTO `sys_menu` VALUES ('2020', '宿舍楼查询', '2019', '1', '#', '', '1', '0', 'F', '0', '0', 'mall:dormitory:query', '#', 'admin', '2021-05-20 17:38:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '宿舍楼新增', '2019', '2', '#', '', '1', '0', 'F', '0', '0', 'mall:dormitory:add', '#', 'admin', '2021-05-20 17:38:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '宿舍楼修改', '2019', '3', '#', '', '1', '0', 'F', '0', '0', 'mall:dormitory:edit', '#', 'admin', '2021-05-20 17:38:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '宿舍楼删除', '2019', '4', '#', '', '1', '0', 'F', '0', '0', 'mall:dormitory:remove', '#', 'admin', '2021-05-20 17:38:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '宿舍楼导出', '2019', '5', '#', '', '1', '0', 'F', '0', '0', 'mall:dormitory:export', '#', 'admin', '2021-05-20 17:38:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '宿舍房间', '2000', '1', 'room', 'mall/room/index', '1', '0', 'C', '0', '0', 'mall:room:list', '#', 'admin', '2021-05-20 17:38:44', '', null, '宿舍房间菜单');
INSERT INTO `sys_menu` VALUES ('2026', '宿舍房间查询', '2025', '1', '#', '', '1', '0', 'F', '0', '0', 'mall:room:query', '#', 'admin', '2021-05-20 17:38:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '宿舍房间新增', '2025', '2', '#', '', '1', '0', 'F', '0', '0', 'mall:room:add', '#', 'admin', '2021-05-20 17:38:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '宿舍房间修改', '2025', '3', '#', '', '1', '0', 'F', '0', '0', 'mall:room:edit', '#', 'admin', '2021-05-20 17:38:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '宿舍房间删除', '2025', '4', '#', '', '1', '0', 'F', '0', '0', 'mall:room:remove', '#', 'admin', '2021-05-20 17:38:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '宿舍房间导出', '2025', '5', '#', '', '1', '0', 'F', '0', '0', 'mall:room:export', '#', 'admin', '2021-05-20 17:38:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '学生', '2000', '1', 'student', 'mall/student/index', '1', '0', 'C', '0', '0', 'mall:student:list', '#', 'admin', '2021-05-20 17:39:16', '', null, '学生菜单');
INSERT INTO `sys_menu` VALUES ('2032', '学生查询', '2031', '1', '#', '', '1', '0', 'F', '0', '0', 'mall:student:query', '#', 'admin', '2021-05-20 17:39:16', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '学生新增', '2031', '2', '#', '', '1', '0', 'F', '0', '0', 'mall:student:add', '#', 'admin', '2021-05-20 17:39:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '学生修改', '2031', '3', '#', '', '1', '0', 'F', '0', '0', 'mall:student:edit', '#', 'admin', '2021-05-20 17:39:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '学生删除', '2031', '4', '#', '', '1', '0', 'F', '0', '0', 'mall:student:remove', '#', 'admin', '2021-05-20 17:39:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '学生导出', '2031', '5', '#', '', '1', '0', 'F', '0', '0', 'mall:student:export', '#', 'admin', '2021-05-20 17:39:17', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '宿管', '2000', '1', 'houseparent', 'mall/houseparent/index', '1', '0', 'C', '0', '0', 'mall:houseparent:list', '#', 'admin', '2021-05-22 16:35:12', 'admin', '2021-05-22 16:36:22', '宿管菜单');
INSERT INTO `sys_menu` VALUES ('2038', '宿管查询', '2037', '1', '#', '', '1', '0', 'F', '0', '0', 'mall:houseparent:query', '#', 'admin', '2021-05-22 16:35:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '宿管新增', '2037', '2', '#', '', '1', '0', 'F', '0', '0', 'mall:houseparent:add', '#', 'admin', '2021-05-22 16:35:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '宿管修改', '2037', '3', '#', '', '1', '0', 'F', '0', '0', 'mall:houseparent:edit', '#', 'admin', '2021-05-22 16:35:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '宿管删除', '2037', '4', '#', '', '1', '0', 'F', '0', '0', 'mall:houseparent:remove', '#', 'admin', '2021-05-22 16:35:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '宿管导出', '2037', '5', '#', '', '1', '0', 'F', '0', '0', 'mall:houseparent:export', '#', 'admin', '2021-05-22 16:35:12', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-05-19 18:37:09', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-05-19 18:37:09', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1621420629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:07:51');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_type,sys_dict_data,sys_dept,sys_config,class', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:10:33');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 16:10:41');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_student,mall_room', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:27:15');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 16:27:23');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', null, '/tool/gen/synchDb/mall_student', '127.0.0.1', '内网IP', '{tableName=mall_student}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:27:43');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 16:27:45');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/6,7,8', '127.0.0.1', '内网IP', '{tableIds=6,7,8}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:28:32');
INSERT INTO `sys_oper_log` VALUES ('108', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student,mall_room,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 16:28:39');
INSERT INTO `sys_oper_log` VALUES ('109', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 16:28:44');
INSERT INTO `sys_oper_log` VALUES ('110', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 16:30:53');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"10\",\"menuName\":\"设施\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"housemaster\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:00:45');
INSERT INTO `sys_oper_log` VALUES ('112', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user123', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:11:39');
INSERT INTO `sys_oper_log` VALUES ('113', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621501899000,\"tableId\":12,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Uesrname\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"uesrname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621501899000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"uesrname\"}],\"businessName\":\"user123\",\"moduleName\":\"system\",\"className\":\"SysUser123\",\"tableName\":\"sys_user123\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"用户\",\"tree\":false,\"tableComment\":\"用户\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":12,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:12:00');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/12', '127.0.0.1', '内网IP', '{tableIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:13:33');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/11,10,9', '127.0.0.1', '内网IP', '{tableIds=11,10,9}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:15:28');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student,mall_room,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:15:40');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":13,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Describe\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"describe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"system\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":13,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:15:50');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:15:59');
INSERT INTO `sys_oper_log` VALUES ('119', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:16:10');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 17:16:28');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 17:18:13');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user123', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:22:35');
INSERT INTO `sys_oper_log` VALUES ('123', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sss_bbb', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:25:07');
INSERT INTO `sys_oper_log` VALUES ('124', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621502170000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621502170000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621502170000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16215', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:28:00');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621502159000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621502159000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621502159000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQ', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:28:19');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1621502150000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":13,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"updateTime\":1621502150000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Describe\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"describe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"updateTime\":1621502150000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{\"parentMenuId\":\"2000\"},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":13,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:28:34');
INSERT INTO `sys_oper_log` VALUES ('127', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 17:32:52');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2013', '127.0.0.1', '内网IP', '{menuId=2013}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2021-05-20 17:36:21');
INSERT INTO `sys_oper_log` VALUES ('129', '学生', '1', 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 17:51:29');
INSERT INTO `sys_oper_log` VALUES ('130', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-05-20 17:55:50');
INSERT INTO `sys_oper_log` VALUES ('131', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:00');
INSERT INTO `sys_oper_log` VALUES ('132', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:11');
INSERT INTO `sys_oper_log` VALUES ('133', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:16');
INSERT INTO `sys_oper_log` VALUES ('134', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-05-20 17:56:43');
INSERT INTO `sys_oper_log` VALUES ('135', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 17:57:35');
INSERT INTO `sys_oper_log` VALUES ('136', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:00:26');
INSERT INTO `sys_oper_log` VALUES ('137', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:01:42');
INSERT INTO `sys_oper_log` VALUES ('138', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:01:47');
INSERT INTO `sys_oper_log` VALUES ('139', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dormitory_id\' in \'class com.ruoyi.system.domain.MallDormitory\'', '2021-05-20 18:03:16');
INSERT INTO `sys_oper_log` VALUES ('140', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', 'Invalid bound statement (not found): com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory', '2021-05-20 18:04:57');
INSERT INTO `sys_oper_log` VALUES ('141', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', 'Invalid bound statement (not found): com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory', '2021-05-20 18:05:21');
INSERT INTO `sys_oper_log` VALUES ('142', '学生', '1', 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:08:19');
INSERT INTO `sys_oper_log` VALUES ('143', '宿舍房间', '1', 'com.ruoyi.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":123,\"roomDescribe\":\"大萨达是\",\"studentNum\":12,\"roomId\":1,\"roomName\":\"阿打算\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:08:41');
INSERT INTO `sys_oper_log` VALUES ('144', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:14:15');
INSERT INTO `sys_oper_log` VALUES ('145', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:14:23');
INSERT INTO `sys_oper_log` VALUES ('146', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:17:04');
INSERT INTO `sys_oper_log` VALUES ('147', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:18:01');
INSERT INTO `sys_oper_log` VALUES ('148', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:19:04');
INSERT INTO `sys_oper_log` VALUES ('149', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:22:18');
INSERT INTO `sys_oper_log` VALUES ('150', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:22:23');
INSERT INTO `sys_oper_log` VALUES ('151', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"阿萨德\",\"params\":{}}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3', '2021-05-20 18:26:42');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/13', '127.0.0.1', '内网IP', '{tableIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:28:36');
INSERT INTO `sys_oper_log` VALUES ('153', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:28:41');
INSERT INTO `sys_oper_log` VALUES ('154', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":98,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621506521000,\"tableId\":18,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"DormitoryName\",\"usableColumn\":false,\"columnId\":99,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_name\"},{\"capJavaField\":\"DormitoryDescribe\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":18,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:29:00');
INSERT INTO `sys_oper_log` VALUES ('155', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-20 18:29:11');
INSERT INTO `sys_oper_log` VALUES ('156', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryId\":1,\"dormitoryDescribe\":\"阿达\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-20 18:35:26');
INSERT INTO `sys_oper_log` VALUES ('157', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/16,17', '127.0.0.1', '内网IP', '{tableIds=16,17}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 11:22:43');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-21 11:23:15');
INSERT INTO `sys_oper_log` VALUES ('159', '宿舍楼', '1', 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"asad\",\"dormitoryId\":2,\"dormitoryDescribe\":\"asdas\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 11:55:30');
INSERT INTO `sys_oper_log` VALUES ('160', '宿舍房间', '1', 'com.ruoyi.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"wqeqwe\",\"studentNum\":213,\"roomId\":2,\"roomName\":\"asdasd\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 11:55:41');
INSERT INTO `sys_oper_log` VALUES ('161', '学生', '1', 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":3,\"studentName\":\"123qweqw\",\"className\":\"11\",\"studentDescribe\":\"eqweqw\",\"params\":{},\"roomId\":123}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 11:55:56');
INSERT INTO `sys_oper_log` VALUES ('162', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621502880000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621502880000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621502880000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16215', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 20:29:28');
INSERT INTO `sys_oper_log` VALUES ('163', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621502898000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621502898000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621502898000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQ', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 20:29:40');
INSERT INTO `sys_oper_log` VALUES ('164', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":98,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"Id\",\"updateTime\":1621506540000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621506521000,\"tableId\":18,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"DormitoryName\",\"usableColumn\":false,\"columnId\":99,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"updateTime\":1621506540000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_name\"},{\"capJavaField\":\"DormitoryDescribe\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"updateTime\":1621506540000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.bige.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":18,\"genPat', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 20:29:51');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621600168000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621600168000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621600168000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16216', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-21 20:30:52');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '8', 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-21 20:31:30');
INSERT INTO `sys_oper_log` VALUES ('167', '宿舍楼', '2', 'com.bige.web.controller.mall.MallDormitoryController.edit()', 'PUT', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"是第三代\",\"dormitoryId\":1,\"dormitoryDescribe\":\"阿达\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 09:44:12');
INSERT INTO `sys_oper_log` VALUES ('168', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"studentNum\":123,\"roomName\":\"请问\"}', 'null', '1', '', '2021-05-22 09:53:31');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/14', '127.0.0.1', '内网IP', '{tableIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 09:56:28');
INSERT INTO `sys_oper_log` VALUES ('170', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_room', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 09:56:33');
INSERT INTO `sys_oper_log` VALUES ('171', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 09:56:50');
INSERT INTO `sys_oper_log` VALUES ('172', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621648610000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621648610000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621648610000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 09:57:24');
INSERT INTO `sys_oper_log` VALUES ('173', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621648644000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621648644000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621648644000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 10:08:40');
INSERT INTO `sys_oper_log` VALUES ('174', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621600180000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621600180000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621600180000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQu', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 10:10:30');
INSERT INTO `sys_oper_log` VALUES ('175', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"撒大声地\",\"roomName\":\"驱蚊器\",\"studentNum\":12312}', 'null', '1', '', '2021-05-22 10:24:56');
INSERT INTO `sys_oper_log` VALUES ('176', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"撒大声地\",\"roomName\":\"驱蚊器\",\"studentNum\":12312}', 'null', '1', '', '2021-05-22 10:26:54');
INSERT INTO `sys_oper_log` VALUES ('177', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2021-05-22 10:29:32');
INSERT INTO `sys_oper_log` VALUES ('178', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2021-05-22 10:31:26');
INSERT INTO `sys_oper_log` VALUES ('179', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2021-05-22 10:31:42');
INSERT INTO `sys_oper_log` VALUES ('180', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2021-05-22 10:32:22');
INSERT INTO `sys_oper_log` VALUES ('181', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2021-05-22 10:33:10');
INSERT INTO `sys_oper_log` VALUES ('182', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', '1', '没有这一栋宿舍楼！', '2021-05-22 10:41:17');
INSERT INTO `sys_oper_log` VALUES ('183', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', '1', '没有这一栋宿舍楼！', '2021-05-22 10:41:25');
INSERT INTO `sys_oper_log` VALUES ('184', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', '1', '没有这一栋宿舍楼！', '2021-05-22 10:41:30');
INSERT INTO `sys_oper_log` VALUES ('185', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', '1', '没有这一栋宿舍楼！', '2021-05-22 10:43:50');
INSERT INTO `sys_oper_log` VALUES ('186', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":12}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:57:02');
INSERT INTO `sys_oper_log` VALUES ('187', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":12}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:57:10');
INSERT INTO `sys_oper_log` VALUES ('188', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 10:57:23');
INSERT INTO `sys_oper_log` VALUES ('189', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:28');
INSERT INTO `sys_oper_log` VALUES ('190', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:30');
INSERT INTO `sys_oper_log` VALUES ('191', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:46');
INSERT INTO `sys_oper_log` VALUES ('192', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:48');
INSERT INTO `sys_oper_log` VALUES ('193', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:48');
INSERT INTO `sys_oper_log` VALUES ('194', '学生', '2', 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', '1', '没有这一间宿舍！', '2021-05-22 10:58:58');
INSERT INTO `sys_oper_log` VALUES ('195', '学生', '3', 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', '1', 'admin', null, '/mall/student/3', '127.0.0.1', '内网IP', '{studentIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:19');
INSERT INTO `sys_oper_log` VALUES ('196', '学生', '3', 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', '1', 'admin', null, '/mall/student/2', '127.0.0.1', '内网IP', '{studentIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:21');
INSERT INTO `sys_oper_log` VALUES ('197', '学生', '3', 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', '1', 'admin', null, '/mall/student/1', '127.0.0.1', '内网IP', '{studentIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:24');
INSERT INTO `sys_oper_log` VALUES ('198', '宿舍房间', '3', 'com.bige.web.controller.mall.MallRoomController.remove()', 'DELETE', '1', 'admin', null, '/mall/room/2', '127.0.0.1', '内网IP', '{roomIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:27');
INSERT INTO `sys_oper_log` VALUES ('199', '宿舍房间', '3', 'com.bige.web.controller.mall.MallRoomController.remove()', 'DELETE', '1', 'admin', null, '/mall/room/1', '127.0.0.1', '内网IP', '{roomIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:30');
INSERT INTO `sys_oper_log` VALUES ('200', '宿舍楼', '3', 'com.bige.web.controller.mall.MallDormitoryController.remove()', 'DELETE', '1', 'admin', null, '/mall/dormitory/2', '127.0.0.1', '内网IP', '{dormitoryIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:34');
INSERT INTO `sys_oper_log` VALUES ('201', '宿舍楼', '3', 'com.bige.web.controller.mall.MallDormitoryController.remove()', 'DELETE', '1', 'admin', null, '/mall/dormitory/1', '127.0.0.1', '内网IP', '{dormitoryIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:04:35');
INSERT INTO `sys_oper_log` VALUES ('202', '宿舍楼', '1', 'com.bige.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"4坡1栋\",\"dormitoryId\":3,\"dormitoryDescribe\":\"4坡1栋宿舍楼\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:05:04');
INSERT INTO `sys_oper_log` VALUES ('203', '宿舍楼', '1', 'com.bige.web.controller.mall.MallDormitoryController.add()', 'POST', '1', 'admin', null, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"四坡2栋\",\"dormitoryId\":4,\"dormitoryDescribe\":\"四坡2栋宿舍楼\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:05:26');
INSERT INTO `sys_oper_log` VALUES ('204', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":1,\"roomDescribe\":\"101宿舍\",\"roomId\":3,\"roomName\":\"101\",\"dormitoryId\":4,\"studentNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:18:25');
INSERT INTO `sys_oper_log` VALUES ('205', '宿舍房间', '1', 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', '1', 'admin', null, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":1,\"roomDescribe\":\"102舍\",\"roomId\":4,\"roomName\":\"102\",\"dormitoryId\":3,\"studentNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:19:11');
INSERT INTO `sys_oper_log` VALUES ('206', '学生', '1', 'com.bige.web.controller.mall.MallStudentController.add()', 'POST', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":3,\"studentId\":4,\"studentName\":\"啊实打实\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:29:59');
INSERT INTO `sys_oper_log` VALUES ('207', '学生', '1', 'com.bige.web.controller.mall.MallStudentController.add()', 'POST', '1', 'admin', null, '/mall/student', '127.0.0.1', '内网IP', '{\"className\":\"阿松大\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":3,\"studentId\":5,\"studentName\":\"阿大撒\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 11:30:12');
INSERT INTO `sys_oper_log` VALUES ('208', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/19', '127.0.0.1', '内网IP', '{tableIds=19}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:40:43');
INSERT INTO `sys_oper_log` VALUES ('209', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/18', '127.0.0.1', '内网IP', '{tableIds=18}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:40:45');
INSERT INTO `sys_oper_log` VALUES ('210', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/15', '127.0.0.1', '内网IP', '{tableIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:40:47');
INSERT INTO `sys_oper_log` VALUES ('211', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_room,mall_student', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:41:05');
INSERT INTO `sys_oper_log` VALUES ('212', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:42:15');
INSERT INTO `sys_oper_log` VALUES ('213', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job_log,sys_logininfor', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:43:55');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_menu,sys_notice', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:46:11');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/4', '127.0.0.1', '内网IP', '{tableIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:48:20');
INSERT INTO `sys_oper_log` VALUES ('216', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:48:21');
INSERT INTO `sys_oper_log` VALUES ('217', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/26', '127.0.0.1', '内网IP', '{tableIds=26}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:48:23');
INSERT INTO `sys_oper_log` VALUES ('218', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/2,3,5,20,21,22,23,24,25,27', '127.0.0.1', '内网IP', '{tableIds=2,3,5,20,21,22,23,24,25,27}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:48:27');
INSERT INTO `sys_oper_log` VALUES ('219', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:48:40');
INSERT INTO `sys_oper_log` VALUES ('220', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'class,mall_student,mall_room', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:49:03');
INSERT INTO `sys_oper_log` VALUES ('221', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_config,sys_dept', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:50:33');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_data', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:53:23');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_type', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:58:23');
INSERT INTO `sys_oper_log` VALUES ('224', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 13:58:37');
INSERT INTO `sys_oper_log` VALUES ('225', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/28,29,30,31,32,33,34,35,36', '127.0.0.1', '内网IP', '{tableIds=28,29,30,31,32,33,34,35,36}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:35:58');
INSERT INTO `sys_oper_log` VALUES ('226', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:36:25');
INSERT INTO `sys_oper_log` VALUES ('227', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'class,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:38:07');
INSERT INTO `sys_oper_log` VALUES ('228', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/37,38,39', '127.0.0.1', '内网IP', '{tableIds=37,38,39}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:39:12');
INSERT INTO `sys_oper_log` VALUES ('229', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:39:20');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '3', 'com.bige.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/40', '127.0.0.1', '内网IP', '{tableIds=40}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:47:04');
INSERT INTO `sys_oper_log` VALUES ('231', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_room,mall_student,sys_config,sys_dept,sys_dict_data,sys_dict_type,sys_job,sys_job_log,sys_logininfor', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 14:47:08');
INSERT INTO `sys_oper_log` VALUES ('232', '菜单管理', '2', 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"swagger\",\"orderNum\":\"3\",\"menuName\":\"系统接口\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"swagger\",\"component\":\"tool/swagger/index\",\"children\":[],\"createTime\":1621420629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":116,\"menuType\":\"C\",\"perms\":\"tool:swagger:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 15:59:07');
INSERT INTO `sys_oper_log` VALUES ('233', '菜单管理', '2', 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"10\",\"menuName\":\"宿舍\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"housemaster\",\"children\":[],\"createTime\":1621501245000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:11:40');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '6', 'com.bige.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_houseparent', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:28:22');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '2', 'com.bige.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"HouseparentId\",\"usableColumn\":false,\"columnId\":363,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"宿管ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621672102000,\"tableId\":51,\"pk\":true,\"columnName\":\"houseparent_id\"},{\"capJavaField\":\"HouseparentName\",\"usableColumn\":false,\"columnId\":364,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621672102000,\"isEdit\":\"1\",\"tableId\":51,\"pk\":false,\"columnName\":\"houseparent_name\"},{\"capJavaField\":\"HouseparentDescribe\",\"usableColumn\":false,\"columnId\":365,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621672102000,\"isEdit\":\"1\",\"tableId\":51,\"pk\":false,\"columnName\":\"houseparent_describe\"},{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":366,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍楼ID\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:28:57');
INSERT INTO `sys_oper_log` VALUES ('236', '代码生成', '8', 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2021-05-22 16:30:43');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '2', 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"宿管\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"houseparent\",\"component\":\"mall/houseparent/index\",\"children\":[],\"createTime\":1621672512000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"mall:houseparent:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:36:22');
INSERT INTO `sys_oper_log` VALUES ('238', '宿管', '1', 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', '1', 'admin', null, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', '1', '該宿舍樓不存在', '2021-05-22 16:45:11');
INSERT INTO `sys_oper_log` VALUES ('239', '宿管', '1', 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', '1', 'admin', null, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', '1', '該宿舍樓不存在', '2021-05-22 16:45:17');
INSERT INTO `sys_oper_log` VALUES ('240', '宿管', '1', 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', '1', 'admin', null, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', '1', '該宿舍樓不存在', '2021-05-22 16:46:06');
INSERT INTO `sys_oper_log` VALUES ('241', '岗位管理', '3', 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/4', '127.0.0.1', '内网IP', '{postIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:47:50');
INSERT INTO `sys_oper_log` VALUES ('242', '岗位管理', '3', 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/3', '127.0.0.1', '内网IP', '{postIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:47:52');
INSERT INTO `sys_oper_log` VALUES ('243', '岗位管理', '3', 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/2', '127.0.0.1', '内网IP', '{postIds=2}', 'null', '1', '项目经理已分配,不能删除', '2021-05-22 16:47:55');
INSERT INTO `sys_oper_log` VALUES ('244', '岗位管理', '3', 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/1', '127.0.0.1', '内网IP', '{postIds=1}', 'null', '1', '董事长已分配,不能删除', '2021-05-22 16:48:02');
INSERT INTO `sys_oper_log` VALUES ('245', '岗位管理', '2', 'com.bige.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1621420629000,\"updateBy\":\"admin\",\"postName\":\"校长\",\"postCode\":\"ceo\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:48:17');
INSERT INTO `sys_oper_log` VALUES ('246', '岗位管理', '2', 'com.bige.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1621420629000,\"updateBy\":\"admin\",\"postName\":\"教物处\",\"postCode\":\"se\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:48:38');
INSERT INTO `sys_oper_log` VALUES ('247', '宿管', '1', 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', '1', 'admin', null, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentId\":1,\"houseparentDescribe\":\"4坡1栋舍管\",\"dormitoryId\":3,\"houseparentName\":\"4坡1栋舍管1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2021-05-22 16:52:36');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '校长', '1', '0', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 16:48:17', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '教物处', '2', '0', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 16:48:38', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2021-05-19 18:37:09', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2021-05-19 18:37:09', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-05-19 18:37:09', 'admin', '2021-05-19 18:37:09', '', null, '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-05-19 18:37:09', 'admin', '2021-05-19 18:37:09', '', null, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
