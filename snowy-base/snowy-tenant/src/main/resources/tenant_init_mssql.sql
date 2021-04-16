/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver本地数据库
 Source Server Type    : SQL Server
 Source Server Version : 11002100
 Source Host           : localhost:1433
 Source Catalog        : snowy-mssql
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002100
 File Encoding         : 65001

 Date: 15/04/2021 16:11:57
*/


-- ----------------------------
-- Table structure for FLW_BUTTON
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_BUTTON]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_BUTTON]
GO

CREATE TABLE [dbo].[FLW_BUTTON] (
  [ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUBMIT_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [SAVE_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [BACK_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [TURN_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [NEXT_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [ENTRUST_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [END_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [TRACE_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUSPEND_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [JUMP_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [ADD_SIGN_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [DELETE_SIGN_BTN] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [VERSION] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_BUTTON] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程实例id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'ACT_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'ACT_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'提交（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'SUBMIT_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保存（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'SAVE_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退回（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'BACK_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'转办（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'TURN_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'指定（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'NEXT_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'委托（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'ENTRUST_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终止（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'END_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'追踪（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'TRACE_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'挂起（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'SUSPEND_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跳转（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'JUMP_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'加签（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'ADD_SIGN_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'减签（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'DELETE_SIGN_BTN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'VERSION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程节点按钮表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_BUTTON'
GO


-- ----------------------------
-- Records of FLW_BUTTON
-- ----------------------------

-- ----------------------------
-- Table structure for FLW_CATEGORY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_CATEGORY]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_CATEGORY]
GO

CREATE TABLE [dbo].[FLW_CATEGORY] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_CATEGORY] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程分类表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_CATEGORY'
GO


-- ----------------------------
-- Records of FLW_CATEGORY
-- ----------------------------
INSERT INTO [dbo].[FLW_CATEGORY] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1290140237082759170', N'考勤类', N'kaoqin', N'100', N'考勤类', N'0', N'2020-08-03 12:19:37', N'1265476890672672808', N'2020-08-06 16:18:18', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_CATEGORY] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1290670559956320258', N'行政类', N'xingzheng', N'100', N'行政类', N'0', N'2020-08-04 23:26:56', N'1265476890672672808', N'2020-08-06 16:13:59', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_CATEGORY] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1308401074679459841', N'差旅类', N'travel', N'100', N'差旅类', N'0', N'2020-09-22 21:41:40', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for FLW_DRAFT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_DRAFT]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_DRAFT]
GO

CREATE TABLE [dbo].[FLW_DRAFT] (
  [ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FORM_JSON] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FORM_DATA] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PROCESS_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATEGORY] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATEGORY_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_DRAFT] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单布局数据',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'FORM_JSON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单填写数据',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'FORM_DATA'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'PROCESS_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类编码',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'CATEGORY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'CATEGORY_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请草稿表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_DRAFT'
GO


-- ----------------------------
-- Records of FLW_DRAFT
-- ----------------------------

-- ----------------------------
-- Table structure for FLW_EVENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_EVENT]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_EVENT]
GO

CREATE TABLE [dbo].[FLW_EVENT] (
  [ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NODE_TYPE] tinyint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SCRIPT] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXEC_SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_EVENT] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'ACT_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'ACT_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'事件节点类型（字典 1全局 2节点）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'NODE_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型（字典 见事件类型字典）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'SCRIPT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行顺序',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'EXEC_SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程事件配置表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_EVENT'
GO


-- ----------------------------
-- Records of FLW_EVENT
-- ----------------------------

-- ----------------------------
-- Table structure for FLW_FORM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_FORM]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_FORM]
GO

CREATE TABLE [dbo].[FLW_FORM] (
  [ID] bigint  NOT NULL,
  [FORM_ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NODE_TYPE] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_FORM] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'FORM_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'ACT_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'ACT_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单节点类型（字典 1全局 2节点）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'NODE_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程表单配置表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM'
GO


-- ----------------------------
-- Records of FLW_FORM
-- ----------------------------

-- ----------------------------
-- Table structure for FLW_FORM_RESOURCE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_FORM_RESOURCE]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_FORM_RESOURCE]
GO

CREATE TABLE [dbo].[FLW_FORM_RESOURCE] (
  [ID] bigint  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE] tinyint  NULL,
  [CATEGORY] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FORM_JSON] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [FORM_URL] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [APP_FORM_URL] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_FORM_RESOURCE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单编码',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单类型（字典 1自行开发 2在线设计）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单分类',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'CATEGORY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'PC端表单数据，适用于在线设计表单',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'FORM_JSON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'PC端表单URL。适用于自行开发的表单',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'FORM_URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'移动端表单URL',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'APP_FORM_URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程脚本表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_FORM_RESOURCE'
GO


-- ----------------------------
-- Records of FLW_FORM_RESOURCE
-- ----------------------------
INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1294922365303664641', N'leaveFormWrite', N'请假填写单', N'2', N'kaoqin', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'请假填写单', N'0', N'2020-08-16 17:02:05', N'1265476890672672808', N'2020-08-18 09:42:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1294922455393120258', N'leaveFormRead', N'请假只读单', N'2', N'kaoqin', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680134338"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1597568614214","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"deptName","key":"input_1597568763728","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":true,"hidden":false,"defaultValue":"","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569102078","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":true,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'请假只读单', N'0', N'2020-08-16 17:02:27', N'1265476890672672808', N'2020-08-18 10:41:24', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1295542814805032961', N'formalFormWrite', N'转正填写单', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正填写单', N'0', N'2020-08-18 10:07:32', N'1265476890672672808', N'2020-08-23 10:06:06', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1295542814805032962', N'formalFormWriteWithAssess', N'转正填写单_主管填写', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":true,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正填写单_主管填写', N'0', N'2020-08-18 10:07:32', N'1265476890672672808', N'2020-08-24 09:35:18', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1295542994690342913', N'formalFormRead', N'转正只读单', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正只读单', N'0', N'2020-08-18 10:08:15', N'1265476890672672808', N'2020-08-24 09:35:51', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1304313274803888130', N'travelWrite', N'出差填写单', N'2', N'travel', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'出差填写单', N'0', N'2020-09-11 14:58:12', N'1265476890672672808', N'2020-09-11 15:14:56', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1304317596870582274', N'travelRead', N'出差只读单', N'2', N'travel', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1599807772599","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"dept","key":"input_1599807774961","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":true,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'出差只读单', N'0', N'2020-09-11 15:15:23', N'1265476890672672808', N'2020-09-11 15:16:17', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1354453645117394946', N'tests_codes', N'用车申请单', N'1', N'approval', NULL, N'carApplyForm', NULL, N'用车申请单', N'0', N'2021-01-27 23:38:08', N'1265476890672672808', N'2021-01-28 00:36:55', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_FORM_RESOURCE] ([ID], [CODE], [NAME], [TYPE], [CATEGORY], [FORM_JSON], [FORM_URL], [APP_FORM_URL], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1354468627381014530', N'tests_codes_readonly', N'用车审批单', N'1', N'approval', NULL, N'carApplyFormReadOnly', NULL, N'用车审批单', N'0', N'2021-01-28 00:37:40', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for FLW_OPTION
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_OPTION]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_OPTION]
GO

CREATE TABLE [dbo].[FLW_OPTION] (
  [ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TITLE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [JUMP_FIRST] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SMART_COMPLETE] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VERSION] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_OPTION] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题规则',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自动完成第一个任务（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'JUMP_FIRST'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跳过相同处理人（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'SMART_COMPLETE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'VERSION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程选项配置表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_OPTION'
GO


-- ----------------------------
-- Records of FLW_OPTION
-- ----------------------------

-- ----------------------------
-- Table structure for FLW_SCRIPT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_SCRIPT]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_SCRIPT]
GO

CREATE TABLE [dbo].[FLW_SCRIPT] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE] tinyint  NOT NULL,
  [LANG] tinyint  NOT NULL,
  [CONTENT] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_SCRIPT] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本类别（字典 1流程脚本 2系统脚本）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本语言（字典1 groovy)',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'LANG'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本内容',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'CONTENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程脚本表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SCRIPT'
GO


-- ----------------------------
-- Records of FLW_SCRIPT
-- ----------------------------
INSERT INTO [dbo].[FLW_SCRIPT] ([ID], [NAME], [TYPE], [LANG], [CONTENT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1294898800718163970', N'打印内容', N'1', N'1', N'System.out.println("这是打印的内容");', N'打印内容', N'0', N'2020-08-16 15:28:27', N'1265476890672672808', N'2020-08-16 18:23:26', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_SCRIPT] ([ID], [NAME], [TYPE], [LANG], [CONTENT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1304322960072609794', N'设置会签人员', N'1', N'1', N'import cn.hutool.core.collection.CollectionUtil;
import vip.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', N'流程启动时给流程实例设置会签人员', N'0', N'2020-09-11 15:36:41', N'1265476890672672808', N'2020-09-11 16:55:02', N'1265476890672672808')
GO

INSERT INTO [dbo].[FLW_SCRIPT] ([ID], [NAME], [TYPE], [LANG], [CONTENT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1345925988436881410', N'获取表单数据', N'1', N'1', N'import vip.xiaonuo.flowable.core.utils.BpmScriptUtil;
//此处仅打印表单数据，请参见后台启动日志，执行此脚本会将表单数据获取并打印出来
BpmScriptUtil.getFormData(execution);', N'获取表单数据', N'0', N'2021-01-04 10:52:16', N'1265476890672672808', N'2021-01-11 17:52:16', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for FLW_SHORTCUT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FLW_SHORTCUT]') AND type IN ('U'))
	DROP TABLE [dbo].[FLW_SHORTCUT]
GO

CREATE TABLE [dbo].[FLW_SHORTCUT] (
  [ID] bigint  NOT NULL,
  [PROCESS_DEFINITION_ID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATEGORY] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATEGORY_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DESCRIPTION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [VERSION] tinyint  NOT NULL,
  [ICON] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[FLW_SHORTCUT] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'PROCESS_DEFINITION_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'CATEGORY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'CATEGORY_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'DESCRIPTION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定义版本',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'VERSION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'ICON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程申请入口表',
'SCHEMA', N'dbo',
'TABLE', N'FLW_SHORTCUT'
GO


-- ----------------------------
-- Records of FLW_SHORTCUT
-- ----------------------------

-- ----------------------------
-- Table structure for PAY_ALI_TRADE_HISTORY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PAY_ALI_TRADE_HISTORY]') AND type IN ('U'))
	DROP TABLE [dbo].[PAY_ALI_TRADE_HISTORY]
GO

CREATE TABLE [dbo].[PAY_ALI_TRADE_HISTORY] (
  [ID] bigint  NOT NULL,
  [OUT_TRADE_NO] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TRADE_NO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [BILL_DATE] datetime2(0)  NOT NULL,
  [AMOUNT] decimal(10,2)  NOT NULL,
  [SUBJECT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [BODY] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[PAY_ALI_TRADE_HISTORY] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家订单号',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'OUT_TRADE_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝订单号',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'TRADE_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易时间',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'BILL_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易金额',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'AMOUNT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'SUBJECT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品描述',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'BODY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'PAY_ALI_TRADE_HISTORY',
'COLUMN', N'UPDATE_USER'
GO


-- ----------------------------
-- Records of PAY_ALI_TRADE_HISTORY
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_APP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_APP]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_APP]
GO

CREATE TABLE [dbo].[SYS_APP] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACTIVE] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_APP] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否默认激活（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'ACTIVE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统应用表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_APP'
GO


-- ----------------------------
-- Records of SYS_APP
-- ----------------------------
INSERT INTO [dbo].[SYS_APP] ([ID], [NAME], [CODE], [ACTIVE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672821', N'系统应用', N'system', N'Y', N'0', N'2020-03-25 19:07:00', N'1265476890672672808', N'2020-08-15 15:23:05', N'1280709549107552257')
GO

INSERT INTO [dbo].[SYS_APP] ([ID], [NAME], [CODE], [ACTIVE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672822', N'业务应用', N'business', N'N', N'2', N'2020-03-26 08:40:33', N'1265476890672672808', N'2020-09-23 22:00:01', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_APP] ([ID], [NAME], [CODE], [ACTIVE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672823', N'在线办公', N'office', N'N', N'0', N'2020-04-02 15:48:43', N'1265476890672672808', N'2020-09-23 22:00:15', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_APP] ([ID], [NAME], [CODE], [ACTIVE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1290262474351808514', N'高级体验', N'experience', N'N', N'0', N'2020-08-03 20:25:20', N'1265476890672672808', N'2020-08-15 15:46:12', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_APP] ([ID], [NAME], [CODE], [ACTIVE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1342451550318694401', N'系统工具', N'system_tool', N'N', N'0', N'2020-12-25 20:46:06', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for SYS_CODE_GENERATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CODE_GENERATE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_CODE_GENERATE]
GO

CREATE TABLE [dbo].[SYS_CODE_GENERATE] (
  [ID] bigint  NOT NULL,
  [AUTHOR_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CLASS_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TABLE_PREFIX] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [GENERATE_TYPE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TABLE_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PACKAGE_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BUS_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_COMMENT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER] bigint  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SYS_CODE_GENERATE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'作者姓名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'AUTHOR_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'CLASS_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否移除表前缀',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'TABLE_PREFIX'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成位置类型',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'GENERATE_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库表名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'TABLE_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'包名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'PACKAGE_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'BUS_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'TABLE_COMMENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成基础配置',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE'
GO


-- ----------------------------
-- Records of SYS_CODE_GENERATE
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_CODE_GENERATE_CONFIG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CODE_GENERATE_CONFIG]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_CODE_GENERATE_CONFIG]
GO

CREATE TABLE [dbo].[SYS_CODE_GENERATE_CONFIG] (
  [ID] bigint  NOT NULL,
  [CODE_GEN_ID] bigint  NULL,
  [COLUMN_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [JAVA_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_TYPE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COLUMN_COMMENT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [JAVA_TYPE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EFFECT_TYPE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DICT_TYPE_CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WHETHER_TABLE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WHETHER_ADD_UPDATE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WHETHER_RETRACT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WHETHER_REQUIRED] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_WHETHER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_TYPE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COLUMN_KEY] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COLUMN_KEY_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WHETHER_COMMON] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_CODE_GENERATE_CONFIG] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成主表ID',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'CODE_GEN_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库字段名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'COLUMN_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类字段名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'JAVA_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物理类型',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'DATA_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段描述',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'COLUMN_COMMENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类型',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'JAVA_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'作用类型（字典）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'EFFECT_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典code',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'DICT_TYPE_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表展示',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'WHETHER_TABLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'增改',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'WHETHER_ADD_UPDATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表是否缩进（字典）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'WHETHER_RETRACT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否必填（字典）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'WHETHER_REQUIRED'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是查询条件',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'QUERY_WHETHER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询方式',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'QUERY_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'COLUMN_KEY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主外键名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'COLUMN_KEY_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是通用字段',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'WHETHER_COMMON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成详细配置',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CODE_GENERATE_CONFIG'
GO


-- ----------------------------
-- Records of SYS_CODE_GENERATE_CONFIG
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_CONFIG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_CONFIG]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_CONFIG]
GO

CREATE TABLE [dbo].[SYS_CONFIG] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VALUE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SYS_FLAG] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [GROUP_CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_CONFIG] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'VALUE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是系统参数（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'SYS_FLAG'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'常量所属分类的编码，来自于“常量的分类”字典',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'GROUP_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统参数配置表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_CONFIG'
GO


-- ----------------------------
-- Records of SYS_CONFIG
-- ----------------------------
INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853504', N'验证码开关', N'SNOWY_CAPTCHA_OPEN', N'true', N'Y', N'登录验证码开关 false关闭 true打开', N'0', N'DEFAULT', N'2020-04-14 23:30:14', N'1265476890672672808', N'2021-02-18 16:19:01', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853506', N'jwt密钥', N'SNOWY_JWT_SECRET', N'snowy', N'Y', N'（重要）jwt密钥，默认为空，自行设置', N'0', N'DEFAULT', N'2020-05-26 06:35:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853507', N'默认密码', N'SNOWY_DEFAULT_PASSWORD', N'123456', N'Y', N'默认密码', N'0', N'DEFAULT', N'2020-05-26 06:37:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853508', N'token过期时间', N'SNOWY_TOKEN_EXPIRE', N'86400', N'Y', N'token过期时间（单位：秒）', N'0', N'DEFAULT', N'2020-05-27 11:54:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853509', N'session会话过期时间', N'SNOWY_SESSION_EXPIRE', N'7200', N'Y', N'session会话过期时间（单位：秒）', N'0', N'DEFAULT', N'2020-05-27 11:54:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265117443880853519', N'阿里云短信keyId', N'SNOWY_ALIYUN_SMS_ACCESSKEY_ID', N'你的keyId', N'Y', N'阿里云短信keyId', N'0', N'ALIYUN_SMS', N'2020-06-07 16:27:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269547042242371585', N'阿里云短信secret', N'SNOWY_ALIYUN_SMS_ACCESSKEY_SECRET', N'你的secret', N'Y', N'阿里云短信secret', N'0', N'ALIYUN_SMS', N'2020-06-07 16:29:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269547130041737217', N'阿里云短信签名', N'SNOWY_ALIYUN_SMS_SIGN_NAME', N'Snowy快速开发平台', N'Y', N'阿里云短信签名', N'0', N'ALIYUN_SMS', N'2020-06-07 16:29:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269547279530926081', N'阿里云短信-登录模板号', N'SNOWY_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', N'SMS_1877123456', N'Y', N'阿里云短信-登录模板号', N'0', N'ALIYUN_SMS', N'2020-06-07 16:30:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269547410879750145', N'阿里云短信默认失效时间', N'SNOWY_ALIYUN_SMS_INVALIDATE_MINUTES', N'5', N'Y', N'阿里云短信默认失效时间（单位：分钟）', N'0', N'ALIYUN_SMS', N'2020-06-07 16:31:04', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269575927357071361', N'腾讯云短信secretId', N'SNOWY_TENCENT_SMS_SECRET_ID', N'你的secretId', N'Y', N'腾讯云短信secretId', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269575991693500418', N'腾讯云短信secretKey', N'SNOWY_TENCENT_SMS_SECRET_KEY', N'你的secretkey', N'Y', N'腾讯云短信secretKey', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269576044084551682', N'腾讯云短信sdkAppId', N'SNOWY_TENCENT_SMS_SDK_APP_ID', N'1400375123', N'Y', N'腾讯云短信sdkAppId', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:51', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1269576089294954497', N'腾讯云短信签名', N'SNOWY_TENCENT_SMS_SIGN', N'Snowy快速开发平台', N'Y', N'腾讯云短信签名', N'0', N'TENCENT_SMS', N'2020-06-07 18:25:02', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270378172860403713', N'邮箱host', N'SNOWY_EMAIL_HOST', N'smtp.126.com', N'Y', N'邮箱host', N'0', N'EMAIL', N'2020-06-09 23:32:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270378295543795714', N'邮箱用户名', N'SNOWY_EMAIL_USERNAME', N'test@126.com', N'Y', N'邮箱用户名', N'0', N'EMAIL', N'2020-06-09 23:32:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270378340510928897', N'邮箱密码', N'SNOWY_EMAIL_PASSWORD', N'你的邮箱密码', N'Y', N'邮箱密码', N'0', N'EMAIL', N'2020-06-09 23:32:54', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270378527358783489', N'邮箱端口', N'SNOWY_EMAIL_PORT', N'465', N'Y', N'邮箱端口', N'0', N'EMAIL', N'2020-06-09 23:33:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270378790035460097', N'邮箱是否开启ssl', N'SNOWY_EMAIL_SSL', N'true', N'Y', N'邮箱是否开启ssl', N'0', N'EMAIL', N'2020-06-09 23:34:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649972737', N'邮箱发件人', N'SNOWY_EMAIL_FROM', N'test@126.com', N'Y', N'邮箱发件人', N'0', N'EMAIL', N'2020-06-09 23:42:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649972738', N'win本地上传文件路径', N'SNOWY_FILE_UPLOAD_PATH_FOR_WINDOWS', N'd:/tmp', N'Y', N'win本地上传文件路径', N'0', N'FILE_PATH', N'2020-06-09 23:42:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649972739', N'linux/mac本地上传文件路径', N'SNOWY_FILE_UPLOAD_PATH_FOR_LINUX', N'/tmp', N'Y', N'linux/mac本地上传文件路径', N'0', N'FILE_PATH', N'2020-06-09 23:42:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649982740', N'Snowy演示环境', N'SNOWY_DEMO_ENV_FLAG', N'false', N'Y', N'Snowy演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', N'0', N'DEFAULT', N'2020-06-09 23:42:37', N'1265476890672672808', N'2020-09-03 14:38:17', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649982741', N'Snowy放开XSS过滤的接口', N'SNOWY_UN_XSS_FILTER_URL', N'/demo/xssfilter,/demo/unxss', N'Y', N'多个url可以用英文逗号隔开', N'0', N'DEFAULT', N'2020-06-09 23:42:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1270380786649982742', N'单用户登陆的开关', N'SNOWY_ENABLE_SINGLE_LOGIN', N'false', N'Y', N'单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', N'0', N'DEFAULT', N'2020-06-09 23:42:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1280694281648070659', N'阿里云定位api接口地址', N'SNOWY_IP_GEO_API', N'http://api01.aliyun.venuscn.com/ip?ip=%s', N'Y', N'阿里云定位api接口地址', N'0', N'DEFAULT', N'2020-07-20 10:44:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1280694281648070660', N'阿里云定位appCode', N'SNOWY_IP_GEO_APP_CODE', N'461535aabeae4f34861884d392f5d452', N'Y', N'阿里云定位appCode', N'0', N'DEFAULT', N'2020-07-20 10:44:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288309751255412737', N'Oauth用户登录的开关', N'SNOWY_ENABLE_OAUTH_LOGIN', N'true', N'Y', N'Oauth用户登录的开关', N'0', N'OAUTH', N'2020-07-29 11:05:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288310043346743297', N'Oauth码云登录ClientId', N'SNOWY_OAUTH_GITEE_CLIENT_ID', N'你的clientId', N'Y', N'Oauth码云登录ClientId', N'0', N'OAUTH', N'2020-07-29 11:07:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288310157876408321', N'Oauth码云登录ClientSecret', N'SNOWY_OAUTH_GITEE_CLIENT_SECRET', N'你的clientSecret', N'Y', N'Oauth码云登录ClientSecret', N'0', N'OAUTH', N'2020-07-29 11:07:32', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288310280056483841', N'Oauth码云登录回调地址', N'SNOWY_OAUTH_GITEE_REDIRECT_URI', N'http://127.0.0.1:82/oauth/callback/gitee', N'Y', N'Oauth码云登录回调地址', N'0', N'OAUTH', N'2020-07-29 11:08:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288358228593221633', N'前端项目地址', N'SNOWY_WEB_URL', N'http://localhost:8080', N'Y', N'前端项目地址', N'0', N'DEFAULT', N'2020-07-29 14:18:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288358228593221634', N'支付宝支付跳转地址', N'SNOWY_ALIPAY_RETURN_URL', N'http://localhost:8080/pay/index', N'Y', N'支付宝支付跳转地址', N'0', N'DEFAULT', N'2020-07-29 14:18:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_CONFIG] ([ID], [NAME], [CODE], [VALUE], [SYS_FLAG], [REMARK], [STATUS], [GROUP_CODE], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288358228593221635', N'是否开启多租户', N'SNOWY_TENANT_OPEN', N'true', N'Y', N'是否开启多租户', N'0', N'DEFAULT', N'2020-09-03 17:45:58', N'1265476890672672808', N'2021-02-16 00:09:24', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for SYS_DATABASE_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DATABASE_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_DATABASE_INFO]
GO

CREATE TABLE [dbo].[SYS_DATABASE_INFO] (
  [ID] bigint  NOT NULL,
  [DB_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [JDBC_DRIVER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [USER_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PASSWORD] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [JDBC_URL] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REMARKS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SYS_DATABASE_INFO] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库名称（英文名称）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'DB_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'jdbc的驱动类型',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'JDBC_DRIVER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库连接的账号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'USER_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库连接密码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'PASSWORD'
GO

EXEC sp_addextendedproperty
'MS_Description', N'jdbc的url',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'JDBC_URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注，摘要',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'REMARKS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库信息表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DATABASE_INFO'
GO


-- ----------------------------
-- Records of SYS_DATABASE_INFO
-- ----------------------------
INSERT INTO [dbo].[SYS_DATABASE_INFO] ([ID], [DB_NAME], [JDBC_DRIVER], [USER_NAME], [PASSWORD], [JDBC_URL], [REMARKS], [CREATE_TIME]) VALUES (N'1382604422785314817', N'master', N'com.mysql.cj.jdbc.Driver', N'root', N'123456', N'jdbc:mysql://localhost:3306/snowy?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', N'主数据源，项目启动数据源！', N'2021-04-15 15:59:16')
GO


-- ----------------------------
-- Table structure for SYS_DICT_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DICT_DATA]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_DICT_DATA]
GO

CREATE TABLE [dbo].[SYS_DICT_DATA] (
  [ID] bigint  NOT NULL,
  [TYPE_ID] bigint  NOT NULL,
  [VALUE] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_DICT_DATA] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典类型id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'TYPE_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'VALUE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统字典值表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_DATA'
GO


-- ----------------------------
-- Records of SYS_DICT_DATA
-- ----------------------------
INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087357', N'1265216211667636234', N'男', N'1', N'100', N'男性', N'0', N'2020-04-01 10:23:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087358', N'1265216211667636234', N'女', N'2', N'100', N'女性', N'0', N'2020-04-01 10:23:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087359', N'1265216211667636234', N'未知', N'3', N'100', N'未知性别', N'0', N'2020-04-01 10:24:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087361', N'1265216211667636235', N'默认常量', N'DEFAULT', N'100', N'默认常量，都以SNOWY_开头的', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087363', N'1265216211667636235', N'阿里云短信', N'ALIYUN_SMS', N'100', N'阿里云短信配置', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087364', N'1265216211667636235', N'腾讯云短信', N'TENCENT_SMS', N'100', N'腾讯云短信', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087365', N'1265216211667636235', N'邮件配置', N'EMAIL', N'100', N'邮箱配置', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087366', N'1265216211667636235', N'文件上传路径', N'FILE_PATH', N'100', N'文件上传路径', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216536659087367', N'1265216211667636235', N'Oauth配置', N'OAUTH', N'100', N'Oauth配置', N'0', N'2020-04-14 23:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216617500102656', N'1265216211667636226', N'正常', N'0', N'100', N'正常', N'0', N'2020-05-26 17:41:44', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216617500102657', N'1265216211667636226', N'停用', N'1', N'100', N'停用', N'0', N'2020-05-26 17:42:03', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216938389524482', N'1265216211667636226', N'删除', N'2', N'100', N'删除', N'0', N'2020-05-26 17:43:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265217669028892673', N'1265217074079453185', N'否', N'N', N'100', N'否', N'0', N'2020-05-26 17:46:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265217706584690689', N'1265217074079453185', N'是', N'Y', N'100', N'是', N'0', N'2020-05-26 17:46:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265220776437731330', N'1265217846770913282', N'登录', N'1', N'100', N'登录', N'0', N'2020-05-26 17:58:34', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265220806070489090', N'1265217846770913282', N'登出', N'2', N'100', N'登出', N'0', N'2020-05-26 17:58:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265221129564573697', N'1265221049302372354', N'目录', N'0', N'100', N'目录', N'0', N'2020-05-26 17:59:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265221163119005697', N'1265221049302372354', N'菜单', N'1', N'100', N'菜单', N'0', N'2020-05-26 18:00:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265221188091891713', N'1265221049302372354', N'按钮', N'2', N'100', N'按钮', N'0', N'2020-05-26 18:00:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466389204967426', N'1265466149622128641', N'未发送', N'0', N'100', N'未发送', N'0', N'2020-05-27 10:14:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466432670539778', N'1265466149622128641', N'发送成功', N'1', N'100', N'发送成功', N'0', N'2020-05-27 10:14:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466486097584130', N'1265466149622128641', N'发送失败', N'2', N'100', N'发送失败', N'0', N'2020-05-27 10:14:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466530477514754', N'1265466149622128641', N'失效', N'3', N'100', N'失效', N'0', N'2020-05-27 10:15:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466835009150978', N'1265466752209395713', N'无', N'0', N'100', N'无', N'0', N'2020-05-27 10:16:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466874758569986', N'1265466752209395713', N'组件', N'1', N'100', N'组件', N'0', N'2020-05-27 10:16:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466925476093953', N'1265466752209395713', N'内链', N'2', N'100', N'内链', N'0', N'2020-05-27 10:16:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466962209808385', N'1265466752209395713', N'外链', N'3', N'100', N'外链', N'0', N'2020-05-27 10:16:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467428423475202', N'1265467337566461954', N'系统权重', N'1', N'100', N'系统权重', N'0', N'2020-05-27 10:18:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467503090475009', N'1265467337566461954', N'业务权重', N'2', N'100', N'业务权重', N'0', N'2020-05-27 10:18:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467709110493186', N'1265467629167058946', N'事假', N'1', N'100', N'事假', N'0', N'2020-05-27 10:19:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467745013735426', N'1265467629167058946', N'病假', N'2', N'100', N'病假', N'0', N'2020-05-27 10:19:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467785253888001', N'1265467629167058946', N'婚假', N'3', N'100', N'婚假', N'0', N'2020-05-27 10:20:06', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467823426248706', N'1265467629167058946', N'丧假', N'4', N'100', N'丧假', N'0', N'2020-05-27 10:20:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467855781109762', N'1265467629167058946', N'产假', N'5', N'100', N'产假', N'0', N'2020-05-27 10:20:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467895782187010', N'1265467629167058946', N'其他', N'6', N'100', N'其他', N'0', N'2020-05-27 10:20:32', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468138431062018', N'1265468028632571905', N'全部数据', N'1', N'100', N'全部数据', N'0', N'2020-05-27 10:21:30', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468194928336897', N'1265468028632571905', N'本部门及以下数据', N'2', N'100', N'本部门及以下数据', N'0', N'2020-05-27 10:21:44', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468241992622082', N'1265468028632571905', N'本部门数据', N'3', N'100', N'本部门数据', N'0', N'2020-05-27 10:21:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468273634451457', N'1265468028632571905', N'仅本人数据', N'4', N'100', N'仅本人数据', N'0', N'2020-05-27 10:22:02', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468302046666753', N'1265468028632571905', N'自定义数据', N'5', N'100', N'自定义数据', N'0', N'2020-05-27 10:22:09', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468508100239362', N'1265468437904367618', N'app', N'1', N'100', N'app', N'0', N'2020-05-27 10:22:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468543433056258', N'1265468437904367618', N'pc', N'2', N'100', N'pc', N'0', N'2020-05-27 10:23:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468576874242050', N'1265468437904367618', N'其他', N'3', N'100', N'其他', N'0', N'2020-05-27 10:23:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468839764828161', N'1265468761230680066', N'Integer', N'1', N'100', N'Integer', N'0', N'2020-05-27 10:24:17', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468871641538562', N'1265468761230680066', N'String', N'2', N'100', N'String', N'0', N'2020-05-27 10:24:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468898896125954', N'1265468761230680066', N'Long', N'3', N'100', N'Long', N'0', N'2020-05-27 10:24:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468922275176450', N'1265468761230680066', N'Double', N'4', N'100', N'Double', N'0', N'2020-05-27 10:24:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468946648276993', N'1265468761230680066', N'Boolean', N'5', N'100', N'Boolean', N'0', N'2020-05-27 10:24:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468970450952193', N'1265468761230680066', N'Date', N'6', N'100', N'Date', N'0', N'2020-05-27 10:24:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468970450952194', N'1265468761230680066', N'List', N'7', N'100', N'List', N'0', N'2020-05-27 10:24:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469305756196865', N'1265469198583341057', N'流程脚本', N'1', N'100', N'流程脚本', N'0', N'2020-05-27 10:26:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469330859106306', N'1265469198583341057', N'系统脚本', N'2', N'100', N'系统脚本', N'0', N'2020-05-27 10:26:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469526330449922', N'1265469441454514178', N'groovy', N'1', N'100', N'groovy', N'0', N'2020-05-27 10:27:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469753078718464', N'1265469702042427393', N'启动', N'1', N'100', N'启动', N'0', N'2020-05-27 10:30:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469753078718465', N'1265469702042427393', N'全局', N'2', N'100', N'全局', N'0', N'2020-05-27 10:27:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469779460890626', N'1265469702042427393', N'节点', N'3', N'100', N'节点', N'0', N'2020-05-27 10:28:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470046877130753', N'1265469962873610241', N'流程启动', N'PROCESS_STARTED', N'100', N'流程启动', N'0', N'2020-05-27 10:29:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470074517594113', N'1265469962873610241', N'流程完成', N'PROCESS_COMPLETED', N'100', N'流程完成', N'0', N'2020-05-27 10:29:12', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470103152107521', N'1265469962873610241', N'流程取消', N'PROCESS_CANCELLED', N'100', N'流程取消', N'0', N'2020-05-27 10:29:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470125725851649', N'1265469962873610241', N'活动开始', N'ACTIVITY_STARTED', N'100', N'活动开始', N'0', N'2020-05-27 10:29:24', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470153416646657', N'1265469962873610241', N'活动完成', N'ACTIVITY_COMPLETED', N'100', N'活动完成', N'0', N'2020-05-27 10:29:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470179165478913', N'1265469962873610241', N'活动取消', N'ACTIVITY_CANCELLED', N'100', N'活动取消', N'0', N'2020-05-27 10:29:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470207363784705', N'1265469962873610241', N'任务分配', N'TASK_ASSIGNED', N'100', N'任务分配', N'0', N'2020-05-27 10:29:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470236853936130', N'1265469962873610241', N'任务创建', N'TASK_CREATED', N'100', N'任务创建', N'0', N'2020-05-27 10:29:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470266780295170', N'1265469962873610241', N'任务完成', N'TASK_COMPLETED', N'100', N'任务完成', N'0', N'2020-05-27 10:29:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470296446607361', N'1265469962873610241', N'连接线', N'SEQUENCEFLOW_TAKEN', N'100', N'连接线', N'0', N'2020-05-27 10:30:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470296446607362', N'1265469962873610242', N'全局', N'1', N'100', N'全局', N'0', N'2020-05-27 10:30:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470296446607363', N'1265469962873610242', N'节点', N'2', N'100', N'节点', N'0', N'2020-05-27 10:30:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470526197997569', N'1265470456631271426', N'草稿', N'0', N'100', N'草稿', N'0', N'2020-05-27 10:30:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470552823439361', N'1265470456631271426', N'审核中', N'1', N'100', N'审核中', N'0', N'2020-05-27 10:31:06', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470575615287297', N'1265470456631271426', N'已退回', N'2', N'100', N'已退回', N'0', N'2020-05-27 10:31:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470607588466690', N'1265470456631271426', N'已完成', N'3', N'100', N'已完成', N'0', N'2020-05-27 10:31:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617233011335170', N'1275617093517172738', N'其它', N'0', N'100', N'其它', N'0', N'2020-06-24 10:30:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617295355469826', N'1275617093517172738', N'增加', N'1', N'100', N'增加', N'0', N'2020-06-24 10:30:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617348610547714', N'1275617093517172738', N'删除', N'2', N'100', N'删除', N'0', N'2020-06-24 10:30:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617395515449346', N'1275617093517172738', N'编辑', N'3', N'100', N'编辑', N'0', N'2020-06-24 10:31:02', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617433612312577', N'1275617093517172738', N'更新', N'4', N'100', N'更新', N'0', N'2020-06-24 10:31:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617472707420161', N'1275617093517172738', N'查询', N'5', N'100', N'查询', N'0', N'2020-06-24 10:31:20', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617502973517826', N'1275617093517172738', N'详情', N'6', N'100', N'详情', N'0', N'2020-06-24 10:31:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617536959963137', N'1275617093517172738', N'树', N'7', N'100', N'树', N'0', N'2020-06-24 10:31:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617619524837377', N'1275617093517172738', N'导入', N'8', N'100', N'导入', N'0', N'2020-06-24 10:31:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617651816783873', N'1275617093517172738', N'导出', N'9', N'100', N'导出', N'0', N'2020-06-24 10:32:03', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617683475390465', N'1275617093517172738', N'授权', N'10', N'100', N'授权', N'0', N'2020-06-24 10:32:10', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617709928865793', N'1275617093517172738', N'强退', N'11', N'100', N'强退', N'0', N'2020-06-24 10:32:17', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617739091861505', N'1275617093517172738', N'清空', N'12', N'100', N'清空', N'0', N'2020-06-24 10:32:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617788601425921', N'1275617093517172738', N'修改状态', N'13', N'100', N'修改状态', N'0', N'2020-06-24 10:32:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1277774590944317441', N'1277774529430654977', N'阿里云', N'1', N'100', N'阿里云', N'0', N'2020-06-30 09:22:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1277774666055913474', N'1277774529430654977', N'腾讯云', N'2', N'100', N'腾讯云', N'0', N'2020-06-30 09:23:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1277774695168577538', N'1277774529430654977', N'minio', N'3', N'100', N'minio', N'0', N'2020-06-30 09:23:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1277774726835572737', N'1277774529430654977', N'本地', N'4', N'100', N'本地', N'0', N'2020-06-30 09:23:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278607123583868929', N'1278606951432855553', N'运行', N'1', N'100', N'运行', N'0', N'2020-07-02 16:31:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278607162943217666', N'1278606951432855553', N'停止', N'2', N'100', N'停止', N'0', N'2020-07-02 16:31:18', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939265862004738', N'1278911800547147777', N'通知', N'1', N'100', N'通知', N'0', N'2020-07-03 14:30:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939319922388994', N'1278911800547147777', N'公告', N'2', N'100', N'公告', N'0', N'2020-07-03 14:31:10', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939399001796609', N'1278911952657776642', N'草稿', N'0', N'100', N'草稿', N'0', N'2020-07-03 14:31:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939432686252034', N'1278911952657776642', N'发布', N'1', N'100', N'发布', N'0', N'2020-07-03 14:31:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939458804183041', N'1278911952657776642', N'撤回', N'2', N'100', N'撤回', N'0', N'2020-07-03 14:31:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278939485878415362', N'1278911952657776642', N'删除', N'3', N'100', N'删除', N'0', N'2020-07-03 14:31:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278992343223025665', N'1278992276965605377', N'委托中', N'0', N'90', N'委托中', N'0', N'2020-07-03 18:01:52', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278992370066571266', N'1278992276965605377', N'委托结束', N'1', N'100', N'委托结束', N'0', N'2020-07-03 18:01:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278992396788482050', N'1278992276965605377', N'未委托', N'2', N'100', N'未委托', N'0', N'2020-07-03 18:02:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291390260160299009', N'1291390159941599233', N'是', N'true', N'100', N'是', N'2', N'2020-08-06 23:06:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291390315437031426', N'1291390159941599233', N'否', N'false', N'100', N'否', N'2', N'2020-08-06 23:06:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291391148769738754', N'1291391077990858754', N'是', N'true', N'100', N'是', N'0', N'2020-08-06 23:10:17', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291391205719998465', N'1291391077990858754', N'否', N'false', N'100', N'否', N'0', N'2020-08-06 23:10:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291393684314587138', N'1291393441594408961', N'是', N'true', N'100', N'已结束', N'0', N'2020-08-06 23:20:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291393766048989186', N'1291393441594408961', N'否', N'false', N'100', N'未结束', N'0', N'2020-08-06 23:20:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300767954291433474', N'1300767512828354562', N'Mysql', N'com.mysql.cj.jdbc.Driver', N'100', N'Mysql数据库驱动', N'0', N'2020-09-01 20:10:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768214854180866', N'1300767512828354562', N'Oracle', N'oracle.jdbc.OracleDriver', N'100', N'Oracle数据库驱动', N'0', N'2020-09-01 20:11:24', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196417', N'1300767512828354562', N'Sqlserver', N'com.microsoft.jdbc.sqlserver.SQLServerDriver', N'100', N'Sqlserver数据库', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196418', N'1300767512828354563', N'未支付', N'0', N'100', N'未支付', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196419', N'1300767512828354563', N'已支付', N'1', N'100', N'已支付', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196420', N'1300767512828354563', N'已退款', N'2', N'100', N'已退款', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196421', N'1300767512828354563', N'已关闭', N'3', N'100', N'已关闭', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300768392747196422', N'1300767512828354563', N'已关闭有退款', N'4', N'100', N'已关闭有退款', N'0', N'2020-09-01 20:12:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1342451445578534913', N'1342451383595110402', N'下载压缩包', N'1', N'100', N'下载压缩包', N'0', N'2020-12-25 20:45:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1342451490893795329', N'1342451383595110402', N'生成到本项目', N'2', N'100', N'生成到本项目', N'0', N'2020-12-25 20:45:52', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1354106182690942978', N'1354106042974482433', N'自行开发', N'1', N'100', N'自行开发', N'0', N'2021-01-27 00:37:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1354106244473040897', N'1354106042974482433', N'在线设计', N'2', N'100', N'在线设计', N'0', N'2021-01-27 00:37:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358094655567454210', N'1358094419419750401', N'输入框', N'input', N'100', N'输入框', N'0', N'2021-02-07 00:46:13', N'1265476890672672808', N'2021-02-08 01:01:28', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358094740510498817', N'1358094419419750401', N'时间选择', N'datepicker', N'100', N'时间选择', N'0', N'2021-02-07 00:46:33', N'1265476890672672808', N'2021-02-08 01:04:07', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358094793149014017', N'1358094419419750401', N'下拉框', N'select', N'100', N'下拉框', N'0', N'2021-02-07 00:46:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358095496009506817', N'1358094419419750401', N'单选框', N'radio', N'100', N'单选框', N'0', N'2021-02-07 00:49:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358095673084633090', N'1358094419419750401', N'开关', N'switch', N'100', N'开关', N'2', N'2021-02-07 00:50:15', N'1265476890672672808', N'2021-02-11 19:07:18', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358458689433190402', N'1358457818733428737', N'等于', N'eq', N'1', N'等于', N'0', N'2021-02-08 00:52:45', N'1265476890672672808', N'2021-02-13 23:35:36', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358458785168179202', N'1358457818733428737', N'模糊', N'like', N'2', N'模糊', N'0', N'2021-02-08 00:53:08', N'1265476890672672808', N'2021-02-13 23:35:46', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358460475682406401', N'1358094419419750401', N'多选框', N'checkbox', N'100', N'多选框', N'0', N'2021-02-08 00:59:51', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358460819019743233', N'1358094419419750401', N'数字输入框', N'inputnumber', N'100', N'数字输入框', N'0', N'2021-02-08 01:01:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470210267725826', N'1358470065111252994', N'Long', N'Long', N'100', N'Long', N'0', N'2021-02-08 01:38:32', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470239351029762', N'1358470065111252994', N'String', N'String', N'100', N'String', N'0', N'2021-02-08 01:38:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470265640927233', N'1358470065111252994', N'Date', N'Date', N'100', N'Date', N'0', N'2021-02-08 01:38:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470300168437761', N'1358470065111252994', N'Integer', N'Integer', N'100', N'Integer', N'0', N'2021-02-08 01:38:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470697377415169', N'1358470065111252994', N'boolean', N'boolean', N'100', N'boolean', N'0', N'2021-02-08 01:40:28', N'1265476890672672808', N'2021-02-08 01:40:47', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358471133434036226', N'1358470065111252994', N'int', N'int', N'100', N'int', N'0', N'2021-02-08 01:42:12', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358471188291338241', N'1358470065111252994', N'double', N'double', N'100', N'double', N'0', N'2021-02-08 01:42:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358756511688761346', N'1358457818733428737', N'大于', N'gt', N'3', N'大于', N'0', N'2021-02-08 20:36:12', N'1265476890672672808', N'2021-02-13 23:45:24', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358756547159990274', N'1358457818733428737', N'小于', N'lt', N'4', N'大于', N'0', N'2021-02-08 20:36:20', N'1265476890672672808', N'2021-02-13 23:45:29', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358756609990664193', N'1358457818733428737', N'不等于', N'ne', N'7', N'不等于', N'0', N'2021-02-08 20:36:35', N'1265476890672672808', N'2021-02-13 23:45:46', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358756685030957057', N'1358457818733428737', N'大于等于', N'ge', N'5', N'大于等于', N'0', N'2021-02-08 20:36:53', N'1265476890672672808', N'2021-02-13 23:45:35', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358756800525312001', N'1358457818733428737', N'小于等于', N'le', N'6', N'小于等于', N'0', N'2021-02-08 20:37:20', N'1265476890672672808', N'2021-02-13 23:45:40', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1360529773814083586', N'1358094419419750401', N'文本域', N'textarea', N'100', N'文本域', N'0', N'2021-02-13 18:02:30', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_DATA] ([ID], [TYPE_ID], [VALUE], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1360606105914732545', N'1358457818733428737', N'不为空', N'isNotNull', N'8', N'不为空', N'0', N'2021-02-13 23:05:49', N'1265476890672672808', N'2021-02-13 23:45:50', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for SYS_DICT_TYPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_DICT_TYPE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_DICT_TYPE]
GO

CREATE TABLE [dbo].[SYS_DICT_TYPE] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_DICT_TYPE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统字典类型表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_DICT_TYPE'
GO


-- ----------------------------
-- Records of SYS_DICT_TYPE
-- ----------------------------
INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216211667636226', N'通用状态', N'common_status', N'100', N'通用状态', N'0', N'2020-05-26 17:40:26', N'1265476890672672808', N'2020-06-08 11:31:47', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216211667636234', N'性别', N'sex', N'100', N'性别字典', N'0', N'2020-04-01 10:12:30', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265216211667636235', N'常量的分类', N'consts_type', N'100', N'常量的分类，用于区别一组配置', N'0', N'2020-04-14 23:24:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265217074079453185', N'是否', N'yes_or_no', N'100', N'是否', N'0', N'2020-05-26 17:43:52', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265217846770913282', N'访问类型', N'vis_type', N'100', N'访问类型', N'0', N'2020-05-26 17:46:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265221049302372354', N'菜单类型', N'menu_type', N'100', N'菜单类型', N'0', N'2020-05-26 17:59:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466149622128641', N'发送类型', N'send_type', N'100', N'发送类型', N'0', N'2020-05-27 10:13:36', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265466752209395713', N'打开方式', N'open_type', N'100', N'打开方式', N'0', N'2020-05-27 10:16:00', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467337566461954', N'菜单权重', N'menu_weight', N'100', N'菜单权重', N'0', N'2020-05-27 10:18:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265467629167058946', N'请假类型', N'leave_type', N'100', N'请假类型', N'0', N'2020-05-27 10:19:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468028632571905', N'数据范围类型', N'data_scope_type', N'100', N'数据范围类型', N'0', N'2020-05-27 10:21:04', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468437904367618', N'短信发送来源', N'sms_send_source', N'100', N'短信发送来源', N'0', N'2020-05-27 10:22:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265468761230680066', N'字段类型', N'filed_type', N'100', N'字段类型', N'0', N'2020-05-27 10:23:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469198583341057', N'脚本类型', N'script_type', N'100', N'脚本类型', N'0', N'2020-05-27 10:25:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469441454514178', N'脚本语言类型', N'script_language_type', N'100', N'脚本语言类型', N'0', N'2020-05-27 10:26:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469702042427393', N'表单类型', N'form_type', N'100', N'表单类型', N'0', N'2020-05-27 10:27:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469962873610241', N'事件类型', N'event_type', N'100', N'事件类型', N'0', N'2020-05-27 10:28:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265469962873610242', N'事件节点类型', N'event_node_type', N'100', N'事件节点类型', N'0', N'2020-05-27 10:28:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265470456631271426', N'流程状态', N'process_status', N'100', N'流程状态', N'0', N'2020-05-27 10:30:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275617093517172738', N'操作类型', N'op_type', N'100', N'操作类型', N'0', N'2020-06-24 10:29:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1277774529430654977', N'文件存储位置', N'file_storage_location', N'100', N'文件存储位置', N'0', N'2020-06-30 09:22:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278606951432855553', N'运行状态', N'run_status', N'100', N'定时任务运行状态', N'0', N'2020-07-02 16:30:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278911800547147777', N'通知公告类型', N'notice_type', N'100', N'通知公告类型', N'0', N'2020-07-03 12:41:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278911952657776642', N'通知公告状态', N'notice_status', N'100', N'通知公告状态', N'0', N'2020-07-03 12:42:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1278992276965605377', N'委托状态', N'delegate_status', N'100', N'委托状态', N'0', N'2020-07-03 18:01:36', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291390159941599233', N'是否boolean', N'yes_true_false', N'100', N'是否boolean', N'2', N'2020-08-06 23:06:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291391077990858754', N'流程是否挂起', N'suspended_status', N'100', N'流程是否挂起', N'0', N'2020-08-06 23:10:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1291393441594408961', N'是否结束', N'ended_status', N'100', N'是否结束', N'0', N'2020-08-06 23:19:24', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300767512828354562', N'JDBC驱动类型', N'jdbc_driver', N'100', N'JDBC驱动类型', N'0', N'2020-09-01 20:08:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1300767512828354563', N'支付宝交易状态', N'alipay_trade_status', N'100', N'支付宝交易状态', N'0', N'2020-09-23 10:36:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1342451383595110402', N'代码生成方式', N'code_gen_create_type', N'100', N'代码生成方式', N'0', N'2020-12-25 20:45:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1354106042974482433', N'流程表单类型', N'form_resource_type', N'100', N'流程表单类型', N'0', N'2021-01-27 00:36:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358094419419750401', N'代码生成作用类型', N'code_gen_effect_type', N'100', N'代码生成作用类型', N'0', N'2021-02-07 00:45:16', N'1265476890672672808', N'2021-02-08 00:47:48', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358457818733428737', N'代码生成查询类型', N'code_gen_query_type', N'100', N'代码生成查询类型', N'0', N'2021-02-08 00:49:18', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_DICT_TYPE] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1358470065111252994', N'代码生成java类型', N'code_gen_java_type', N'100', N'代码生成java类型', N'0', N'2021-02-08 01:37:57', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for SYS_EMP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_EMP]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_EMP]
GO

CREATE TABLE [dbo].[SYS_EMP] (
  [ID] bigint  NOT NULL,
  [JOB_NUM] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [ORG_ID] bigint  NOT NULL,
  [ORG_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_EMP] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP',
'COLUMN', N'JOB_NUM'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属机构id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP',
'COLUMN', N'ORG_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属机构名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP',
'COLUMN', N'ORG_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP'
GO


-- ----------------------------
-- Records of SYS_EMP
-- ----------------------------
INSERT INTO [dbo].[SYS_EMP] ([ID], [JOB_NUM], [ORG_ID], [ORG_NAME]) VALUES (N'1275735541155614721', N'102', N'1265476890672672769', N'华夏集团北京分公司')
GO

INSERT INTO [dbo].[SYS_EMP] ([ID], [JOB_NUM], [ORG_ID], [ORG_NAME]) VALUES (N'1280700700074041345', N'110', N'1265476890672672771', N'研发部')
GO

INSERT INTO [dbo].[SYS_EMP] ([ID], [JOB_NUM], [ORG_ID], [ORG_NAME]) VALUES (N'1280709549107552257', N'100', N'1265476890672672770', N'华夏集团成都分公司')
GO


-- ----------------------------
-- Table structure for SYS_EMP_EXT_ORG_POS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_EMP_EXT_ORG_POS]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_EMP_EXT_ORG_POS]
GO

CREATE TABLE [dbo].[SYS_EMP_EXT_ORG_POS] (
  [ID] bigint  NOT NULL,
  [EMP_ID] bigint  NOT NULL,
  [ORG_ID] bigint  NOT NULL,
  [POS_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_EMP_EXT_ORG_POS] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_EXT_ORG_POS',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_EXT_ORG_POS',
'COLUMN', N'EMP_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_EXT_ORG_POS',
'COLUMN', N'ORG_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_EXT_ORG_POS',
'COLUMN', N'POS_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工附属机构岗位表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_EXT_ORG_POS'
GO


-- ----------------------------
-- Records of SYS_EMP_EXT_ORG_POS
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_EMP_POS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_EMP_POS]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_EMP_POS]
GO

CREATE TABLE [dbo].[SYS_EMP_POS] (
  [ID] bigint  NOT NULL,
  [EMP_ID] bigint  NOT NULL,
  [POS_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_EMP_POS] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_POS',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_POS',
'COLUMN', N'EMP_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职位id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_POS',
'COLUMN', N'POS_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工职位关联表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_EMP_POS'
GO


-- ----------------------------
-- Records of SYS_EMP_POS
-- ----------------------------
INSERT INTO [dbo].[SYS_EMP_POS] ([ID], [EMP_ID], [POS_ID]) VALUES (N'1280710811995709441', N'1275735541155614721', N'1265476890672672787')
GO

INSERT INTO [dbo].[SYS_EMP_POS] ([ID], [EMP_ID], [POS_ID]) VALUES (N'1280710828479324161', N'1280700700074041345', N'1265476890672672790')
GO

INSERT INTO [dbo].[SYS_EMP_POS] ([ID], [EMP_ID], [POS_ID]) VALUES (N'1281042262003867649', N'1280709549107552257', N'1265476890672672787')
GO


-- ----------------------------
-- Table structure for SYS_FILE_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_FILE_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_FILE_INFO]
GO

CREATE TABLE [dbo].[SYS_FILE_INFO] (
  [ID] bigint  NOT NULL,
  [FILE_LOCATION] tinyint  NOT NULL,
  [FILE_BUCKET] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [FILE_ORIGIN_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FILE_SUFFIX] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FILE_SIZE_KB] bigint  NULL,
  [FILE_SIZE_INFO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [FILE_OBJECT_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FILE_PATH] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_FILE_INFO] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_LOCATION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件仓库',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_BUCKET'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名称（上传时候的文件名）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_ORIGIN_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件后缀',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_SUFFIX'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小kb',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_SIZE_KB'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小信息，计算后的',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_SIZE_INFO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存储到bucket的名称（文件唯一标识id）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_OBJECT_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存储路径',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'FILE_PATH'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件信息表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_FILE_INFO'
GO


-- ----------------------------
-- Records of SYS_FILE_INFO
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_MENU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_MENU]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_MENU]
GO

CREATE TABLE [dbo].[SYS_MENU] (
  [ID] bigint  NOT NULL,
  [PID] bigint  NOT NULL,
  [PIDS] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE] tinyint DEFAULT ((1)) NOT NULL,
  [ICON] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ROUTER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COMPONENT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PERMISSION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [APPLICATION] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [OPEN_TYPE] tinyint  NOT NULL,
  [VISIBLE] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LINK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REDIRECT] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [WEIGHT] tinyint  NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_MENU] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'PID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ids',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'PIDS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型（字典 0目录 1菜单 2按钮）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'ICON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路由地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'ROUTER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'COMPONENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限标识',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'PERMISSION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用分类（应用编码）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'APPLICATION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打开方式（字典 0无 1组件 2内链 3外链）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'OPEN_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可见（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'VISIBLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'LINK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'重定向地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'REDIRECT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权重（字典 1系统权重 2业务权重）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'WEIGHT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统菜单表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_MENU'
GO


-- ----------------------------
-- Records of SYS_MENU
-- ----------------------------
INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255311', N'0', N'[0],', N'主控面板', N'system_index', N'0', N'home', N'/', N'RouteView', NULL, N'system', N'0', N'Y', NULL, N'/analysis', N'1', N'1', NULL, N'0', N'2020-05-25 02:19:24', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255321', N'1264622039642255311', N'[0],[1264622039642255311],', N'分析页', N'system_index_dashboard', N'1', NULL, N'analysis', N'system/dashboard/Analysis', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-25 02:21:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255331', N'1264622039642255311', N'[0],[1264622039642255311],', N'工作台', N'system_index_workplace', N'1', NULL, N'workplace', N'system/dashboard/Workplace', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-05-25 02:23:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255341', N'0', N'[0],', N'组织架构', N'sys_mgr', N'0', N'team', N'/sys', N'PageView', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-03-27 15:58:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255351', N'1264622039642255341', N'[0],[1264622039642255341],', N'用户管理', N'sys_user_mgr', N'1', NULL, N'/mgr_user', N'system/user/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'3', NULL, N'0', N'2020-03-27 16:10:21', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255361', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户查询', N'sys_user_mgr_page', N'2', NULL, NULL, NULL, N'sysUser:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:36:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255371', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户编辑', N'sys_user_mgr_edit', N'2', NULL, NULL, NULL, N'sysUser:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:20:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255381', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户增加', N'sys_user_mgr_add', N'2', NULL, NULL, NULL, N'sysUser:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:37:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255391', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户删除', N'sys_user_mgr_delete', N'2', NULL, NULL, NULL, N'sysUser:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:37:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255401', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户详情', N'sys_user_mgr_detail', N'2', NULL, NULL, NULL, N'sysUser:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:38:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255411', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户导出', N'sys_user_mgr_export', N'2', NULL, NULL, NULL, N'sysUser:export', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:21:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255421', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户选择器', N'sys_user_mgr_selector', N'2', NULL, NULL, NULL, N'sysUser:selector', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-03 13:30:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255431', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户授权角色', N'sys_user_mgr_grant_role', N'2', NULL, NULL, NULL, N'sysUser:grantRole', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:22:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255441', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户拥有角色', N'sys_user_mgr_own_role', N'2', NULL, NULL, NULL, N'sysUser:ownRole', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:27:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255451', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户授权数据', N'sys_user_mgr_grant_data', N'2', NULL, NULL, NULL, N'sysUser:grantData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:22:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255461', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户拥有数据', N'sys_user_mgr_own_data', N'2', NULL, NULL, NULL, N'sysUser:ownData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:27:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255471', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户更新信息', N'sys_user_mgr_update_info', N'2', NULL, NULL, NULL, N'sysUser:updateInfo', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 16:19:32', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255481', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改密码', N'sys_user_mgr_update_pwd', N'2', NULL, NULL, NULL, N'sysUser:updatePwd', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 16:20:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255491', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改状态', N'sys_user_mgr_change_status', N'2', NULL, NULL, NULL, N'sysUser:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:13:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255501', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改头像', N'sys_user_mgr_update_avatar', N'2', NULL, NULL, NULL, N'sysUser:updateAvatar', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:21:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255511', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户重置密码', N'sys_user_mgr_reset_pwd', N'2', NULL, NULL, NULL, N'sysUser:resetPwd', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:01:51', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255521', N'1264622039642255341', N'[0],[1264622039642255341],', N'机构管理', N'sys_org_mgr', N'1', NULL, N'/org', N'system/org/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'4', NULL, N'0', N'2020-03-27 17:15:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255531', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构查询', N'sys_org_mgr_page', N'2', NULL, NULL, NULL, N'sysOrg:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:17:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255541', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构列表', N'sys_org_mgr_list', N'2', NULL, NULL, NULL, N'sysOrg:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:54:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255551', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构增加', N'sys_org_mgr_add', N'2', NULL, NULL, NULL, N'sysOrg:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:19:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255561', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构编辑', N'sys_org_mgr_edit', N'2', NULL, NULL, NULL, N'sysOrg:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:54:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255571', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构删除', N'sys_org_mgr_delete', N'2', NULL, NULL, NULL, N'sysOrg:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:20:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255581', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构详情', N'sys_org_mgr_detail', N'2', NULL, NULL, NULL, N'sysOrg:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:21:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255591', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构树', N'sys_org_mgr_tree', N'2', NULL, NULL, NULL, N'sysOrg:tree', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:21:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255601', N'1264622039642255341', N'[0],[1264622039642255341],', N'职位管理', N'sys_pos_mgr', N'1', NULL, N'/pos', N'system/pos/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'5', NULL, N'0', N'2020-03-27 18:38:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255611', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位查询', N'sys_pos_mgr_page', N'2', NULL, NULL, NULL, N'sysPos:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:41:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255621', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位列表', N'sys_pos_mgr_list', N'2', NULL, NULL, NULL, N'sysPos:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:55:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255631', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位增加', N'sys_pos_mgr_add', N'2', NULL, NULL, NULL, N'sysPos:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:42:20', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255641', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位编辑', N'sys_pos_mgr_edit', N'2', NULL, NULL, NULL, N'sysPos:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:56:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255651', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位删除', N'sys_pos_mgr_delete', N'2', NULL, NULL, NULL, N'sysPos:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:42:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255661', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位详情', N'sys_pos_mgr_detail', N'2', NULL, NULL, NULL, N'sysPos:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:43:00', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255671', N'0', N'[0],', N'权限管理', N'auth_manager', N'0', N'safety-certificate', N'/auth', N'PageView', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'3', NULL, N'0', N'2020-07-15 15:51:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255681', N'1264622039642255671', N'[0],[1264622039642255671],', N'应用管理', N'sys_app_mgr', N'1', NULL, N'/app', N'system/app/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'6', NULL, N'0', N'2020-03-27 16:40:21', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255691', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用查询', N'sys_app_mgr_page', N'2', NULL, NULL, NULL, N'sysApp:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:41:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255701', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用列表', N'sys_app_mgr_list', N'2', NULL, NULL, NULL, N'sysApp:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 10:04:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255711', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用增加', N'sys_app_mgr_add', N'2', NULL, NULL, NULL, N'sysApp:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:44:10', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255721', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用编辑', N'sys_app_mgr_edit', N'2', NULL, NULL, NULL, N'sysApp:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 10:04:34', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255731', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用删除', N'sys_app_mgr_delete', N'2', NULL, NULL, NULL, N'sysApp:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255741', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用详情', N'sys_app_mgr_detail', N'2', NULL, NULL, NULL, N'sysApp:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255751', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'设为默认应用', N'sys_app_mgr_set_as_default', N'2', NULL, NULL, NULL, N'sysApp:setAsDefault', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255761', N'1264622039642255671', N'[0],[1264622039642255671],', N'菜单管理', N'sys_menu_mgr', N'1', NULL, N'/menu', N'system/menu/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'7', NULL, N'0', N'2020-03-27 18:44:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255771', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单列表', N'sys_menu_mgr_list', N'2', NULL, NULL, NULL, N'sysMenu:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:45:20', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255781', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单增加', N'sys_menu_mgr_add', N'2', NULL, NULL, NULL, N'sysMenu:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:45:37', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255791', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单编辑', N'sys_menu_mgr_edit', N'2', NULL, NULL, NULL, N'sysMenu:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:52:00', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255801', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单删除', N'sys_menu_mgr_delete', N'2', NULL, NULL, NULL, N'sysMenu:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:46:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255811', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单详情', N'sys_menu_mgr_detail', N'2', NULL, NULL, NULL, N'sysMenu:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:46:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255821', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单授权树', N'sys_menu_mgr_grant_tree', N'2', NULL, NULL, NULL, N'sysMenu:treeForGrant', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-03 09:50:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255831', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单树', N'sys_menu_mgr_tree', N'2', NULL, NULL, NULL, N'sysMenu:tree', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:47:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255841', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单切换', N'sys_menu_mgr_change', N'2', NULL, NULL, NULL, N'sysMenu:change', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-03 09:51:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255851', N'1264622039642255671', N'[0],[1264622039642255671],', N'角色管理', N'sys_role_mgr', N'1', NULL, N'/role', N'system/role/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'8', NULL, N'0', N'2020-03-28 16:01:09', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255861', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色查询', N'sys_role_mgr_page', N'2', NULL, NULL, NULL, N'sysRole:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:09', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255871', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色增加', N'sys_role_mgr_add', N'2', NULL, NULL, NULL, N'sysRole:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255881', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色编辑', N'sys_role_mgr_edit', N'2', NULL, NULL, NULL, N'sysRole:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:57:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255891', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色删除', N'sys_role_mgr_delete', N'2', NULL, NULL, NULL, N'sysRole:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255901', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色详情', N'sys_role_mgr_detail', N'2', NULL, NULL, NULL, N'sysRole:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:03:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255911', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色下拉', N'sys_role_mgr_drop_down', N'2', NULL, NULL, NULL, N'sysRole:dropDown', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:45:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255921', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色授权菜单', N'sys_role_mgr_grant_menu', N'2', NULL, NULL, NULL, N'sysRole:grantMenu', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:16:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255931', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色拥有菜单', N'sys_role_mgr_own_menu', N'2', NULL, NULL, NULL, N'sysRole:ownMenu', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:21:54', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255941', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色授权数据', N'sys_role_mgr_grant_data', N'2', NULL, NULL, NULL, N'sysRole:grantData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:16:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255951', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色拥有数据', N'sys_role_mgr_own_data', N'2', NULL, NULL, NULL, N'sysRole:ownData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:23:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255961', N'0', N'[0],', N'开发管理', N'system_tools', N'0', N'euro', N'/tools', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'4', NULL, N'0', N'2020-05-25 02:10:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255971', N'1264622039642255961', N'[0],[1264622039642255961],', N'系统配置', N'system_tools_config', N'1', NULL, N'/config', N'system/config/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'9', NULL, N'0', N'2020-05-25 02:12:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255981', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置查询', N'system_tools_config_page', N'2', NULL, NULL, NULL, N'sysConfig:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642255991', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置列表', N'system_tools_config_list', N'2', NULL, NULL, NULL, N'sysConfig:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256001', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置增加', N'system_tools_config_add', N'2', NULL, NULL, NULL, N'sysConfig:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256011', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置编辑', N'system_tools_config_edit', N'2', NULL, NULL, NULL, N'sysConfig:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256021', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置删除', N'system_tools_config_delete', N'2', NULL, NULL, NULL, N'sysConfig:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:44', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256031', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置详情', N'system_tools_config_detail', N'2', NULL, NULL, NULL, N'sysConfig:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256041', N'1264622039642255961', N'[0],[1264622039642255961],', N'邮件发送', N'sys_email_mgr', N'1', NULL, N'/email', N'system/email/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'10', NULL, N'0', N'2020-07-02 11:44:21', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256051', N'1264622039642256041', N'[0],[1264622039642255961],[1264622039642256041],', N'发送文本邮件', N'sys_email_mgr_send_email', N'2', NULL, NULL, NULL, N'email:sendEmail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:45:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256061', N'1264622039642256041', N'[0],[1264622039642255961],[1264622039642256041],', N'发送html邮件', N'sys_email_mgr_send_email_html', N'2', NULL, NULL, NULL, N'email:sendEmailHtml', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:45:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256071', N'1264622039642255961', N'[0],[1264622039642255961],', N'短信管理', N'sys_sms_mgr', N'1', NULL, N'/sms', N'system/sms/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'11', NULL, N'0', N'2020-07-02 12:00:12', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256081', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'短信发送查询', N'sys_sms_mgr_page', N'2', NULL, NULL, NULL, N'sms:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:16:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256091', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'发送验证码短信', N'sys_sms_mgr_send_login_message', N'2', NULL, NULL, NULL, N'sms:sendLoginMessage', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:02:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256101', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'验证短信验证码', N'sys_sms_mgr_validate_message', N'2', NULL, NULL, NULL, N'sms:validateMessage', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:02:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256111', N'1264622039642255961', N'[0],[1264622039642255961],', N'字典管理', N'sys_dict_mgr', N'1', NULL, N'/dict', N'system/dict/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'12', NULL, N'0', N'2020-04-01 11:17:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256121', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型查询', N'sys_dict_mgr_dict_type_page', N'2', NULL, NULL, NULL, N'sysDictType:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:20:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256131', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型列表', N'sys_dict_mgr_dict_type_list', N'2', NULL, NULL, NULL, N'sysDictType:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:12:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256141', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型增加', N'sys_dict_mgr_dict_type_add', N'2', NULL, NULL, NULL, N'sysDictType:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:19:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256151', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型删除', N'sys_dict_mgr_dict_type_delete', N'2', NULL, NULL, NULL, N'sysDictType:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:21:30', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256161', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型编辑', N'sys_dict_mgr_dict_type_edit', N'2', NULL, NULL, NULL, N'sysDictType:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:21:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256171', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型详情', N'sys_dict_mgr_dict_type_detail', N'2', NULL, NULL, NULL, N'sysDictType:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:06', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256181', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型下拉', N'sys_dict_mgr_dict_type_drop_down', N'2', NULL, NULL, NULL, N'sysDictType:dropDown', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256191', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型修改状态', N'sys_dict_mgr_dict_type_change_status', N'2', NULL, NULL, NULL, N'sysDictType:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:15:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256201', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值查询', N'sys_dict_mgr_dict_page', N'2', NULL, NULL, NULL, N'sysDictData:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:23:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256211', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值列表', N'sys_dict_mgr_dict_list', N'2', NULL, NULL, NULL, N'sysDictData:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256221', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值增加', N'sys_dict_mgr_dict_add', N'2', NULL, NULL, NULL, N'sysDictData:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:51', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256231', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值删除', N'sys_dict_mgr_dict_delete', N'2', NULL, NULL, NULL, N'sysDictData:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:23:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256241', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值编辑', N'sys_dict_mgr_dict_edit', N'2', NULL, NULL, NULL, N'sysDictData:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:21', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256251', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值详情', N'sys_dict_mgr_dict_detail', N'2', NULL, NULL, NULL, N'sysDictData:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256261', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值修改状态', N'sys_dict_mgr_dict_change_status', N'2', NULL, NULL, NULL, N'sysDictData:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:17:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256271', N'1264622039642255961', N'[0],[1264622039642255961],', N'接口文档', N'sys_swagger_mgr', N'1', NULL, N'/swagger', N'Iframe', NULL, N'system', N'2', N'Y', N'http://localhost:82/doc.html', NULL, N'1', N'13', NULL, N'0', N'2020-07-02 12:16:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256281', N'0', N'[0],', N'日志管理', N'sys_log_mgr', N'0', N'read', N'/log', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'5', NULL, N'0', N'2020-04-01 09:25:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256291', N'1264622039642256281', N'[0],[1264622039642256281],', N'访问日志', N'sys_log_mgr_vis_log', N'1', NULL, N'/vislog', N'system/log/vislog/index', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'14', NULL, N'0', N'2020-04-01 09:26:40', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256301', N'1264622039642256291', N'[0],[1264622039642256281],[1264622039642256291],', N'访问日志查询', N'sys_log_mgr_vis_log_page', N'2', NULL, NULL, NULL, N'sysVisLog:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:55:51', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256311', N'1264622039642256291', N'[0],[1264622039642256281],[1264622039642256291],', N'访问日志清空', N'sys_log_mgr_vis_log_delete', N'2', NULL, NULL, NULL, N'sysVisLog:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:56:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256321', N'1264622039642256281', N'[0],[1264622039642256281],', N'操作日志', N'sys_log_mgr_op_log', N'1', NULL, N'/oplog', N'system/log/oplog/index', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'15', NULL, N'0', N'2020-04-01 09:26:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256331', N'1264622039642256321', N'[0],[1264622039642256281],[1264622039642256321],', N'操作日志查询', N'sys_log_mgr_op_log_page', N'2', NULL, NULL, NULL, N'sysOpLog:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:57:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256341', N'1264622039642256321', N'[0],[1264622039642256281],[1264622039642256321],', N'操作日志清空', N'sys_log_mgr_op_log_delete', N'2', NULL, NULL, NULL, N'sysOpLog:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:58:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256351', N'0', N'[0],', N'系统监控', N'sys_monitor_mgr', N'0', N'deployment-unit', N'/monitor', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'6', NULL, N'0', N'2020-06-05 16:00:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256361', N'1264622039642256351', N'[0],[1264622039642256351],', N'服务监控', N'sys_monitor_mgr_machine_monitor', N'1', NULL, N'/machine', N'system/machine/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'16', NULL, N'0', N'2020-06-05 16:02:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256371', N'1264622039642256361', N'[0],[1264622039642256351],[1264622039642256361],', N'服务监控查询', N'sys_monitor_mgr_machine_monitor_query', N'2', NULL, NULL, NULL, N'sysMachine:query', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:05:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256381', N'1264622039642256351', N'[0],[1264622039642256351],', N'在线用户', N'sys_monitor_mgr_online_user', N'1', NULL, N'/onlineUser', N'system/onlineUser/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'17', NULL, N'0', N'2020-06-05 16:01:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256391', N'1264622039642256381', N'[0],[1264622039642256351],[1264622039642256381],', N'在线用户列表', N'sys_monitor_mgr_online_user_list', N'2', NULL, NULL, NULL, N'sysOnlineUser:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:03:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256401', N'1264622039642256381', N'[0],[1264622039642256351],[1264622039642256381],', N'在线用户强退', N'sys_monitor_mgr_online_user_force_exist', N'2', NULL, NULL, NULL, N'sysOnlineUser:forceExist', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:04:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256411', N'1264622039642256351', N'[0],[1264622039642256351],', N'数据监控', N'sys_monitor_mgr_druid', N'1', NULL, N'/druid', N'Iframe', NULL, N'system', N'2', N'Y', N'http://localhost:82/druid/login.html', NULL, N'1', N'18', NULL, N'0', N'2020-06-28 16:15:07', N'1265476890672672808', N'2020-09-13 09:39:10', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256421', N'0', N'[0],', N'通知公告', N'sys_notice', N'0', N'sound', N'/notice', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'7', NULL, N'0', N'2020-06-29 15:41:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256431', N'1264622039642256421', N'[0],[1264622039642256421],', N'公告管理', N'sys_notice_mgr', N'1', NULL, N'/notice', N'system/notice/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'19', NULL, N'0', N'2020-06-29 15:44:24', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256441', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告查询', N'sys_notice_mgr_page', N'2', NULL, NULL, NULL, N'sysNotice:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:45:30', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256451', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告增加', N'sys_notice_mgr_add', N'2', NULL, NULL, NULL, N'sysNotice:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:45:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256461', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告编辑', N'sys_notice_mgr_edit', N'2', NULL, NULL, NULL, N'sysNotice:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256471', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告删除', N'sys_notice_mgr_delete', N'2', NULL, NULL, NULL, N'sysNotice:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256481', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告查看', N'sys_notice_mgr_detail', N'2', NULL, NULL, NULL, N'sysNotice:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256491', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告修改状态', N'sys_notice_mgr_changeStatus', N'2', NULL, NULL, NULL, N'sysNotice:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256501', N'1264622039642256421', N'[0],[1264622039642256421],', N'已收公告', N'sys_notice_mgr_received', N'1', NULL, N'/noticeReceived', N'system/noticeReceived/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'20', NULL, N'0', N'2020-06-29 16:32:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256511', N'1264622039642256501', N'[0],[1264622039642256421],[1264622039642256501],', N'已收公告查询', N'sys_notice_mgr_received_page', N'2', NULL, NULL, NULL, N'sysNotice:received', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 16:33:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256521', N'0', N'[0],', N'文件管理', N'sys_file_mgr', N'0', N'file', N'/file', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'8', NULL, N'0', N'2020-06-24 17:31:10', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256531', N'1264622039642256521', N'[0],[1264622039642256521],', N'系统文件', N'sys_file_mgr_sys_file', N'1', NULL, N'/file', N'system/file/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'21', NULL, N'0', N'2020-06-24 17:32:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256541', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件查询', N'sys_file_mgr_sys_file_page', N'2', NULL, NULL, NULL, N'sysFileInfo:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256551', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件列表', N'sys_file_mgr_sys_file_list', N'2', NULL, NULL, NULL, N'sysFileInfo:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256561', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件删除', N'sys_file_mgr_sys_file_delete', N'2', NULL, NULL, NULL, N'sysFileInfo:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:36:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256571', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件详情', N'sys_file_mgr_sys_file_detail', N'2', NULL, NULL, NULL, N'sysFileInfo:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:36:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256581', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件上传', N'sys_file_mgr_sys_file_upload', N'2', NULL, NULL, NULL, N'sysFileInfo:upload', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:34:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256591', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件下载', N'sys_file_mgr_sys_file_download', N'2', NULL, NULL, NULL, N'sysFileInfo:download', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:34:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256601', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'图片预览', N'sys_file_mgr_sys_file_preview', N'2', NULL, NULL, NULL, N'sysFileInfo:preview', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256611', N'0', N'[0],', N'定时任务', N'sys_timers', N'0', N'dashboard', N'/timers', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:17:20', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256621', N'1264622039642256611', N'[0],[1264622039642256611],', N'任务管理', N'sys_timers_mgr', N'1', NULL, N'/timers', N'system/timers/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'22', NULL, N'0', N'2020-07-01 17:18:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256631', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务查询', N'sys_timers_mgr_page', N'2', NULL, NULL, NULL, N'sysTimers:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:19:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256641', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务列表', N'sys_timers_mgr_list', N'2', NULL, NULL, NULL, N'sysTimers:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:19:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256651', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务详情', N'sys_timers_mgr_detail', N'2', NULL, NULL, NULL, N'sysTimers:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:10', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256661', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务增加', N'sys_timers_mgr_add', N'2', NULL, NULL, NULL, N'sysTimers:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256671', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务删除', N'sys_timers_mgr_delete', N'2', NULL, NULL, NULL, N'sysTimers:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:33', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256681', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务编辑', N'sys_timers_mgr_edit', N'2', NULL, NULL, NULL, N'sysTimers:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256691', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务可执行列表', N'sys_timers_mgr_get_action_classes', N'2', NULL, NULL, NULL, N'sysTimers:getActionClasses', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256701', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务启动', N'sys_timers_mgr_start', N'2', NULL, NULL, NULL, N'sysTimers:start', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:32', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256711', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务关闭', N'sys_timers_mgr_stop', N'2', NULL, NULL, NULL, N'sysTimers:stop', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256721', N'0', N'[0],', N'业务流程', N'sys_flw_mgr', N'0', N'cluster', N'/flw', N'PageView', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'9', NULL, N'0', N'2020-05-27 15:04:59', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256731', N'1264622039642256721', N'[0],[1264622039642256721],', N'模型设计', N'sys_flw_model_designer', N'1', NULL, N'/designer', N'Iframe', NULL, N'office', N'2', N'Y', N'http://localhost:82/designer/index.html?token=', NULL, N'0', N'23', NULL, N'2', N'2020-05-27 15:08:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256732', N'1264622039642256721', N'[0],[1264622039642256721],', N'模型管理', N'sys_flw_model_mgr', N'1', NULL, N'/model', N'flowable/model/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'24', NULL, N'0', N'2020-05-27 15:21:16', N'1265476890672672808', N'2020-08-17 21:32:34', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256733', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型列表', N'sys_flw_model_mgr_model_list', N'2', NULL, NULL, NULL, N'flowableModel:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256734', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型增加', N'sys_flw_model_mgr_model_add', N'2', NULL, NULL, NULL, N'flowableModel:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256735', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型删除', N'sys_flw_model_mgr_model_delete', N'2', NULL, NULL, NULL, N'flowableModel:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256736', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型编辑', N'sys_flw_model_mgr_model_edit', N'2', NULL, NULL, NULL, N'flowableModel:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256737', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型预览', N'sys_flw_model_mgr_model_preview', N'2', NULL, NULL, NULL, N'flowableModel:preview', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256738', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型版本', N'sys_flw_model_mgr_model_version', N'2', NULL, NULL, NULL, N'flowableModel:version', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256739', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型设为新版本', N'sys_flw_model_mgr_model_set_as_new', N'2', NULL, NULL, NULL, N'flowableModel:setAsNew', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256740', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型导入', N'sys_flw_model_mgr_model_import_model', N'2', NULL, NULL, NULL, N'flowableModel:importModel', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256741', N'1264622039642256721', N'[0],[1264622039642256721],', N'定义管理', N'sys_flw_definition_mgr', N'1', NULL, N'/defenition', N'flowable/defenition/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'24', NULL, N'0', N'2020-05-27 15:21:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256751', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义查询', N'sys_flw_definition_mgr_page', N'2', NULL, NULL, NULL, N'flowableDefinition:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:22:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256761', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义部署', N'sys_flw_definition_mgr_deploy', N'2', NULL, NULL, NULL, N'flowableDefinition:deploy', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:22:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256771', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义删除', N'sys_flw_definition_mgr_delete', N'2', NULL, NULL, NULL, N'flowableDefinition:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:06', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256781', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义导出', N'sys_flw_definition_mgr_export', N'2', NULL, NULL, NULL, N'flowableDefinition:export', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:21', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256791', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义映射', N'sys_flw_definition_mgr_mapping', N'2', NULL, NULL, NULL, N'flowableDefinition:mapping', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:40', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256801', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义挂起', N'sys_flw_definition_mgr_suspend', N'2', NULL, NULL, NULL, N'flowableDefinition:suspend', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256811', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义激活', N'sys_flw_definition_mgr_active', N'2', NULL, NULL, NULL, N'flowableDefinition:active', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:24:09', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256821', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义追踪', N'sys_flw_definition_mgr_trace', N'2', NULL, NULL, NULL, N'flowableDefinition:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:24:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256831', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'任务节点', N'sys_flw_definition_mgr_userTasks', N'2', NULL, NULL, NULL, N'flowableDefinition:userTasks', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:25:04', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256841', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项编辑', N'sys_flw_definition_mgr_option_edit', N'2', NULL, NULL, NULL, N'flowableOption:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:26:39', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256851', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项查看', N'sys_flw_definition_mgr_option_detail', N'2', NULL, NULL, NULL, N'flowableOption:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:26:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256861', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项列表', N'sys_flw_definition_mgr_option_list', N'2', NULL, NULL, NULL, N'flowableOption:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:27:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256871', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮增加', N'sys_flw_definition_mgr_button_add', N'2', NULL, NULL, NULL, N'flowableButton:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:05:54', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256881', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮删除', N'sys_flw_definition_mgr_button_delete', N'2', NULL, NULL, NULL, N'flowableButton:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256891', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮编辑', N'sys_flw_definition_mgr_button_edit', N'2', NULL, NULL, NULL, N'flowableButton:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:20', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256901', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮查看', N'sys_flw_definition_mgr_button_detail', N'2', NULL, NULL, NULL, N'flowableButton:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256911', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮列表', N'sys_flw_definition_mgr_button_list', N'2', NULL, NULL, NULL, N'flowableButton:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256912', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮追踪', N'sys_flw_definition_mgr_button_trace', N'2', NULL, NULL, NULL, N'flowableButton:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256921', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件增加', N'sys_flw_definition_mgr_event_add', N'2', NULL, NULL, NULL, N'flowableEvent:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256931', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件删除', N'sys_flw_definition_mgr_event_delete', N'2', NULL, NULL, NULL, N'flowableEvent:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256941', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件编辑', N'sys_flw_definition_mgr_event_edit', N'2', NULL, NULL, NULL, N'flowableEvent:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:50', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256951', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件查看', N'sys_flw_definition_mgr_event_detail', N'2', NULL, NULL, NULL, N'flowableEvent:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256961', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件列表', N'sys_flw_definition_mgr_event_list', N'2', NULL, NULL, NULL, N'flowableEvent:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256971', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'表单列表', N'sys_flw_definition_mgr_form_list', N'2', NULL, NULL, NULL, N'flowableForm:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256981', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单增加', N'sys_flw_definition_mgr_form_add', N'2', NULL, NULL, NULL, N'flowableForm:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642256991', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单删除', N'sys_flw_definition_mgr_form_delete', N'2', NULL, NULL, NULL, N'flowableForm:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257001', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单编辑', N'sys_flw_definition_mgr_form_edit', N'2', NULL, NULL, NULL, N'flowableForm:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257011', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单查看', N'sys_flw_definition_mgr_form_detail', N'2', NULL, NULL, NULL, N'flowableForm:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257021', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程启动表单', N'sys_flw_definition_mgr_form_start_form_data', N'2', NULL, NULL, NULL, N'flowableForm:startFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257022', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程全局表单', N'sys_flw_definition_mgr_form_global_form_data', N'2', NULL, NULL, NULL, N'flowableForm:globalFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257031', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程任务表单', N'sys_flw_definition_mgr_form_task_form_data', N'2', NULL, NULL, NULL, N'flowableForm:taskFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257041', N'1264622039642256721', N'[0],[1264622039642256721],', N'分类管理', N'sys_flw_category_mgr', N'1', NULL, N'/category', N'flowable/category/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'25', NULL, N'0', N'2020-05-27 15:10:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257051', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类查询', N'sys_flw_category_mgr_page', N'2', NULL, NULL, NULL, N'flowableCategory:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 12:24:58', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257061', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类列表', N'sys_flw_category_mgr_list', N'2', NULL, NULL, NULL, N'flowableCategory:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:13:47', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257071', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类增加', N'sys_flw_category_mgr_add', N'2', NULL, NULL, NULL, N'flowableCategory:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:14:18', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257081', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类删除', N'sys_flw_category_mgr_delete', N'2', NULL, NULL, NULL, N'flowableCategory:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:16:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257091', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类编辑', N'sys_flw_category_mgr_edit', N'2', NULL, NULL, NULL, N'flowableCategory:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:17:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257101', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类详情', N'sys_flw_category_mgr_detail', N'2', NULL, NULL, NULL, N'flowableCategory:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:17:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257111', N'1264622039642256721', N'[0],[1264622039642256721],', N'表单管理', N'sys_flw_form_resource_mgr', N'1', NULL, N'/form', N'flowable/form/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'26', NULL, N'0', N'2020-05-27 16:43:34', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257121', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单查询', N'sys_flw_form_resource_mgr_form_page', N'2', NULL, NULL, NULL, N'flowableFormResource:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257131', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单增加', N'sys_flw_form_resource_mgr_form_add', N'2', NULL, NULL, NULL, N'flowableFormResource:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257141', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单删除', N'sys_flw_form_resource_mgr_form_delete', N'2', NULL, NULL, NULL, N'flowableFormResource:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257151', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单编辑', N'sys_flw_form_resource_mgr_form_edit', N'2', NULL, NULL, NULL, N'flowableFormResource:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257161', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单查看', N'sys_flw_form_resource_mgr_form_detail', N'2', NULL, NULL, NULL, N'flowableFormResource:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257162', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单设计', N'sys_flw_form_resource_mgr_form_design', N'2', NULL, NULL, NULL, N'flowableFormResource:design', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257163', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单列表', N'sys_flw_form_resource_mgr_form_list', N'2', NULL, NULL, NULL, N'flowableFormResource:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257171', N'1264622039642256721', N'[0],[1264622039642256721],', N'脚本管理', N'sys_flw_script_mgr', N'1', NULL, N'/script', N'flowable/script/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'27', NULL, N'0', N'2020-05-27 16:43:34', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257181', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本查询', N'sys_flw_script_mgr_page', N'2', NULL, NULL, NULL, N'flowableScript:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257191', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本列表', N'sys_flw_script_mgr_list', N'2', NULL, NULL, NULL, N'flowableScript:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:25', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257201', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本增加', N'sys_flw_script_mgr_add', N'2', NULL, NULL, NULL, N'flowableScript:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:43', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257211', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本删除', N'sys_flw_script_mgr_delete', N'2', NULL, NULL, NULL, N'flowableScript:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257221', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本编辑', N'sys_flw_script_mgr_edit', N'2', NULL, NULL, NULL, N'flowableScript:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:46:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257231', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本查看', N'sys_flw_script_mgr_detail', N'2', NULL, NULL, NULL, N'flowableScript:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:46:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257232', N'1264622039642256721', N'[0],[1264622039642256721],', N'入口管理', N'sys_flw_shortcut_mgr', N'1', NULL, N'/shortcut', N'flowable/shortcut/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'28', NULL, N'0', N'2020-05-27 16:46:26', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257233', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口查询', N'sys_flw_shortcut_mgr_page', N'2', NULL, NULL, NULL, N'flowableShortcut:page', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:05', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257234', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口增加', N'sys_flw_shortcut_mgr_add', N'2', NULL, NULL, NULL, N'flowableShortcut:add', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257235', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口删除', N'sys_flw_shortcut_mgr_delete', N'2', NULL, NULL, NULL, N'flowableShortcut:delete', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:45', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257236', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口编辑', N'sys_flw_shortcut_mgr_edit', N'2', NULL, NULL, NULL, N'flowableShortcut:edit', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257237', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口详情', N'sys_flw_shortcut_mgr_detail', N'2', NULL, NULL, NULL, N'flowableShortcut:detail', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:26:09', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257241', N'1264622039642256721', N'[0],[1264622039642256721],', N'实例管理', N'sys_flw_instance_mgr', N'1', NULL, N'/instance', N'flowable/instance/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'29', NULL, N'0', N'2020-05-27 16:10:07', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257251', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例查询', N'sys_flw_instance_mgr_page', N'2', NULL, NULL, NULL, N'flowableInstance:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:10:55', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257261', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例历史用户任务节点', N'sys_flw_instance_mgr_his_user_tasks', N'2', NULL, NULL, NULL, N'flowableInstance:hisUserTasks', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:12', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257271', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例追踪', N'sys_flw_instance_mgr_trace', N'2', NULL, NULL, NULL, N'flowableInstance:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:31', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257281', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例挂起', N'sys_flw_instance_mgr_suspend', N'2', NULL, NULL, NULL, N'flowableInstance:suspend', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:48', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257291', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例激活', N'sys_flw_instance_mgr_active', N'2', NULL, NULL, NULL, N'flowableInstance:active', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:12:00', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257301', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例历史审批记录', N'sys_flw_instance_mgr_comment_history', N'2', NULL, NULL, NULL, N'flowableInstance:commentHistory', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:12:13', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257311', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例任务查询', N'sys_flw_instance_mgr_task_page', N'2', NULL, NULL, NULL, N'flowableInstanceTask:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257312', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例表单数据', N'sys_flw_instance_mgr_form_data', N'2', NULL, NULL, NULL, N'flowableInstance:formData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257313', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'加签用户选择器', N'sys_flw_instance_mgr_add_sign_user_selector', N'2', NULL, NULL, NULL, N'flowableInstance:addSignUserSelector', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257314', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'减签用户选择器', N'sys_flw_instance_mgr_delete_sign_user_selector', N'2', NULL, NULL, NULL, N'flowableInstance:deleteSignUserSelector', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257321', N'0', N'[0],', N'在线办公', N'sys_flw_office', N'0', N'laptop', N'/handle', N'PageView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'10', NULL, N'0', N'2020-05-27 16:55:15', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257331', N'1264622039642257321', N'[0],[1264622039642257321],', N'我的任务', N'sys_flw_task_mgr', N'0', NULL, N'/task', N'RouteView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'30', NULL, N'0', N'2020-05-27 16:16:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257341', N'1264622039642257331', N'[0],[1264622039642257321],[1264622039642257331],', N'待办任务', N'sys_flw_task_mgr_todo_task', N'1', NULL, N'/todoTask', N'flowable/task/todoTask/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'1', NULL, N'0', N'2020-05-27 16:18:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257351', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务查询', N'sys_flw_task_mgr_todo_task_page', N'2', NULL, NULL, NULL, N'flowableTodoTask:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:19:11', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257361', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'流程发起', N'sys_flw_task_mgr_todo_task_start', N'2', NULL, NULL, NULL, N'flowableHandleTask:start', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257371', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务提交', N'sys_flw_task_mgr_todo_task_submit', N'2', NULL, NULL, NULL, N'flowableHandleTask:submit', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257381', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务保存', N'sys_flw_task_mgr_todo_task_save', N'2', NULL, NULL, NULL, N'flowableHandleTask:save', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257391', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务退回', N'sys_flw_task_mgr_todo_task_back', N'2', NULL, NULL, NULL, N'flowableHandleTask:back', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257401', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务转办', N'sys_flw_task_mgr_todo_task_turn', N'2', NULL, NULL, NULL, N'flowableHandleTask:turn', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:46', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257411', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务委托', N'sys_flw_task_mgr_todo_task_entrust', N'2', NULL, NULL, NULL, N'flowableHandleTask:entrust', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:03', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257421', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务终止', N'sys_flw_task_mgr_todo_task_end', N'2', NULL, NULL, NULL, N'flowableHandleTask:end', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257431', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务挂起', N'sys_flw_task_mgr_todo_task_suspend', N'2', NULL, NULL, NULL, N'flowableHandleTask:suspend', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:40', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257441', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务跳转', N'sys_flw_task_mgr_todo_task_jump', N'2', NULL, NULL, NULL, N'flowableHandleTask:jump', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:52', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257451', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务加签', N'sys_flw_task_mgr_todo_task_add_sign', N'2', NULL, NULL, NULL, N'flowableHandleTask:addSign', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:03', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257461', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务减签', N'sys_flw_task_mgr_todo_task_delete_sign', N'2', NULL, NULL, NULL, N'flowableHandleTask:deleteSign', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257462', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务数据', N'sys_flw_task_mgr_todo_task_task_data', N'2', NULL, NULL, NULL, N'flowableHandleTask:taskData', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:16', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257471', N'1264622039642257331', N'[0],[1264622039642257321],[1264622039642257331],', N'已办任务', N'sys_flw_task_mgr_done_task', N'1', NULL, N'/doneTask', N'flowable/task/doneTask/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-05-27 16:19:29', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257481', N'1264622039642257471', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', N'已办任务查询', N'sys_flw_task_mgr_done_task_page', N'2', NULL, NULL, NULL, N'flowableDoneTask:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257491', N'1264622039642257321', N'[0],[1264622039642257321],', N'我的申请', N'sys_flw_apply_mgr', N'0', NULL, N'/myapply', N'RouteView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'31', NULL, N'0', N'2020-07-02 14:22:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257501', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'起草申请', N'sys_flw_apply_mgr_draft_apply_mgr', N'1', NULL, N'/drafapply', N'flowable/draftapply/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 14:24:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257511', N'1264622039642257501', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', N'起草入口列表', N'sys_flw_apply_mgr_draft_apply_mgr_list', N'2', NULL, NULL, NULL, N'flowableShortcut:list', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:19', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257521', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'起草表单填写', N'sys_flw_apply_mgr_draft_apply_mgr_apply_form', N'1', NULL, N'/draftapply/form', N'flowable/draftapply/form', NULL, N'office', N'1', N'N', NULL, NULL, N'1', N'1', NULL, N'2', N'2020-08-21 22:33:38', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257522', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'申请草稿', N'sys_flw_mgr_draft_mgr', N'1', NULL, N'/draft', N'flowable/draft/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-09 15:32:40', N'1265476890672672808', N'2020-09-09 23:47:48', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257523', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿查询', N'sys_flw_mgr_draft_mgr_page', N'2', NULL, NULL, NULL, N'flowableDraft:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257524', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿添加或编辑', N'sys_flw_mgr_draft_mgr_add_or_update', N'2', NULL, NULL, NULL, N'flowableDraft:addOrUpdate', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257525', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿删除', N'sys_flw_mgr_draft_mgr_delete', N'2', NULL, NULL, NULL, N'flowableDraft:delete', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257531', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'已发申请', N'sys_flw_apply_mgr_applyed_mgr', N'1', NULL, N'/applyed', N'flowable/applyed/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 14:24:22', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257532', N'1264622039642257531', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', N'已发申请查询', N'sys_flw_apply_mgr_applyed_mgr_page', N'2', NULL, NULL, NULL, N'flowableInstance:my', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257641', N'0', N'[0],', N'多数据源', N'dbs_databaseInfo', N'0', N'sliders', N'/database', N'PageView', NULL, N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-26 00:53:28', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257642', N'1264622039642257641', N'[0],[1264622039642257641],', N'数据源管理', N'dbs_databaseInfo_mgr', N'1', NULL, N'/databaseInfo', N'dbs/databaseInfo/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:18:53', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257643', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源查询', N'dbs_databaseInfo_mgr_page', N'2', NULL, NULL, NULL, N'databaseInfo:page', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257644', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源增加', N'dbs_databaseInfo_mgr_add', N'2', NULL, NULL, NULL, N'databaseInfo:add', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257645', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源编辑', N'dbs_databaseInfo_mgr_edit', N'2', NULL, NULL, NULL, N'databaseInfo:edit', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257646', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源删除', N'dbs_databaseInfo_mgr_delete', N'2', NULL, NULL, NULL, N'databaseInfo:delete', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01', N'1265476890672672808', N'2020-09-23 22:00:32', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257651', N'0', N'[0],', N'SaaS租户', N'tenant_tenantInfo', N'0', N'switcher', N'/tenant', N'PageView', NULL, N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-26 00:53:28', N'1265476890672672808', N'2020-09-23 22:00:39', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257671', N'0', N'[0],', N'支付管理', N'pay_manage', N'0', N'strikethrough', N'/paymanage', N'PageView', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-03 00:35:34', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257681', N'1264622039642257671', N'[0],[1264622039642257671],', N'支付体验', N'pay_manage_index', N'1', N'', N'/pay/index', N'pay/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-26 14:55:08', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257691', N'1264622039642257671', N'[0],[1264622039642257671],', N'支付订单', N'pay_manage_order', N'1', NULL, N'/pay/alipay/index', N'pay/alipay/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-03 00:39:56', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1264622039642257701', N'0', N'[0],', N'设计表单', N'form_design', N'1', N'pic-left', N'/formdesign', N'formDesign', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-15 15:48:23', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_MENU] ([ID], [PID], [PIDS], [NAME], [CODE], [TYPE], [ICON], [ROUTER], [COMPONENT], [PERMISSION], [APPLICATION], [OPEN_TYPE], [VISIBLE], [LINK], [REDIRECT], [WEIGHT], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1342451789402411009', N'0', N'[0],', N'代码生成', N'code_gen', N'1', N'thunderbolt', N'/codeGenerate/index', N'gen/codeGenerate/index', N'', N'system_tool', N'1', N'Y', NULL, N'', N'1', N'100', N'代码生成', N'0', N'2020-12-25 20:47:03', N'1265476890672672808', NULL, NULL)
GO

-- ----------------------------
-- Table structure for SYS_NOTICE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_NOTICE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_NOTICE]
GO

CREATE TABLE [dbo].[SYS_NOTICE] (
  [ID] bigint  NOT NULL,
  [TITLE] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTENT] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE] tinyint  NOT NULL,
  [PUBLIC_USER_ID] bigint  NOT NULL,
  [PUBLIC_USER_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PUBLIC_ORG_ID] bigint  NULL,
  [PUBLIC_ORG_NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [PUBLIC_TIME] datetime2(0)  NULL,
  [CANCEL_TIME] datetime2(0)  NULL,
  [STATUS] tinyint  NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_NOTICE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'CONTENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型（字典 1通知 2公告）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布人id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'PUBLIC_USER_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布人姓名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'PUBLIC_USER_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布机构id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'PUBLIC_ORG_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布机构名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'PUBLIC_ORG_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'PUBLIC_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'撤回时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'CANCEL_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0草稿 1发布 2撤回 3删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通知表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE'
GO


-- ----------------------------
-- Records of SYS_NOTICE
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_NOTICE_USER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_NOTICE_USER]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_NOTICE_USER]
GO

CREATE TABLE [dbo].[SYS_NOTICE_USER] (
  [ID] bigint  NOT NULL,
  [NOTICE_ID] bigint  NOT NULL,
  [USER_ID] bigint  NOT NULL,
  [STATUS] tinyint  NOT NULL,
  [READ_TIME] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SYS_NOTICE_USER] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通知公告id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER',
'COLUMN', N'NOTICE_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER',
'COLUMN', N'USER_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0未读 1已读）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER',
'COLUMN', N'READ_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_NOTICE_USER'
GO


-- ----------------------------
-- Records of SYS_NOTICE_USER
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_OAUTH_USER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_OAUTH_USER]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_OAUTH_USER]
GO

CREATE TABLE [dbo].[SYS_OAUTH_USER] (
  [ID] bigint  NOT NULL,
  [UUID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACCESS_TOKEN] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NICK_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [AVATAR] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [BLOG] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COMPANY] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOCATION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EMAIL] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [GENDER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SOURCE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_OAUTH_USER] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方平台的用户唯一id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'UUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户授权的token',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'ACCESS_TOKEN'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'NICK_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'AVATAR'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户网址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'BLOG'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所在公司',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'COMPANY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'位置',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'LOCATION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'EMAIL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'GENDER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户来源',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'SOURCE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户备注（各平台中的用户个人介绍）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新用户',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方认证用户信息表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OAUTH_USER'
GO


-- ----------------------------
-- Records of SYS_OAUTH_USER
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_OP_LOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_OP_LOG]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_OP_LOG]
GO

CREATE TABLE [dbo].[SYS_OP_LOG] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [OP_TYPE] tinyint  NULL,
  [SUCCESS] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [MESSAGE] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOCATION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BROWSER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [URL] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [CLASS_NAME] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [METHOD_NAME] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [REQ_METHOD] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARAM] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESULT] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [OP_TIME] datetime2(0)  NULL,
  [ACCOUNT] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SYS_OP_LOG] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'OP_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否执行成功（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'SUCCESS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'具体消息',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'MESSAGE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'LOCATION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'BROWSER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'OS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'CLASS_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'METHOD_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方式（GET POST PUT DELETE)',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'REQ_METHOD'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'PARAM'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回结果',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'RESULT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'OP_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作账号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG',
'COLUMN', N'ACCOUNT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统操作日志表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_OP_LOG'
GO


-- ----------------------------
-- Records of SYS_OP_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ORG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ORG]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_ORG]
GO

CREATE TABLE [dbo].[SYS_ORG] (
  [ID] bigint  NOT NULL,
  [PID] bigint  NOT NULL,
  [PIDS] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_ORG] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'PID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ids',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'PIDS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统组织机构表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ORG'
GO


-- ----------------------------
-- Records of SYS_ORG
-- ----------------------------
INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890651701250', N'0', N'[0],', N'华夏集团', N'hxjt', N'100', N'华夏集团总公司', N'0', N'2020-03-26 16:50:53', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672769', N'1265476890651701250', N'[0],[1265476890651701250],', N'华夏集团北京分公司', N'hxjt_bj', N'100', N'华夏集团北京分公司', N'0', N'2020-03-26 16:55:42', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672770', N'1265476890651701250', N'[0],[1265476890651701250],', N'华夏集团成都分公司', N'hxjt_cd', N'100', N'华夏集团成都分公司', N'0', N'2020-03-26 16:56:02', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672771', N'1265476890672672769', N'[0],[1265476890651701250],[1265476890672672769],', N'研发部', N'hxjt_bj_yfb', N'100', N'华夏集团北京分公司研发部', N'0', N'2020-03-26 16:56:36', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672772', N'1265476890672672769', N'[0],[1265476890651701250],[1265476890672672769],', N'企划部', N'hxjt_bj_qhb', N'100', N'华夏集团北京分公司企划部', N'0', N'2020-03-26 16:57:06', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672773', N'1265476890672672770', N'[0],[1265476890651701250],[1265476890672672770],', N'市场部', N'hxjt_cd_scb', N'100', N'华夏集团成都分公司市场部', N'0', N'2020-03-26 16:57:35', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672774', N'1265476890672672770', N'[0],[1265476890651701250],[1265476890672672770],', N'财务部', N'hxjt_cd_cwb', N'100', N'华夏集团成都分公司财务部', N'0', N'2020-03-26 16:58:01', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_ORG] ([ID], [PID], [PIDS], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672775', N'1265476890672672773', N'[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', N'市场部二部', N'hxjt_cd_scb_2b', N'100', N'华夏集团成都分公司市场部二部', N'0', N'2020-04-06 15:36:50', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for SYS_POS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_POS]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_POS]
GO

CREATE TABLE [dbo].[SYS_POS] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_POS] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统职位表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_POS'
GO


-- ----------------------------
-- Records of SYS_POS
-- ----------------------------
INSERT INTO [dbo].[SYS_POS] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672787', N'总经理', N'zjl', N'100', N'总经理职位', N'0', N'2020-03-26 19:28:54', N'1265476890672672808', N'2020-06-02 21:01:04', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_POS] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672788', N'副总经理', N'fzjl', N'100', N'副总经理职位', N'0', N'2020-03-26 19:29:57', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_POS] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672789', N'部门经理', N'bmjl', N'100', N'部门经理职位', N'0', N'2020-03-26 19:31:49', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[SYS_POS] ([ID], [NAME], [CODE], [SORT], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672790', N'工作人员', N'gzry', N'100', N'工作人员职位', N'0', N'2020-05-27 11:32:00', N'1265476890672672808', N'2020-06-01 10:51:35', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ROLE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_ROLE]
GO

CREATE TABLE [dbo].[SYS_ROLE] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SORT] int  NOT NULL,
  [DATA_SCOPE_TYPE] tinyint DEFAULT ((1)) NOT NULL,
  [REMARK] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_ROLE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'序号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'SORT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'DATA_SCOPE_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE'
GO


-- ----------------------------
-- Records of SYS_ROLE
-- ----------------------------
INSERT INTO [dbo].[SYS_ROLE] ([ID], [NAME], [CODE], [SORT], [DATA_SCOPE_TYPE], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672817', N'组织架构管理员', N'ent_manager_role', N'100', N'1', N'组织架构管理员', N'0', N'2020-04-02 19:27:26', N'1265476890672672808', N'2020-09-12 15:54:07', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_ROLE] ([ID], [NAME], [CODE], [SORT], [DATA_SCOPE_TYPE], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672818', N'权限管理员', N'auth_role', N'101', N'5', N'权限管理员', N'0', N'2020-04-02 19:28:40', N'1265476890672672808', N'2020-07-16 10:52:21', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_ROLE] ([ID], [NAME], [CODE], [SORT], [DATA_SCOPE_TYPE], [REMARK], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672819', N'公告发布员', N'notice_produce_role', N'102', N'5', N'公告发布员', N'0', N'2020-05-29 15:48:11', N'1265476890672672808', N'2020-08-08 19:28:34', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for SYS_ROLE_DATA_SCOPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ROLE_DATA_SCOPE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_ROLE_DATA_SCOPE]
GO

CREATE TABLE [dbo].[SYS_ROLE_DATA_SCOPE] (
  [ID] bigint  NOT NULL,
  [ROLE_ID] bigint  NOT NULL,
  [ORG_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_ROLE_DATA_SCOPE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_DATA_SCOPE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_DATA_SCOPE',
'COLUMN', N'ROLE_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_DATA_SCOPE',
'COLUMN', N'ORG_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_DATA_SCOPE'
GO


-- ----------------------------
-- Records of SYS_ROLE_DATA_SCOPE
-- ----------------------------
INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435908822102018', N'1265476890672672818', N'1265476890651701250')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435909635796993', N'1265476890672672818', N'1265476890672672769')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435910432714754', N'1265476890672672818', N'1265476890672672771')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435911233826818', N'1265476890672672818', N'1265476890672672772')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435912018161666', N'1265476890672672818', N'1265476890672672770')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435912810885122', N'1265476890672672818', N'1265476890672672773')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435913595219970', N'1265476890672672818', N'1265476890672672775')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1277435914392137730', N'1265476890672672818', N'1265476890672672774')
GO

INSERT INTO [dbo].[SYS_ROLE_DATA_SCOPE] ([ID], [ROLE_ID], [ORG_ID]) VALUES (N'1292060127645429762', N'1265476890672672819', N'1265476890672672774')
GO


-- ----------------------------
-- Table structure for SYS_ROLE_MENU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_ROLE_MENU]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_ROLE_MENU]
GO

CREATE TABLE [dbo].[SYS_ROLE_MENU] (
  [ID] bigint  NOT NULL,
  [ROLE_ID] bigint  NOT NULL,
  [MENU_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_ROLE_MENU] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_MENU',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_MENU',
'COLUMN', N'ROLE_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_MENU',
'COLUMN', N'MENU_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色菜单表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_ROLE_MENU'
GO


-- ----------------------------
-- Records of SYS_ROLE_MENU
-- ----------------------------
INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366872187256834', N'1265476890672672818', N'1264622039642255671')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366872602492929', N'1265476890672672818', N'1264622039642255681')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366873026117634', N'1265476890672672818', N'1264622039642255761')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366873449742337', N'1265476890672672818', N'1264622039642255851')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366873864978433', N'1265476890672672818', N'1264622039642255691')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366874284408834', N'1265476890672672818', N'1264622039642255701')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366874703839233', N'1265476890672672818', N'1264622039642255711')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366875119075330', N'1265476890672672818', N'1264622039642255721')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366875538505730', N'1265476890672672818', N'1264622039642255731')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366875962130433', N'1265476890672672818', N'1264622039642255741')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366876377366529', N'1265476890672672818', N'1264622039642255751')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366876800991233', N'1265476890672672818', N'1264622039642255771')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366877216227330', N'1265476890672672818', N'1264622039642255781')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366877639852033', N'1265476890672672818', N'1264622039642255791')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366878067671041', N'1265476890672672818', N'1264622039642255801')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366878487101441', N'1265476890672672818', N'1264622039642255811')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366878898143233', N'1265476890672672818', N'1264622039642255821')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366879325962242', N'1265476890672672818', N'1264622039642255831')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366879745392641', N'1265476890672672818', N'1264622039642255841')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366880160628738', N'1265476890672672818', N'1264622039642255881')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366880580059138', N'1265476890672672818', N'1264622039642255891')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366880999489537', N'1265476890672672818', N'1264622039642255901')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366881423114242', N'1265476890672672818', N'1264622039642255911')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366881838350338', N'1265476890672672818', N'1264622039642255921')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366882261975042', N'1265476890672672818', N'1264622039642255931')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366882685599745', N'1265476890672672818', N'1264622039642255941')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366883100835842', N'1265476890672672818', N'1264622039642255951')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366883520266242', N'1265476890672672818', N'1264622039642255861')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366883939696642', N'1265476890672672818', N'1264622039642255871')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366884363321346', N'1265476890672672818', N'1264622039642257021')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366884782751746', N'1265476890672672818', N'1264622039642257031')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366885197987842', N'1265476890672672818', N'1264622039642256831')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366885617418242', N'1265476890672672818', N'1264622039642257261')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366886045237250', N'1265476890672672818', N'1264622039642257271')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366886473056258', N'1265476890672672818', N'1264622039642257301')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366886884098050', N'1265476890672672818', N'1264622039642257321')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366887307722754', N'1265476890672672818', N'1264622039642257331')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366887722958850', N'1265476890672672818', N'1264622039642257471')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366888142389250', N'1265476890672672818', N'1264622039642257481')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366888566013954', N'1265476890672672818', N'1264622039642257341')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366888981250049', N'1265476890672672818', N'1264622039642257411')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366889404874754', N'1265476890672672818', N'1264622039642257421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366889820110850', N'1265476890672672818', N'1264622039642257431')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366890235346946', N'1265476890672672818', N'1264622039642257441')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366890663165954', N'1265476890672672818', N'1264622039642257451')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366891082596354', N'1265476890672672818', N'1264622039642257461')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366891506221057', N'1265476890672672818', N'1264622039642257351')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366891925651458', N'1265476890672672818', N'1264622039642257361')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366892345081858', N'1265476890672672818', N'1264622039642257371')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366892764512258', N'1265476890672672818', N'1264622039642257381')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366893183942658', N'1265476890672672818', N'1264622039642257391')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366893607567361', N'1265476890672672818', N'1264622039642257401')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366894031192065', N'1265476890672672818', N'1264622039642257491')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366894446428162', N'1265476890672672818', N'1264622039642257501')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366894865858562', N'1265476890672672818', N'1264622039642257511')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366895285288961', N'1265476890672672818', N'1264622039642255591')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366895708913665', N'1265476890672672818', N'1264622039642257061')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366896132538369', N'1265476890672672818', N'1264622039642257462')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366896556163074', N'1265476890672672818', N'1264622039642256912')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366896979787777', N'1265476890672672818', N'1264622039642255421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366897399218178', N'1265476890672672818', N'1264622039642257022')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366897827037185', N'1265476890672672818', N'1264622039642256821')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366898242273282', N'1265476890672672818', N'1264622039642257311')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366898670092290', N'1265476890672672818', N'1264622039642257312')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366899089522690', N'1265476890672672818', N'1264622039642257313')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366899508953089', N'1265476890672672818', N'1264622039642257314')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366899932577793', N'1265476890672672818', N'1264622039642257522')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366900352008193', N'1265476890672672818', N'1264622039642257523')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366900771438594', N'1265476890672672818', N'1264622039642257524')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366901190868994', N'1265476890672672818', N'1264622039642257525')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366901610299394', N'1265476890672672818', N'1264622039642257531')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1304366902033924097', N'1265476890672672818', N'1264622039642257532')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864773769273346', N'1265476890672672819', N'1264622039642256431')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864774197092353', N'1265476890672672819', N'1264622039642256421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864774624911362', N'1265476890672672819', N'1264622039642256441')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864775048536065', N'1265476890672672819', N'1264622039642256451')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864775467966465', N'1265476890672672819', N'1264622039642256461')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864775887396866', N'1265476890672672819', N'1264622039642256471')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864776311021570', N'1265476890672672819', N'1264622039642256481')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864776730451969', N'1265476890672672819', N'1264622039642256491')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864777154076673', N'1265476890672672819', N'1264622039642256501')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864777573507074', N'1265476890672672819', N'1264622039642256511')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864778005520386', N'1265476890672672819', N'1264622039642255421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864778424950785', N'1265476890672672819', N'1264622039642257321')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864778840186881', N'1265476890672672819', N'1264622039642257331')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864779263811585', N'1265476890672672819', N'1264622039642257021')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864779683241986', N'1265476890672672819', N'1264622039642257011')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864780106866689', N'1265476890672672819', N'1264622039642256831')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864780530491393', N'1265476890672672819', N'1264622039642257061')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864780945727489', N'1265476890672672819', N'1264622039642257501')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864781369352193', N'1265476890672672819', N'1264622039642257491')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864781792976897', N'1265476890672672819', N'1264622039642257511')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864782216601602', N'1265476890672672819', N'1264622039642257271')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864782631837697', N'1265476890672672819', N'1264622039642257261')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864783063851009', N'1265476890672672819', N'1264622039642257301')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864783483281410', N'1265476890672672819', N'1264622039642257471')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864783902711809', N'1265476890672672819', N'1264622039642257341')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864784322142210', N'1265476890672672819', N'1264622039642257481')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864784745766913', N'1265476890672672819', N'1264622039642257411')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864785169391618', N'1265476890672672819', N'1264622039642257431')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864785588822018', N'1265476890672672819', N'1264622039642257421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864786012446722', N'1265476890672672819', N'1264622039642257441')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864786436071426', N'1265476890672672819', N'1264622039642257451')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864786859696130', N'1265476890672672819', N'1264622039642257461')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864787274932225', N'1265476890672672819', N'1264622039642257351')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864787702751233', N'1265476890672672819', N'1264622039642257361')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864788113793026', N'1265476890672672819', N'1264622039642257371')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864788541612034', N'1265476890672672819', N'1264622039642257381')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864788961042433', N'1265476890672672819', N'1264622039642257391')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864789384667138', N'1265476890672672819', N'1264622039642257401')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864789808291841', N'1265476890672672819', N'1264622039642257462')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864790227722241', N'1265476890672672819', N'1264622039642257031')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864790659735554', N'1265476890672672819', N'1264622039642256912')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864791079165953', N'1265476890672672819', N'1264622039642257022')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864791494402050', N'1265476890672672819', N'1264622039642257311')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864791913832450', N'1265476890672672819', N'1264622039642257312')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864792345845762', N'1265476890672672819', N'1264622039642257313')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864792769470465', N'1265476890672672819', N'1264622039642257314')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864793193095169', N'1265476890672672819', N'1264622039642257522')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864793612525570', N'1265476890672672819', N'1264622039642257523')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864794027761665', N'1265476890672672819', N'1264622039642257524')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864794459774978', N'1265476890672672819', N'1264622039642257525')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864794875011073', N'1265476890672672819', N'1264622039642257532')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864795307024385', N'1265476890672672819', N'1264622039642257531')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864795722260482', N'1265476890672672819', N'1264622039642256821')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864929906434049', N'1265476890672672817', N'1264622039642255311')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864930338447362', N'1265476890672672817', N'1264622039642255331')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864930753683457', N'1265476890672672817', N'1264622039642255321')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864931181502465', N'1265476890672672817', N'1264622039642255341')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864931596738561', N'1265476890672672817', N'1264622039642255351')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864932020363266', N'1265476890672672817', N'1264622039642255361')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864932439793666', N'1265476890672672817', N'1264622039642255371')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864932863418369', N'1265476890672672817', N'1264622039642255381')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864933287043073', N'1265476890672672817', N'1264622039642255391')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864933706473474', N'1265476890672672817', N'1264622039642255401')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864934130098177', N'1265476890672672817', N'1264622039642255411')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864934553722881', N'1265476890672672817', N'1264622039642255421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864934973153281', N'1265476890672672817', N'1264622039642255431')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864935392583681', N'1265476890672672817', N'1264622039642255441')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864935820402689', N'1265476890672672817', N'1264622039642255451')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864936239833090', N'1265476890672672817', N'1264622039642255461')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864936663457793', N'1265476890672672817', N'1264622039642255471')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864937087082498', N'1265476890672672817', N'1264622039642255481')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864937506512898', N'1265476890672672817', N'1264622039642255491')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864937938526210', N'1265476890672672817', N'1264622039642255501')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864938357956610', N'1265476890672672817', N'1264622039642255511')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864938777387010', N'1265476890672672817', N'1264622039642255521')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864939201011713', N'1265476890672672817', N'1264622039642255531')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864939624636418', N'1265476890672672817', N'1264622039642255541')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864940044066817', N'1265476890672672817', N'1264622039642255551')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864940467691522', N'1265476890672672817', N'1264622039642255561')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864940933259265', N'1265476890672672817', N'1264622039642255571')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864941356883970', N'1265476890672672817', N'1264622039642255581')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864941776314369', N'1265476890672672817', N'1264622039642255591')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864942195744769', N'1265476890672672817', N'1264622039642255601')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864942619369473', N'1265476890672672817', N'1264622039642255621')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864943042994178', N'1265476890672672817', N'1264622039642255631')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864943462424577', N'1265476890672672817', N'1264622039642255641')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864943886049282', N'1265476890672672817', N'1264622039642255651')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864944309673986', N'1265476890672672817', N'1264622039642255661')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864944733298690', N'1265476890672672817', N'1264622039642255611')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864945156923393', N'1265476890672672817', N'1264622039642257321')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864945576353793', N'1265476890672672817', N'1264622039642257331')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864945999978497', N'1265476890672672817', N'1264622039642257471')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864946423603201', N'1265476890672672817', N'1264622039642257481')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864946847227905', N'1265476890672672817', N'1264622039642257341')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864947266658305', N'1265476890672672817', N'1264622039642257411')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864947681894402', N'1265476890672672817', N'1264622039642257421')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864948109713409', N'1265476890672672817', N'1264622039642257431')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864948529143810', N'1265476890672672817', N'1264622039642257441')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864948952768513', N'1265476890672672817', N'1264622039642257451')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864949380587522', N'1265476890672672817', N'1264622039642257461')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864949804212225', N'1265476890672672817', N'1264622039642257351')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864950223642626', N'1265476890672672817', N'1264622039642257361')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864950638878721', N'1265476890672672817', N'1264622039642257371')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864951066697729', N'1265476890672672817', N'1264622039642257381')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864951490322433', N'1265476890672672817', N'1264622039642257391')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864951913947137', N'1265476890672672817', N'1264622039642257401')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864952329183233', N'1265476890672672817', N'1264622039642257491')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864952757002241', N'1265476890672672817', N'1264622039642257501')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864953176432642', N'1265476890672672817', N'1264622039642257511')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864953600057346', N'1265476890672672817', N'1264622039642256831')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864954019487746', N'1265476890672672817', N'1264622039642257031')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864954447306754', N'1265476890672672817', N'1264622039642257021')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864954870931458', N'1265476890672672817', N'1264622039642257061')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864955290361857', N'1265476890672672817', N'1264622039642257261')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864955709792258', N'1265476890672672817', N'1264622039642257301')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864956133416962', N'1265476890672672817', N'1264622039642257271')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864956557041665', N'1265476890672672817', N'1264622039642257462')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864956976472066', N'1265476890672672817', N'1264622039642256912')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864957400096770', N'1265476890672672817', N'1264622039642255911')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864957861470210', N'1265476890672672817', N'1264622039642257522')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864958280900610', N'1265476890672672817', N'1264622039642257523')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864958704525314', N'1265476890672672817', N'1264622039642257524')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864959132344321', N'1265476890672672817', N'1264622039642257525')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864959555969026', N'1265476890672672817', N'1264622039642257532')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864959975399425', N'1265476890672672817', N'1264622039642257531')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864960399024129', N'1265476890672672817', N'1264622039642257311')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864960822648833', N'1265476890672672817', N'1264622039642257312')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864961242079233', N'1265476890672672817', N'1264622039642257313')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864961657315330', N'1265476890672672817', N'1264622039642257314')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864962085134337', N'1265476890672672817', N'1264622039642256821')
GO

INSERT INTO [dbo].[SYS_ROLE_MENU] ([ID], [ROLE_ID], [MENU_ID]) VALUES (N'1307864962504564737', N'1265476890672672817', N'1264622039642257022')
GO


-- ----------------------------
-- Table structure for SYS_SMS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_SMS]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_SMS]
GO

CREATE TABLE [dbo].[SYS_SMS] (
  [ID] bigint  NOT NULL,
  [PHONE_NUMBERS] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VALIDATE_CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEMPLATE_CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BIZ_ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] tinyint  NOT NULL,
  [SOURCE] tinyint  NOT NULL,
  [INVALID_TIME] datetime2(0)  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_SMS] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'PHONE_NUMBERS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信验证码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'VALIDATE_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信模板ID',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'TEMPLATE_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回执id，可根据该id查询具体的发送状态',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'BIZ_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'来源（字典 1 app， 2 pc， 3 其他）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'SOURCE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'失效时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'INVALID_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信信息发送表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_SMS'
GO


-- ----------------------------
-- Records of SYS_SMS
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_TENANT_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_TENANT_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_TENANT_INFO]
GO

CREATE TABLE [dbo].[SYS_TENANT_INFO] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DB_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_TENANT_INFO] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户的编码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关联的数据库名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'DB_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TENANT_INFO'
GO


-- ----------------------------
-- Records of SYS_TENANT_INFO
-- ----------------------------
INSERT INTO [dbo].[SYS_TENANT_INFO] ([ID], [NAME], [CODE], [DB_NAME], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1301724123547000811', N'总公司（管理单位）', N'default', N'master', N'2020-09-04 11:29:51', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for SYS_TIMERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_TIMERS]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_TIMERS]
GO

CREATE TABLE [dbo].[SYS_TIMERS] (
  [ID] bigint  NOT NULL,
  [TIMER_NAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACTION_CLASS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CRON] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [JOB_STATUS] tinyint  NULL,
  [REMARK] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_TIMERS] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时器id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'TIMER_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'ACTION_CLASS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务表达式',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'CRON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 1运行  2停止）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'JOB_STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'REMARK'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务',
'SCHEMA', N'dbo',
'TABLE', N'SYS_TIMERS'
GO


-- ----------------------------
-- Records of SYS_TIMERS
-- ----------------------------
INSERT INTO [dbo].[SYS_TIMERS] ([ID], [TIMER_NAME], [ACTION_CLASS], [CRON], [JOB_STATUS], [REMARK], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1288760324837851137', N'定时同步缓存常量', N'vip.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', N'0 0/1 * * * ?', N'1', N'定时同步sys_config表的数据到缓存常量中', N'2020-07-30 16:56:20', N'1265476890672672808', N'2020-07-30 16:58:52', N'1265476890672672808')
GO

INSERT INTO [dbo].[SYS_TIMERS] ([ID], [TIMER_NAME], [ACTION_CLASS], [CRON], [JOB_STATUS], [REMARK], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1304971718170832898', N'定时打印一句话', N'vip.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', N'0 0 * * * ? *', N'2', N'定时打印一句话', N'2020-09-13 10:34:37', N'1265476890672672808', N'2020-09-23 20:37:48', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_USER]
GO

CREATE TABLE [dbo].[SYS_USER] (
  [ID] bigint  NOT NULL,
  [ACCOUNT] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PASSWORD] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NICK_NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AVATAR] bigint  NULL,
  [BIRTHDAY] date  NULL,
  [SEX] tinyint  NOT NULL,
  [EMAIL] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [PHONE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEL] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [LAST_LOGIN_IP] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [LAST_LOGIN_TIME] datetime2(0)  NULL,
  [ADMIN_TYPE] tinyint DEFAULT ((0)) NOT NULL,
  [STATUS] tinyint DEFAULT ((0)) NOT NULL,
  [CREATE_TIME] datetime2(0)  NULL,
  [CREATE_USER] bigint  NULL,
  [UPDATE_TIME] datetime2(0)  NULL,
  [UPDATE_USER] bigint  NULL
)
GO

ALTER TABLE [dbo].[SYS_USER] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'ACCOUNT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'PASSWORD'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'NICK_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'AVATAR'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'BIRTHDAY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别(字典 1男 2女 3未知)',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'SEX'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'EMAIL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'PHONE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'TEL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后登陆IP',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'LAST_LOGIN_IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后登陆时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'LAST_LOGIN_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员类型（0超级管理员 1非管理员）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'ADMIN_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1冻结 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'CREATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'UPDATE_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER',
'COLUMN', N'UPDATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER'
GO


-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO [dbo].[SYS_USER] ([ID], [ACCOUNT], [PASSWORD], [NICK_NAME], [NAME], [AVATAR], [BIRTHDAY], [SEX], [EMAIL], [PHONE], [TEL], [LAST_LOGIN_IP], [LAST_LOGIN_TIME], [ADMIN_TYPE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1265476890672672808', N'superAdmin', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'超级管理员', N'超级管理员', NULL, N'2020-03-18', N'1', N'superAdmin@qq.com', N'15228937093', N'1234567890', N'127.0.0.1', N'2021-01-28 00:42:28', N'1', N'0', N'2020-05-29 16:39:28', N'-1', N'2021-01-28 00:42:28', N'-1')
GO

INSERT INTO [dbo].[SYS_USER] ([ID], [ACCOUNT], [PASSWORD], [NICK_NAME], [NAME], [AVATAR], [BIRTHDAY], [SEX], [EMAIL], [PHONE], [TEL], [LAST_LOGIN_IP], [LAST_LOGIN_TIME], [ADMIN_TYPE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1275735541155614721', N'yubaoshan', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'俞宝山', N'俞宝山', NULL, N'1992-10-03', N'1', N'await183@qq.com', N'18200001102', N'', N'127.0.0.1', N'2021-01-28 00:38:34', N'2', N'0', N'2020-06-24 18:20:30', N'1265476890672672808', N'2021-01-28 00:38:34', N'-1')
GO

INSERT INTO [dbo].[SYS_USER] ([ID], [ACCOUNT], [PASSWORD], [NICK_NAME], [NAME], [AVATAR], [BIRTHDAY], [SEX], [EMAIL], [PHONE], [TEL], [LAST_LOGIN_IP], [LAST_LOGIN_TIME], [ADMIN_TYPE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1280700700074041345', N'laoyu', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'laoyu', N'老俞', NULL, N'2020-07-01', N'1', NULL, N'18200001103', NULL, N'127.0.0.1', N'2020-09-23 10:17:27', N'2', N'0', N'2020-07-08 11:10:16', N'1265476890672672808', N'2020-09-23 10:17:27', N'-1')
GO

INSERT INTO [dbo].[SYS_USER] ([ID], [ACCOUNT], [PASSWORD], [NICK_NAME], [NAME], [AVATAR], [BIRTHDAY], [SEX], [EMAIL], [PHONE], [TEL], [LAST_LOGIN_IP], [LAST_LOGIN_TIME], [ADMIN_TYPE], [STATUS], [CREATE_TIME], [CREATE_USER], [UPDATE_TIME], [UPDATE_USER]) VALUES (N'1280709549107552257', N'xuyuxiang', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'就是那个锅', N'徐玉祥', NULL, N'2020-07-01', N'1', NULL, N'18200001100', NULL, N'127.0.0.1', N'2020-09-23 10:16:54', N'2', N'0', N'2020-07-08 11:45:26', N'1265476890672672808', N'2020-09-23 10:16:54', N'-1')
GO


-- ----------------------------
-- Table structure for SYS_USER_DATA_SCOPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_DATA_SCOPE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_USER_DATA_SCOPE]
GO

CREATE TABLE [dbo].[SYS_USER_DATA_SCOPE] (
  [ID] bigint  NOT NULL,
  [USER_ID] bigint  NOT NULL,
  [ORG_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_USER_DATA_SCOPE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_DATA_SCOPE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_DATA_SCOPE',
'COLUMN', N'USER_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_DATA_SCOPE',
'COLUMN', N'ORG_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_DATA_SCOPE'
GO


-- ----------------------------
-- Records of SYS_USER_DATA_SCOPE
-- ----------------------------
INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1277459951742840834', N'1266277099455635457', N'1265476890672672770')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1277459952577507330', N'1266277099455635457', N'1265476890672672773')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1277459953424756737', N'1266277099455635457', N'1265476890672672775')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1277459954267811841', N'1266277099455635457', N'1265476890672672774')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043527249922', N'1265476890672672809', N'1265476890651701250')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043535638529', N'1265476890672672809', N'1265476890672672769')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043535638530', N'1265476890672672809', N'1265476890672672771')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043535638531', N'1265476890672672809', N'1265476890672672772')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043544027137', N'1265476890672672809', N'1265476890672672770')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043544027138', N'1265476890672672809', N'1265476890672672773')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043552415746', N'1265476890672672809', N'1265476890672672775')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712043552415747', N'1265476890672672809', N'1265476890672672774')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712071570366466', N'1275735541155614721', N'1265476890672672769')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712071570366467', N'1275735541155614721', N'1265476890672672771')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1280712071578755074', N'1275735541155614721', N'1265476890672672772')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1285129189085609986', N'1280700700074041345', N'1265476890672672770')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1285129189093998594', N'1280700700074041345', N'1265476890672672773')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1285129189102387201', N'1280700700074041345', N'1265476890672672775')
GO

INSERT INTO [dbo].[SYS_USER_DATA_SCOPE] ([ID], [USER_ID], [ORG_ID]) VALUES (N'1285129189106581505', N'1280700700074041345', N'1265476890672672774')
GO


-- ----------------------------
-- Table structure for SYS_USER_ROLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_ROLE]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_USER_ROLE]
GO

CREATE TABLE [dbo].[SYS_USER_ROLE] (
  [ID] bigint  NOT NULL,
  [USER_ID] bigint  NOT NULL,
  [ROLE_ID] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[SYS_USER_ROLE] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_ROLE',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_ROLE',
'COLUMN', N'USER_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_ROLE',
'COLUMN', N'ROLE_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户角色表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_USER_ROLE'
GO


-- ----------------------------
-- Records of SYS_USER_ROLE
-- ----------------------------
INSERT INTO [dbo].[SYS_USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (N'1283596900713574402', N'1275735541155614721', N'1265476890672672817')
GO

INSERT INTO [dbo].[SYS_USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (N'1283596920384860162', N'1280700700074041345', N'1265476890672672819')
GO

INSERT INTO [dbo].[SYS_USER_ROLE] ([ID], [USER_ID], [ROLE_ID]) VALUES (N'1283596949627547649', N'1280709549107552257', N'1265476890672672818')
GO


-- ----------------------------
-- Table structure for SYS_VIS_LOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_VIS_LOG]') AND type IN ('U'))
	DROP TABLE [dbo].[SYS_VIS_LOG]
GO

CREATE TABLE [dbo].[SYS_VIS_LOG] (
  [ID] bigint  NOT NULL,
  [NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUCCESS] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [MESSAGE] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOCATION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BROWSER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [VIS_TYPE] tinyint  NOT NULL,
  [VIS_TIME] datetime2(0)  NULL,
  [ACCOUNT] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SYS_VIS_LOG] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否执行成功（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'SUCCESS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'具体消息',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'MESSAGE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'LOCATION'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'BROWSER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'OS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型（字典 1登入 2登出）',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'VIS_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问时间',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'VIS_TIME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问账号',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG',
'COLUMN', N'ACCOUNT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统访问日志表',
'SCHEMA', N'dbo',
'TABLE', N'SYS_VIS_LOG'
GO


-- ----------------------------
-- Records of SYS_VIS_LOG
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table FLW_BUTTON
-- ----------------------------
ALTER TABLE [dbo].[FLW_BUTTON] ADD CONSTRAINT [PK__FLW_BUTT__3214EC279AD29A87] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_CATEGORY
-- ----------------------------
ALTER TABLE [dbo].[FLW_CATEGORY] ADD CONSTRAINT [PK__FLW_CATE__3214EC27515ABC2C] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_DRAFT
-- ----------------------------
ALTER TABLE [dbo].[FLW_DRAFT] ADD CONSTRAINT [PK__FLW_DRAF__3214EC272404D06D] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_EVENT
-- ----------------------------
ALTER TABLE [dbo].[FLW_EVENT] ADD CONSTRAINT [PK__FLW_EVEN__3214EC27BC4840EF] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_FORM
-- ----------------------------
ALTER TABLE [dbo].[FLW_FORM] ADD CONSTRAINT [PK__FLW_FORM__3214EC27D030B1CD] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_FORM_RESOURCE
-- ----------------------------
ALTER TABLE [dbo].[FLW_FORM_RESOURCE] ADD CONSTRAINT [PK__FLW_FORM__3214EC2701642718] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_OPTION
-- ----------------------------
ALTER TABLE [dbo].[FLW_OPTION] ADD CONSTRAINT [PK__FLW_OPTI__3214EC2757E339A9] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_SCRIPT
-- ----------------------------
ALTER TABLE [dbo].[FLW_SCRIPT] ADD CONSTRAINT [PK__FLW_SCRI__3214EC27B8EBF661] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FLW_SHORTCUT
-- ----------------------------
ALTER TABLE [dbo].[FLW_SHORTCUT] ADD CONSTRAINT [PK__FLW_SHOR__3214EC27508B5CBF] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PAY_ALI_TRADE_HISTORY
-- ----------------------------
ALTER TABLE [dbo].[PAY_ALI_TRADE_HISTORY] ADD CONSTRAINT [PK__PAY_ALI___3214EC27B5810F14] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_APP
-- ----------------------------
ALTER TABLE [dbo].[SYS_APP] ADD CONSTRAINT [PK__SYS_APP__3214EC27D218363A] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_CODE_GENERATE
-- ----------------------------
ALTER TABLE [dbo].[SYS_CODE_GENERATE] ADD CONSTRAINT [PK__SYS_CODE__3214EC271BD09CE2] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_CODE_GENERATE_CONFIG
-- ----------------------------
ALTER TABLE [dbo].[SYS_CODE_GENERATE_CONFIG] ADD CONSTRAINT [PK__SYS_CODE__3214EC276E7F872D] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_CONFIG
-- ----------------------------
ALTER TABLE [dbo].[SYS_CONFIG] ADD CONSTRAINT [PK__SYS_CONF__3214EC27AB3CA86F] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table SYS_DATABASE_INFO
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [NAME_UNIQUE]
ON [dbo].[SYS_DATABASE_INFO] (
  [DB_NAME] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SYS_DATABASE_INFO
-- ----------------------------
ALTER TABLE [dbo].[SYS_DATABASE_INFO] ADD CONSTRAINT [PK__SYS_DATA__3214EC275AC5ECCB] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_DICT_DATA
-- ----------------------------
ALTER TABLE [dbo].[SYS_DICT_DATA] ADD CONSTRAINT [PK__SYS_DICT__3214EC277C09E915] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_DICT_TYPE
-- ----------------------------
ALTER TABLE [dbo].[SYS_DICT_TYPE] ADD CONSTRAINT [PK__SYS_DICT__3214EC2728ABF680] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_EMP
-- ----------------------------
ALTER TABLE [dbo].[SYS_EMP] ADD CONSTRAINT [PK__SYS_EMP__3214EC27AFA7AB56] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_EMP_EXT_ORG_POS
-- ----------------------------
ALTER TABLE [dbo].[SYS_EMP_EXT_ORG_POS] ADD CONSTRAINT [PK__SYS_EMP___3214EC278C0F08FB] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_EMP_POS
-- ----------------------------
ALTER TABLE [dbo].[SYS_EMP_POS] ADD CONSTRAINT [PK__SYS_EMP___3214EC275CCA6EB3] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_FILE_INFO
-- ----------------------------
ALTER TABLE [dbo].[SYS_FILE_INFO] ADD CONSTRAINT [PK__SYS_FILE__3214EC273F1E9BB8] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_MENU
-- ----------------------------
ALTER TABLE [dbo].[SYS_MENU] ADD CONSTRAINT [PK__SYS_MENU__3214EC27BD3475CD] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_NOTICE
-- ----------------------------
ALTER TABLE [dbo].[SYS_NOTICE] ADD CONSTRAINT [PK__SYS_NOTI__3214EC27C84A5669] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_NOTICE_USER
-- ----------------------------
ALTER TABLE [dbo].[SYS_NOTICE_USER] ADD CONSTRAINT [PK__SYS_NOTI__3214EC2798872A66] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_OAUTH_USER
-- ----------------------------
ALTER TABLE [dbo].[SYS_OAUTH_USER] ADD CONSTRAINT [PK__SYS_OAUT__3214EC2724D13856] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_OP_LOG
-- ----------------------------
ALTER TABLE [dbo].[SYS_OP_LOG] ADD CONSTRAINT [PK__SYS_OP_L__3214EC276A5ADAF3] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_ORG
-- ----------------------------
ALTER TABLE [dbo].[SYS_ORG] ADD CONSTRAINT [PK__SYS_ORG__3214EC27DD6ED71F] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table SYS_POS
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [CODE_UNI]
ON [dbo].[SYS_POS] (
  [CODE] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SYS_POS
-- ----------------------------
ALTER TABLE [dbo].[SYS_POS] ADD CONSTRAINT [PK__SYS_POS__3214EC2749918570] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE [dbo].[SYS_ROLE] ADD CONSTRAINT [PK__SYS_ROLE__3214EC278EBA3F8A] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_ROLE_DATA_SCOPE
-- ----------------------------
ALTER TABLE [dbo].[SYS_ROLE_DATA_SCOPE] ADD CONSTRAINT [PK__SYS_ROLE__3214EC274A0F7C21] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE [dbo].[SYS_ROLE_MENU] ADD CONSTRAINT [PK__SYS_ROLE__3214EC272F339191] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_SMS
-- ----------------------------
ALTER TABLE [dbo].[SYS_SMS] ADD CONSTRAINT [PK__SYS_SMS__3214EC27B234C77E] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_TENANT_INFO
-- ----------------------------
ALTER TABLE [dbo].[SYS_TENANT_INFO] ADD CONSTRAINT [PK__SYS_TENA__3214EC2794411858] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_TIMERS
-- ----------------------------
ALTER TABLE [dbo].[SYS_TIMERS] ADD CONSTRAINT [PK__SYS_TIME__3214EC272EF7A3B7] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_USER
-- ----------------------------
ALTER TABLE [dbo].[SYS_USER] ADD CONSTRAINT [PK__SYS_USER__3214EC27926E5628] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_USER_DATA_SCOPE
-- ----------------------------
ALTER TABLE [dbo].[SYS_USER_DATA_SCOPE] ADD CONSTRAINT [PK__SYS_USER__3214EC27F97CF351] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE [dbo].[SYS_USER_ROLE] ADD CONSTRAINT [PK__SYS_USER__3214EC27F63B8B51] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SYS_VIS_LOG
-- ----------------------------
ALTER TABLE [dbo].[SYS_VIS_LOG] ADD CONSTRAINT [PK__SYS_VIS___3214EC27AE2BF205] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

