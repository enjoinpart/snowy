/*
 Navicat Premium Data Transfer

 Source Server         : mysql本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : snowy

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 15/04/2021 16:01:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flw_button
-- ----------------------------
DROP TABLE IF EXISTS `flw_button`;
CREATE TABLE `flw_button`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程实例id',
  `act_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '活动节点id',
  `act_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动节点名称',
  `submit_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提交（Y-是，N-否）',
  `save_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '保存（Y-是，N-否）',
  `back_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退回（Y-是，N-否）',
  `turn_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '转办（Y-是，N-否）',
  `next_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '指定（Y-是，N-否）',
  `entrust_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '委托（Y-是，N-否）',
  `end_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '终止（Y-是，N-否）',
  `trace_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '追踪（Y-是，N-否）',
  `suspend_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '挂起（Y-是，N-否）',
  `jump_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转（Y-是，N-否）',
  `add_sign_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '加签（Y-是，N-否）',
  `delete_sign_btn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '减签（Y-是，N-否）',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354458710733524995 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程节点按钮表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_button
-- ----------------------------

-- ----------------------------
-- Table structure for flw_category
-- ----------------------------
DROP TABLE IF EXISTS `flw_category`;
CREATE TABLE `flw_category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354458450737008642 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_category
-- ----------------------------
INSERT INTO `flw_category` VALUES (1290140237082759170, '考勤类', 'kaoqin', 100, '考勤类', 0, '2020-08-03 12:19:37', 1265476890672672808, '2020-08-06 16:18:18', 1265476890672672808);
INSERT INTO `flw_category` VALUES (1290670559956320258, '行政类', 'xingzheng', 100, '行政类', 0, '2020-08-04 23:26:56', 1265476890672672808, '2020-08-06 16:13:59', 1265476890672672808);
INSERT INTO `flw_category` VALUES (1308401074679459841, '差旅类', 'travel', 100, '差旅类', 0, '2020-09-22 21:41:40', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_draft
-- ----------------------------
DROP TABLE IF EXISTS `flw_draft`;
CREATE TABLE `flw_draft`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程定义id',
  `form_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单布局数据',
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单填写数据',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程名称',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类编码',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354463315219484675 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '申请草稿表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_draft
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event
-- ----------------------------
DROP TABLE IF EXISTS `flw_event`;
CREATE TABLE `flw_event`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程定义id',
  `act_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动节点id',
  `act_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动节点名称',
  `node_type` tinyint(0) NOT NULL COMMENT '事件节点类型（字典 1全局 2节点）',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型（字典 见事件类型字典）',
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '脚本',
  `exec_sort` int(0) NOT NULL COMMENT '执行顺序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1304342885814124546 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程事件配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_event
-- ----------------------------

-- ----------------------------
-- Table structure for flw_form
-- ----------------------------
DROP TABLE IF EXISTS `flw_form`;
CREATE TABLE `flw_form`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `form_id` bigint(0) NOT NULL COMMENT '表单id',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程定义id',
  `act_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动节点id',
  `act_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动节点名称',
  `node_type` tinyint(0) NOT NULL COMMENT '表单节点类型（字典 1全局 2节点）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354468741201842178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程表单配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_form
-- ----------------------------

-- ----------------------------
-- Table structure for flw_form_resource
-- ----------------------------
DROP TABLE IF EXISTS `flw_form_resource`;
CREATE TABLE `flw_form_resource`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单名称',
  `type` tinyint(0) NULL DEFAULT 2 COMMENT '表单类型（字典 1自行开发 2在线设计）',
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单分类',
  `form_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'PC端表单数据，适用于在线设计表单',
  `form_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'PC端表单URL。适用于自行开发的表单',
  `app_form_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动端表单URL',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354468627381014531 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程脚本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_form_resource
-- ----------------------------
INSERT INTO `flw_form_resource` VALUES (1294922365303664641, 'leaveFormWrite', '请假填写单', 2, 'kaoqin', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '请假填写单', 0, '2020-08-16 17:02:05', 1265476890672672808, '2020-08-18 09:42:32', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1294922455393120258, 'leaveFormRead', '请假只读单', 2, 'kaoqin', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680134338\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":true,\"hidden\":false,\"defaultValue\":\"\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569102078\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":true,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '请假只读单', 0, '2020-08-16 17:02:27', 1265476890672672808, '2020-08-18 10:41:24', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1295542814805032961, 'formalFormWrite', '转正填写单', 2, 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '转正填写单', 0, '2020-08-18 10:07:32', 1265476890672672808, '2020-08-23 10:06:06', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1295542814805032962, 'formalFormWriteWithAssess', '转正填写单_主管填写', 2, 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '转正填写单_主管填写', 0, '2020-08-18 10:07:32', 1265476890672672808, '2020-08-24 09:35:18', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1295542994690342913, 'formalFormRead', '转正只读单', 2, 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '转正只读单', 0, '2020-08-18 10:08:15', 1265476890672672808, '2020-08-24 09:35:51', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1304313274803888130, 'travelWrite', '出差填写单', 2, 'travel', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '出差填写单', 0, '2020-09-11 14:58:12', 1265476890672672808, '2020-09-11 15:14:56', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1304317596870582274, 'travelRead', '出差只读单', 2, 'travel', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":true,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', NULL, NULL, '出差只读单', 0, '2020-09-11 15:15:23', 1265476890672672808, '2020-09-11 15:16:17', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1354453645117394946, 'tests_codes', '用车申请单', 1, 'approval', NULL, 'carApplyForm', NULL, '用车申请单', 0, '2021-01-27 23:38:08', 1265476890672672808, '2021-01-28 00:36:55', 1265476890672672808);
INSERT INTO `flw_form_resource` VALUES (1354468627381014530, 'tests_codes_readonly', '用车审批单', 1, 'approval', NULL, 'carApplyFormReadOnly', NULL, '用车审批单', 0, '2021-01-28 00:37:40', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_option
-- ----------------------------
DROP TABLE IF EXISTS `flw_option`;
CREATE TABLE `flw_option`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程定义id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题规则',
  `jump_first` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '自动完成第一个任务（Y-是，N-否）',
  `smart_complete` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '跳过相同处理人（Y-是，N-否）',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354458538599288834 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程选项配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_option
-- ----------------------------

-- ----------------------------
-- Table structure for flw_script
-- ----------------------------
DROP TABLE IF EXISTS `flw_script`;
CREATE TABLE `flw_script`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '脚本名称',
  `type` tinyint(0) NOT NULL COMMENT '脚本类别（字典 1流程脚本 2系统脚本）',
  `lang` tinyint(0) NOT NULL COMMENT '脚本语言（字典1 groovy)',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '脚本内容',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1304322960072609795 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程脚本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_script
-- ----------------------------
INSERT INTO `flw_script` VALUES (1294898800718163970, '打印内容', 1, 1, 'System.out.println(\"这是打印的内容\");', '打印内容', 0, '2020-08-16 15:28:27', 1265476890672672808, '2020-08-16 18:23:26', 1265476890672672808);
INSERT INTO `flw_script` VALUES (1304322960072609794, '设置会签人员', 1, 1, 'import cn.hutool.core.collection.CollectionUtil;\nimport vip.xiaonuo.flowable.core.utils.BpmScriptUtil;\n\nList<Long> userIdList = CollectionUtil.newArrayList();\nuserIdList.add(1275735541155614721);\nuserIdList.add(1280700700074041345);\nuserIdList.add(1280709549107552257);\n\n//调用脚本工具类，给执行实例设置会签人员\nBpmScriptUtil.setVariableForInstance(execution, \"pers\", userIdList);\n//调用脚本工具类，给执行实例设置多实例基数为会签人员数量\nBpmScriptUtil.setVariableForInstance(execution, \"num\", 3);', '流程启动时给流程实例设置会签人员', 0, '2020-09-11 15:36:41', 1265476890672672808, '2020-09-11 16:55:02', 1265476890672672808);
INSERT INTO `flw_script` VALUES (1345925988436881410, '获取表单数据', 1, 1, 'import vip.xiaonuo.flowable.core.utils.BpmScriptUtil;\n//此处仅打印表单数据，请参见后台启动日志，执行此脚本会将表单数据获取并打印出来\nBpmScriptUtil.getFormData(execution);', '获取表单数据', 0, '2021-01-04 10:52:16', 1265476890672672808, '2021-01-11 17:52:16', 1265476890672672808);

-- ----------------------------
-- Table structure for flw_shortcut
-- ----------------------------
DROP TABLE IF EXISTS `flw_shortcut`;
CREATE TABLE `flw_shortcut`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '流程定义id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `version` tinyint(0) NOT NULL COMMENT '定义版本',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `sort` int(0) NOT NULL COMMENT '排序',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1354458994553688066 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程申请入口表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_shortcut
-- ----------------------------

-- ----------------------------
-- Table structure for pay_ali_trade_history
-- ----------------------------
DROP TABLE IF EXISTS `pay_ali_trade_history`;
CREATE TABLE `pay_ali_trade_history`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `out_trade_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商家订单号',
  `trade_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝订单号',
  `bill_date` datetime(0) NOT NULL COMMENT '交易时间',
  `amount` decimal(10, 2) NOT NULL COMMENT '交易金额',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品描述',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_ali_trade_history
-- ----------------------------

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否默认激活（Y-是，N-否）',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统应用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO `sys_app` VALUES (1265476890672672821, '系统应用', 'system', 'Y', 0, '2020-03-25 19:07:00', 1265476890672672808, '2020-08-15 15:23:05', 1280709549107552257);
INSERT INTO `sys_app` VALUES (1265476890672672822, '业务应用', 'business', 'N', 2, '2020-03-26 08:40:33', 1265476890672672808, '2020-09-23 22:00:01', 1265476890672672808);
INSERT INTO `sys_app` VALUES (1265476890672672823, '在线办公', 'office', 'N', 0, '2020-04-02 15:48:43', 1265476890672672808, '2020-09-23 22:00:15', 1265476890672672808);
INSERT INTO `sys_app` VALUES (1290262474351808514, '高级体验', 'experience', 'N', 0, '2020-08-03 20:25:20', 1265476890672672808, '2020-08-15 15:46:12', 1265476890672672808);
INSERT INTO `sys_app` VALUES (1342451550318694401, '系统工具', 'system_tool', 'N', 0, '2020-12-25 20:46:06', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_code_generate
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_generate`;
CREATE TABLE `sys_code_generate`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作者姓名',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类名',
  `table_prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否移除表前缀',
  `generate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '生成位置类型',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库表名',
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包名称',
  `bus_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务名',
  `table_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成基础配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_code_generate
-- ----------------------------

-- ----------------------------
-- Table structure for sys_code_generate_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_generate_config`;
CREATE TABLE `sys_code_generate_config`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `code_gen_id` bigint(0) NULL DEFAULT NULL COMMENT '代码生成主表ID',
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库字段名',
  `java_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'java类字段名',
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物理类型',
  `column_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段描述',
  `java_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'java类型',
  `effect_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作用类型（字典）',
  `dict_type_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典code',
  `whether_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表展示',
  `whether_add_update` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增改',
  `whether_retract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表是否缩进（字典）',
  `whether_required` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（字典）',
  `query_whether` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否是查询条件',
  `query_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
  `column_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键',
  `column_key_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主外键名称',
  `whether_common` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否是通用字段',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成详细配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_code_generate_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '值',
  `sys_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否是系统参数（Y-是，N-否）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '常量所属分类的编码，来自于“常量的分类”字典',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1265117443880853504, '验证码开关', 'SNOWY_CAPTCHA_OPEN', 'true', 'Y', '登录验证码开关 false关闭 true打开', 0, 'DEFAULT', '2020-04-14 23:30:14', 1265476890672672808, '2021-02-18 16:19:01', 1265476890672672808);
INSERT INTO `sys_config` VALUES (1265117443880853506, 'jwt密钥', 'SNOWY_JWT_SECRET', 'snowy', 'Y', '（重要）jwt密钥，默认为空，自行设置', 0, 'DEFAULT', '2020-05-26 06:35:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1265117443880853507, '默认密码', 'SNOWY_DEFAULT_PASSWORD', '123456', 'Y', '默认密码', 0, 'DEFAULT', '2020-05-26 06:37:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1265117443880853508, 'token过期时间', 'SNOWY_TOKEN_EXPIRE', '86400', 'Y', 'token过期时间（单位：秒）', 0, 'DEFAULT', '2020-05-27 11:54:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1265117443880853509, 'session会话过期时间', 'SNOWY_SESSION_EXPIRE', '7200', 'Y', 'session会话过期时间（单位：秒）', 0, 'DEFAULT', '2020-05-27 11:54:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1265117443880853519, '阿里云短信keyId', 'SNOWY_ALIYUN_SMS_ACCESSKEY_ID', '你的keyId', 'Y', '阿里云短信keyId', 0, 'ALIYUN_SMS', '2020-06-07 16:27:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269547042242371585, '阿里云短信secret', 'SNOWY_ALIYUN_SMS_ACCESSKEY_SECRET', '你的secret', 'Y', '阿里云短信secret', 0, 'ALIYUN_SMS', '2020-06-07 16:29:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269547130041737217, '阿里云短信签名', 'SNOWY_ALIYUN_SMS_SIGN_NAME', 'Snowy快速开发平台', 'Y', '阿里云短信签名', 0, 'ALIYUN_SMS', '2020-06-07 16:29:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269547279530926081, '阿里云短信-登录模板号', 'SNOWY_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', 'SMS_1877123456', 'Y', '阿里云短信-登录模板号', 0, 'ALIYUN_SMS', '2020-06-07 16:30:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269547410879750145, '阿里云短信默认失效时间', 'SNOWY_ALIYUN_SMS_INVALIDATE_MINUTES', '5', 'Y', '阿里云短信默认失效时间（单位：分钟）', 0, 'ALIYUN_SMS', '2020-06-07 16:31:04', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269575927357071361, '腾讯云短信secretId', 'SNOWY_TENCENT_SMS_SECRET_ID', '你的secretId', 'Y', '腾讯云短信secretId', 0, 'TENCENT_SMS', '2020-06-07 18:24:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269575991693500418, '腾讯云短信secretKey', 'SNOWY_TENCENT_SMS_SECRET_KEY', '你的secretkey', 'Y', '腾讯云短信secretKey', 0, 'TENCENT_SMS', '2020-06-07 18:24:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269576044084551682, '腾讯云短信sdkAppId', 'SNOWY_TENCENT_SMS_SDK_APP_ID', '1400375123', 'Y', '腾讯云短信sdkAppId', 0, 'TENCENT_SMS', '2020-06-07 18:24:51', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1269576089294954497, '腾讯云短信签名', 'SNOWY_TENCENT_SMS_SIGN', 'Snowy快速开发平台', 'Y', '腾讯云短信签名', 0, 'TENCENT_SMS', '2020-06-07 18:25:02', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270378172860403713, '邮箱host', 'SNOWY_EMAIL_HOST', 'smtp.126.com', 'Y', '邮箱host', 0, 'EMAIL', '2020-06-09 23:32:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270378295543795714, '邮箱用户名', 'SNOWY_EMAIL_USERNAME', 'test@126.com', 'Y', '邮箱用户名', 0, 'EMAIL', '2020-06-09 23:32:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270378340510928897, '邮箱密码', 'SNOWY_EMAIL_PASSWORD', '你的邮箱密码', 'Y', '邮箱密码', 0, 'EMAIL', '2020-06-09 23:32:54', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270378527358783489, '邮箱端口', 'SNOWY_EMAIL_PORT', '465', 'Y', '邮箱端口', 0, 'EMAIL', '2020-06-09 23:33:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270378790035460097, '邮箱是否开启ssl', 'SNOWY_EMAIL_SSL', 'true', 'Y', '邮箱是否开启ssl', 0, 'EMAIL', '2020-06-09 23:34:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270380786649972737, '邮箱发件人', 'SNOWY_EMAIL_FROM', 'test@126.com', 'Y', '邮箱发件人', 0, 'EMAIL', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270380786649972738, 'win本地上传文件路径', 'SNOWY_FILE_UPLOAD_PATH_FOR_WINDOWS', 'd:/tmp', 'Y', 'win本地上传文件路径', 0, 'FILE_PATH', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270380786649972739, 'linux/mac本地上传文件路径', 'SNOWY_FILE_UPLOAD_PATH_FOR_LINUX', '/tmp', 'Y', 'linux/mac本地上传文件路径', 0, 'FILE_PATH', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270380786649982740, 'Snowy演示环境', 'SNOWY_DEMO_ENV_FLAG', 'false', 'Y', 'Snowy演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, '2020-09-03 14:38:17', 1265476890672672808);
INSERT INTO `sys_config` VALUES (1270380786649982741, 'Snowy放开XSS过滤的接口', 'SNOWY_UN_XSS_FILTER_URL', '/demo/xssfilter,/demo/unxss', 'Y', '多个url可以用英文逗号隔开', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1270380786649982742, '单用户登陆的开关', 'SNOWY_ENABLE_SINGLE_LOGIN', 'false', 'Y', '单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1280694281648070659, '阿里云定位api接口地址', 'SNOWY_IP_GEO_API', 'http://api01.aliyun.venuscn.com/ip?ip=%s', 'Y', '阿里云定位api接口地址', 0, 'DEFAULT', '2020-07-20 10:44:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1280694281648070660, '阿里云定位appCode', 'SNOWY_IP_GEO_APP_CODE', '461535aabeae4f34861884d392f5d452', 'Y', '阿里云定位appCode', 0, 'DEFAULT', '2020-07-20 10:44:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288309751255412737, 'Oauth用户登录的开关', 'SNOWY_ENABLE_OAUTH_LOGIN', 'true', 'Y', 'Oauth用户登录的开关', 0, 'OAUTH', '2020-07-29 11:05:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288310043346743297, 'Oauth码云登录ClientId', 'SNOWY_OAUTH_GITEE_CLIENT_ID', '你的clientId', 'Y', 'Oauth码云登录ClientId', 0, 'OAUTH', '2020-07-29 11:07:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288310157876408321, 'Oauth码云登录ClientSecret', 'SNOWY_OAUTH_GITEE_CLIENT_SECRET', '你的clientSecret', 'Y', 'Oauth码云登录ClientSecret', 0, 'OAUTH', '2020-07-29 11:07:32', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288310280056483841, 'Oauth码云登录回调地址', 'SNOWY_OAUTH_GITEE_REDIRECT_URI', 'http://127.0.0.1:82/oauth/callback/gitee', 'Y', 'Oauth码云登录回调地址', 0, 'OAUTH', '2020-07-29 11:08:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288358228593221633, '前端项目地址', 'SNOWY_WEB_URL', 'http://localhost:8080', 'Y', '前端项目地址', 0, 'DEFAULT', '2020-07-29 14:18:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288358228593221634, '支付宝支付跳转地址', 'SNOWY_ALIPAY_RETURN_URL', 'http://localhost:8080/pay/index', 'Y', '支付宝支付跳转地址', 0, 'DEFAULT', '2020-07-29 14:18:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_config` VALUES (1288358228593221635, '是否开启多租户', 'SNOWY_TENANT_OPEN', 'true', 'Y', '是否开启多租户', 0, 'DEFAULT', '2020-09-03 17:45:58', 1265476890672672808, '2021-02-16 00:09:24', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_database_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_database_info`;
CREATE TABLE `sys_database_info`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库名称（英文名称）',
  `jdbc_driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'jdbc的驱动类型',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库连接的账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库连接密码',
  `jdbc_url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'jdbc的url',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注，摘要',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `NAME_UNIQUE`(`db_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据库信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO `sys_database_info` VALUES (1382604422785314817, 'master', 'com.mysql.cj.jdbc.Driver', 'root', '123456', 'jdbc:mysql://localhost:3306/snowy?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '主数据源，项目启动数据源！', '2021-04-15 15:59:16');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `type_id` bigint(0) NOT NULL COMMENT '字典类型id',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '值',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统字典值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1265216536659087357, 1265216211667636234, '男', '1', 100, '男性', 0, '2020-04-01 10:23:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087358, 1265216211667636234, '女', '2', 100, '女性', 0, '2020-04-01 10:23:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087359, 1265216211667636234, '未知', '3', 100, '未知性别', 0, '2020-04-01 10:24:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087361, 1265216211667636235, '默认常量', 'DEFAULT', 100, '默认常量，都以SNOWY_开头的', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087363, 1265216211667636235, '阿里云短信', 'ALIYUN_SMS', 100, '阿里云短信配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087364, 1265216211667636235, '腾讯云短信', 'TENCENT_SMS', 100, '腾讯云短信', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087365, 1265216211667636235, '邮件配置', 'EMAIL', 100, '邮箱配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087366, 1265216211667636235, '文件上传路径', 'FILE_PATH', 100, '文件上传路径', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216536659087367, 1265216211667636235, 'Oauth配置', 'OAUTH', 100, 'Oauth配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216617500102656, 1265216211667636226, '正常', '0', 100, '正常', 0, '2020-05-26 17:41:44', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216617500102657, 1265216211667636226, '停用', '1', 100, '停用', 0, '2020-05-26 17:42:03', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265216938389524482, 1265216211667636226, '删除', '2', 100, '删除', 0, '2020-05-26 17:43:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265217669028892673, 1265217074079453185, '否', 'N', 100, '否', 0, '2020-05-26 17:46:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265217706584690689, 1265217074079453185, '是', 'Y', 100, '是', 0, '2020-05-26 17:46:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265220776437731330, 1265217846770913282, '登录', '1', 100, '登录', 0, '2020-05-26 17:58:34', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265220806070489090, 1265217846770913282, '登出', '2', 100, '登出', 0, '2020-05-26 17:58:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265221129564573697, 1265221049302372354, '目录', '0', 100, '目录', 0, '2020-05-26 17:59:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265221163119005697, 1265221049302372354, '菜单', '1', 100, '菜单', 0, '2020-05-26 18:00:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265221188091891713, 1265221049302372354, '按钮', '2', 100, '按钮', 0, '2020-05-26 18:00:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466389204967426, 1265466149622128641, '未发送', '0', 100, '未发送', 0, '2020-05-27 10:14:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466432670539778, 1265466149622128641, '发送成功', '1', 100, '发送成功', 0, '2020-05-27 10:14:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466486097584130, 1265466149622128641, '发送失败', '2', 100, '发送失败', 0, '2020-05-27 10:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466530477514754, 1265466149622128641, '失效', '3', 100, '失效', 0, '2020-05-27 10:15:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466835009150978, 1265466752209395713, '无', '0', 100, '无', 0, '2020-05-27 10:16:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466874758569986, 1265466752209395713, '组件', '1', 100, '组件', 0, '2020-05-27 10:16:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466925476093953, 1265466752209395713, '内链', '2', 100, '内链', 0, '2020-05-27 10:16:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265466962209808385, 1265466752209395713, '外链', '3', 100, '外链', 0, '2020-05-27 10:16:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467428423475202, 1265467337566461954, '系统权重', '1', 100, '系统权重', 0, '2020-05-27 10:18:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467503090475009, 1265467337566461954, '业务权重', '2', 100, '业务权重', 0, '2020-05-27 10:18:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467709110493186, 1265467629167058946, '事假', '1', 100, '事假', 0, '2020-05-27 10:19:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467745013735426, 1265467629167058946, '病假', '2', 100, '病假', 0, '2020-05-27 10:19:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467785253888001, 1265467629167058946, '婚假', '3', 100, '婚假', 0, '2020-05-27 10:20:06', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467823426248706, 1265467629167058946, '丧假', '4', 100, '丧假', 0, '2020-05-27 10:20:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467855781109762, 1265467629167058946, '产假', '5', 100, '产假', 0, '2020-05-27 10:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265467895782187010, 1265467629167058946, '其他', '6', 100, '其他', 0, '2020-05-27 10:20:32', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468138431062018, 1265468028632571905, '全部数据', '1', 100, '全部数据', 0, '2020-05-27 10:21:30', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468194928336897, 1265468028632571905, '本部门及以下数据', '2', 100, '本部门及以下数据', 0, '2020-05-27 10:21:44', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468241992622082, 1265468028632571905, '本部门数据', '3', 100, '本部门数据', 0, '2020-05-27 10:21:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468273634451457, 1265468028632571905, '仅本人数据', '4', 100, '仅本人数据', 0, '2020-05-27 10:22:02', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468302046666753, 1265468028632571905, '自定义数据', '5', 100, '自定义数据', 0, '2020-05-27 10:22:09', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468508100239362, 1265468437904367618, 'app', '1', 100, 'app', 0, '2020-05-27 10:22:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468543433056258, 1265468437904367618, 'pc', '2', 100, 'pc', 0, '2020-05-27 10:23:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468576874242050, 1265468437904367618, '其他', '3', 100, '其他', 0, '2020-05-27 10:23:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468839764828161, 1265468761230680066, 'Integer', '1', 100, 'Integer', 0, '2020-05-27 10:24:17', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468871641538562, 1265468761230680066, 'String', '2', 100, 'String', 0, '2020-05-27 10:24:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468898896125954, 1265468761230680066, 'Long', '3', 100, 'Long', 0, '2020-05-27 10:24:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468922275176450, 1265468761230680066, 'Double', '4', 100, 'Double', 0, '2020-05-27 10:24:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468946648276993, 1265468761230680066, 'Boolean', '5', 100, 'Boolean', 0, '2020-05-27 10:24:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468970450952193, 1265468761230680066, 'Date', '6', 100, 'Date', 0, '2020-05-27 10:24:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265468970450952194, 1265468761230680066, 'List', '7', 100, 'List', 0, '2020-05-27 10:24:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469305756196865, 1265469198583341057, '流程脚本', '1', 100, '流程脚本', 0, '2020-05-27 10:26:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469330859106306, 1265469198583341057, '系统脚本', '2', 100, '系统脚本', 0, '2020-05-27 10:26:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469526330449922, 1265469441454514178, 'groovy', '1', 100, 'groovy', 0, '2020-05-27 10:27:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469753078718464, 1265469702042427393, '启动', '1', 100, '启动', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469753078718465, 1265469702042427393, '全局', '2', 100, '全局', 0, '2020-05-27 10:27:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265469779460890626, 1265469702042427393, '节点', '3', 100, '节点', 0, '2020-05-27 10:28:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470046877130753, 1265469962873610241, '流程启动', 'PROCESS_STARTED', 100, '流程启动', 0, '2020-05-27 10:29:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470074517594113, 1265469962873610241, '流程完成', 'PROCESS_COMPLETED', 100, '流程完成', 0, '2020-05-27 10:29:12', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470103152107521, 1265469962873610241, '流程取消', 'PROCESS_CANCELLED', 100, '流程取消', 0, '2020-05-27 10:29:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470125725851649, 1265469962873610241, '活动开始', 'ACTIVITY_STARTED', 100, '活动开始', 0, '2020-05-27 10:29:24', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470153416646657, 1265469962873610241, '活动完成', 'ACTIVITY_COMPLETED', 100, '活动完成', 0, '2020-05-27 10:29:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470179165478913, 1265469962873610241, '活动取消', 'ACTIVITY_CANCELLED', 100, '活动取消', 0, '2020-05-27 10:29:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470207363784705, 1265469962873610241, '任务分配', 'TASK_ASSIGNED', 100, '任务分配', 0, '2020-05-27 10:29:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470236853936130, 1265469962873610241, '任务创建', 'TASK_CREATED', 100, '任务创建', 0, '2020-05-27 10:29:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470266780295170, 1265469962873610241, '任务完成', 'TASK_COMPLETED', 100, '任务完成', 0, '2020-05-27 10:29:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470296446607361, 1265469962873610241, '连接线', 'SEQUENCEFLOW_TAKEN', 100, '连接线', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470296446607362, 1265469962873610242, '全局', '1', 100, '全局', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470296446607363, 1265469962873610242, '节点', '2', 100, '节点', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470526197997569, 1265470456631271426, '草稿', '0', 100, '草稿', 0, '2020-05-27 10:30:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470552823439361, 1265470456631271426, '审核中', '1', 100, '审核中', 0, '2020-05-27 10:31:06', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470575615287297, 1265470456631271426, '已退回', '2', 100, '已退回', 0, '2020-05-27 10:31:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1265470607588466690, 1265470456631271426, '已完成', '3', 100, '已完成', 0, '2020-05-27 10:31:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617233011335170, 1275617093517172738, '其它', '0', 100, '其它', 0, '2020-06-24 10:30:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617295355469826, 1275617093517172738, '增加', '1', 100, '增加', 0, '2020-06-24 10:30:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617348610547714, 1275617093517172738, '删除', '2', 100, '删除', 0, '2020-06-24 10:30:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617395515449346, 1275617093517172738, '编辑', '3', 100, '编辑', 0, '2020-06-24 10:31:02', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617433612312577, 1275617093517172738, '更新', '4', 100, '更新', 0, '2020-06-24 10:31:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617472707420161, 1275617093517172738, '查询', '5', 100, '查询', 0, '2020-06-24 10:31:20', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617502973517826, 1275617093517172738, '详情', '6', 100, '详情', 0, '2020-06-24 10:31:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617536959963137, 1275617093517172738, '树', '7', 100, '树', 0, '2020-06-24 10:31:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617619524837377, 1275617093517172738, '导入', '8', 100, '导入', 0, '2020-06-24 10:31:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617651816783873, 1275617093517172738, '导出', '9', 100, '导出', 0, '2020-06-24 10:32:03', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617683475390465, 1275617093517172738, '授权', '10', 100, '授权', 0, '2020-06-24 10:32:10', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617709928865793, 1275617093517172738, '强退', '11', 100, '强退', 0, '2020-06-24 10:32:17', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617739091861505, 1275617093517172738, '清空', '12', 100, '清空', 0, '2020-06-24 10:32:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1275617788601425921, 1275617093517172738, '修改状态', '13', 100, '修改状态', 0, '2020-06-24 10:32:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1277774590944317441, 1277774529430654977, '阿里云', '1', 100, '阿里云', 0, '2020-06-30 09:22:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1277774666055913474, 1277774529430654977, '腾讯云', '2', 100, '腾讯云', 0, '2020-06-30 09:23:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1277774695168577538, 1277774529430654977, 'minio', '3', 100, 'minio', 0, '2020-06-30 09:23:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1277774726835572737, 1277774529430654977, '本地', '4', 100, '本地', 0, '2020-06-30 09:23:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278607123583868929, 1278606951432855553, '运行', '1', 100, '运行', 0, '2020-07-02 16:31:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278607162943217666, 1278606951432855553, '停止', '2', 100, '停止', 0, '2020-07-02 16:31:18', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939265862004738, 1278911800547147777, '通知', '1', 100, '通知', 0, '2020-07-03 14:30:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939319922388994, 1278911800547147777, '公告', '2', 100, '公告', 0, '2020-07-03 14:31:10', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939399001796609, 1278911952657776642, '草稿', '0', 100, '草稿', 0, '2020-07-03 14:31:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939432686252034, 1278911952657776642, '发布', '1', 100, '发布', 0, '2020-07-03 14:31:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939458804183041, 1278911952657776642, '撤回', '2', 100, '撤回', 0, '2020-07-03 14:31:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278939485878415362, 1278911952657776642, '删除', '3', 100, '删除', 0, '2020-07-03 14:31:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278992343223025665, 1278992276965605377, '委托中', '0', 90, '委托中', 0, '2020-07-03 18:01:52', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278992370066571266, 1278992276965605377, '委托结束', '1', 100, '委托结束', 0, '2020-07-03 18:01:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1278992396788482050, 1278992276965605377, '未委托', '2', 100, '未委托', 0, '2020-07-03 18:02:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291390260160299009, 1291390159941599233, '是', 'true', 100, '是', 2, '2020-08-06 23:06:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291390315437031426, 1291390159941599233, '否', 'false', 100, '否', 2, '2020-08-06 23:06:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291391148769738754, 1291391077990858754, '是', 'true', 100, '是', 0, '2020-08-06 23:10:17', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291391205719998465, 1291391077990858754, '否', 'false', 100, '否', 0, '2020-08-06 23:10:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291393684314587138, 1291393441594408961, '是', 'true', 100, '已结束', 0, '2020-08-06 23:20:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1291393766048989186, 1291393441594408961, '否', 'false', 100, '未结束', 0, '2020-08-06 23:20:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300767954291433474, 1300767512828354562, 'Mysql', 'com.mysql.cj.jdbc.Driver', 100, 'Mysql数据库驱动', 0, '2020-09-01 20:10:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768214854180866, 1300767512828354562, 'Oracle', 'oracle.jdbc.OracleDriver', 100, 'Oracle数据库驱动', 0, '2020-09-01 20:11:24', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196417, 1300767512828354562, 'Sqlserver', 'com.microsoft.jdbc.sqlserver.SQLServerDriver', 100, 'Sqlserver数据库', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196418, 1300767512828354563, '未支付', '0', 100, '未支付', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196419, 1300767512828354563, '已支付', '1', 100, '已支付', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196420, 1300767512828354563, '已退款', '2', 100, '已退款', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196421, 1300767512828354563, '已关闭', '3', 100, '已关闭', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1300768392747196422, 1300767512828354563, '已关闭有退款', '4', 100, '已关闭有退款', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1342451445578534913, 1342451383595110402, '下载压缩包', '1', 100, '下载压缩包', 0, '2020-12-25 20:45:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1342451490893795329, 1342451383595110402, '生成到本项目', '2', 100, '生成到本项目', 0, '2020-12-25 20:45:52', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1354106182690942978, 1354106042974482433, '自行开发', '1', 100, '自行开发', 0, '2021-01-27 00:37:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1354106244473040897, 1354106042974482433, '在线设计', '2', 100, '在线设计', 0, '2021-01-27 00:37:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358094655567454210, 1358094419419750401, '输入框', 'input', 100, '输入框', 0, '2021-02-07 00:46:13', 1265476890672672808, '2021-02-08 01:01:28', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358094740510498817, 1358094419419750401, '时间选择', 'datepicker', 100, '时间选择', 0, '2021-02-07 00:46:33', 1265476890672672808, '2021-02-08 01:04:07', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358094793149014017, 1358094419419750401, '下拉框', 'select', 100, '下拉框', 0, '2021-02-07 00:46:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358095496009506817, 1358094419419750401, '单选框', 'radio', 100, '单选框', 0, '2021-02-07 00:49:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358095673084633090, 1358094419419750401, '开关', 'switch', 100, '开关', 2, '2021-02-07 00:50:15', 1265476890672672808, '2021-02-11 19:07:18', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358458689433190402, 1358457818733428737, '等于', 'eq', 1, '等于', 0, '2021-02-08 00:52:45', 1265476890672672808, '2021-02-13 23:35:36', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358458785168179202, 1358457818733428737, '模糊', 'like', 2, '模糊', 0, '2021-02-08 00:53:08', 1265476890672672808, '2021-02-13 23:35:46', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358460475682406401, 1358094419419750401, '多选框', 'checkbox', 100, '多选框', 0, '2021-02-08 00:59:51', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358460819019743233, 1358094419419750401, '数字输入框', 'inputnumber', 100, '数字输入框', 0, '2021-02-08 01:01:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358470210267725826, 1358470065111252994, 'Long', 'Long', 100, 'Long', 0, '2021-02-08 01:38:32', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358470239351029762, 1358470065111252994, 'String', 'String', 100, 'String', 0, '2021-02-08 01:38:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358470265640927233, 1358470065111252994, 'Date', 'Date', 100, 'Date', 0, '2021-02-08 01:38:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358470300168437761, 1358470065111252994, 'Integer', 'Integer', 100, 'Integer', 0, '2021-02-08 01:38:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358470697377415169, 1358470065111252994, 'boolean', 'boolean', 100, 'boolean', 0, '2021-02-08 01:40:28', 1265476890672672808, '2021-02-08 01:40:47', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358471133434036226, 1358470065111252994, 'int', 'int', 100, 'int', 0, '2021-02-08 01:42:12', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358471188291338241, 1358470065111252994, 'double', 'double', 100, 'double', 0, '2021-02-08 01:42:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1358756511688761346, 1358457818733428737, '大于', 'gt', 3, '大于', 0, '2021-02-08 20:36:12', 1265476890672672808, '2021-02-13 23:45:24', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358756547159990274, 1358457818733428737, '小于', 'lt', 4, '大于', 0, '2021-02-08 20:36:20', 1265476890672672808, '2021-02-13 23:45:29', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358756609990664193, 1358457818733428737, '不等于', 'ne', 7, '不等于', 0, '2021-02-08 20:36:35', 1265476890672672808, '2021-02-13 23:45:46', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358756685030957057, 1358457818733428737, '大于等于', 'ge', 5, '大于等于', 0, '2021-02-08 20:36:53', 1265476890672672808, '2021-02-13 23:45:35', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1358756800525312001, 1358457818733428737, '小于等于', 'le', 6, '小于等于', 0, '2021-02-08 20:37:20', 1265476890672672808, '2021-02-13 23:45:40', 1265476890672672808);
INSERT INTO `sys_dict_data` VALUES (1360529773814083586, 1358094419419750401, '文本域', 'textarea', 100, '文本域', 0, '2021-02-13 18:02:30', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (1360606105914732545, 1358457818733428737, '不为空', 'isNotNull', 8, '不为空', 0, '2021-02-13 23:05:49', 1265476890672672808, '2021-02-13 23:45:50', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1265216211667636226, '通用状态', 'common_status', 100, '通用状态', 0, '2020-05-26 17:40:26', 1265476890672672808, '2020-06-08 11:31:47', 1265476890672672808);
INSERT INTO `sys_dict_type` VALUES (1265216211667636234, '性别', 'sex', 100, '性别字典', 0, '2020-04-01 10:12:30', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265216211667636235, '常量的分类', 'consts_type', 100, '常量的分类，用于区别一组配置', 0, '2020-04-14 23:24:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265217074079453185, '是否', 'yes_or_no', 100, '是否', 0, '2020-05-26 17:43:52', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265217846770913282, '访问类型', 'vis_type', 100, '访问类型', 0, '2020-05-26 17:46:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265221049302372354, '菜单类型', 'menu_type', 100, '菜单类型', 0, '2020-05-26 17:59:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265466149622128641, '发送类型', 'send_type', 100, '发送类型', 0, '2020-05-27 10:13:36', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265466752209395713, '打开方式', 'open_type', 100, '打开方式', 0, '2020-05-27 10:16:00', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265467337566461954, '菜单权重', 'menu_weight', 100, '菜单权重', 0, '2020-05-27 10:18:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265467629167058946, '请假类型', 'leave_type', 100, '请假类型', 0, '2020-05-27 10:19:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265468028632571905, '数据范围类型', 'data_scope_type', 100, '数据范围类型', 0, '2020-05-27 10:21:04', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265468437904367618, '短信发送来源', 'sms_send_source', 100, '短信发送来源', 0, '2020-05-27 10:22:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265468761230680066, '字段类型', 'filed_type', 100, '字段类型', 0, '2020-05-27 10:23:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265469198583341057, '脚本类型', 'script_type', 100, '脚本类型', 0, '2020-05-27 10:25:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265469441454514178, '脚本语言类型', 'script_language_type', 100, '脚本语言类型', 0, '2020-05-27 10:26:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265469702042427393, '表单类型', 'form_type', 100, '表单类型', 0, '2020-05-27 10:27:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265469962873610241, '事件类型', 'event_type', 100, '事件类型', 0, '2020-05-27 10:28:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265469962873610242, '事件节点类型', 'event_node_type', 100, '事件节点类型', 0, '2020-05-27 10:28:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1265470456631271426, '流程状态', 'process_status', 100, '流程状态', 0, '2020-05-27 10:30:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1275617093517172738, '操作类型', 'op_type', 100, '操作类型', 0, '2020-06-24 10:29:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1277774529430654977, '文件存储位置', 'file_storage_location', 100, '文件存储位置', 0, '2020-06-30 09:22:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1278606951432855553, '运行状态', 'run_status', 100, '定时任务运行状态', 0, '2020-07-02 16:30:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1278911800547147777, '通知公告类型', 'notice_type', 100, '通知公告类型', 0, '2020-07-03 12:41:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1278911952657776642, '通知公告状态', 'notice_status', 100, '通知公告状态', 0, '2020-07-03 12:42:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1278992276965605377, '委托状态', 'delegate_status', 100, '委托状态', 0, '2020-07-03 18:01:36', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1291390159941599233, '是否boolean', 'yes_true_false', 100, '是否boolean', 2, '2020-08-06 23:06:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1291391077990858754, '流程是否挂起', 'suspended_status', 100, '流程是否挂起', 0, '2020-08-06 23:10:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1291393441594408961, '是否结束', 'ended_status', 100, '是否结束', 0, '2020-08-06 23:19:24', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1300767512828354562, 'JDBC驱动类型', 'jdbc_driver', 100, 'JDBC驱动类型', 0, '2020-09-01 20:08:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1300767512828354563, '支付宝交易状态', 'alipay_trade_status', 100, '支付宝交易状态', 0, '2020-09-23 10:36:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1342451383595110402, '代码生成方式', 'code_gen_create_type', 100, '代码生成方式', 0, '2020-12-25 20:45:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1354106042974482433, '流程表单类型', 'form_resource_type', 100, '流程表单类型', 0, '2021-01-27 00:36:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1358094419419750401, '代码生成作用类型', 'code_gen_effect_type', 100, '代码生成作用类型', 0, '2021-02-07 00:45:16', 1265476890672672808, '2021-02-08 00:47:48', 1265476890672672808);
INSERT INTO `sys_dict_type` VALUES (1358457818733428737, '代码生成查询类型', 'code_gen_query_type', 100, '代码生成查询类型', 0, '2021-02-08 00:49:18', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1358470065111252994, '代码生成java类型', 'code_gen_java_type', 100, '代码生成java类型', 0, '2021-02-08 01:37:57', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_emp
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp`;
CREATE TABLE `sys_emp`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `job_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工号',
  `org_id` bigint(0) NOT NULL COMMENT '所属机构id',
  `org_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属机构名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_emp
-- ----------------------------
INSERT INTO `sys_emp` VALUES (1275735541155614721, '102', 1265476890672672769, '华夏集团北京分公司');
INSERT INTO `sys_emp` VALUES (1280700700074041345, '110', 1265476890672672771, '研发部');
INSERT INTO `sys_emp` VALUES (1280709549107552257, '100', 1265476890672672770, '华夏集团成都分公司');

-- ----------------------------
-- Table structure for sys_emp_ext_org_pos
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp_ext_org_pos`;
CREATE TABLE `sys_emp_ext_org_pos`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `emp_id` bigint(0) NOT NULL COMMENT '员工id',
  `org_id` bigint(0) NOT NULL COMMENT '机构id',
  `pos_id` bigint(0) NOT NULL COMMENT '岗位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工附属机构岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_emp_ext_org_pos
-- ----------------------------

-- ----------------------------
-- Table structure for sys_emp_pos
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp_pos`;
CREATE TABLE `sys_emp_pos`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `emp_id` bigint(0) NOT NULL COMMENT '员工id',
  `pos_id` bigint(0) NOT NULL COMMENT '职位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工职位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_emp_pos
-- ----------------------------
INSERT INTO `sys_emp_pos` VALUES (1280710811995709441, 1275735541155614721, 1265476890672672787);
INSERT INTO `sys_emp_pos` VALUES (1280710828479324161, 1280700700074041345, 1265476890672672790);
INSERT INTO `sys_emp_pos` VALUES (1281042262003867649, 1280709549107552257, 1265476890672672787);

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `file_location` tinyint(0) NOT NULL COMMENT '文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）',
  `file_bucket` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件仓库',
  `file_origin_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称（上传时候的文件名）',
  `file_suffix` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `file_size_kb` bigint(0) NULL DEFAULT NULL COMMENT '文件大小kb',
  `file_size_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件大小信息，计算后的',
  `file_object_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '存储到bucket的名称（文件唯一标识id）',
  `file_path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `pid` bigint(0) NOT NULL COMMENT '父id',
  `pids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父ids',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '菜单类型（字典 0目录 1菜单 2按钮）',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件地址',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `application` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '应用分类（应用编码）',
  `open_type` tinyint(0) NOT NULL COMMENT '打开方式（字典 0无 1组件 2内链 3外链）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否可见（Y-是，N-否）',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重定向地址',
  `weight` tinyint(0) NULL DEFAULT NULL COMMENT '权重（字典 1系统权重 2业务权重）',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1264622039642255311, 0, '[0],', '主控面板', 'system_index', 0, 'home', '/', 'RouteView', NULL, 'system', 0, 'Y', NULL, '/analysis', 1, 1, NULL, 0, '2020-05-25 02:19:24', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255321, 1264622039642255311, '[0],[1264622039642255311],', '分析页', 'system_index_dashboard', 1, NULL, 'analysis', 'system/dashboard/Analysis', NULL, 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-25 02:21:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255331, 1264622039642255311, '[0],[1264622039642255311],', '工作台', 'system_index_workplace', 1, NULL, 'workplace', 'system/dashboard/Workplace', NULL, 'system', 0, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-05-25 02:23:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255341, 0, '[0],', '组织架构', 'sys_mgr', 0, 'team', '/sys', 'PageView', NULL, 'system', 0, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-03-27 15:58:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255351, 1264622039642255341, '[0],[1264622039642255341],', '用户管理', 'sys_user_mgr', 1, NULL, '/mgr_user', 'system/user/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 3, NULL, 0, '2020-03-27 16:10:21', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255361, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户查询', 'sys_user_mgr_page', 2, NULL, NULL, NULL, 'sysUser:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:36:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255371, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户编辑', 'sys_user_mgr_edit', 2, NULL, NULL, NULL, 'sysUser:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255381, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户增加', 'sys_user_mgr_add', 2, NULL, NULL, NULL, 'sysUser:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:37:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255391, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户删除', 'sys_user_mgr_delete', 2, NULL, NULL, NULL, 'sysUser:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:37:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255401, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户详情', 'sys_user_mgr_detail', 2, NULL, NULL, NULL, 'sysUser:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:38:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255411, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户导出', 'sys_user_mgr_export', 2, NULL, NULL, NULL, 'sysUser:export', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:21:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255421, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户选择器', 'sys_user_mgr_selector', 2, NULL, NULL, NULL, 'sysUser:selector', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-03 13:30:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255431, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户授权角色', 'sys_user_mgr_grant_role', 2, NULL, NULL, NULL, 'sysUser:grantRole', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:22:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255441, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户拥有角色', 'sys_user_mgr_own_role', 2, NULL, NULL, NULL, 'sysUser:ownRole', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:27:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255451, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户授权数据', 'sys_user_mgr_grant_data', 2, NULL, NULL, NULL, 'sysUser:grantData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:22:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255461, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户拥有数据', 'sys_user_mgr_own_data', 2, NULL, NULL, NULL, 'sysUser:ownData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:27:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255471, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户更新信息', 'sys_user_mgr_update_info', 2, NULL, NULL, NULL, 'sysUser:updateInfo', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 16:19:32', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255481, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改密码', 'sys_user_mgr_update_pwd', 2, NULL, NULL, NULL, 'sysUser:updatePwd', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 16:20:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255491, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改状态', 'sys_user_mgr_change_status', 2, NULL, NULL, NULL, 'sysUser:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:13:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255501, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改头像', 'sys_user_mgr_update_avatar', 2, NULL, NULL, NULL, 'sysUser:updateAvatar', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:21:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255511, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户重置密码', 'sys_user_mgr_reset_pwd', 2, NULL, NULL, NULL, 'sysUser:resetPwd', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:01:51', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255521, 1264622039642255341, '[0],[1264622039642255341],', '机构管理', 'sys_org_mgr', 1, NULL, '/org', 'system/org/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 4, NULL, 0, '2020-03-27 17:15:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255531, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构查询', 'sys_org_mgr_page', 2, NULL, NULL, NULL, 'sysOrg:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:17:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255541, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构列表', 'sys_org_mgr_list', 2, NULL, NULL, NULL, 'sysOrg:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:54:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255551, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构增加', 'sys_org_mgr_add', 2, NULL, NULL, NULL, 'sysOrg:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:19:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255561, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构编辑', 'sys_org_mgr_edit', 2, NULL, NULL, NULL, 'sysOrg:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:54:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255571, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构删除', 'sys_org_mgr_delete', 2, NULL, NULL, NULL, 'sysOrg:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:20:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255581, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构详情', 'sys_org_mgr_detail', 2, NULL, NULL, NULL, 'sysOrg:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:21:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255591, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构树', 'sys_org_mgr_tree', 2, NULL, NULL, NULL, 'sysOrg:tree', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:21:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255601, 1264622039642255341, '[0],[1264622039642255341],', '职位管理', 'sys_pos_mgr', 1, NULL, '/pos', 'system/pos/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 5, NULL, 0, '2020-03-27 18:38:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255611, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位查询', 'sys_pos_mgr_page', 2, NULL, NULL, NULL, 'sysPos:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:41:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255621, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位列表', 'sys_pos_mgr_list', 2, NULL, NULL, NULL, 'sysPos:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:55:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255631, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位增加', 'sys_pos_mgr_add', 2, NULL, NULL, NULL, 'sysPos:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:42:20', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255641, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位编辑', 'sys_pos_mgr_edit', 2, NULL, NULL, NULL, 'sysPos:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:56:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255651, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位删除', 'sys_pos_mgr_delete', 2, NULL, NULL, NULL, 'sysPos:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:42:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255661, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位详情', 'sys_pos_mgr_detail', 2, NULL, NULL, NULL, 'sysPos:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:43:00', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255671, 0, '[0],', '权限管理', 'auth_manager', 0, 'safety-certificate', '/auth', 'PageView', NULL, 'system', 0, 'Y', NULL, NULL, 1, 3, NULL, 0, '2020-07-15 15:51:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255681, 1264622039642255671, '[0],[1264622039642255671],', '应用管理', 'sys_app_mgr', 1, NULL, '/app', 'system/app/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 6, NULL, 0, '2020-03-27 16:40:21', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255691, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用查询', 'sys_app_mgr_page', 2, NULL, NULL, NULL, 'sysApp:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:41:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255701, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用列表', 'sys_app_mgr_list', 2, NULL, NULL, NULL, 'sysApp:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 10:04:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255711, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用增加', 'sys_app_mgr_add', 2, NULL, NULL, NULL, 'sysApp:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:44:10', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255721, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用编辑', 'sys_app_mgr_edit', 2, NULL, NULL, NULL, 'sysApp:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 10:04:34', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255731, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用删除', 'sys_app_mgr_delete', 2, NULL, NULL, NULL, 'sysApp:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255741, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用详情', 'sys_app_mgr_detail', 2, NULL, NULL, NULL, 'sysApp:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255751, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '设为默认应用', 'sys_app_mgr_set_as_default', 2, NULL, NULL, NULL, 'sysApp:setAsDefault', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255761, 1264622039642255671, '[0],[1264622039642255671],', '菜单管理', 'sys_menu_mgr', 1, NULL, '/menu', 'system/menu/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 7, NULL, 0, '2020-03-27 18:44:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255771, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单列表', 'sys_menu_mgr_list', 2, NULL, NULL, NULL, 'sysMenu:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:45:20', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255781, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单增加', 'sys_menu_mgr_add', 2, NULL, NULL, NULL, 'sysMenu:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:45:37', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255791, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单编辑', 'sys_menu_mgr_edit', 2, NULL, NULL, NULL, 'sysMenu:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:52:00', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255801, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单删除', 'sys_menu_mgr_delete', 2, NULL, NULL, NULL, 'sysMenu:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:46:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255811, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单详情', 'sys_menu_mgr_detail', 2, NULL, NULL, NULL, 'sysMenu:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:46:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255821, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单授权树', 'sys_menu_mgr_grant_tree', 2, NULL, NULL, NULL, 'sysMenu:treeForGrant', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-03 09:50:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255831, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单树', 'sys_menu_mgr_tree', 2, NULL, NULL, NULL, 'sysMenu:tree', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:47:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255841, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单切换', 'sys_menu_mgr_change', 2, NULL, NULL, NULL, 'sysMenu:change', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-03 09:51:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255851, 1264622039642255671, '[0],[1264622039642255671],', '角色管理', 'sys_role_mgr', 1, NULL, '/role', 'system/role/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 8, NULL, 0, '2020-03-28 16:01:09', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255861, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色查询', 'sys_role_mgr_page', 2, NULL, NULL, NULL, 'sysRole:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:09', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255871, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色增加', 'sys_role_mgr_add', 2, NULL, NULL, NULL, 'sysRole:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255881, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色编辑', 'sys_role_mgr_edit', 2, NULL, NULL, NULL, 'sysRole:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:57:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255891, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色删除', 'sys_role_mgr_delete', 2, NULL, NULL, NULL, 'sysRole:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255901, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色详情', 'sys_role_mgr_detail', 2, NULL, NULL, NULL, 'sysRole:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:03:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255911, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色下拉', 'sys_role_mgr_drop_down', 2, NULL, NULL, NULL, 'sysRole:dropDown', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:45:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255921, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色授权菜单', 'sys_role_mgr_grant_menu', 2, NULL, NULL, NULL, 'sysRole:grantMenu', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:16:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255931, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色拥有菜单', 'sys_role_mgr_own_menu', 2, NULL, NULL, NULL, 'sysRole:ownMenu', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:21:54', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255941, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色授权数据', 'sys_role_mgr_grant_data', 2, NULL, NULL, NULL, 'sysRole:grantData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255951, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色拥有数据', 'sys_role_mgr_own_data', 2, NULL, NULL, NULL, 'sysRole:ownData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:23:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255961, 0, '[0],', '开发管理', 'system_tools', 0, 'euro', '/tools', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 4, NULL, 0, '2020-05-25 02:10:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255971, 1264622039642255961, '[0],[1264622039642255961],', '系统配置', 'system_tools_config', 1, NULL, '/config', 'system/config/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 9, NULL, 0, '2020-05-25 02:12:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255981, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置查询', 'system_tools_config_page', 2, NULL, NULL, NULL, 'sysConfig:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642255991, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置列表', 'system_tools_config_list', 2, NULL, NULL, NULL, 'sysConfig:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256001, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置增加', 'system_tools_config_add', 2, NULL, NULL, NULL, 'sysConfig:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256011, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置编辑', 'system_tools_config_edit', 2, NULL, NULL, NULL, 'sysConfig:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256021, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置删除', 'system_tools_config_delete', 2, NULL, NULL, NULL, 'sysConfig:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:44', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256031, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置详情', 'system_tools_config_detail', 2, NULL, NULL, NULL, 'sysConfig:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256041, 1264622039642255961, '[0],[1264622039642255961],', '邮件发送', 'sys_email_mgr', 1, NULL, '/email', 'system/email/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 10, NULL, 0, '2020-07-02 11:44:21', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256051, 1264622039642256041, '[0],[1264622039642255961],[1264622039642256041],', '发送文本邮件', 'sys_email_mgr_send_email', 2, NULL, NULL, NULL, 'email:sendEmail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:45:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256061, 1264622039642256041, '[0],[1264622039642255961],[1264622039642256041],', '发送html邮件', 'sys_email_mgr_send_email_html', 2, NULL, NULL, NULL, 'email:sendEmailHtml', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256071, 1264622039642255961, '[0],[1264622039642255961],', '短信管理', 'sys_sms_mgr', 1, NULL, '/sms', 'system/sms/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 11, NULL, 0, '2020-07-02 12:00:12', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256081, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '短信发送查询', 'sys_sms_mgr_page', 2, NULL, NULL, NULL, 'sms:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256091, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '发送验证码短信', 'sys_sms_mgr_send_login_message', 2, NULL, NULL, NULL, 'sms:sendLoginMessage', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:02:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256101, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '验证短信验证码', 'sys_sms_mgr_validate_message', 2, NULL, NULL, NULL, 'sms:validateMessage', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:02:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256111, 1264622039642255961, '[0],[1264622039642255961],', '字典管理', 'sys_dict_mgr', 1, NULL, '/dict', 'system/dict/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 12, NULL, 0, '2020-04-01 11:17:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256121, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型查询', 'sys_dict_mgr_dict_type_page', 2, NULL, NULL, NULL, 'sysDictType:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:20:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256131, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型列表', 'sys_dict_mgr_dict_type_list', 2, NULL, NULL, NULL, 'sysDictType:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:12:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256141, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型增加', 'sys_dict_mgr_dict_type_add', 2, NULL, NULL, NULL, 'sysDictType:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:19:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256151, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型删除', 'sys_dict_mgr_dict_type_delete', 2, NULL, NULL, NULL, 'sysDictType:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:21:30', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256161, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型编辑', 'sys_dict_mgr_dict_type_edit', 2, NULL, NULL, NULL, 'sysDictType:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:21:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256171, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型详情', 'sys_dict_mgr_dict_type_detail', 2, NULL, NULL, NULL, 'sysDictType:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:06', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256181, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型下拉', 'sys_dict_mgr_dict_type_drop_down', 2, NULL, NULL, NULL, 'sysDictType:dropDown', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256191, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型修改状态', 'sys_dict_mgr_dict_type_change_status', 2, NULL, NULL, NULL, 'sysDictType:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:15:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256201, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值查询', 'sys_dict_mgr_dict_page', 2, NULL, NULL, NULL, 'sysDictData:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:23:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256211, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值列表', 'sys_dict_mgr_dict_list', 2, NULL, NULL, NULL, 'sysDictData:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256221, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值增加', 'sys_dict_mgr_dict_add', 2, NULL, NULL, NULL, 'sysDictData:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:51', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256231, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值删除', 'sys_dict_mgr_dict_delete', 2, NULL, NULL, NULL, 'sysDictData:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:23:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256241, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值编辑', 'sys_dict_mgr_dict_edit', 2, NULL, NULL, NULL, 'sysDictData:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:21', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256251, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值详情', 'sys_dict_mgr_dict_detail', 2, NULL, NULL, NULL, 'sysDictData:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256261, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值修改状态', 'sys_dict_mgr_dict_change_status', 2, NULL, NULL, NULL, 'sysDictData:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:17:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256271, 1264622039642255961, '[0],[1264622039642255961],', '接口文档', 'sys_swagger_mgr', 1, NULL, '/swagger', 'Iframe', NULL, 'system', 2, 'Y', 'http://localhost:82/doc.html', NULL, 1, 13, NULL, 0, '2020-07-02 12:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256281, 0, '[0],', '日志管理', 'sys_log_mgr', 0, 'read', '/log', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 5, NULL, 0, '2020-04-01 09:25:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256291, 1264622039642256281, '[0],[1264622039642256281],', '访问日志', 'sys_log_mgr_vis_log', 1, NULL, '/vislog', 'system/log/vislog/index', NULL, 'system', 0, 'Y', NULL, NULL, 1, 14, NULL, 0, '2020-04-01 09:26:40', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256301, 1264622039642256291, '[0],[1264622039642256281],[1264622039642256291],', '访问日志查询', 'sys_log_mgr_vis_log_page', 2, NULL, NULL, NULL, 'sysVisLog:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:55:51', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256311, 1264622039642256291, '[0],[1264622039642256281],[1264622039642256291],', '访问日志清空', 'sys_log_mgr_vis_log_delete', 2, NULL, NULL, NULL, 'sysVisLog:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:56:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256321, 1264622039642256281, '[0],[1264622039642256281],', '操作日志', 'sys_log_mgr_op_log', 1, NULL, '/oplog', 'system/log/oplog/index', NULL, 'system', 0, 'Y', NULL, NULL, 1, 15, NULL, 0, '2020-04-01 09:26:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256331, 1264622039642256321, '[0],[1264622039642256281],[1264622039642256321],', '操作日志查询', 'sys_log_mgr_op_log_page', 2, NULL, NULL, NULL, 'sysOpLog:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:57:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256341, 1264622039642256321, '[0],[1264622039642256281],[1264622039642256321],', '操作日志清空', 'sys_log_mgr_op_log_delete', 2, NULL, NULL, NULL, 'sysOpLog:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:58:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256351, 0, '[0],', '系统监控', 'sys_monitor_mgr', 0, 'deployment-unit', '/monitor', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 6, NULL, 0, '2020-06-05 16:00:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256361, 1264622039642256351, '[0],[1264622039642256351],', '服务监控', 'sys_monitor_mgr_machine_monitor', 1, NULL, '/machine', 'system/machine/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 16, NULL, 0, '2020-06-05 16:02:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256371, 1264622039642256361, '[0],[1264622039642256351],[1264622039642256361],', '服务监控查询', 'sys_monitor_mgr_machine_monitor_query', 2, NULL, NULL, NULL, 'sysMachine:query', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:05:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256381, 1264622039642256351, '[0],[1264622039642256351],', '在线用户', 'sys_monitor_mgr_online_user', 1, NULL, '/onlineUser', 'system/onlineUser/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 17, NULL, 0, '2020-06-05 16:01:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256391, 1264622039642256381, '[0],[1264622039642256351],[1264622039642256381],', '在线用户列表', 'sys_monitor_mgr_online_user_list', 2, NULL, NULL, NULL, 'sysOnlineUser:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:03:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256401, 1264622039642256381, '[0],[1264622039642256351],[1264622039642256381],', '在线用户强退', 'sys_monitor_mgr_online_user_force_exist', 2, NULL, NULL, NULL, 'sysOnlineUser:forceExist', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:04:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256411, 1264622039642256351, '[0],[1264622039642256351],', '数据监控', 'sys_monitor_mgr_druid', 1, NULL, '/druid', 'Iframe', NULL, 'system', 2, 'Y', 'http://localhost:82/druid/login.html', NULL, 1, 18, NULL, 0, '2020-06-28 16:15:07', 1265476890672672808, '2020-09-13 09:39:10', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642256421, 0, '[0],', '通知公告', 'sys_notice', 0, 'sound', '/notice', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 7, NULL, 0, '2020-06-29 15:41:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256431, 1264622039642256421, '[0],[1264622039642256421],', '公告管理', 'sys_notice_mgr', 1, NULL, '/notice', 'system/notice/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 19, NULL, 0, '2020-06-29 15:44:24', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256441, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告查询', 'sys_notice_mgr_page', 2, NULL, NULL, NULL, 'sysNotice:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:45:30', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256451, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告增加', 'sys_notice_mgr_add', 2, NULL, NULL, NULL, 'sysNotice:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256461, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告编辑', 'sys_notice_mgr_edit', 2, NULL, NULL, NULL, 'sysNotice:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256471, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告删除', 'sys_notice_mgr_delete', 2, NULL, NULL, NULL, 'sysNotice:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256481, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告查看', 'sys_notice_mgr_detail', 2, NULL, NULL, NULL, 'sysNotice:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256491, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告修改状态', 'sys_notice_mgr_changeStatus', 2, NULL, NULL, NULL, 'sysNotice:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256501, 1264622039642256421, '[0],[1264622039642256421],', '已收公告', 'sys_notice_mgr_received', 1, NULL, '/noticeReceived', 'system/noticeReceived/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 20, NULL, 0, '2020-06-29 16:32:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256511, 1264622039642256501, '[0],[1264622039642256421],[1264622039642256501],', '已收公告查询', 'sys_notice_mgr_received_page', 2, NULL, NULL, NULL, 'sysNotice:received', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 16:33:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256521, 0, '[0],', '文件管理', 'sys_file_mgr', 0, 'file', '/file', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 8, NULL, 0, '2020-06-24 17:31:10', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256531, 1264622039642256521, '[0],[1264622039642256521],', '系统文件', 'sys_file_mgr_sys_file', 1, NULL, '/file', 'system/file/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 21, NULL, 0, '2020-06-24 17:32:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256541, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件查询', 'sys_file_mgr_sys_file_page', 2, NULL, NULL, NULL, 'sysFileInfo:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256551, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件列表', 'sys_file_mgr_sys_file_list', 2, NULL, NULL, NULL, 'sysFileInfo:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256561, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件删除', 'sys_file_mgr_sys_file_delete', 2, NULL, NULL, NULL, 'sysFileInfo:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:36:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256571, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件详情', 'sys_file_mgr_sys_file_detail', 2, NULL, NULL, NULL, 'sysFileInfo:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:36:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256581, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件上传', 'sys_file_mgr_sys_file_upload', 2, NULL, NULL, NULL, 'sysFileInfo:upload', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:34:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256591, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件下载', 'sys_file_mgr_sys_file_download', 2, NULL, NULL, NULL, 'sysFileInfo:download', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:34:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256601, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '图片预览', 'sys_file_mgr_sys_file_preview', 2, NULL, NULL, NULL, 'sysFileInfo:preview', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256611, 0, '[0],', '定时任务', 'sys_timers', 0, 'dashboard', '/timers', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:17:20', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256621, 1264622039642256611, '[0],[1264622039642256611],', '任务管理', 'sys_timers_mgr', 1, NULL, '/timers', 'system/timers/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 22, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256631, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务查询', 'sys_timers_mgr_page', 2, NULL, NULL, NULL, 'sysTimers:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:19:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256641, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务列表', 'sys_timers_mgr_list', 2, NULL, NULL, NULL, 'sysTimers:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:19:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256651, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务详情', 'sys_timers_mgr_detail', 2, NULL, NULL, NULL, 'sysTimers:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:10', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256661, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务增加', 'sys_timers_mgr_add', 2, NULL, NULL, NULL, 'sysTimers:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256671, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务删除', 'sys_timers_mgr_delete', 2, NULL, NULL, NULL, 'sysTimers:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:33', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256681, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务编辑', 'sys_timers_mgr_edit', 2, NULL, NULL, NULL, 'sysTimers:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256691, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务可执行列表', 'sys_timers_mgr_get_action_classes', 2, NULL, NULL, NULL, 'sysTimers:getActionClasses', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256701, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务启动', 'sys_timers_mgr_start', 2, NULL, NULL, NULL, 'sysTimers:start', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:32', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256711, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务关闭', 'sys_timers_mgr_stop', 2, NULL, NULL, NULL, 'sysTimers:stop', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256721, 0, '[0],', '业务流程', 'sys_flw_mgr', 0, 'cluster', '/flw', 'PageView', NULL, 'office', 1, 'Y', NULL, NULL, 0, 9, NULL, 0, '2020-05-27 15:04:59', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256731, 1264622039642256721, '[0],[1264622039642256721],', '模型设计', 'sys_flw_model_designer', 1, NULL, '/designer', 'Iframe', NULL, 'office', 2, 'Y', 'http://localhost:82/designer/index.html?token=', NULL, 0, 23, NULL, 2, '2020-05-27 15:08:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256732, 1264622039642256721, '[0],[1264622039642256721],', '模型管理', 'sys_flw_model_mgr', 1, NULL, '/model', 'flowable/model/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 24, NULL, 0, '2020-05-27 15:21:16', 1265476890672672808, '2020-08-17 21:32:34', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642256733, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型列表', 'sys_flw_model_mgr_model_list', 2, NULL, NULL, NULL, 'flowableModel:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256734, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型增加', 'sys_flw_model_mgr_model_add', 2, NULL, NULL, NULL, 'flowableModel:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256735, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型删除', 'sys_flw_model_mgr_model_delete', 2, NULL, NULL, NULL, 'flowableModel:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256736, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型编辑', 'sys_flw_model_mgr_model_edit', 2, NULL, NULL, NULL, 'flowableModel:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256737, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型预览', 'sys_flw_model_mgr_model_preview', 2, NULL, NULL, NULL, 'flowableModel:preview', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256738, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型版本', 'sys_flw_model_mgr_model_version', 2, NULL, NULL, NULL, 'flowableModel:version', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256739, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型设为新版本', 'sys_flw_model_mgr_model_set_as_new', 2, NULL, NULL, NULL, 'flowableModel:setAsNew', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256740, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型导入', 'sys_flw_model_mgr_model_import_model', 2, NULL, NULL, NULL, 'flowableModel:importModel', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256741, 1264622039642256721, '[0],[1264622039642256721],', '定义管理', 'sys_flw_definition_mgr', 1, NULL, '/defenition', 'flowable/defenition/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 24, NULL, 0, '2020-05-27 15:21:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256751, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义查询', 'sys_flw_definition_mgr_page', 2, NULL, NULL, NULL, 'flowableDefinition:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:22:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256761, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义部署', 'sys_flw_definition_mgr_deploy', 2, NULL, NULL, NULL, 'flowableDefinition:deploy', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:22:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256771, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义删除', 'sys_flw_definition_mgr_delete', 2, NULL, NULL, NULL, 'flowableDefinition:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:06', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256781, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义导出', 'sys_flw_definition_mgr_export', 2, NULL, NULL, NULL, 'flowableDefinition:export', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:21', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256791, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义映射', 'sys_flw_definition_mgr_mapping', 2, NULL, NULL, NULL, 'flowableDefinition:mapping', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:40', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256801, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义挂起', 'sys_flw_definition_mgr_suspend', 2, NULL, NULL, NULL, 'flowableDefinition:suspend', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256811, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义激活', 'sys_flw_definition_mgr_active', 2, NULL, NULL, NULL, 'flowableDefinition:active', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:24:09', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256821, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义追踪', 'sys_flw_definition_mgr_trace', 2, NULL, NULL, NULL, 'flowableDefinition:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:24:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256831, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '任务节点', 'sys_flw_definition_mgr_userTasks', 2, NULL, NULL, NULL, 'flowableDefinition:userTasks', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:25:04', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256841, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项编辑', 'sys_flw_definition_mgr_option_edit', 2, NULL, NULL, NULL, 'flowableOption:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:26:39', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256851, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项查看', 'sys_flw_definition_mgr_option_detail', 2, NULL, NULL, NULL, 'flowableOption:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:26:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256861, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项列表', 'sys_flw_definition_mgr_option_list', 2, NULL, NULL, NULL, 'flowableOption:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:27:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256871, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮增加', 'sys_flw_definition_mgr_button_add', 2, NULL, NULL, NULL, 'flowableButton:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:05:54', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256881, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮删除', 'sys_flw_definition_mgr_button_delete', 2, NULL, NULL, NULL, 'flowableButton:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256891, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮编辑', 'sys_flw_definition_mgr_button_edit', 2, NULL, NULL, NULL, 'flowableButton:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:20', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256901, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮查看', 'sys_flw_definition_mgr_button_detail', 2, NULL, NULL, NULL, 'flowableButton:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256911, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮列表', 'sys_flw_definition_mgr_button_list', 2, NULL, NULL, NULL, 'flowableButton:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256912, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮追踪', 'sys_flw_definition_mgr_button_trace', 2, NULL, NULL, NULL, 'flowableButton:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256921, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件增加', 'sys_flw_definition_mgr_event_add', 2, NULL, NULL, NULL, 'flowableEvent:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256931, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件删除', 'sys_flw_definition_mgr_event_delete', 2, NULL, NULL, NULL, 'flowableEvent:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256941, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件编辑', 'sys_flw_definition_mgr_event_edit', 2, NULL, NULL, NULL, 'flowableEvent:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:50', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256951, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件查看', 'sys_flw_definition_mgr_event_detail', 2, NULL, NULL, NULL, 'flowableEvent:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256961, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件列表', 'sys_flw_definition_mgr_event_list', 2, NULL, NULL, NULL, 'flowableEvent:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256971, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '表单列表', 'sys_flw_definition_mgr_form_list', 2, NULL, NULL, NULL, 'flowableForm:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256981, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单增加', 'sys_flw_definition_mgr_form_add', 2, NULL, NULL, NULL, 'flowableForm:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642256991, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单删除', 'sys_flw_definition_mgr_form_delete', 2, NULL, NULL, NULL, 'flowableForm:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257001, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单编辑', 'sys_flw_definition_mgr_form_edit', 2, NULL, NULL, NULL, 'flowableForm:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257011, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单查看', 'sys_flw_definition_mgr_form_detail', 2, NULL, NULL, NULL, 'flowableForm:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257021, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程启动表单', 'sys_flw_definition_mgr_form_start_form_data', 2, NULL, NULL, NULL, 'flowableForm:startFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257022, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程全局表单', 'sys_flw_definition_mgr_form_global_form_data', 2, NULL, NULL, NULL, 'flowableForm:globalFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257031, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程任务表单', 'sys_flw_definition_mgr_form_task_form_data', 2, NULL, NULL, NULL, 'flowableForm:taskFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257041, 1264622039642256721, '[0],[1264622039642256721],', '分类管理', 'sys_flw_category_mgr', 1, NULL, '/category', 'flowable/category/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 25, NULL, 0, '2020-05-27 15:10:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257051, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类查询', 'sys_flw_category_mgr_page', 2, NULL, NULL, NULL, 'flowableCategory:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 12:24:58', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257061, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类列表', 'sys_flw_category_mgr_list', 2, NULL, NULL, NULL, 'flowableCategory:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:13:47', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257071, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类增加', 'sys_flw_category_mgr_add', 2, NULL, NULL, NULL, 'flowableCategory:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:14:18', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257081, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类删除', 'sys_flw_category_mgr_delete', 2, NULL, NULL, NULL, 'flowableCategory:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:16:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257091, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类编辑', 'sys_flw_category_mgr_edit', 2, NULL, NULL, NULL, 'flowableCategory:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:17:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257101, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类详情', 'sys_flw_category_mgr_detail', 2, NULL, NULL, NULL, 'flowableCategory:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:17:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257111, 1264622039642256721, '[0],[1264622039642256721],', '表单管理', 'sys_flw_form_resource_mgr', 1, NULL, '/form', 'flowable/form/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 26, NULL, 0, '2020-05-27 16:43:34', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257121, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单查询', 'sys_flw_form_resource_mgr_form_page', 2, NULL, NULL, NULL, 'flowableFormResource:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257131, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单增加', 'sys_flw_form_resource_mgr_form_add', 2, NULL, NULL, NULL, 'flowableFormResource:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257141, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单删除', 'sys_flw_form_resource_mgr_form_delete', 2, NULL, NULL, NULL, 'flowableFormResource:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257151, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单编辑', 'sys_flw_form_resource_mgr_form_edit', 2, NULL, NULL, NULL, 'flowableFormResource:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257161, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单查看', 'sys_flw_form_resource_mgr_form_detail', 2, NULL, NULL, NULL, 'flowableFormResource:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257162, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单设计', 'sys_flw_form_resource_mgr_form_design', 2, NULL, NULL, NULL, 'flowableFormResource:design', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257163, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单列表', 'sys_flw_form_resource_mgr_form_list', 2, NULL, NULL, NULL, 'flowableFormResource:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257171, 1264622039642256721, '[0],[1264622039642256721],', '脚本管理', 'sys_flw_script_mgr', 1, NULL, '/script', 'flowable/script/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 27, NULL, 0, '2020-05-27 16:43:34', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257181, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本查询', 'sys_flw_script_mgr_page', 2, NULL, NULL, NULL, 'flowableScript:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257191, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本列表', 'sys_flw_script_mgr_list', 2, NULL, NULL, NULL, 'flowableScript:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:25', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257201, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本增加', 'sys_flw_script_mgr_add', 2, NULL, NULL, NULL, 'flowableScript:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:43', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257211, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本删除', 'sys_flw_script_mgr_delete', 2, NULL, NULL, NULL, 'flowableScript:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257221, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本编辑', 'sys_flw_script_mgr_edit', 2, NULL, NULL, NULL, 'flowableScript:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:46:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257231, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本查看', 'sys_flw_script_mgr_detail', 2, NULL, NULL, NULL, 'flowableScript:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:46:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257232, 1264622039642256721, '[0],[1264622039642256721],', '入口管理', 'sys_flw_shortcut_mgr', 1, NULL, '/shortcut', 'flowable/shortcut/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 28, NULL, 0, '2020-05-27 16:46:26', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257233, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口查询', 'sys_flw_shortcut_mgr_page', 2, NULL, NULL, NULL, 'flowableShortcut:page', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:05', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257234, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口增加', 'sys_flw_shortcut_mgr_add', 2, NULL, NULL, NULL, 'flowableShortcut:add', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257235, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口删除', 'sys_flw_shortcut_mgr_delete', 2, NULL, NULL, NULL, 'flowableShortcut:delete', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257236, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口编辑', 'sys_flw_shortcut_mgr_edit', 2, NULL, NULL, NULL, 'flowableShortcut:edit', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257237, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口详情', 'sys_flw_shortcut_mgr_detail', 2, NULL, NULL, NULL, 'flowableShortcut:detail', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:26:09', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257241, 1264622039642256721, '[0],[1264622039642256721],', '实例管理', 'sys_flw_instance_mgr', 1, NULL, '/instance', 'flowable/instance/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 29, NULL, 0, '2020-05-27 16:10:07', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257251, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例查询', 'sys_flw_instance_mgr_page', 2, NULL, NULL, NULL, 'flowableInstance:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:10:55', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257261, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例历史用户任务节点', 'sys_flw_instance_mgr_his_user_tasks', 2, NULL, NULL, NULL, 'flowableInstance:hisUserTasks', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:12', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257271, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例追踪', 'sys_flw_instance_mgr_trace', 2, NULL, NULL, NULL, 'flowableInstance:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:31', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257281, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例挂起', 'sys_flw_instance_mgr_suspend', 2, NULL, NULL, NULL, 'flowableInstance:suspend', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:48', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257291, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例激活', 'sys_flw_instance_mgr_active', 2, NULL, NULL, NULL, 'flowableInstance:active', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:12:00', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257301, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例历史审批记录', 'sys_flw_instance_mgr_comment_history', 2, NULL, NULL, NULL, 'flowableInstance:commentHistory', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:12:13', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257311, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例任务查询', 'sys_flw_instance_mgr_task_page', 2, NULL, NULL, NULL, 'flowableInstanceTask:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257312, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例表单数据', 'sys_flw_instance_mgr_form_data', 2, NULL, NULL, NULL, 'flowableInstance:formData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257313, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '加签用户选择器', 'sys_flw_instance_mgr_add_sign_user_selector', 2, NULL, NULL, NULL, 'flowableInstance:addSignUserSelector', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257314, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '减签用户选择器', 'sys_flw_instance_mgr_delete_sign_user_selector', 2, NULL, NULL, NULL, 'flowableInstance:deleteSignUserSelector', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257321, 0, '[0],', '在线办公', 'sys_flw_office', 0, 'laptop', '/handle', 'PageView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 10, NULL, 0, '2020-05-27 16:55:15', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257331, 1264622039642257321, '[0],[1264622039642257321],', '我的任务', 'sys_flw_task_mgr', 0, NULL, '/task', 'RouteView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 30, NULL, 0, '2020-05-27 16:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257341, 1264622039642257331, '[0],[1264622039642257321],[1264622039642257331],', '待办任务', 'sys_flw_task_mgr_todo_task', 1, NULL, '/todoTask', 'flowable/task/todoTask/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 1, NULL, 0, '2020-05-27 16:18:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257351, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务查询', 'sys_flw_task_mgr_todo_task_page', 2, NULL, NULL, NULL, 'flowableTodoTask:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:19:11', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257361, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '流程发起', 'sys_flw_task_mgr_todo_task_start', 2, NULL, NULL, NULL, 'flowableHandleTask:start', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257371, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务提交', 'sys_flw_task_mgr_todo_task_submit', 2, NULL, NULL, NULL, 'flowableHandleTask:submit', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257381, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务保存', 'sys_flw_task_mgr_todo_task_save', 2, NULL, NULL, NULL, 'flowableHandleTask:save', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257391, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务退回', 'sys_flw_task_mgr_todo_task_back', 2, NULL, NULL, NULL, 'flowableHandleTask:back', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257401, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务转办', 'sys_flw_task_mgr_todo_task_turn', 2, NULL, NULL, NULL, 'flowableHandleTask:turn', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:46', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257411, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务委托', 'sys_flw_task_mgr_todo_task_entrust', 2, NULL, NULL, NULL, 'flowableHandleTask:entrust', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:03', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257421, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务终止', 'sys_flw_task_mgr_todo_task_end', 2, NULL, NULL, NULL, 'flowableHandleTask:end', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257431, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务挂起', 'sys_flw_task_mgr_todo_task_suspend', 2, NULL, NULL, NULL, 'flowableHandleTask:suspend', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:40', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257441, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务跳转', 'sys_flw_task_mgr_todo_task_jump', 2, NULL, NULL, NULL, 'flowableHandleTask:jump', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:52', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257451, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务加签', 'sys_flw_task_mgr_todo_task_add_sign', 2, NULL, NULL, NULL, 'flowableHandleTask:addSign', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:03', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257461, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务减签', 'sys_flw_task_mgr_todo_task_delete_sign', 2, NULL, NULL, NULL, 'flowableHandleTask:deleteSign', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257462, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务数据', 'sys_flw_task_mgr_todo_task_task_data', 2, NULL, NULL, NULL, 'flowableHandleTask:taskData', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:16', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257471, 1264622039642257331, '[0],[1264622039642257321],[1264622039642257331],', '已办任务', 'sys_flw_task_mgr_done_task', 1, NULL, '/doneTask', 'flowable/task/doneTask/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-05-27 16:19:29', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257481, 1264622039642257471, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', '已办任务查询', 'sys_flw_task_mgr_done_task_page', 2, NULL, NULL, NULL, 'flowableDoneTask:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257491, 1264622039642257321, '[0],[1264622039642257321],', '我的申请', 'sys_flw_apply_mgr', 0, NULL, '/myapply', 'RouteView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 31, NULL, 0, '2020-07-02 14:22:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257501, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '起草申请', 'sys_flw_apply_mgr_draft_apply_mgr', 1, NULL, '/drafapply', 'flowable/draftapply/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 14:24:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257511, 1264622039642257501, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', '起草入口列表', 'sys_flw_apply_mgr_draft_apply_mgr_list', 2, NULL, NULL, NULL, 'flowableShortcut:list', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:19', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257521, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '起草表单填写', 'sys_flw_apply_mgr_draft_apply_mgr_apply_form', 1, NULL, '/draftapply/form', 'flowable/draftapply/form', NULL, 'office', 1, 'N', NULL, NULL, 1, 1, NULL, 2, '2020-08-21 22:33:38', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257522, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '申请草稿', 'sys_flw_mgr_draft_mgr', 1, NULL, '/draft', 'flowable/draft/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-09 15:32:40', 1265476890672672808, '2020-09-09 23:47:48', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257523, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿查询', 'sys_flw_mgr_draft_mgr_page', 2, NULL, NULL, NULL, 'flowableDraft:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257524, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿添加或编辑', 'sys_flw_mgr_draft_mgr_add_or_update', 2, NULL, NULL, NULL, 'flowableDraft:addOrUpdate', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257525, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿删除', 'sys_flw_mgr_draft_mgr_delete', 2, NULL, NULL, NULL, 'flowableDraft:delete', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257531, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '已发申请', 'sys_flw_apply_mgr_applyed_mgr', 1, NULL, '/applyed', 'flowable/applyed/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 14:24:22', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257532, 1264622039642257531, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', '已发申请查询', 'sys_flw_apply_mgr_applyed_mgr_page', 2, NULL, NULL, NULL, 'flowableInstance:my', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257641, 0, '[0],', '多数据源', 'dbs_databaseInfo', 0, 'sliders', '/database', 'PageView', NULL, 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 00:53:28', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257642, 1264622039642257641, '[0],[1264622039642257641],', '数据源管理', 'dbs_databaseInfo_mgr', 1, NULL, '/databaseInfo', 'dbs/databaseInfo/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257643, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源查询', 'dbs_databaseInfo_mgr_page', 2, NULL, NULL, NULL, 'databaseInfo:page', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257644, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源增加', 'dbs_databaseInfo_mgr_add', 2, NULL, NULL, NULL, 'databaseInfo:add', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257645, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源编辑', 'dbs_databaseInfo_mgr_edit', 2, NULL, NULL, NULL, 'databaseInfo:edit', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257646, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源删除', 'dbs_databaseInfo_mgr_delete', 2, NULL, NULL, NULL, 'databaseInfo:delete', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257651, 0, '[0],', 'SaaS租户', 'tenant_tenantInfo', 0, 'switcher', '/tenant', 'PageView', NULL, 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 00:53:28', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257652, 1264622039642257651, '[0],[1264622039642256611],', '租户管理', 'tenant_tenantInfo_mgr', 1, NULL, '/tenantInfo', 'tenant/tenantInfo/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257653, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户查询', 'tenant_tenantInfo_mgr_page', 2, NULL, NULL, NULL, 'tenantInfo:page', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257654, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户新增', 'tenant_tenantInfo_mgr_add', 2, NULL, NULL, NULL, 'tenantInfo:add', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257655, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户编辑', 'tenant_tenantInfo_mgr_edit', 2, NULL, NULL, NULL, 'tenantInfo:edit', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257656, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户删除', 'tenant_tenantInfo_mgr_delete', 2, NULL, NULL, NULL, 'tenantInfo:delete', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257657, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户查看', 'tenant_tenantInfo_mgr_detail', 2, NULL, NULL, NULL, 'tenantInfo:detail', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257658, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户列表', 'tenant_tenantInfo_mgr_list', 2, NULL, NULL, NULL, 'tenantInfo:list', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO `sys_menu` VALUES (1264622039642257671, 0, '[0],', '支付管理', 'pay_manage', 0, 'strikethrough', '/paymanage', 'PageView', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-03 00:35:34', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257681, 1264622039642257671, '[0],[1264622039642257671],', '支付体验', 'pay_manage_index', 1, '', '/pay/index', 'pay/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 14:55:08', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257691, 1264622039642257671, '[0],[1264622039642257671],', '支付订单', 'pay_manage_order', 1, NULL, '/pay/alipay/index', 'pay/alipay/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-03 00:39:56', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1264622039642257701, 0, '[0],', '设计表单', 'form_design', 1, 'pic-left', '/formdesign', 'formDesign', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-15 15:48:23', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_menu` VALUES (1342451789402411009, 0, '[0],', '代码生成', 'code_gen', 1, 'thunderbolt', '/codeGenerate/index', 'gen/codeGenerate/index', '', 'system_tool', 1, 'Y', NULL, '', 1, 100, '代码生成', 0, '2020-12-25 20:47:03', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `type` tinyint(0) NOT NULL COMMENT '类型（字典 1通知 2公告）',
  `public_user_id` bigint(0) NOT NULL COMMENT '发布人id',
  `public_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布人姓名',
  `public_org_id` bigint(0) NULL DEFAULT NULL COMMENT '发布机构id',
  `public_org_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布机构名称',
  `public_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime(0) NULL DEFAULT NULL COMMENT '撤回时间',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0草稿 1发布 2撤回 3删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_user`;
CREATE TABLE `sys_notice_user`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `notice_id` bigint(0) NOT NULL COMMENT '通知公告id',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `status` tinyint(0) NOT NULL COMMENT '状态（字典 0未读 1已读）',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户数据范围表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oauth_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_user`;
CREATE TABLE `sys_oauth_user`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '第三方平台的用户唯一id',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户授权的token',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户网址',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在公司',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '位置',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户来源',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户备注（各平台中的用户个人介绍）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方认证用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_op_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_op_log`;
CREATE TABLE `sys_op_log`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `op_type` tinyint(0) NULL DEFAULT NULL COMMENT '操作类型',
  `success` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否执行成功（Y-是，N-否）',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '具体消息',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求地址',
  `class_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名称',
  `method_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `req_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方式（GET POST PUT DELETE)',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回结果',
  `op_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_op_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `pid` bigint(0) NOT NULL COMMENT '父id',
  `pids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父ids',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统组织机构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES (1265476890651701250, 0, '[0],', '华夏集团', 'hxjt', 100, '华夏集团总公司', 0, '2020-03-26 16:50:53', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672769, 1265476890651701250, '[0],[1265476890651701250],', '华夏集团北京分公司', 'hxjt_bj', 100, '华夏集团北京分公司', 0, '2020-03-26 16:55:42', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672770, 1265476890651701250, '[0],[1265476890651701250],', '华夏集团成都分公司', 'hxjt_cd', 100, '华夏集团成都分公司', 0, '2020-03-26 16:56:02', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672771, 1265476890672672769, '[0],[1265476890651701250],[1265476890672672769],', '研发部', 'hxjt_bj_yfb', 100, '华夏集团北京分公司研发部', 0, '2020-03-26 16:56:36', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672772, 1265476890672672769, '[0],[1265476890651701250],[1265476890672672769],', '企划部', 'hxjt_bj_qhb', 100, '华夏集团北京分公司企划部', 0, '2020-03-26 16:57:06', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672773, 1265476890672672770, '[0],[1265476890651701250],[1265476890672672770],', '市场部', 'hxjt_cd_scb', 100, '华夏集团成都分公司市场部', 0, '2020-03-26 16:57:35', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672774, 1265476890672672770, '[0],[1265476890651701250],[1265476890672672770],', '财务部', 'hxjt_cd_cwb', 100, '华夏集团成都分公司财务部', 0, '2020-03-26 16:58:01', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_org` VALUES (1265476890672672775, 1265476890672672773, '[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', '市场部二部', 'hxjt_cd_scb_2b', 100, '华夏集团成都分公司市场部二部', 0, '2020-04-06 15:36:50', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_pos
-- ----------------------------
DROP TABLE IF EXISTS `sys_pos`;
CREATE TABLE `sys_pos`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `CODE_UNI`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统职位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_pos
-- ----------------------------
INSERT INTO `sys_pos` VALUES (1265476890672672787, '总经理', 'zjl', 100, '总经理职位', 0, '2020-03-26 19:28:54', 1265476890672672808, '2020-06-02 21:01:04', 1265476890672672808);
INSERT INTO `sys_pos` VALUES (1265476890672672788, '副总经理', 'fzjl', 100, '副总经理职位', 0, '2020-03-26 19:29:57', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_pos` VALUES (1265476890672672789, '部门经理', 'bmjl', 100, '部门经理职位', 0, '2020-03-26 19:31:49', 1265476890672672808, NULL, NULL);
INSERT INTO `sys_pos` VALUES (1265476890672672790, '工作人员', 'gzry', 100, '工作人员职位', 0, '2020-05-27 11:32:00', 1265476890672672808, '2020-06-01 10:51:35', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `sort` int(0) NOT NULL COMMENT '序号',
  `data_scope_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1265476890672672817, '组织架构管理员', 'ent_manager_role', 100, 1, '组织架构管理员', 0, '2020-04-02 19:27:26', 1265476890672672808, '2020-09-12 15:54:07', 1265476890672672808);
INSERT INTO `sys_role` VALUES (1265476890672672818, '权限管理员', 'auth_role', 101, 5, '权限管理员', 0, '2020-04-02 19:28:40', 1265476890672672808, '2020-07-16 10:52:21', 1265476890672672808);
INSERT INTO `sys_role` VALUES (1265476890672672819, '公告发布员', 'notice_produce_role', 102, 5, '公告发布员', 0, '2020-05-29 15:48:11', 1265476890672672808, '2020-08-08 19:28:34', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_data_scope`;
CREATE TABLE `sys_role_data_scope`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  `org_id` bigint(0) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色数据范围表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO `sys_role_data_scope` VALUES (1277435908822102018, 1265476890672672818, 1265476890651701250);
INSERT INTO `sys_role_data_scope` VALUES (1277435909635796993, 1265476890672672818, 1265476890672672769);
INSERT INTO `sys_role_data_scope` VALUES (1277435910432714754, 1265476890672672818, 1265476890672672771);
INSERT INTO `sys_role_data_scope` VALUES (1277435911233826818, 1265476890672672818, 1265476890672672772);
INSERT INTO `sys_role_data_scope` VALUES (1277435912018161666, 1265476890672672818, 1265476890672672770);
INSERT INTO `sys_role_data_scope` VALUES (1277435912810885122, 1265476890672672818, 1265476890672672773);
INSERT INTO `sys_role_data_scope` VALUES (1277435913595219970, 1265476890672672818, 1265476890672672775);
INSERT INTO `sys_role_data_scope` VALUES (1277435914392137730, 1265476890672672818, 1265476890672672774);
INSERT INTO `sys_role_data_scope` VALUES (1292060127645429762, 1265476890672672819, 1265476890672672774);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1304366872187256834, 1265476890672672818, 1264622039642255671);
INSERT INTO `sys_role_menu` VALUES (1304366872602492929, 1265476890672672818, 1264622039642255681);
INSERT INTO `sys_role_menu` VALUES (1304366873026117634, 1265476890672672818, 1264622039642255761);
INSERT INTO `sys_role_menu` VALUES (1304366873449742337, 1265476890672672818, 1264622039642255851);
INSERT INTO `sys_role_menu` VALUES (1304366873864978433, 1265476890672672818, 1264622039642255691);
INSERT INTO `sys_role_menu` VALUES (1304366874284408834, 1265476890672672818, 1264622039642255701);
INSERT INTO `sys_role_menu` VALUES (1304366874703839233, 1265476890672672818, 1264622039642255711);
INSERT INTO `sys_role_menu` VALUES (1304366875119075330, 1265476890672672818, 1264622039642255721);
INSERT INTO `sys_role_menu` VALUES (1304366875538505730, 1265476890672672818, 1264622039642255731);
INSERT INTO `sys_role_menu` VALUES (1304366875962130433, 1265476890672672818, 1264622039642255741);
INSERT INTO `sys_role_menu` VALUES (1304366876377366529, 1265476890672672818, 1264622039642255751);
INSERT INTO `sys_role_menu` VALUES (1304366876800991233, 1265476890672672818, 1264622039642255771);
INSERT INTO `sys_role_menu` VALUES (1304366877216227330, 1265476890672672818, 1264622039642255781);
INSERT INTO `sys_role_menu` VALUES (1304366877639852033, 1265476890672672818, 1264622039642255791);
INSERT INTO `sys_role_menu` VALUES (1304366878067671041, 1265476890672672818, 1264622039642255801);
INSERT INTO `sys_role_menu` VALUES (1304366878487101441, 1265476890672672818, 1264622039642255811);
INSERT INTO `sys_role_menu` VALUES (1304366878898143233, 1265476890672672818, 1264622039642255821);
INSERT INTO `sys_role_menu` VALUES (1304366879325962242, 1265476890672672818, 1264622039642255831);
INSERT INTO `sys_role_menu` VALUES (1304366879745392641, 1265476890672672818, 1264622039642255841);
INSERT INTO `sys_role_menu` VALUES (1304366880160628738, 1265476890672672818, 1264622039642255881);
INSERT INTO `sys_role_menu` VALUES (1304366880580059138, 1265476890672672818, 1264622039642255891);
INSERT INTO `sys_role_menu` VALUES (1304366880999489537, 1265476890672672818, 1264622039642255901);
INSERT INTO `sys_role_menu` VALUES (1304366881423114242, 1265476890672672818, 1264622039642255911);
INSERT INTO `sys_role_menu` VALUES (1304366881838350338, 1265476890672672818, 1264622039642255921);
INSERT INTO `sys_role_menu` VALUES (1304366882261975042, 1265476890672672818, 1264622039642255931);
INSERT INTO `sys_role_menu` VALUES (1304366882685599745, 1265476890672672818, 1264622039642255941);
INSERT INTO `sys_role_menu` VALUES (1304366883100835842, 1265476890672672818, 1264622039642255951);
INSERT INTO `sys_role_menu` VALUES (1304366883520266242, 1265476890672672818, 1264622039642255861);
INSERT INTO `sys_role_menu` VALUES (1304366883939696642, 1265476890672672818, 1264622039642255871);
INSERT INTO `sys_role_menu` VALUES (1304366884363321346, 1265476890672672818, 1264622039642257021);
INSERT INTO `sys_role_menu` VALUES (1304366884782751746, 1265476890672672818, 1264622039642257031);
INSERT INTO `sys_role_menu` VALUES (1304366885197987842, 1265476890672672818, 1264622039642256831);
INSERT INTO `sys_role_menu` VALUES (1304366885617418242, 1265476890672672818, 1264622039642257261);
INSERT INTO `sys_role_menu` VALUES (1304366886045237250, 1265476890672672818, 1264622039642257271);
INSERT INTO `sys_role_menu` VALUES (1304366886473056258, 1265476890672672818, 1264622039642257301);
INSERT INTO `sys_role_menu` VALUES (1304366886884098050, 1265476890672672818, 1264622039642257321);
INSERT INTO `sys_role_menu` VALUES (1304366887307722754, 1265476890672672818, 1264622039642257331);
INSERT INTO `sys_role_menu` VALUES (1304366887722958850, 1265476890672672818, 1264622039642257471);
INSERT INTO `sys_role_menu` VALUES (1304366888142389250, 1265476890672672818, 1264622039642257481);
INSERT INTO `sys_role_menu` VALUES (1304366888566013954, 1265476890672672818, 1264622039642257341);
INSERT INTO `sys_role_menu` VALUES (1304366888981250049, 1265476890672672818, 1264622039642257411);
INSERT INTO `sys_role_menu` VALUES (1304366889404874754, 1265476890672672818, 1264622039642257421);
INSERT INTO `sys_role_menu` VALUES (1304366889820110850, 1265476890672672818, 1264622039642257431);
INSERT INTO `sys_role_menu` VALUES (1304366890235346946, 1265476890672672818, 1264622039642257441);
INSERT INTO `sys_role_menu` VALUES (1304366890663165954, 1265476890672672818, 1264622039642257451);
INSERT INTO `sys_role_menu` VALUES (1304366891082596354, 1265476890672672818, 1264622039642257461);
INSERT INTO `sys_role_menu` VALUES (1304366891506221057, 1265476890672672818, 1264622039642257351);
INSERT INTO `sys_role_menu` VALUES (1304366891925651458, 1265476890672672818, 1264622039642257361);
INSERT INTO `sys_role_menu` VALUES (1304366892345081858, 1265476890672672818, 1264622039642257371);
INSERT INTO `sys_role_menu` VALUES (1304366892764512258, 1265476890672672818, 1264622039642257381);
INSERT INTO `sys_role_menu` VALUES (1304366893183942658, 1265476890672672818, 1264622039642257391);
INSERT INTO `sys_role_menu` VALUES (1304366893607567361, 1265476890672672818, 1264622039642257401);
INSERT INTO `sys_role_menu` VALUES (1304366894031192065, 1265476890672672818, 1264622039642257491);
INSERT INTO `sys_role_menu` VALUES (1304366894446428162, 1265476890672672818, 1264622039642257501);
INSERT INTO `sys_role_menu` VALUES (1304366894865858562, 1265476890672672818, 1264622039642257511);
INSERT INTO `sys_role_menu` VALUES (1304366895285288961, 1265476890672672818, 1264622039642255591);
INSERT INTO `sys_role_menu` VALUES (1304366895708913665, 1265476890672672818, 1264622039642257061);
INSERT INTO `sys_role_menu` VALUES (1304366896132538369, 1265476890672672818, 1264622039642257462);
INSERT INTO `sys_role_menu` VALUES (1304366896556163074, 1265476890672672818, 1264622039642256912);
INSERT INTO `sys_role_menu` VALUES (1304366896979787777, 1265476890672672818, 1264622039642255421);
INSERT INTO `sys_role_menu` VALUES (1304366897399218178, 1265476890672672818, 1264622039642257022);
INSERT INTO `sys_role_menu` VALUES (1304366897827037185, 1265476890672672818, 1264622039642256821);
INSERT INTO `sys_role_menu` VALUES (1304366898242273282, 1265476890672672818, 1264622039642257311);
INSERT INTO `sys_role_menu` VALUES (1304366898670092290, 1265476890672672818, 1264622039642257312);
INSERT INTO `sys_role_menu` VALUES (1304366899089522690, 1265476890672672818, 1264622039642257313);
INSERT INTO `sys_role_menu` VALUES (1304366899508953089, 1265476890672672818, 1264622039642257314);
INSERT INTO `sys_role_menu` VALUES (1304366899932577793, 1265476890672672818, 1264622039642257522);
INSERT INTO `sys_role_menu` VALUES (1304366900352008193, 1265476890672672818, 1264622039642257523);
INSERT INTO `sys_role_menu` VALUES (1304366900771438594, 1265476890672672818, 1264622039642257524);
INSERT INTO `sys_role_menu` VALUES (1304366901190868994, 1265476890672672818, 1264622039642257525);
INSERT INTO `sys_role_menu` VALUES (1304366901610299394, 1265476890672672818, 1264622039642257531);
INSERT INTO `sys_role_menu` VALUES (1304366902033924097, 1265476890672672818, 1264622039642257532);
INSERT INTO `sys_role_menu` VALUES (1307864773769273346, 1265476890672672819, 1264622039642256431);
INSERT INTO `sys_role_menu` VALUES (1307864774197092353, 1265476890672672819, 1264622039642256421);
INSERT INTO `sys_role_menu` VALUES (1307864774624911362, 1265476890672672819, 1264622039642256441);
INSERT INTO `sys_role_menu` VALUES (1307864775048536065, 1265476890672672819, 1264622039642256451);
INSERT INTO `sys_role_menu` VALUES (1307864775467966465, 1265476890672672819, 1264622039642256461);
INSERT INTO `sys_role_menu` VALUES (1307864775887396866, 1265476890672672819, 1264622039642256471);
INSERT INTO `sys_role_menu` VALUES (1307864776311021570, 1265476890672672819, 1264622039642256481);
INSERT INTO `sys_role_menu` VALUES (1307864776730451969, 1265476890672672819, 1264622039642256491);
INSERT INTO `sys_role_menu` VALUES (1307864777154076673, 1265476890672672819, 1264622039642256501);
INSERT INTO `sys_role_menu` VALUES (1307864777573507074, 1265476890672672819, 1264622039642256511);
INSERT INTO `sys_role_menu` VALUES (1307864778005520386, 1265476890672672819, 1264622039642255421);
INSERT INTO `sys_role_menu` VALUES (1307864778424950785, 1265476890672672819, 1264622039642257321);
INSERT INTO `sys_role_menu` VALUES (1307864778840186881, 1265476890672672819, 1264622039642257331);
INSERT INTO `sys_role_menu` VALUES (1307864779263811585, 1265476890672672819, 1264622039642257021);
INSERT INTO `sys_role_menu` VALUES (1307864779683241986, 1265476890672672819, 1264622039642257011);
INSERT INTO `sys_role_menu` VALUES (1307864780106866689, 1265476890672672819, 1264622039642256831);
INSERT INTO `sys_role_menu` VALUES (1307864780530491393, 1265476890672672819, 1264622039642257061);
INSERT INTO `sys_role_menu` VALUES (1307864780945727489, 1265476890672672819, 1264622039642257501);
INSERT INTO `sys_role_menu` VALUES (1307864781369352193, 1265476890672672819, 1264622039642257491);
INSERT INTO `sys_role_menu` VALUES (1307864781792976897, 1265476890672672819, 1264622039642257511);
INSERT INTO `sys_role_menu` VALUES (1307864782216601602, 1265476890672672819, 1264622039642257271);
INSERT INTO `sys_role_menu` VALUES (1307864782631837697, 1265476890672672819, 1264622039642257261);
INSERT INTO `sys_role_menu` VALUES (1307864783063851009, 1265476890672672819, 1264622039642257301);
INSERT INTO `sys_role_menu` VALUES (1307864783483281410, 1265476890672672819, 1264622039642257471);
INSERT INTO `sys_role_menu` VALUES (1307864783902711809, 1265476890672672819, 1264622039642257341);
INSERT INTO `sys_role_menu` VALUES (1307864784322142210, 1265476890672672819, 1264622039642257481);
INSERT INTO `sys_role_menu` VALUES (1307864784745766913, 1265476890672672819, 1264622039642257411);
INSERT INTO `sys_role_menu` VALUES (1307864785169391618, 1265476890672672819, 1264622039642257431);
INSERT INTO `sys_role_menu` VALUES (1307864785588822018, 1265476890672672819, 1264622039642257421);
INSERT INTO `sys_role_menu` VALUES (1307864786012446722, 1265476890672672819, 1264622039642257441);
INSERT INTO `sys_role_menu` VALUES (1307864786436071426, 1265476890672672819, 1264622039642257451);
INSERT INTO `sys_role_menu` VALUES (1307864786859696130, 1265476890672672819, 1264622039642257461);
INSERT INTO `sys_role_menu` VALUES (1307864787274932225, 1265476890672672819, 1264622039642257351);
INSERT INTO `sys_role_menu` VALUES (1307864787702751233, 1265476890672672819, 1264622039642257361);
INSERT INTO `sys_role_menu` VALUES (1307864788113793026, 1265476890672672819, 1264622039642257371);
INSERT INTO `sys_role_menu` VALUES (1307864788541612034, 1265476890672672819, 1264622039642257381);
INSERT INTO `sys_role_menu` VALUES (1307864788961042433, 1265476890672672819, 1264622039642257391);
INSERT INTO `sys_role_menu` VALUES (1307864789384667138, 1265476890672672819, 1264622039642257401);
INSERT INTO `sys_role_menu` VALUES (1307864789808291841, 1265476890672672819, 1264622039642257462);
INSERT INTO `sys_role_menu` VALUES (1307864790227722241, 1265476890672672819, 1264622039642257031);
INSERT INTO `sys_role_menu` VALUES (1307864790659735554, 1265476890672672819, 1264622039642256912);
INSERT INTO `sys_role_menu` VALUES (1307864791079165953, 1265476890672672819, 1264622039642257022);
INSERT INTO `sys_role_menu` VALUES (1307864791494402050, 1265476890672672819, 1264622039642257311);
INSERT INTO `sys_role_menu` VALUES (1307864791913832450, 1265476890672672819, 1264622039642257312);
INSERT INTO `sys_role_menu` VALUES (1307864792345845762, 1265476890672672819, 1264622039642257313);
INSERT INTO `sys_role_menu` VALUES (1307864792769470465, 1265476890672672819, 1264622039642257314);
INSERT INTO `sys_role_menu` VALUES (1307864793193095169, 1265476890672672819, 1264622039642257522);
INSERT INTO `sys_role_menu` VALUES (1307864793612525570, 1265476890672672819, 1264622039642257523);
INSERT INTO `sys_role_menu` VALUES (1307864794027761665, 1265476890672672819, 1264622039642257524);
INSERT INTO `sys_role_menu` VALUES (1307864794459774978, 1265476890672672819, 1264622039642257525);
INSERT INTO `sys_role_menu` VALUES (1307864794875011073, 1265476890672672819, 1264622039642257532);
INSERT INTO `sys_role_menu` VALUES (1307864795307024385, 1265476890672672819, 1264622039642257531);
INSERT INTO `sys_role_menu` VALUES (1307864795722260482, 1265476890672672819, 1264622039642256821);
INSERT INTO `sys_role_menu` VALUES (1307864929906434049, 1265476890672672817, 1264622039642255311);
INSERT INTO `sys_role_menu` VALUES (1307864930338447362, 1265476890672672817, 1264622039642255331);
INSERT INTO `sys_role_menu` VALUES (1307864930753683457, 1265476890672672817, 1264622039642255321);
INSERT INTO `sys_role_menu` VALUES (1307864931181502465, 1265476890672672817, 1264622039642255341);
INSERT INTO `sys_role_menu` VALUES (1307864931596738561, 1265476890672672817, 1264622039642255351);
INSERT INTO `sys_role_menu` VALUES (1307864932020363266, 1265476890672672817, 1264622039642255361);
INSERT INTO `sys_role_menu` VALUES (1307864932439793666, 1265476890672672817, 1264622039642255371);
INSERT INTO `sys_role_menu` VALUES (1307864932863418369, 1265476890672672817, 1264622039642255381);
INSERT INTO `sys_role_menu` VALUES (1307864933287043073, 1265476890672672817, 1264622039642255391);
INSERT INTO `sys_role_menu` VALUES (1307864933706473474, 1265476890672672817, 1264622039642255401);
INSERT INTO `sys_role_menu` VALUES (1307864934130098177, 1265476890672672817, 1264622039642255411);
INSERT INTO `sys_role_menu` VALUES (1307864934553722881, 1265476890672672817, 1264622039642255421);
INSERT INTO `sys_role_menu` VALUES (1307864934973153281, 1265476890672672817, 1264622039642255431);
INSERT INTO `sys_role_menu` VALUES (1307864935392583681, 1265476890672672817, 1264622039642255441);
INSERT INTO `sys_role_menu` VALUES (1307864935820402689, 1265476890672672817, 1264622039642255451);
INSERT INTO `sys_role_menu` VALUES (1307864936239833090, 1265476890672672817, 1264622039642255461);
INSERT INTO `sys_role_menu` VALUES (1307864936663457793, 1265476890672672817, 1264622039642255471);
INSERT INTO `sys_role_menu` VALUES (1307864937087082498, 1265476890672672817, 1264622039642255481);
INSERT INTO `sys_role_menu` VALUES (1307864937506512898, 1265476890672672817, 1264622039642255491);
INSERT INTO `sys_role_menu` VALUES (1307864937938526210, 1265476890672672817, 1264622039642255501);
INSERT INTO `sys_role_menu` VALUES (1307864938357956610, 1265476890672672817, 1264622039642255511);
INSERT INTO `sys_role_menu` VALUES (1307864938777387010, 1265476890672672817, 1264622039642255521);
INSERT INTO `sys_role_menu` VALUES (1307864939201011713, 1265476890672672817, 1264622039642255531);
INSERT INTO `sys_role_menu` VALUES (1307864939624636418, 1265476890672672817, 1264622039642255541);
INSERT INTO `sys_role_menu` VALUES (1307864940044066817, 1265476890672672817, 1264622039642255551);
INSERT INTO `sys_role_menu` VALUES (1307864940467691522, 1265476890672672817, 1264622039642255561);
INSERT INTO `sys_role_menu` VALUES (1307864940933259265, 1265476890672672817, 1264622039642255571);
INSERT INTO `sys_role_menu` VALUES (1307864941356883970, 1265476890672672817, 1264622039642255581);
INSERT INTO `sys_role_menu` VALUES (1307864941776314369, 1265476890672672817, 1264622039642255591);
INSERT INTO `sys_role_menu` VALUES (1307864942195744769, 1265476890672672817, 1264622039642255601);
INSERT INTO `sys_role_menu` VALUES (1307864942619369473, 1265476890672672817, 1264622039642255621);
INSERT INTO `sys_role_menu` VALUES (1307864943042994178, 1265476890672672817, 1264622039642255631);
INSERT INTO `sys_role_menu` VALUES (1307864943462424577, 1265476890672672817, 1264622039642255641);
INSERT INTO `sys_role_menu` VALUES (1307864943886049282, 1265476890672672817, 1264622039642255651);
INSERT INTO `sys_role_menu` VALUES (1307864944309673986, 1265476890672672817, 1264622039642255661);
INSERT INTO `sys_role_menu` VALUES (1307864944733298690, 1265476890672672817, 1264622039642255611);
INSERT INTO `sys_role_menu` VALUES (1307864945156923393, 1265476890672672817, 1264622039642257321);
INSERT INTO `sys_role_menu` VALUES (1307864945576353793, 1265476890672672817, 1264622039642257331);
INSERT INTO `sys_role_menu` VALUES (1307864945999978497, 1265476890672672817, 1264622039642257471);
INSERT INTO `sys_role_menu` VALUES (1307864946423603201, 1265476890672672817, 1264622039642257481);
INSERT INTO `sys_role_menu` VALUES (1307864946847227905, 1265476890672672817, 1264622039642257341);
INSERT INTO `sys_role_menu` VALUES (1307864947266658305, 1265476890672672817, 1264622039642257411);
INSERT INTO `sys_role_menu` VALUES (1307864947681894402, 1265476890672672817, 1264622039642257421);
INSERT INTO `sys_role_menu` VALUES (1307864948109713409, 1265476890672672817, 1264622039642257431);
INSERT INTO `sys_role_menu` VALUES (1307864948529143810, 1265476890672672817, 1264622039642257441);
INSERT INTO `sys_role_menu` VALUES (1307864948952768513, 1265476890672672817, 1264622039642257451);
INSERT INTO `sys_role_menu` VALUES (1307864949380587522, 1265476890672672817, 1264622039642257461);
INSERT INTO `sys_role_menu` VALUES (1307864949804212225, 1265476890672672817, 1264622039642257351);
INSERT INTO `sys_role_menu` VALUES (1307864950223642626, 1265476890672672817, 1264622039642257361);
INSERT INTO `sys_role_menu` VALUES (1307864950638878721, 1265476890672672817, 1264622039642257371);
INSERT INTO `sys_role_menu` VALUES (1307864951066697729, 1265476890672672817, 1264622039642257381);
INSERT INTO `sys_role_menu` VALUES (1307864951490322433, 1265476890672672817, 1264622039642257391);
INSERT INTO `sys_role_menu` VALUES (1307864951913947137, 1265476890672672817, 1264622039642257401);
INSERT INTO `sys_role_menu` VALUES (1307864952329183233, 1265476890672672817, 1264622039642257491);
INSERT INTO `sys_role_menu` VALUES (1307864952757002241, 1265476890672672817, 1264622039642257501);
INSERT INTO `sys_role_menu` VALUES (1307864953176432642, 1265476890672672817, 1264622039642257511);
INSERT INTO `sys_role_menu` VALUES (1307864953600057346, 1265476890672672817, 1264622039642256831);
INSERT INTO `sys_role_menu` VALUES (1307864954019487746, 1265476890672672817, 1264622039642257031);
INSERT INTO `sys_role_menu` VALUES (1307864954447306754, 1265476890672672817, 1264622039642257021);
INSERT INTO `sys_role_menu` VALUES (1307864954870931458, 1265476890672672817, 1264622039642257061);
INSERT INTO `sys_role_menu` VALUES (1307864955290361857, 1265476890672672817, 1264622039642257261);
INSERT INTO `sys_role_menu` VALUES (1307864955709792258, 1265476890672672817, 1264622039642257301);
INSERT INTO `sys_role_menu` VALUES (1307864956133416962, 1265476890672672817, 1264622039642257271);
INSERT INTO `sys_role_menu` VALUES (1307864956557041665, 1265476890672672817, 1264622039642257462);
INSERT INTO `sys_role_menu` VALUES (1307864956976472066, 1265476890672672817, 1264622039642256912);
INSERT INTO `sys_role_menu` VALUES (1307864957400096770, 1265476890672672817, 1264622039642255911);
INSERT INTO `sys_role_menu` VALUES (1307864957861470210, 1265476890672672817, 1264622039642257522);
INSERT INTO `sys_role_menu` VALUES (1307864958280900610, 1265476890672672817, 1264622039642257523);
INSERT INTO `sys_role_menu` VALUES (1307864958704525314, 1265476890672672817, 1264622039642257524);
INSERT INTO `sys_role_menu` VALUES (1307864959132344321, 1265476890672672817, 1264622039642257525);
INSERT INTO `sys_role_menu` VALUES (1307864959555969026, 1265476890672672817, 1264622039642257532);
INSERT INTO `sys_role_menu` VALUES (1307864959975399425, 1265476890672672817, 1264622039642257531);
INSERT INTO `sys_role_menu` VALUES (1307864960399024129, 1265476890672672817, 1264622039642257311);
INSERT INTO `sys_role_menu` VALUES (1307864960822648833, 1265476890672672817, 1264622039642257312);
INSERT INTO `sys_role_menu` VALUES (1307864961242079233, 1265476890672672817, 1264622039642257313);
INSERT INTO `sys_role_menu` VALUES (1307864961657315330, 1265476890672672817, 1264622039642257314);
INSERT INTO `sys_role_menu` VALUES (1307864962085134337, 1265476890672672817, 1264622039642256821);
INSERT INTO `sys_role_menu` VALUES (1307864962504564737, 1265476890672672817, 1264622039642257022);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `phone_numbers` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `validate_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信验证码',
  `template_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信模板ID',
  `biz_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回执id，可根据该id查询具体的发送状态',
  `status` tinyint(0) NOT NULL COMMENT '发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）',
  `source` tinyint(0) NOT NULL COMMENT '来源（字典 1 app， 2 pc， 3 其他）',
  `invalid_time` datetime(0) NULL DEFAULT NULL COMMENT '失效时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信信息发送表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_info`;
CREATE TABLE `sys_tenant_info`  (
  `id` bigint(0) NOT NULL COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户的编码',
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联的数据库名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------
INSERT INTO `sys_tenant_info` VALUES (1301724123547000811, '总公司（管理单位）', 'default', 'master', '2020-09-04 11:29:51', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_timers
-- ----------------------------
DROP TABLE IF EXISTS `sys_timers`;
CREATE TABLE `sys_timers`  (
  `id` bigint(0) NOT NULL COMMENT '定时器id',
  `timer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '任务名称',
  `action_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）',
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '定时任务表达式',
  `job_status` tinyint(0) NULL DEFAULT 0 COMMENT '状态（字典 1运行  2停止）',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_timers
-- ----------------------------
INSERT INTO `sys_timers` VALUES (1288760324837851137, '定时同步缓存常量', 'vip.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', '0 0/1 * * * ?', 1, '定时同步sys_config表的数据到缓存常量中', '2020-07-30 16:56:20', 1265476890672672808, '2020-07-30 16:58:52', 1265476890672672808);
INSERT INTO `sys_timers` VALUES (1304971718170832898, '定时打印一句话', 'vip.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', '0 0 * * * ? *', 2, '定时打印一句话', '2020-09-13 10:34:37', 1265476890672672808, '2020-09-23 20:37:48', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `avatar` bigint(0) NULL DEFAULT NULL COMMENT '头像',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `sex` tinyint(0) NOT NULL COMMENT '性别(字典 1男 2女 3未知)',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `last_login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登陆IP',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `admin_type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '管理员类型（0超级管理员 1非管理员）',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态（字典 0正常 1冻结 2删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1265476890672672808, 'superAdmin', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '超级管理员', '超级管理员', NULL, '2020-03-18', 1, 'superAdmin@qq.com', '15228937093', '1234567890', '127.0.0.1', '2021-01-28 00:42:28', 1, 0, '2020-05-29 16:39:28', -1, '2021-01-28 00:42:28', -1);
INSERT INTO `sys_user` VALUES (1275735541155614721, 'yubaoshan', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '俞宝山', '俞宝山', NULL, '1992-10-03', 1, 'await183@qq.com', '18200001102', '', '127.0.0.1', '2021-01-28 00:38:34', 2, 0, '2020-06-24 18:20:30', 1265476890672672808, '2021-01-28 00:38:34', -1);
INSERT INTO `sys_user` VALUES (1280700700074041345, 'laoyu', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', 'laoyu', '老俞', NULL, '2020-07-01', 1, NULL, '18200001103', NULL, '127.0.0.1', '2020-09-23 10:17:27', 2, 0, '2020-07-08 11:10:16', 1265476890672672808, '2020-09-23 10:17:27', -1);
INSERT INTO `sys_user` VALUES (1280709549107552257, 'xuyuxiang', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '就是那个锅', '徐玉祥', NULL, '2020-07-01', 1, NULL, '18200001100', NULL, '127.0.0.1', '2020-09-23 10:16:54', 2, 0, '2020-07-08 11:45:26', 1265476890672672808, '2020-09-23 10:16:54', -1);

-- ----------------------------
-- Table structure for sys_user_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_data_scope`;
CREATE TABLE `sys_user_data_scope`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `org_id` bigint(0) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户数据范围表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_data_scope
-- ----------------------------
INSERT INTO `sys_user_data_scope` VALUES (1277459951742840834, 1266277099455635457, 1265476890672672770);
INSERT INTO `sys_user_data_scope` VALUES (1277459952577507330, 1266277099455635457, 1265476890672672773);
INSERT INTO `sys_user_data_scope` VALUES (1277459953424756737, 1266277099455635457, 1265476890672672775);
INSERT INTO `sys_user_data_scope` VALUES (1277459954267811841, 1266277099455635457, 1265476890672672774);
INSERT INTO `sys_user_data_scope` VALUES (1280712043527249922, 1265476890672672809, 1265476890651701250);
INSERT INTO `sys_user_data_scope` VALUES (1280712043535638529, 1265476890672672809, 1265476890672672769);
INSERT INTO `sys_user_data_scope` VALUES (1280712043535638530, 1265476890672672809, 1265476890672672771);
INSERT INTO `sys_user_data_scope` VALUES (1280712043535638531, 1265476890672672809, 1265476890672672772);
INSERT INTO `sys_user_data_scope` VALUES (1280712043544027137, 1265476890672672809, 1265476890672672770);
INSERT INTO `sys_user_data_scope` VALUES (1280712043544027138, 1265476890672672809, 1265476890672672773);
INSERT INTO `sys_user_data_scope` VALUES (1280712043552415746, 1265476890672672809, 1265476890672672775);
INSERT INTO `sys_user_data_scope` VALUES (1280712043552415747, 1265476890672672809, 1265476890672672774);
INSERT INTO `sys_user_data_scope` VALUES (1280712071570366466, 1275735541155614721, 1265476890672672769);
INSERT INTO `sys_user_data_scope` VALUES (1280712071570366467, 1275735541155614721, 1265476890672672771);
INSERT INTO `sys_user_data_scope` VALUES (1280712071578755074, 1275735541155614721, 1265476890672672772);
INSERT INTO `sys_user_data_scope` VALUES (1285129189085609986, 1280700700074041345, 1265476890672672770);
INSERT INTO `sys_user_data_scope` VALUES (1285129189093998594, 1280700700074041345, 1265476890672672773);
INSERT INTO `sys_user_data_scope` VALUES (1285129189102387201, 1280700700074041345, 1265476890672672775);
INSERT INTO `sys_user_data_scope` VALUES (1285129189106581505, 1280700700074041345, 1265476890672672774);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `role_id` bigint(0) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1283596900713574402, 1275735541155614721, 1265476890672672817);
INSERT INTO `sys_user_role` VALUES (1283596920384860162, 1280700700074041345, 1265476890672672819);
INSERT INTO `sys_user_role` VALUES (1283596949627547649, 1280709549107552257, 1265476890672672818);

-- ----------------------------
-- Table structure for sys_vis_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_vis_log`;
CREATE TABLE `sys_vis_log`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `success` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否执行成功（Y-是，N-否）',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '具体消息',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `vis_type` tinyint(0) NOT NULL COMMENT '操作类型（字典 1登入 2登出）',
  `vis_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_vis_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
