/*
 Navicat Premium Data Transfer

 Source Server         : bige
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : bige-store

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 13/06/2021 15:09:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (57, 'mall_banner', '轮播图', NULL, NULL, 'MallBanner', 'crud', 'com.bige.system', 'mall', 'banner', '轮播图', 'bige', '0', '/', '{\"parentMenuId\":2027}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25', NULL);
INSERT INTO `gen_table` VALUES (58, 'mall_goods', '商品sku', NULL, NULL, 'MallGoods', 'crud', 'com.bige.system', 'mall', 'goods', '商品sku', 'bige', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46', NULL);
INSERT INTO `gen_table` VALUES (59, 'mall_order', '商品订单', NULL, NULL, 'MallOrder', 'crud', 'com.bige.system', 'mall', 'order', '商品订单', 'bige', '0', '/', '{\"parentMenuId\":2026}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19', NULL);
INSERT INTO `gen_table` VALUES (60, 'mall_order_item', '订单子单', NULL, NULL, 'MallOrderItem', 'crud', 'com.bige.system', 'mall', 'item', '订单子单', 'bige', '0', '/', '{\"parentMenuId\":2026}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35', NULL);
INSERT INTO `gen_table` VALUES (61, 'mall_product', '商品', NULL, NULL, 'MallProduct', 'crud', 'com.bige.system', 'mall', 'product', '商品', 'bige', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58', NULL);
INSERT INTO `gen_table` VALUES (62, 'mall_product_imgs', '商品图', NULL, NULL, 'MallProductImgs', 'crud', 'com.bige.system', 'mall', 'imgs', '商品图', 'bige', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:18', NULL);
INSERT INTO `gen_table` VALUES (63, 'mall_product_standard', '商品规格', NULL, NULL, 'MallProductStandard', 'crud', 'com.bige.system', 'mall', 'standard', '商品规格', 'bige', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:41', NULL);
INSERT INTO `gen_table` VALUES (64, 'mall_standard', '预设规格', NULL, NULL, 'MallStandard', 'crud', 'com.bige.system', 'mall', 'standard', '预设规格', 'bige', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 398 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (405, '57', 'banner_id', '轮播Id', 'int', 'Long', 'bannerId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (406, '57', 'banner_name', '名称', 'varchar(40)', 'String', 'bannerName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (407, '57', 'banner_img', '轮播图', 'varchar(255)', 'String', 'bannerImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (408, '57', 'link_url', '跳转链接', 'varchar(100)', 'String', 'linkUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (409, '57', 'type', '跳转类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (410, '57', 'sort', '排序', 'int', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (411, '57', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (412, '57', 'update_by', '创建者', 'varchar(20)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (413, '57', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:25');
INSERT INTO `gen_table_column` VALUES (414, '58', 'goods_id', 'skuId', 'int', 'Long', 'goodsId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (415, '58', 'product_id', '商品Id', 'int', 'Long', 'productId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (416, '58', 'goods_name', '商品规格名', 'varchar(80)', 'String', 'goodsName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (417, '58', 'goods_img', '规格图', 'varchar(255)', 'String', 'goodsImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (418, '58', 'sale_price', '销售价', 'decimal(10,2)', 'BigDecimal', 'salePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (419, '58', 'cost_price', '成本价', 'decimal(10,2)', 'BigDecimal', 'costPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (420, '58', 'line_price', '划线价', 'decimal(10,2)', 'BigDecimal', 'linePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (421, '58', 'sale_num', '规格销量', 'int', 'Long', 'saleNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (422, '58', 'total_num', '总库存', 'int', 'Long', 'totalNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (423, '58', 'stock_locked', '库存锁定', 'int', 'Long', 'stockLocked', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (424, '58', 'weight', '重量', 'double(8,2)', 'BigDecimal', 'weight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (425, '58', 'volum', '体积', 'double(8,2)', 'BigDecimal', 'volum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (426, '58', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (427, '58', 'create_by', '创建者', 'varchar(20)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (428, '58', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:41:46');
INSERT INTO `gen_table_column` VALUES (429, '59', 'order_id', '订单Id', 'int', 'Long', 'orderId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (430, '59', 'order_name', '订单名', 'varchar(20)', 'String', 'orderName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (431, '59', 'order_no', '订单编号', 'varchar(30)', 'String', 'orderNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (432, '59', 'pay_order_no', '支付订单号', 'varchar(30)', 'String', 'payOrderNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (433, '59', 'customer_id', '客户', 'int', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (434, '59', 'order_total_money', '订单总金额', 'decimal(10,2)', 'BigDecimal', 'orderTotalMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (435, '59', 'shop_money', '购物金', 'decimal(10,2)', 'BigDecimal', 'shopMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (436, '59', 'pre_money', '优惠金', 'decimal(10,2)', 'BigDecimal', 'preMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (437, '59', 'pay_product_money', '商品应付金额', 'decimal(10,2)', 'BigDecimal', 'payProductMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (438, '59', 'coupon_money', '优惠券金', 'decimal(10,2)', 'BigDecimal', 'couponMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (439, '59', 'pay_money', '实付金额', 'decimal(10,2)', 'BigDecimal', 'payMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (440, '59', 'buyer_name', '收货人', 'varchar(40)', 'String', 'buyerName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (441, '59', 'buyer_phone', '联系电话', 'varchar(20)', 'String', 'buyerPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (442, '59', 'buyer_address', '收货地址', 'varchar(150)', 'String', 'buyerAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (443, '59', 'status', '状态（ 0:待付款 1：待发货，2：待收货，3：已完成，4，退货/售后，5：用户取消支付 6：超时取消支付 )', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 15, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (444, '59', 'ac_status', '活动状态（0：普通单，1：年会商品订单）', 'char(1)', 'String', 'acStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 16, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (445, '59', 'pay_status', '支付状态：0:未支付，1：已支付', 'char(1)', 'String', 'payStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 17, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (446, '59', 'postage_price', '邮费', 'decimal(10,2)', 'BigDecimal', 'postagePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (447, '59', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (448, '59', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:19');
INSERT INTO `gen_table_column` VALUES (449, '60', 'order_item_id', '订单子单ID', 'int', 'Long', 'orderItemId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (450, '60', 'order_item_no', '订单子单编号', 'varchar(30)', 'String', 'orderItemNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (451, '60', 'order_id', '订单ID', 'int', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (452, '60', 'pay_order_no', '支付单号', 'varchar(30)', 'String', 'payOrderNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (453, '60', 'customer_id', '客户', 'int', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (454, '60', 'product_id', '商品', 'int', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (455, '60', 'goods_id', '规格Id', 'int', 'Long', 'goodsId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (456, '60', 'first_category_id', '一级品类', 'int', 'Long', 'firstCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (457, '60', 'second_category_id', '二级品类', 'int', 'Long', 'secondCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (458, '60', 'third_category_id', '三级品类', 'int', 'Long', 'thirdCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (459, '60', 'product_name', '商品名称', 'varchar(80)', 'String', 'productName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (460, '60', 'product_img', '商品图', 'varchar(255)', 'String', 'productImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (461, '60', 'cost_price', '成本价', 'decimal(10,2)', 'BigDecimal', 'costPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (462, '60', 'sale_price', '售价', 'decimal(10,2)', 'BigDecimal', 'salePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (463, '60', 'buy_num', '购买数量', 'int', 'Long', 'buyNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (464, '60', 'order_total_money', '订单总结', 'decimal(10,2)', 'BigDecimal', 'orderTotalMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (465, '60', 'pre_money', '优惠金额', 'decimal(10,2)', 'BigDecimal', 'preMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (466, '60', 'pay_product_money', '商品总价', 'decimal(10,2)', 'BigDecimal', 'payProductMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (467, '60', 'coupon_money', '优惠券金', 'decimal(10,2)', 'BigDecimal', 'couponMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (468, '60', 'pay_money', '实付金额', 'decimal(10,2)', 'BigDecimal', 'payMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (469, '60', 'shop_money', '购物金', 'decimal(10,2)', 'BigDecimal', 'shopMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (470, '60', 'goods_attr', '商品规格', 'text', 'String', 'goodsAttr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 22, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (471, '60', 'sku_code', '规格编码', 'varchar(30)', 'String', 'skuCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (472, '60', 'comment_status', '评论状态', 'char(1)', 'String', 'commentStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 24, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (473, '60', 'status', '状态（0：待付款 1未发货 2已发货 3已收货 4退货售后 ）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 25, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (474, '60', 'delivery_type', '发货方式 ( 0普通快递 1无需物流）', 'char(1)', 'String', 'deliveryType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 26, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (475, '60', 'postage_price', '邮费', 'decimal(10,2)', 'BigDecimal', 'postagePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (476, '60', 'invoice_type', '发票类型（0：可开，1：不可开）', 'char(1)', 'String', 'invoiceType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 28, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (477, '60', 'invoice_status', '开票状态（0未开票 1：申请中，2已开票）', 'char(1)', 'String', 'invoiceStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 29, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (478, '60', 'buyer_msg', '买家留言', 'varchar(100)', 'String', 'buyerMsg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (479, '60', 'supplier_id', '供应商', 'int', 'Long', 'supplierId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (480, '60', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 32, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (481, '60', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 33, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:35');
INSERT INTO `gen_table_column` VALUES (482, '61', 'product_id', '商品Id', 'int', 'Long', 'productId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (483, '61', 'product_name', '商品名', 'varchar(80)', 'String', 'productName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (484, '61', 'first_img', '商品首图', 'varchar(40)', 'String', 'firstImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (485, '61', 'brand_id', '品牌', 'int', 'Long', 'brandId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (486, '61', 'label_id', '标签', 'int', 'Long', 'labelId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (487, '61', 'template_id', '邮费模板', 'int', 'Long', 'templateId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (488, '61', 'first_category_id', '一级品类', 'int', 'Long', 'firstCategoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (489, '61', 'second_category_id', '二级品类', 'int', 'Long', 'secondCategoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (490, '61', 'third_category_id', '三级品类', 'int', 'Long', 'thirdCategoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (491, '61', 'supplier_id', '供应商', 'int', 'Long', 'supplierId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (492, '61', 'sale_num', '真实销量', 'int', 'Long', 'saleNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (493, '61', 'virtual_num', '虚拟销量', 'int', 'Long', 'virtualNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (494, '61', 'product_video', '视频链接', 'varchar(255)', 'String', 'productVideo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (495, '61', 'total_num', '库存', 'int', 'Long', 'totalNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (496, '61', 'sale_price', '商品价格', 'decimal(10,2)', 'BigDecimal', 'salePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (497, '61', 'line_price', '划线价', 'decimal(10,2)', 'BigDecimal', 'linePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (498, '61', 'origin', '发货地', 'varchar(100)', 'String', 'origin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (499, '61', 'postage', '邮费类型 0:包邮，1：自费', 'char(1)', 'String', 'postage', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (500, '61', 'status', '状态 0上架 1下架', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 19, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (501, '61', 'audit_status', '审核状态 0审核中 1通过 2不通过', 'char(1)', 'String', 'auditStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 20, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (502, '61', 'invoice_status', '发票  0：可开，1：不可开', 'char(1)', 'String', 'invoiceStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 21, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (503, '61', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 22, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (504, '61', 'create_by', '创建者', 'varchar(40)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 23, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (505, '61', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 24, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (506, '61', 'details', '详情', 'text', 'String', 'details', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 25, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:42:58');
INSERT INTO `gen_table_column` VALUES (507, '62', 'product_img_id', '商品图Id', 'int', 'Long', 'productImgId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:18');
INSERT INTO `gen_table_column` VALUES (508, '62', 'product_id', '商品', 'int', 'Long', 'productId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:18');
INSERT INTO `gen_table_column` VALUES (509, '62', 'product_img', '商品图', 'varchar(255)', 'String', 'productImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:18');
INSERT INTO `gen_table_column` VALUES (510, '63', 'product_id', '商品Id', 'int', 'Long', 'productId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:41');
INSERT INTO `gen_table_column` VALUES (511, '63', 'standard_name', '规格名', 'varchar(40)', 'String', 'standardName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:41');
INSERT INTO `gen_table_column` VALUES (512, '63', 'standard_value', '规格值', 'text', 'String', 'standardValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:41');
INSERT INTO `gen_table_column` VALUES (513, '63', 'sort', '排序', 'int', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:41');
INSERT INTO `gen_table_column` VALUES (514, '64', 'standard_id', '规格Id', 'int', 'Long', 'standardId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (515, '64', 'first_category_id', '一级品类', 'int', 'Long', 'firstCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (516, '64', 'second_category', '二级品类', 'int', 'Long', 'secondCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (517, '64', 'third_category_id', '三级品类', 'int', 'Long', 'thirdCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (518, '64', 'standard_name', '规格名', 'varchar(20)', 'String', 'standardName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (519, '64', 'standard_', '规格值', 'text', 'String', 'standard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (520, '64', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (521, '64', 'create_by', '创建者', 'varchar(20)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');
INSERT INTO `gen_table_column` VALUES (522, '64', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-06-13 01:32:29', '', '2021-06-13 01:43:59');

-- ----------------------------
-- Table structure for mall_banner
-- ----------------------------
DROP TABLE IF EXISTS `mall_banner`;
CREATE TABLE `mall_banner`  (
  `banner_id` int NOT NULL COMMENT '轮播Id',
  `banner_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `banner_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '轮播图',
  `link_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转链接',
  `type` int NULL DEFAULT NULL COMMENT '跳转类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_banner
-- ----------------------------

-- ----------------------------
-- Table structure for mall_brand
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand`;
CREATE TABLE `mall_brand`  (
  `brand_id` bigint NOT NULL AUTO_INCREMENT COMMENT '品牌ID',
  `brand_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌名',
  `brand_img` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌logo图片',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（ 0启用 1停用）',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `first_letter` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检索首字母',
  `descript` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '品牌介绍',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_brand
-- ----------------------------
INSERT INTO `mall_brand` VALUES (1, '好牌子', 'https://bigeyun.oss-cn-shenzhen.aliyuncs.com/2021-06-12/eb800b78-f426-493f-886a-31e863098b11_分02秒.png', '1', 12, 'a', 'asd', '', NULL, NULL, '2021-06-12 15:51:26');
INSERT INTO `mall_brand` VALUES (2, '阿萨大', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, '2021-06-12 16:19:12');

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '品类ID',
  `category_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品类名',
  `category_img` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品类图片',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父级ID',
  `category_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '类型（ 1一级 2二级 3三级）',
  `sort` int NULL DEFAULT 100 COMMENT '排序',
  `charge_rate` double(5, 2) NULL DEFAULT 0.00 COMMENT '佣金比例',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（ 0启用 1停用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `INDEX_PARENT`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1158 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '品类信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category
-- ----------------------------

-- ----------------------------
-- Table structure for mall_customer
-- ----------------------------
DROP TABLE IF EXISTS `mall_customer`;
CREATE TABLE `mall_customer`  (
  `customer_id` int NOT NULL COMMENT '用户Id',
  `openid_id` int NULL DEFAULT NULL COMMENT '微信唯一标识',
  `portrait_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `nick_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别（0：未知，1：男，2女）',
  `customer_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户类型（0：普通用户，1：会员用户）',
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（0：启用，1：禁用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前端客户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_customer
-- ----------------------------

-- ----------------------------
-- Table structure for mall_customer_shop
-- ----------------------------
DROP TABLE IF EXISTS `mall_customer_shop`;
CREATE TABLE `mall_customer_shop`  (
  `shop_id` int NOT NULL COMMENT '购物金Id',
  `customer_id` int NULL DEFAULT NULL COMMENT ' 用户',
  `shop_no` int NULL DEFAULT NULL COMMENT '购物卡编号',
  `shop_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '面值',
  `shop_balance` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `start_use_time` datetime NULL DEFAULT NULL COMMENT '开始使用时间',
  `end_use_time` datetime NULL DEFAULT NULL COMMENT '过期时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态 ( 1正常 2已过期 3已用完 ）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户购物金' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_customer_shop
-- ----------------------------

-- ----------------------------
-- Table structure for mall_goods
-- ----------------------------
DROP TABLE IF EXISTS `mall_goods`;
CREATE TABLE `mall_goods`  (
  `goods_id` int NOT NULL COMMENT 'skuId',
  `product_id` int NOT NULL COMMENT '商品Id',
  `goods_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格名',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格图',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售价',
  `cost_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本价',
  `line_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '划线价',
  `sale_num` int NULL DEFAULT NULL COMMENT '规格销量',
  `total_num` int NULL DEFAULT NULL COMMENT '总库存',
  `stock_locked` int NULL DEFAULT NULL COMMENT '库存锁定',
  `weight` double(8, 2) NULL DEFAULT NULL COMMENT '重量',
  `volum` double(8, 2) NULL DEFAULT NULL COMMENT '体积',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品sku' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_goods
-- ----------------------------

-- ----------------------------
-- Table structure for mall_label
-- ----------------------------
DROP TABLE IF EXISTS `mall_label`;
CREATE TABLE `mall_label`  (
  `label_id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `label_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名',
  `status` tinyint NULL DEFAULT 1 COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '商品标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_label
-- ----------------------------
INSERT INTO `mall_label` VALUES (1, '撒旦', 1, '', '2021-06-12 16:41:37', NULL, '2021-06-12 16:05:26');

-- ----------------------------
-- Table structure for mall_order
-- ----------------------------
DROP TABLE IF EXISTS `mall_order`;
CREATE TABLE `mall_order`  (
  `order_id` int NOT NULL COMMENT '订单Id',
  `order_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单名',
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `pay_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付订单号',
  `customer_id` int NULL DEFAULT NULL COMMENT '客户',
  `order_total_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总金额',
  `shop_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '购物金',
  `pre_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠金',
  `pay_product_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品应付金额',
  `coupon_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠券金',
  `pay_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付金额',
  `buyer_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `buyer_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `buyer_address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（ 0:待付款 1：待发货，2：待收货，3：已完成，4，退货/售后，5：用户取消支付 6：超时取消支付 )',
  `ac_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动状态（0：普通单，1：年会商品订单）',
  `pay_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付状态：0:未支付，1：已支付',
  `postage_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '邮费',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_order
-- ----------------------------

-- ----------------------------
-- Table structure for mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_item`;
CREATE TABLE `mall_order_item`  (
  `order_item_id` int NOT NULL COMMENT '订单子单ID',
  `order_item_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单子单编号',
  `order_id` int NULL DEFAULT NULL COMMENT '订单ID',
  `pay_order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付单号',
  `customer_id` int NULL DEFAULT NULL COMMENT '客户',
  `product_id` int NULL DEFAULT NULL COMMENT '商品',
  `goods_id` int NULL DEFAULT NULL COMMENT '规格Id',
  `first_category_id` int NULL DEFAULT NULL COMMENT '一级品类',
  `second_category_id` int NULL DEFAULT NULL COMMENT '二级品类',
  `third_category_id` int NULL DEFAULT NULL COMMENT '三级品类',
  `product_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图',
  `cost_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本价',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '售价',
  `buy_num` int NULL DEFAULT NULL COMMENT '购买数量',
  `order_total_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总结',
  `pre_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `pay_product_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品总价',
  `coupon_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠券金',
  `pay_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付金额',
  `shop_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '购物金',
  `goods_attr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品规格',
  `sku_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格编码',
  `comment_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论状态',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（0：待付款 1未发货 2已发货 3已收货 4退货售后 ）',
  `delivery_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货方式 ( 0普通快递 1无需物流）',
  `postage_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '邮费',
  `invoice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '发票类型（0：可开，1：不可开）',
  `invoice_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开票状态（0未开票 1：申请中，2已开票）',
  `buyer_msg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家留言',
  `supplier_id` int NULL DEFAULT NULL COMMENT '供应商',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单子单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for mall_product
-- ----------------------------
DROP TABLE IF EXISTS `mall_product`;
CREATE TABLE `mall_product`  (
  `product_id` int NOT NULL AUTO_INCREMENT COMMENT '商品Id',
  `product_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `first_img` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品首图',
  `brand_id` int NULL DEFAULT NULL COMMENT '品牌',
  `label_id` int NULL DEFAULT NULL COMMENT '标签',
  `template_id` int NULL DEFAULT NULL COMMENT '邮费模板',
  `first_category_id` int NOT NULL COMMENT '一级品类',
  `second_category_id` int NOT NULL COMMENT '二级品类',
  `third_category_id` int NOT NULL COMMENT '三级品类',
  `supplier_id` int NULL DEFAULT NULL COMMENT '供应商',
  `sale_num` int NULL DEFAULT NULL COMMENT '真实销量',
  `virtual_num` int NULL DEFAULT NULL COMMENT '虚拟销量',
  `product_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频链接',
  `total_num` int NULL DEFAULT NULL COMMENT '库存',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `line_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '划线价',
  `origin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货地',
  `postage` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '邮费类型 0:包邮，1：自费',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态 0上架 1下架',
  `audit_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '审核状态 0审核中 1通过 2不通过',
  `invoice_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票  0：可开，1：不可开',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_product
-- ----------------------------

-- ----------------------------
-- Table structure for mall_product_imgs
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_imgs`;
CREATE TABLE `mall_product_imgs`  (
  `product_img_id` int NOT NULL COMMENT '商品图Id',
  `product_id` int NOT NULL COMMENT '商品',
  `product_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图',
  PRIMARY KEY (`product_img_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_product_imgs
-- ----------------------------

-- ----------------------------
-- Table structure for mall_product_standard
-- ----------------------------
DROP TABLE IF EXISTS `mall_product_standard`;
CREATE TABLE `mall_product_standard`  (
  `product_id` int NOT NULL COMMENT '商品Id',
  `standard_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格名',
  `standard_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '规格值',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_product_standard
-- ----------------------------

-- ----------------------------
-- Table structure for mall_shop_card
-- ----------------------------
DROP TABLE IF EXISTS `mall_shop_card`;
CREATE TABLE `mall_shop_card`  (
  `shop_id` int NOT NULL COMMENT '购物卡Id',
  `batch_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '批次号',
  `shop_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兑换码',
  `shop_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '面值',
  `card_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '卡背景图',
  `start_exchange_time` datetime NULL DEFAULT NULL COMMENT '开始兑换时间',
  `end_exchange_time` datetime NULL DEFAULT NULL COMMENT '结束兑换时间',
  `start_use_time` datetime NULL DEFAULT NULL COMMENT '开始使用时间',
  `end_use_time` datetime NULL DEFAULT NULL COMMENT '结束使用时间',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态 1：未开始， 2：待兑换 3：已过期',
  `total_num` int NULL DEFAULT NULL COMMENT '发放数量',
  `shop_num` int NULL DEFAULT NULL COMMENT '剩余数量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '购物卡' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_shop_card
-- ----------------------------

-- ----------------------------
-- Table structure for mall_standard
-- ----------------------------
DROP TABLE IF EXISTS `mall_standard`;
CREATE TABLE `mall_standard`  (
  `standard_id` int NULL DEFAULT NULL COMMENT '规格Id',
  `first_category_id` int NULL DEFAULT NULL COMMENT '一级品类',
  `second_category` int NULL DEFAULT NULL COMMENT '二级品类',
  `third_category_id` int NULL DEFAULT NULL COMMENT '三级品类',
  `standard_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格名',
  `standard_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '规格值',
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预设规格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_standard
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.bige.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001D636F6D2E626967652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720026636F6D2E626967652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017984335C0878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'bige1623566820342', 1623568175499, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1623566820000, -1, 5, 'PAUSED', 'CRON', 1623566820000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1623566820000, -1, 5, 'PAUSED', 'CRON', 1623566820000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1623566820000, -1, 5, 'PAUSED', 'CRON', 1623566820000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-05-19 18:37:09', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-05-19 18:37:09', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-05-19 18:37:09', '', NULL, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-05-19 18:37:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 18:40:55');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 18:42:13');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 09:49:40');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 10:10:58');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 16:07:30');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-20 19:44:50');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-20 19:44:56');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 19:45:07');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:22:10');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-21 11:49:24');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:49:31');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 11:54:59');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 20:26:21');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-22 09:36:16');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 09:36:20');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 09:40:59');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 12:33:49');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 13:30:25');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 14:34:58');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 15:38:09');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-05-27 09:46:40');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 09:46:52');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 09:51:32');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 10:07:19');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '192.168.72.160', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 11:06:11');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 14:41:05');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-08 23:55:34');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-06-11 00:54:16');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-11 00:54:22');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-11 23:36:33');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-12 14:50:35');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-12 15:23:09');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-06-13 01:31:40');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-13 01:31:45');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-13 14:41:25');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2025 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-05-19 18:37:09', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-05-19 18:37:09', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-05-19 18:37:09', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 1, 0, 'M', '1', '0', '', 'guide', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-20 16:07:51', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-05-19 18:37:09', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-05-19 18:37:09', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-05-19 18:37:09', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-05-19 18:37:09', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-05-19 18:37:09', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-05-19 18:37:09', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-05-19 18:37:09', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-05-19 18:37:09', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-05-19 18:37:09', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-05-19 18:37:09', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-05-19 18:37:09', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-05-19 18:37:09', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-05-19 18:37:09', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-05-19 18:37:09', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-05-19 18:37:09', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-05-19 18:37:09', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 15:59:07', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-05-19 18:37:09', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-05-19 18:37:09', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-05-19 18:37:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '商品管理', 0, 6, 'product', NULL, 1, 0, 'M', '0', '0', '', 'clipboard', 'admin', '2021-05-20 17:00:45', 'admin', '2021-06-13 01:40:22', '');
INSERT INTO `sys_menu` VALUES (2001, '品牌', 2000, 1, 'brand', 'mall/brand/index', 1, 0, 'C', '0', '0', 'mall:brand:list', '#', 'admin', '2021-06-09 00:26:06', 'admin', '2021-06-09 00:29:13', '品牌菜单');
INSERT INTO `sys_menu` VALUES (2002, '品牌查询', 2001, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:brand:query', '#', 'admin', '2021-06-09 00:26:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '品牌新增', 2001, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:brand:add', '#', 'admin', '2021-06-09 00:26:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '品牌修改', 2001, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:brand:edit', '#', 'admin', '2021-06-09 00:26:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '品牌删除', 2001, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:brand:remove', '#', 'admin', '2021-06-09 00:26:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '品牌导出', 2001, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:brand:export', '#', 'admin', '2021-06-09 00:26:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '品类信息', 2000, 1, 'category', 'mall/category/index', 1, 0, 'C', '0', '0', 'mall:category:list', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '品类信息菜单');
INSERT INTO `sys_menu` VALUES (2008, '品类信息查询', 2007, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:category:query', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '品类信息新增', 2007, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:category:add', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '品类信息修改', 2007, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:category:edit', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '品类信息删除', 2007, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:category:remove', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '品类信息导出', 2007, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:category:export', '#', 'admin', '2021-06-09 00:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '商品标签', 2000, 1, 'label', 'mall/label/index', 1, 0, 'C', '0', '0', 'mall:label:list', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '商品标签菜单');
INSERT INTO `sys_menu` VALUES (2014, '商品标签查询', 2013, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:label:query', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '商品标签新增', 2013, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:label:add', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '商品标签修改', 2013, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:label:edit', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '商品标签删除', 2013, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:label:remove', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '商品标签导出', 2013, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:label:export', '#', 'admin', '2021-06-09 00:27:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '用户管理', 0, 5, 'customer', NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2021-06-13 01:37:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '订单管理', 0, 7, 'order', NULL, 1, 0, 'M', '0', '0', NULL, 'form', 'admin', '2021-06-13 01:39:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '运营管理', 0, 10, 'operate', NULL, 1, 0, 'M', '0', '0', NULL, 'edit', 'admin', '2021-06-13 01:40:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '轮播图', 2027, 1, 'banner', 'mall/banner/index', 1, 0, 'C', '0', '0', 'mall:banner:list', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '轮播图菜单');
INSERT INTO `sys_menu` VALUES (2029, '轮播图查询', 2028, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:banner:query', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '轮播图新增', 2028, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:banner:add', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '轮播图修改', 2028, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:banner:edit', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '轮播图删除', 2028, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:banner:remove', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '轮播图导出', 2028, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:banner:export', '#', 'admin', '2021-06-13 01:50:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '订单子单', 2026, 1, 'item', 'mall/item/index', 1, 0, 'C', '0', '0', 'mall:item:list', '#', 'admin', '2021-06-13 01:50:58', '', NULL, '订单子单菜单');
INSERT INTO `sys_menu` VALUES (2035, '订单子单查询', 2034, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:item:query', '#', 'admin', '2021-06-13 01:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '订单子单新增', 2034, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:item:add', '#', 'admin', '2021-06-13 01:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '订单子单修改', 2034, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:item:edit', '#', 'admin', '2021-06-13 01:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '订单子单删除', 2034, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:item:remove', '#', 'admin', '2021-06-13 01:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '订单子单导出', 2034, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:item:export', '#', 'admin', '2021-06-13 01:50:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '商品订单', 2026, 1, 'order', 'mall/order/index', 1, 0, 'C', '0', '0', 'mall:order:list', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '商品订单菜单');
INSERT INTO `sys_menu` VALUES (2041, '商品订单查询', 2040, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:order:query', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '商品订单新增', 2040, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:order:add', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '商品订单修改', 2040, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:order:edit', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '商品订单删除', 2040, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:order:remove', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '商品订单导出', 2040, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:order:export', '#', 'admin', '2021-06-13 01:51:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '商品', 2000, 1, 'product', 'mall/product/index', 1, 0, 'C', '0', '0', 'mall:product:list', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '商品菜单');
INSERT INTO `sys_menu` VALUES (2047, '商品查询', 2046, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:product:query', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '商品新增', 2046, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:product:add', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '商品修改', 2046, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:product:edit', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '商品删除', 2046, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:product:remove', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '商品导出', 2046, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:product:export', '#', 'admin', '2021-06-13 01:51:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '商品规格', 2000, 1, 'standard', 'mall/standard/index', 1, 0, 'C', '0', '0', 'mall:standard:list', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '商品规格菜单');
INSERT INTO `sys_menu` VALUES (2053, '商品规格查询', 2052, 1, '#', '', 1, 0, 'F', '0', '0', 'mall:standard:query', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '商品规格新增', 2052, 2, '#', '', 1, 0, 'F', '0', '0', 'mall:standard:add', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '商品规格修改', 2052, 3, '#', '', 1, 0, 'F', '0', '0', 'mall:standard:edit', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '商品规格删除', 2052, 4, '#', '', 1, 0, 'F', '0', '0', 'mall:standard:remove', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '商品规格导出', 2052, 5, '#', '', 1, 0, 'F', '0', '0', 'mall:standard:export', '#', 'admin', '2021-06-13 01:52:18', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-05-19 18:37:09', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-05-19 18:37:09', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1621420629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:07:51');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_type,sys_dict_data,sys_dept,sys_config,class', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:10:33');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 16:10:41');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_student,mall_room', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:27:15');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 16:27:23');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/mall_student', '127.0.0.1', '内网IP', '{tableName=mall_student}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:27:43');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 16:27:45');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6,7,8', '127.0.0.1', '内网IP', '{tableIds=6,7,8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:28:32');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student,mall_room,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 16:28:39');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 16:28:44');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 16:30:53');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"10\",\"menuName\":\"设施\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"housemaster\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:00:45');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user123', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:11:39');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621501899000,\"tableId\":12,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Uesrname\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"uesrname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621501899000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"uesrname\"}],\"businessName\":\"user123\",\"moduleName\":\"system\",\"className\":\"SysUser123\",\"tableName\":\"sys_user123\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"用户\",\"tree\":false,\"tableComment\":\"用户\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":12,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:12:00');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/12', '127.0.0.1', '内网IP', '{tableIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:13:33');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/11,10,9', '127.0.0.1', '内网IP', '{tableIds=11,10,9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:15:28');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student,mall_room,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:15:40');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":13,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Describe\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"describe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"system\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":13,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:15:50');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:15:59');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:16:10');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 17:16:28');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 17:18:13');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user123', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:22:35');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sss_bbb', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:25:07');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621502170000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621502170000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621502170000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16215', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:28:00');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621502159000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621502159000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621502159000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:28:19');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1621502150000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":13,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"updateTime\":1621502150000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Describe\",\"usableColumn\":false,\"columnId\":82,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"describe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"isQuery\":\"1\",\"updateTime\":1621502150000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{\"parentMenuId\":\"2000\"},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":13,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:28:34');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 17:32:52');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2013', '127.0.0.1', '内网IP', '{menuId=2013}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-05-20 17:36:21');
INSERT INTO `sys_oper_log` VALUES (129, '学生', 1, 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 17:51:29');
INSERT INTO `sys_oper_log` VALUES (130, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-05-20 17:55:50');
INSERT INTO `sys_oper_log` VALUES (131, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:00');
INSERT INTO `sys_oper_log` VALUES (132, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:11');
INSERT INTO `sys_oper_log` VALUES (133, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实大所\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实大所\' )\' at line 3', '2021-05-20 17:56:16');
INSERT INTO `sys_oper_log` VALUES (134, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-05-20 17:56:43');
INSERT INTO `sys_oper_log` VALUES (135, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 17:57:35');
INSERT INTO `sys_oper_log` VALUES (136, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:00:26');
INSERT INTO `sys_oper_log` VALUES (137, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:01:42');
INSERT INTO `sys_oper_log` VALUES (138, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( dormitoryId,             name,             describe )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( null,\n            \'阿萨德\',\n            \'啊实\' at line 4', '2021-05-20 18:01:47');
INSERT INTO `sys_oper_log` VALUES (139, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dormitory_id\' in \'class com.ruoyi.system.domain.MallDormitory\'', '2021-05-20 18:03:16');
INSERT INTO `sys_oper_log` VALUES (140, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory', '2021-05-20 18:04:57');
INSERT INTO `sys_oper_log` VALUES (141, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory', '2021-05-20 18:05:21');
INSERT INTO `sys_oper_log` VALUES (142, '学生', 1, 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:08:19');
INSERT INTO `sys_oper_log` VALUES (143, '宿舍房间', 1, 'com.ruoyi.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":123,\"roomDescribe\":\"大萨达是\",\"studentNum\":12,\"roomId\":1,\"roomName\":\"阿打算\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:08:41');
INSERT INTO `sys_oper_log` VALUES (144, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:14:15');
INSERT INTO `sys_oper_log` VALUES (145, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:14:23');
INSERT INTO `sys_oper_log` VALUES (146, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:17:04');
INSERT INTO `sys_oper_log` VALUES (147, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:18:01');
INSERT INTO `sys_oper_log` VALUES (148, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:19:04');
INSERT INTO `sys_oper_log` VALUES (149, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:22:18');
INSERT INTO `sys_oper_log` VALUES (150, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"啊实打实\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'啊实打实\' )\' at line 3', '2021-05-20 18:22:23');
INSERT INTO `sys_oper_log` VALUES (151, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"name\":\"阿萨德\",\"describe\":\"阿萨德\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3\r\n### The error may exist in file [C:\\bige\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\mall\\MallDormitoryMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MallDormitoryMapper.insertMallDormitory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_dormitory          ( name,             describe )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe ) \n         values ( \'阿萨德\',\n            \'阿萨德\' )\' at line 3', '2021-05-20 18:26:42');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/13', '127.0.0.1', '内网IP', '{tableIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:28:36');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:28:41');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":98,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621506521000,\"tableId\":18,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"DormitoryName\",\"usableColumn\":false,\"columnId\":99,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_name\"},{\"capJavaField\":\"DormitoryDescribe\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":18,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:29:00');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-20 18:29:11');
INSERT INTO `sys_oper_log` VALUES (156, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryId\":1,\"dormitoryDescribe\":\"阿达\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-20 18:35:26');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/16,17', '127.0.0.1', '内网IP', '{tableIds=16,17}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 11:22:43');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-21 11:23:15');
INSERT INTO `sys_oper_log` VALUES (159, '宿舍楼', 1, 'com.ruoyi.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"asad\",\"dormitoryId\":2,\"dormitoryDescribe\":\"asdas\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 11:55:30');
INSERT INTO `sys_oper_log` VALUES (160, '宿舍房间', 1, 'com.ruoyi.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"wqeqwe\",\"studentNum\":213,\"roomId\":2,\"roomName\":\"asdasd\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 11:55:41');
INSERT INTO `sys_oper_log` VALUES (161, '学生', 1, 'com.ruoyi.web.controller.mall.MallStudentController.add()', 'POST', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":3,\"studentName\":\"123qweqw\",\"className\":\"11\",\"studentDescribe\":\"eqweqw\",\"params\":{},\"roomId\":123}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 11:55:56');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621502880000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621502880000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621502880000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16215', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 20:29:28');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621502898000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621502898000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621502898000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 20:29:40');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":98,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"Id\",\"updateTime\":1621506540000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621506521000,\"tableId\":18,\"pk\":true,\"columnName\":\"dormitory_id\"},{\"capJavaField\":\"DormitoryName\",\"usableColumn\":false,\"columnId\":99,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"updateTime\":1621506540000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_name\"},{\"capJavaField\":\"DormitoryDescribe\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"updateTime\":1621506540000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621506521000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"dormitory_describe\"}],\"businessName\":\"dormitory\",\"moduleName\":\"mall\",\"className\":\"MallDormitory\",\"tableName\":\"mall_dormitory\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.bige.system\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":18,\"genPat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 20:29:51');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621600168000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":14,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621600168000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":85,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621600168000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":86,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16216', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-21 20:30:52');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 8, 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-21 20:31:30');
INSERT INTO `sys_oper_log` VALUES (167, '宿舍楼', 2, 'com.bige.web.controller.mall.MallDormitoryController.edit()', 'PUT', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"是第三代\",\"dormitoryId\":1,\"dormitoryDescribe\":\"阿达\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 09:44:12');
INSERT INTO `sys_oper_log` VALUES (168, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"studentNum\":123,\"roomName\":\"请问\"}', 'null', 1, '', '2021-05-22 09:53:31');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/14', '127.0.0.1', '内网IP', '{tableIds=14}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 09:56:28');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_room', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 09:56:33');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 09:56:50');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621648610000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621648610000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621648610000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 09:57:24');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1621648644000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621648593000,\"tableId\":19,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍名\",\"isQuery\":\"1\",\"updateTime\":1621648644000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomDescribe\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍描述\",\"isQuery\":\"1\",\"updateTime\":1621648644000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621648593000,\"isEdit\":\"1\",\"tableId\":19,\"pk\":false,\"columnName\":\"room_describe\"},{\"capJavaField\":\"RoomFloor\",\"usableColumn\":false,\"columnId\":104,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomFloor\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼层\",\"isQuery\":\"1\",\"updateTime\":16', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 10:08:40');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"StudentId\",\"usableColumn\":false,\"columnId\":88,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学生ID\",\"updateTime\":1621600180000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621502140000,\"tableId\":15,\"pk\":true,\"columnName\":\"student_id\"},{\"capJavaField\":\"StudentName\",\"usableColumn\":false,\"columnId\":89,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生名字\",\"isQuery\":\"1\",\"updateTime\":1621600180000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_name\"},{\"capJavaField\":\"StudentDescribe\",\"usableColumn\":false,\"columnId\":90,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"studentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生描述\",\"isQuery\":\"1\",\"updateTime\":1621600180000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621502140000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"student_describe\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":91,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级\",\"isQu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 10:10:30');
INSERT INTO `sys_oper_log` VALUES (175, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"撒大声地\",\"roomName\":\"驱蚊器\",\"studentNum\":12312}', 'null', 1, '', '2021-05-22 10:24:56');
INSERT INTO `sys_oper_log` VALUES (176, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"撒大声地\",\"roomName\":\"驱蚊器\",\"studentNum\":12312}', 'null', 1, '', '2021-05-22 10:26:54');
INSERT INTO `sys_oper_log` VALUES (177, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-05-22 10:29:32');
INSERT INTO `sys_oper_log` VALUES (178, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-05-22 10:31:26');
INSERT INTO `sys_oper_log` VALUES (179, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-05-22 10:31:42');
INSERT INTO `sys_oper_log` VALUES (180, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-05-22 10:32:22');
INSERT INTO `sys_oper_log` VALUES (181, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-05-22 10:33:10');
INSERT INTO `sys_oper_log` VALUES (182, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', 1, '没有这一栋宿舍楼！', '2021-05-22 10:41:17');
INSERT INTO `sys_oper_log` VALUES (183, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', 1, '没有这一栋宿舍楼！', '2021-05-22 10:41:25');
INSERT INTO `sys_oper_log` VALUES (184, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', 1, '没有这一栋宿舍楼！', '2021-05-22 10:41:30');
INSERT INTO `sys_oper_log` VALUES (185, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":12,\"roomDescribe\":\"驱蚊器翁\",\"roomName\":\"驱蚊器翁\",\"dormitoryId\":12,\"studentNum\":123}', 'null', 1, '没有这一栋宿舍楼！', '2021-05-22 10:43:50');
INSERT INTO `sys_oper_log` VALUES (186, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":12}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:57:02');
INSERT INTO `sys_oper_log` VALUES (187, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":1,\"studentName\":\"你好呀\",\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":12}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:57:10');
INSERT INTO `sys_oper_log` VALUES (188, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 10:57:23');
INSERT INTO `sys_oper_log` VALUES (189, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:28');
INSERT INTO `sys_oper_log` VALUES (190, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:30');
INSERT INTO `sys_oper_log` VALUES (191, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:46');
INSERT INTO `sys_oper_log` VALUES (192, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:48');
INSERT INTO `sys_oper_log` VALUES (193, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:48');
INSERT INTO `sys_oper_log` VALUES (194, '学生', 2, 'com.bige.web.controller.mall.MallStudentController.edit()', 'PUT', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"studentId\":2,\"studentName\":\"阿达\",\"className\":\"阿达\",\"studentDescribe\":\"手打\",\"params\":{},\"roomId\":13}', 'null', 1, '没有这一间宿舍！', '2021-05-22 10:58:58');
INSERT INTO `sys_oper_log` VALUES (195, '学生', 3, 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/student/3', '127.0.0.1', '内网IP', '{studentIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:19');
INSERT INTO `sys_oper_log` VALUES (196, '学生', 3, 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/student/2', '127.0.0.1', '内网IP', '{studentIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:21');
INSERT INTO `sys_oper_log` VALUES (197, '学生', 3, 'com.bige.web.controller.mall.MallStudentController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/student/1', '127.0.0.1', '内网IP', '{studentIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:24');
INSERT INTO `sys_oper_log` VALUES (198, '宿舍房间', 3, 'com.bige.web.controller.mall.MallRoomController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/room/2', '127.0.0.1', '内网IP', '{roomIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:27');
INSERT INTO `sys_oper_log` VALUES (199, '宿舍房间', 3, 'com.bige.web.controller.mall.MallRoomController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/room/1', '127.0.0.1', '内网IP', '{roomIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:30');
INSERT INTO `sys_oper_log` VALUES (200, '宿舍楼', 3, 'com.bige.web.controller.mall.MallDormitoryController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/dormitory/2', '127.0.0.1', '内网IP', '{dormitoryIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:34');
INSERT INTO `sys_oper_log` VALUES (201, '宿舍楼', 3, 'com.bige.web.controller.mall.MallDormitoryController.remove()', 'DELETE', 1, 'admin', NULL, '/mall/dormitory/1', '127.0.0.1', '内网IP', '{dormitoryIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:04:35');
INSERT INTO `sys_oper_log` VALUES (202, '宿舍楼', 1, 'com.bige.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"4坡1栋\",\"dormitoryId\":3,\"dormitoryDescribe\":\"4坡1栋宿舍楼\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:05:04');
INSERT INTO `sys_oper_log` VALUES (203, '宿舍楼', 1, 'com.bige.web.controller.mall.MallDormitoryController.add()', 'POST', 1, 'admin', NULL, '/mall/dormitory', '127.0.0.1', '内网IP', '{\"dormitoryName\":\"四坡2栋\",\"dormitoryId\":4,\"dormitoryDescribe\":\"四坡2栋宿舍楼\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:05:26');
INSERT INTO `sys_oper_log` VALUES (204, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":1,\"roomDescribe\":\"101宿舍\",\"roomId\":3,\"roomName\":\"101\",\"dormitoryId\":4,\"studentNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:18:25');
INSERT INTO `sys_oper_log` VALUES (205, '宿舍房间', 1, 'com.bige.web.controller.mall.MallRoomController.add()', 'POST', 1, 'admin', NULL, '/mall/room', '127.0.0.1', '内网IP', '{\"params\":{},\"roomFloor\":1,\"roomDescribe\":\"102舍\",\"roomId\":4,\"roomName\":\"102\",\"dormitoryId\":3,\"studentNum\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:19:11');
INSERT INTO `sys_oper_log` VALUES (206, '学生', 1, 'com.bige.web.controller.mall.MallStudentController.add()', 'POST', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"className\":\"啊实打实\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":3,\"studentId\":4,\"studentName\":\"啊实打实\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:29:59');
INSERT INTO `sys_oper_log` VALUES (207, '学生', 1, 'com.bige.web.controller.mall.MallStudentController.add()', 'POST', 1, 'admin', NULL, '/mall/student', '127.0.0.1', '内网IP', '{\"className\":\"阿松大\",\"studentDescribe\":\"啊实打实\",\"params\":{},\"roomId\":3,\"studentId\":5,\"studentName\":\"阿大撒\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 11:30:12');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/19', '127.0.0.1', '内网IP', '{tableIds=19}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:40:43');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/18', '127.0.0.1', '内网IP', '{tableIds=18}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:40:45');
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/15', '127.0.0.1', '内网IP', '{tableIds=15}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:40:47');
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_room,mall_student', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:41:05');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:42:15');
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job_log,sys_logininfor', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:43:55');
INSERT INTO `sys_oper_log` VALUES (214, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_menu,sys_notice', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:46:11');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/4', '127.0.0.1', '内网IP', '{tableIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:48:20');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:48:21');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/26', '127.0.0.1', '内网IP', '{tableIds=26}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:48:23');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2,3,5,20,21,22,23,24,25,27', '127.0.0.1', '内网IP', '{tableIds=2,3,5,20,21,22,23,24,25,27}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:48:27');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:48:40');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'class,mall_student,mall_room', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:49:03');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_config,sys_dept', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:50:33');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_data', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:53:23');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_dict_type', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:58:23');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_job', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 13:58:37');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/28,29,30,31,32,33,34,35,36', '127.0.0.1', '内网IP', '{tableIds=28,29,30,31,32,33,34,35,36}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:35:58');
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_student', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:36:25');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'class,mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:38:07');
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/37,38,39', '127.0.0.1', '内网IP', '{tableIds=37,38,39}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:39:12');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:39:20');
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/40', '127.0.0.1', '内网IP', '{tableIds=40}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:47:04');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_dormitory,mall_room,mall_student,sys_config,sys_dept,sys_dict_data,sys_dict_type,sys_job,sys_job_log,sys_logininfor', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 14:47:08');
INSERT INTO `sys_oper_log` VALUES (232, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"swagger\",\"orderNum\":\"3\",\"menuName\":\"系统接口\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"swagger\",\"component\":\"tool/swagger/index\",\"children\":[],\"createTime\":1621420629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":116,\"menuType\":\"C\",\"perms\":\"tool:swagger:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 15:59:07');
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"10\",\"menuName\":\"宿舍\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"housemaster\",\"children\":[],\"createTime\":1621501245000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:11:40');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_houseparent', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:28:22');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"HouseparentId\",\"usableColumn\":false,\"columnId\":363,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"宿管ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1621672102000,\"tableId\":51,\"pk\":true,\"columnName\":\"houseparent_id\"},{\"capJavaField\":\"HouseparentName\",\"usableColumn\":false,\"columnId\":364,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621672102000,\"isEdit\":\"1\",\"tableId\":51,\"pk\":false,\"columnName\":\"houseparent_name\"},{\"capJavaField\":\"HouseparentDescribe\",\"usableColumn\":false,\"columnId\":365,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"houseparentDescribe\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"描述\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1621672102000,\"isEdit\":\"1\",\"tableId\":51,\"pk\":false,\"columnName\":\"houseparent_describe\"},{\"capJavaField\":\"DormitoryId\",\"usableColumn\":false,\"columnId\":366,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"dormitoryId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"宿舍楼ID\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:28:57');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 8, 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-22 16:30:43');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"宿管\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"houseparent\",\"component\":\"mall/houseparent/index\",\"children\":[],\"createTime\":1621672512000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2037,\"menuType\":\"C\",\"perms\":\"mall:houseparent:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:36:22');
INSERT INTO `sys_oper_log` VALUES (238, '宿管', 1, 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', 1, 'admin', NULL, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', 1, '該宿舍樓不存在', '2021-05-22 16:45:11');
INSERT INTO `sys_oper_log` VALUES (239, '宿管', 1, 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', 1, 'admin', NULL, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', 1, '該宿舍樓不存在', '2021-05-22 16:45:17');
INSERT INTO `sys_oper_log` VALUES (240, '宿管', 1, 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', 1, 'admin', NULL, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentDescribe\":\"按手机导航\",\"dormitoryId\":123,\"houseparentName\":\"请问\",\"params\":{}}', 'null', 1, '該宿舍樓不存在', '2021-05-22 16:46:06');
INSERT INTO `sys_oper_log` VALUES (241, '岗位管理', 3, 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/4', '127.0.0.1', '内网IP', '{postIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:47:50');
INSERT INTO `sys_oper_log` VALUES (242, '岗位管理', 3, 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/3', '127.0.0.1', '内网IP', '{postIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:47:52');
INSERT INTO `sys_oper_log` VALUES (243, '岗位管理', 3, 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/2', '127.0.0.1', '内网IP', '{postIds=2}', 'null', 1, '项目经理已分配,不能删除', '2021-05-22 16:47:55');
INSERT INTO `sys_oper_log` VALUES (244, '岗位管理', 3, 'com.bige.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/1', '127.0.0.1', '内网IP', '{postIds=1}', 'null', 1, '董事长已分配,不能删除', '2021-05-22 16:48:02');
INSERT INTO `sys_oper_log` VALUES (245, '岗位管理', 2, 'com.bige.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1621420629000,\"updateBy\":\"admin\",\"postName\":\"校长\",\"postCode\":\"ceo\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:48:17');
INSERT INTO `sys_oper_log` VALUES (246, '岗位管理', 2, 'com.bige.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1621420629000,\"updateBy\":\"admin\",\"postName\":\"教物处\",\"postCode\":\"se\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:48:38');
INSERT INTO `sys_oper_log` VALUES (247, '宿管', 1, 'com.bige.web.controller.mall.MallHouseparentController.add()', 'POST', 1, 'admin', NULL, '/mall/houseparent', '127.0.0.1', '内网IP', '{\"houseparentId\":1,\"houseparentDescribe\":\"4坡1栋舍管\",\"dormitoryId\":3,\"houseparentName\":\"4坡1栋舍管1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-22 16:52:36');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '192.168.72.160', '内网IP', '{menuId=2019}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 10:07:38');
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2042', '192.168.72.160', '内网IP', '{menuId=2042}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:06:53');
INSERT INTO `sys_oper_log` VALUES (250, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2040', '192.168.72.160', '内网IP', '{menuId=2040}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:06:55');
INSERT INTO `sys_oper_log` VALUES (251, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2041', '192.168.72.160', '内网IP', '{menuId=2041}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:07:09');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '192.168.72.160', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"10\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"product\",\"children\":[],\"createTime\":1621501245000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:10:19');
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/41,42,43,44,45,46,47,48,49,50', '192.168.72.160', '内网IP', '{tableIds=41,42,43,44,45,46,47,48,49,50}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:11:27');
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/51', '192.168.72.160', '内网IP', '{tableIds=51}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:11:30');
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '192.168.72.160', '内网IP', 'mall_brand', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 11:13:02');
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_label,mall_category', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:17:03');
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/52', '127.0.0.1', '内网IP', '{tableIds=52}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:17:14');
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_brand', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:17:21');
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"usableColumn\":false,\"columnId\":368,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"品类ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623169023000,\"tableId\":53,\"pk\":true,\"columnName\":\"category_id\"},{\"capJavaField\":\"CategoryName\",\"usableColumn\":false,\"columnId\":369,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"品类名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169023000,\"isEdit\":\"1\",\"tableId\":53,\"pk\":false,\"columnName\":\"category_name\"},{\"capJavaField\":\"CategoryImg\",\"usableColumn\":false,\"columnId\":370,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"品类图片\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(150)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169023000,\"isEdit\":\"1\",\"tableId\":53,\"pk\":false,\"columnName\":\"category_img\"},{\"capJavaField\":\"ParentId\",\"usableColumn\":true,\"columnId\":371,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父级ID\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:18:12');
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"LabelId\",\"usableColumn\":false,\"columnId\":380,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"labelId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623169023000,\"tableId\":54,\"pk\":true,\"columnName\":\"label_id\"},{\"capJavaField\":\"LabelName\",\"usableColumn\":false,\"columnId\":381,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"labelName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标签名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169023000,\"isEdit\":\"1\",\"tableId\":54,\"pk\":false,\"columnName\":\"label_name\"},{\"capJavaField\":\"Status\",\"usableColumn\":false,\"columnId\":382,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"tinyint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169023000,\"isEdit\":\"1\",\"tableId\":54,\"pk\":false,\"columnName\":\"status\"},{\"capJavaField\":\"CreateBy\",\"usableColumn\":false,\"columnId\":383,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":162316902300', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:18:56');
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"BrandId\",\"usableColumn\":false,\"columnId\":387,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"brandId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"品牌ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623169040000,\"tableId\":55,\"pk\":true,\"columnName\":\"brand_id\"},{\"capJavaField\":\"BrandName\",\"usableColumn\":false,\"columnId\":388,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"brandName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"品牌名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169040000,\"isEdit\":\"1\",\"tableId\":55,\"pk\":false,\"columnName\":\"brand_name\"},{\"capJavaField\":\"BrandImg\",\"usableColumn\":false,\"columnId\":389,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"brandImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"品牌logo图片\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(150)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623169040000,\"isEdit\":\"1\",\"tableId\":55,\"pk\":false,\"columnName\":\"brand_img\"},{\"capJavaField\":\"Status\",\"usableColumn\":false,\"columnId\":390,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态（ 0启用 1停用）\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"cre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:19:16');
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 8, 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-09 00:19:24');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"品牌\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"brand\",\"component\":\"mall/brand/index\",\"children\":[],\"createTime\":1623169566000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"mall:brand:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:29:13');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:33:53');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2023', '127.0.0.1', '内网IP', '{menuId=2023}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:33:56');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2022', '127.0.0.1', '内网IP', '{menuId=2022}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:33:59');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{menuId=2021}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:34:01');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2020', '127.0.0.1', '内网IP', '{menuId=2020}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:34:04');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 3, 'com.bige.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '127.0.0.1', '内网IP', '{menuId=2019}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 00:34:07');
INSERT INTO `sys_oper_log` VALUES (270, '品牌', 1, 'com.bige.web.controller.mall.MallBrandController.add()', 'POST', 1, 'admin', NULL, '/mall/brand', '127.0.0.1', '内网IP', '{\"brandImg\":\"https://bigeyun.oss-cn-shenzhen.aliyuncs.com/2021-06-12/eb800b78-f426-493f-886a-31e863098b11_分02秒.png\",\"brandName\":\"好牌子\",\"sort\":12,\"params\":{},\"createTime\":1623484285823,\"brandId\":1,\"descript\":\"asd\",\"firstLetter\":\"a\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 15:51:25');
INSERT INTO `sys_oper_log` VALUES (271, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623484909832,\"labelName\":\"标签1\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1', '2021-06-12 16:01:49');
INSERT INTO `sys_oper_log` VALUES (272, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623484939987,\"labelName\":\"标签1\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1', '2021-06-12 16:02:20');
INSERT INTO `sys_oper_log` VALUES (273, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623484961877,\"labelName\":\"标签1\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xA0\\x87\\xE7\\xAD\\xBE...\' for column \'label_name\' at row 1', '2021-06-12 16:02:41');
INSERT INTO `sys_oper_log` VALUES (274, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"labelId\":1,\"createTime\":1623485125923,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:05:25');
INSERT INTO `sys_oper_log` VALUES (275, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485131611,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:05:31');
INSERT INTO `sys_oper_log` VALUES (276, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485142199,\"labelName\":\"阿萨大\",\"params\":{},\"status\":0}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:05:42');
INSERT INTO `sys_oper_log` VALUES (277, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623485212444,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:06:52');
INSERT INTO `sys_oper_log` VALUES (278, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623485217715,\"labelName\":\"水哒\",\"params\":{},\"status\":0}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.updateMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update mall_label          SET label_name = ?,             status = ?,             create_by = ?,             update_time = ?,                          create_time = ?          where label_id = ?\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1', '2021-06-12 16:06:57');
INSERT INTO `sys_oper_log` VALUES (279, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623485252848,\"labelName\":\"水哒\",\"params\":{},\"status\":0}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.updateMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update mall_label          SET label_name = ?,             status = ?,             create_by = ?,             update_time = ?,                          create_time = ?          where label_id = ?\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1', '2021-06-12 16:07:32');
INSERT INTO `sys_oper_log` VALUES (280, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623485524845,\"labelName\":\"水哒\",\"params\":{},\"status\":0}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.updateMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update mall_label          SET label_name = ?,             status = ?,             create_by = ?,             update_time = ?,                          create_time = ?          where label_id = ?\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE6\\xB0\\xB4\\xE5\\x93\\x92\' for column \'label_name\' at row 1', '2021-06-12 16:12:04');
INSERT INTO `sys_oper_log` VALUES (281, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485553743,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:12:33');
INSERT INTO `sys_oper_log` VALUES (282, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485620684,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:13:40');
INSERT INTO `sys_oper_log` VALUES (283, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485694771,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:14:54');
INSERT INTO `sys_oper_log` VALUES (284, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485918756,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:18:38');
INSERT INTO `sys_oper_log` VALUES (285, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623485928174,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:18:48');
INSERT INTO `sys_oper_log` VALUES (286, '品牌', 1, 'com.bige.web.controller.mall.MallBrandController.add()', 'POST', 1, 'admin', NULL, '/mall/brand', '127.0.0.1', '内网IP', '{\"brandName\":\"阿萨大\",\"params\":{},\"createTime\":1623485951929,\"brandId\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:19:11');
INSERT INTO `sys_oper_log` VALUES (287, '品类信息', 1, 'com.bige.web.controller.mall.MallCategoryController.add()', 'POST', 1, 'admin', NULL, '/mall/category', '127.0.0.1', '内网IP', '{\"sort\":2,\"params\":{},\"categoryImg\":\"撒旦\",\"categoryName\":\"阿萨大\",\"parentId\":2,\"createTime\":1623485982494,\"categoryId\":1158,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:19:42');
INSERT INTO `sys_oper_log` VALUES (288, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/53,54,55', '127.0.0.1', '内网IP', '{tableIds=53,54,55}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:20:07');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_label', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:20:15');
INSERT INTO `sys_oper_log` VALUES (290, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623486189331,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:23:09');
INSERT INTO `sys_oper_log` VALUES (291, '商品标签', 1, 'com.bige.web.controller.mall.MallLabelController.add()', 'POST', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createTime\":1623486255086,\"labelName\":\"阿萨大\",\"params\":{},\"status\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\r\n### The error may exist in file [E:\\bige\\Bige-store\\bige-system\\target\\classes\\mapper\\system\\mall\\MallLabelMapper.xml]\r\n### The error may involve com.bige.system.mapper.MallLabelMapper.insertMallLabel-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into mall_label          ( label_name,             status,                                                    create_time )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xE9\\x98\\xBF\\xE8\\x90\\xA8...\' for column \'label_name\' at row 1', '2021-06-12 16:24:15');
INSERT INTO `sys_oper_log` VALUES (292, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623486364595,\"labelName\":\"撒旦\",\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:26:04');
INSERT INTO `sys_oper_log` VALUES (293, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623487052768,\"labelName\":\"撒旦\",\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:37:32');
INSERT INTO `sys_oper_log` VALUES (294, '商品标签', 2, 'com.bige.web.controller.mall.MallLabelController.edit()', 'PUT', 1, 'admin', NULL, '/mall/label', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"labelId\":1,\"createTime\":1623485126000,\"updateTime\":1623487296879,\"labelName\":\"撒旦\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-12 16:41:36');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 6, 'com.bige.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'mall_banner,mall_goods,mall_order,mall_order_item,mall_product,mall_product_standard,mall_product_imgs,mall_standard', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:32:29');
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 3, 'com.bige.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/56', '127.0.0.1', '内网IP', '{tableIds=56}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:33:00');
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 8, 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-13 01:33:07');
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"BannerId\",\"usableColumn\":false,\"columnId\":405,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"轮播Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":57,\"pk\":true,\"columnName\":\"banner_id\"},{\"capJavaField\":\"BannerName\",\"usableColumn\":false,\"columnId\":406,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":57,\"pk\":false,\"columnName\":\"banner_name\"},{\"capJavaField\":\"BannerImg\",\"usableColumn\":false,\"columnId\":407,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"轮播图\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":57,\"pk\":false,\"columnName\":\"banner_img\"},{\"capJavaField\":\"LinkUrl\",\"usableColumn\":false,\"columnId\":408,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linkUrl\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"跳转链接\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"cre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:36:02');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"6\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"product\",\"children\":[],\"createTime\":1621501245000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:36:19');
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 1, 'com.bige.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"5\",\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"customer\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:37:32');
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 1, 'com.bige.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"7\",\"menuName\":\"订单管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"order\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:39:06');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 1, 'com.bige.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"10\",\"menuName\":\"运营管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"operate\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:40:06');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 2, 'com.bige.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"6\",\"menuName\":\"商品管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"product\",\"children\":[],\"createTime\":1621501245000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:40:22');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"BannerId\",\"usableColumn\":false,\"columnId\":405,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"轮播Id\",\"updateTime\":1623519362000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":57,\"pk\":true,\"columnName\":\"banner_id\"},{\"capJavaField\":\"BannerName\",\"usableColumn\":false,\"columnId\":406,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"名称\",\"isQuery\":\"1\",\"updateTime\":1623519362000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":57,\"pk\":false,\"columnName\":\"banner_name\"},{\"capJavaField\":\"BannerImg\",\"usableColumn\":false,\"columnId\":407,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"bannerImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"轮播图\",\"isQuery\":\"1\",\"updateTime\":1623519362000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":57,\"pk\":false,\"columnName\":\"banner_img\"},{\"capJavaField\":\"LinkUrl\",\"usableColumn\":false,\"columnId\":408,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linkUrl\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"跳转链接\",\"isQuery\":\"1\",\"updateTime\":16235193', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:41:25');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"GoodsId\",\"usableColumn\":false,\"columnId\":414,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"skuId\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":58,\"pk\":true,\"columnName\":\"goods_id\"},{\"capJavaField\":\"ProductId\",\"usableColumn\":false,\"columnId\":415,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品Id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":58,\"pk\":false,\"columnName\":\"product_id\"},{\"capJavaField\":\"GoodsName\",\"usableColumn\":false,\"columnId\":416,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品规格名\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(80)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":58,\"pk\":false,\"columnName\":\"goods_name\"},{\"capJavaField\":\"GoodsImg\",\"usableColumn\":false,\"columnId\":417,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"goodsImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"规格图\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:41:46');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"OrderId\",\"usableColumn\":false,\"columnId\":429,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"订单Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":59,\"pk\":true,\"columnName\":\"order_id\"},{\"capJavaField\":\"OrderName\",\"usableColumn\":false,\"columnId\":430,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":59,\"pk\":false,\"columnName\":\"order_name\"},{\"capJavaField\":\"OrderNo\",\"usableColumn\":false,\"columnId\":431,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderNo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单编号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":59,\"pk\":false,\"columnName\":\"order_no\"},{\"capJavaField\":\"PayOrderNo\",\"usableColumn\":false,\"columnId\":432,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"payOrderNo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"支付订单号\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(30)\",\"createBy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:42:19');
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"OrderItemId\",\"usableColumn\":false,\"columnId\":449,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderItemId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"订单子单ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":60,\"pk\":true,\"columnName\":\"order_item_id\"},{\"capJavaField\":\"OrderItemNo\",\"usableColumn\":false,\"columnId\":450,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderItemNo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单子单编号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":60,\"pk\":false,\"columnName\":\"order_item_no\"},{\"capJavaField\":\"OrderId\",\"usableColumn\":false,\"columnId\":451,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"orderId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"订单ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":60,\"pk\":false,\"columnName\":\"order_id\"},{\"capJavaField\":\"PayOrderNo\",\"usableColumn\":false,\"columnId\":452,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"payOrderNo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"支付单号\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(30', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:42:35');
INSERT INTO `sys_oper_log` VALUES (308, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"ProductId\",\"usableColumn\":false,\"columnId\":482,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"productId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":61,\"pk\":true,\"columnName\":\"product_id\"},{\"capJavaField\":\"ProductName\",\"usableColumn\":false,\"columnId\":483,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"productName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(80)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":61,\"pk\":false,\"columnName\":\"product_name\"},{\"capJavaField\":\"FirstImg\",\"usableColumn\":false,\"columnId\":484,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"firstImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品首图\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":61,\"pk\":false,\"columnName\":\"first_img\"},{\"capJavaField\":\"BrandId\",\"usableColumn\":false,\"columnId\":485,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"brandId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"品牌\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"ad', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:42:58');
INSERT INTO `sys_oper_log` VALUES (309, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"ProductImgId\",\"usableColumn\":false,\"columnId\":507,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"productImgId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品图Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":62,\"pk\":true,\"columnName\":\"product_img_id\"},{\"capJavaField\":\"ProductId\",\"usableColumn\":false,\"columnId\":508,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"productId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":62,\"pk\":false,\"columnName\":\"product_id\"},{\"capJavaField\":\"ProductImg\",\"usableColumn\":false,\"columnId\":509,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"productImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"商品图\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":62,\"pk\":false,\"columnName\":\"product_img\"}],\"businessName\":\"imgs\",\"moduleName\":\"mall\",\"className\":\"MallProductImgs\",\"tableName\":\"mall_product_imgs\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.bige.system\",\"functionName\":\"商品图\",\"tree\":false,\"tableComment\":\"商品图\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":62,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:43:18');
INSERT INTO `sys_oper_log` VALUES (310, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"ProductId\",\"usableColumn\":false,\"columnId\":510,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"productId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"商品Id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1623519149000,\"tableId\":63,\"pk\":true,\"columnName\":\"product_id\"},{\"capJavaField\":\"StandardName\",\"usableColumn\":false,\"columnId\":511,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"standardName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"规格名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":63,\"pk\":false,\"columnName\":\"standard_name\"},{\"capJavaField\":\"StandardValue\",\"usableColumn\":false,\"columnId\":512,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"standardValue\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"规格值\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":63,\"pk\":false,\"columnName\":\"standard_value\"},{\"capJavaField\":\"Sort\",\"usableColumn\":false,\"columnId\":513,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"sort\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"排序\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"creat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:43:41');
INSERT INTO `sys_oper_log` VALUES (311, '代码生成', 2, 'com.bige.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bige\",\"columns\":[{\"capJavaField\":\"StandardId\",\"usableColumn\":false,\"columnId\":514,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"standardId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"规格Id\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":64,\"pk\":false,\"columnName\":\"standard_id\"},{\"capJavaField\":\"FirstCategoryId\",\"usableColumn\":false,\"columnId\":515,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"firstCategoryId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"一级品类\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":64,\"pk\":false,\"columnName\":\"first_category_id\"},{\"capJavaField\":\"SecondCategory\",\"usableColumn\":false,\"columnId\":516,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"secondCategory\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"二级品类\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1623519149000,\"isEdit\":\"1\",\"tableId\":64,\"pk\":false,\"columnName\":\"second_category\"},{\"capJavaField\":\"ThirdCategoryId\",\"usableColumn\":false,\"columnId\":517,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"thirdCategoryId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"三级品类\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-13 01:43:59');
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 8, 'com.bige.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-13 01:44:53');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '校长', 1, '0', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 16:48:17', '');
INSERT INTO `sys_post` VALUES (2, 'se', '教物处', 2, '0', 'admin', '2021-05-19 18:37:09', 'admin', '2021-05-22 16:48:38', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-05-19 18:37:09', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-05-19 18:37:09', 'admin', '2021-05-19 18:37:09', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-05-19 18:37:09', 'admin', '2021-05-19 18:37:09', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
