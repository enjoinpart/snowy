/*
Navicat MySQL Data Transfer

Source Server         : ybs
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : xiaonuo-vue

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2020-12-25 20:48:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `act_de_databasechangelog`
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangelog`;
CREATE TABLE `act_de_databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_de_databasechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for `act_de_databasechangeloglock`
-- ----------------------------
DROP TABLE IF EXISTS `act_de_databasechangeloglock`;
CREATE TABLE `act_de_databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_de_databasechangeloglock
-- ----------------------------

-- ----------------------------
-- Table structure for `act_de_model`
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model`;
CREATE TABLE `act_de_model` (
  `id` varchar(255) NOT NULL,
  `name` varchar(400) NOT NULL,
  `model_key` varchar(400) NOT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `model_comment` varchar(4000) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `model_editor_json` longtext,
  `thumbnail` longblob,
  `model_type` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_proc_mod_created` (`created_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO `act_de_model` VALUES ('674afd8b-f3fb-11ea-abe7-e0d55e485056', '出差流程', 'travel', '出差流程', null, '2020-09-11 14:52:48.062000', 'superAdmin', '2020-09-11 14:55:52.718000', 'superAdmin', '1', '{\"modelId\":\"674afd8b-f3fb-11ea-abe7-e0d55e485056\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"travel\",\"name\":\"出差流程\",\"documentation\":\"出差流程\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"escalationdefinitions\":\"\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\"},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-170CF235-7CA9-4E7A-8392-75AA1F532611\"}],\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":193},\"upperLeft\":{\"x\":100,\"y\":163}},\"dockers\":[]},{\"resourceId\":\"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7\",\"properties\":{\"overrideid\":\"\",\"name\":\"填写申请单\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"initiator\"}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524\"}],\"bounds\":{\"lowerRight\":{\"x\":275,\"y\":218},\"upperLeft\":{\"x\":175,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-170CF235-7CA9-4E7A-8392-75AA1F532611\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7\"}],\"bounds\":{\"lowerRight\":{\"x\":174.15625,\"y\":178},\"upperLeft\":{\"x\":130.609375,\"y\":178}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7\"}},{\"resourceId\":\"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13\",\"properties\":{\"overrideid\":\"\",\"name\":\"经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"1275735541155614721\",\"firstName\":\"俞宝山[yubaoshan]\",\"$$hashKey\":\"object:4446\"}}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC\"}],\"bounds\":{\"lowerRight\":{\"x\":420,\"y\":218},\"upperLeft\":{\"x\":320,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13\"}],\"bounds\":{\"lowerRight\":{\"x\":319.15625,\"y\":178},\"upperLeft\":{\"x\":275.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13\"}},{\"resourceId\":\"sid-64A789A3-6EDA-4C69-836E-C233B7269859\",\"properties\":{\"overrideid\":\"\",\"name\":\"领导会签\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"Parallel\",\"multiinstance_cardinality\":\"${num}\",\"multiinstance_collection\":\"pers\",\"multiinstance_variable\":\"per\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${per}\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851\"}],\"bounds\":{\"lowerRight\":{\"x\":565,\"y\":218},\"upperLeft\":{\"x\":465,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-64A789A3-6EDA-4C69-836E-C233B7269859\"}],\"bounds\":{\"lowerRight\":{\"x\":464.15625,\"y\":178},\"upperLeft\":{\"x\":420.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-64A789A3-6EDA-4C69-836E-C233B7269859\"}},{\"resourceId\":\"sid-6D4A69E7-A765-49EC-94C6-C238AF325027\",\"properties\":{\"overrideid\":\"\",\"name\":\"总经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"1280700700074041345\",\"firstName\":\"俞宝山[yubaoshan]\",\"$$hashKey\":\"object:5494\"}}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0\"}],\"bounds\":{\"lowerRight\":{\"x\":710,\"y\":218},\"upperLeft\":{\"x\":610,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-6D4A69E7-A765-49EC-94C6-C238AF325027\"}],\"bounds\":{\"lowerRight\":{\"x\":609.15625,\"y\":178},\"upperLeft\":{\"x\":565.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-6D4A69E7-A765-49EC-94C6-C238AF325027\"}},{\"resourceId\":\"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E\",\"properties\":{\"overrideid\":\"\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":778,\"y\":192},\"upperLeft\":{\"x\":750,\"y\":164}},\"dockers\":[]},{\"resourceId\":\"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E\"}],\"bounds\":{\"lowerRight\":{\"x\":750,\"y\":178},\"upperLeft\":{\"x\":710.5625,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E\"}}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004454944415478DAED9DCF4B1B6918C73D78EC718F7BE8A1873DEC61FF803DE40F28ECA5E28F248A1861BD958078F0520B22EB1E16A9ACA5D893071591AE86D205A3D54841105996DD453660D8EE1245ADF547ED6A6AC2DBE7918988A66D9A8C99C9EBE7032F8176E8F49367DE6F9E796786A9A90100000000000000000000508C31B5A9546A62696929373B3B6B6666663C1BF178DC241289573242F8E1771DFCAC440BB6B8B868B6B6B64C2693F17C6C6F6F9B8585857D29E01DFCF0B3DDCF4AF417E07CC17E7FDA793ADEECA6BD2C5C467E1956F1C3CF763F2BD196F2FC17962FDAEAF31F3CFD4590A29DE0879FED7E56A2E78A858AF657FCBED74533F8E167BBDFB50A15AFCF5DAFFAA0C40F3F42A502A1A2E7A9F9A2255F3CB0EEA0C40F3F42A582A1922FD6C561CB41891F7E848A47A73F7E1957D53EE387DFB50D95C6C6C66F1B1A1A26E4332D9F46C65E7D7DFD13F90C102AF8E1674FA8C81CFF4A4644E6F63DF9BCDBD4D4F48DEB8122FFF88FA150687F6C6C2CB5BEBE7E6C849D9D9D939191913F648707F2F70F0281402D45C30FBFEAF5ABABABBB2573F9B90449D6691CCE86CCF397F2E72157E6B9064A341ADDD8DDDD358538383838EEE8E8F84DB61BA268F8E1579D7E1A28121AFF6880B4B7B79BC1C141333E3E6E8687874D6767E759B8E8D949D9A73C2D2D2D6F3F1428E783453B16DD9EA2E1875FF5F96987A2A1D1DBDBABF3F9D21C5F595931914824E704CB4F25EF480225363535756C8A607474F4CFB2538C83123FFC2AEEE7ACA164B54329142879D6D6D64C381C7E27C172120C06BF2C3554F6F4398762D035165DBCA568F8E1575D7E326FBFD70E646868E893F3BCBFBFFF50B7D505DC5277663E07DDBEC4FDACEA4AB3743A5F5B5A34FCF0F39D5FDE4BC6CF3A77750DE553E836CEFACABD523B95FDCFE854CCC515E352869F8B861F7E36FB15D3A90C0C0C64CAEA542291C8AFD3D3D3B96242657272F25FD654F0C3AFFAFCB403D3A08846A3269BCD7E708EEB059B6030787AB959AF169573F5E75D11577F7467876EDC08C741891F7E95F793B9FEB786C5F2F272C139AE61D3D3D39373BA9A58595F625B5BDBA3EEEEEEA38FDCA762BABABAD2F29F7A4CD1F0C3AF6A2F29DFD1C0686D6DCD2593C94B1DCAB940F94FC6CDB2BF48D9D1C3E6E6E68C5E5ECEAFB1E81A4A2C163B0C87C3471A28D20EDDA068F8E157BD7EFA188E73F76CAEAFAFEF501765750D257FCAE3044AA0C62DF4544802E41719AF9D1DBF098542CF78F6073FFCECF1D31BDB644E1F1558C88DB9D2A1780107257EF879FE40E117CEBD2BA70F1496BC284BA87050E2879F957050E2871FA142A8E0871FA142A87050E287DF35E1E27B557C328EAEEABD31F8E1E7273F2B4924121B7E79A5647EA4D3E931B7DE00871F7E7EF6B392B9B9B9EFE6E7E7F7363737FFF7C32F80162C1E8FBF74EB5DB5F8E1E7673F6B912FE8B624EFB2B6741F7BEB7D0586EE7FD5ED82E1879F9FFD000000000000000000000000000000000000000000C00DDE030876FE6DA03BCB1F0000000049454E44AE426082, '0', null);
INSERT INTO `act_de_model` VALUES ('6faec554-df94-11ea-aecf-fa1265c5e47d', '请假流程', 'leave', '请假流程', '', '2020-08-16 15:45:20.900000', 'superAdmin', '2020-09-22 21:34:05.404000', 'superAdmin', '2', '{\"modelId\":\"6faec554-df94-11ea-aecf-fa1265c5e47d\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"leave\",\"name\":\"请假流程\",\"documentation\":\"请假流程\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"{\\\"executionListeners\\\":[]}\",\"eventlisteners\":\"{\\\"eventListeners\\\":[]}\",\"signaldefinitions\":\"[]\",\"messagedefinitions\":\"[]\",\"escalationdefinitions\":\"[]\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\",\"messages\":[]},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"startEvent1\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]},\"initiator\":\"INITIATOR\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"formproperties\":\"\",\"interrupting\":true},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\"}],\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":193},\"upperLeft\":{\"x\":100,\"y\":163}},\"dockers\":[]},{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\",\"properties\":{\"overrideid\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\",\"name\":\"填写申请单\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"initiator\"}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\"}],\"bounds\":{\"lowerRight\":{\"x\":275,\"y\":218},\"upperLeft\":{\"x\":175,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\",\"properties\":{\"overrideid\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\"}],\"bounds\":{\"lowerRight\":{\"x\":174.15625,\"y\":178},\"upperLeft\":{\"x\":130.609375,\"y\":178}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\"}},{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\",\"properties\":{\"overrideid\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\",\"name\":\"老俞审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"assignee\":{\"id\":\"1280700700074041345\",\"firstName\":\"老俞[laoyu]\"},\"type\":\"user\"},\"initiatorCanCompleteTask\":false}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\"}],\"bounds\":{\"lowerRight\":{\"x\":420,\"y\":218},\"upperLeft\":{\"x\":320,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\",\"properties\":{\"overrideid\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\"}],\"bounds\":{\"lowerRight\":{\"x\":319.15625,\"y\":178},\"upperLeft\":{\"x\":275.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\"}},{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\",\"properties\":{\"overrideid\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\",\"name\":\"宝山审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"assignee\":{\"id\":\"1275735541155614721\",\"firstName\":\"俞宝山[yubaoshan]\"},\"type\":\"user\"},\"initiatorCanCompleteTask\":false}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\"}],\"bounds\":{\"lowerRight\":{\"x\":565,\"y\":218},\"upperLeft\":{\"x\":465,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\",\"properties\":{\"overrideid\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\"}],\"bounds\":{\"lowerRight\":{\"x\":464.15625,\"y\":178},\"upperLeft\":{\"x\":420.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\"}},{\"resourceId\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\",\"properties\":{\"overrideid\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\"}],\"bounds\":{\"lowerRight\":{\"x\":614.640625,\"y\":178},\"upperLeft\":{\"x\":565.875,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\"}},{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\",\"properties\":{\"overrideid\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":643,\"y\":192},\"upperLeft\":{\"x\":615,\"y\":164}},\"dockers\":[]}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D494844520000010C0000003408060000007FD206E7000005194944415478DAED9B3B4C5B571C873364E890A163870ED9DAA1432B75E8D08121438748ED0018300F2359022C2C8B4755816A29E221401D22218C1706D82A3142540AB6034642A6292A559212350969070B613A508A1B830DA7E71FD9AA318FF875B1AFFC7DD29165FB5E1DFCD3FF7CF79C732F376E00000000000000000000C0F5A194BAB9BDBD3D1B0A854EFC7EBF5A5A5A2ADBE6F3F9543018FC4BB746F2303E0FB280734841ACAEAEAA4824A28E8E8ECABEEDEDEDA9959595BF7581549387B17990059C43AE1EE905F1E447B7FAF5C1D76F5ECBB8308EF455658B3C8CCD23330B33E461646D8046A69AE9814B31A45A395F4D7451C4C9C3D83C32B3304B1E46D5066864FD67D201A2C8C3D83C32B330913014231B61200C848130CA4D18CFD7BC6F8A415E114665E7719130CC9007C2B80E61C462EAF142FF992B88BC97CF2B5218E471561826CA03615C8330D20B21B355A230C8E3AC30CC9407C2B8C6258959DA752D492A390FB2008A823CC802280AF24018A514464343C3C7757575BDBADD93578BC5F299211D555555DD9C9898F856F3474B4BCBA9EE4CD96C36E576BBF7A6A7A7A73C1ECF2D8481301046790A438FD72A2D875F64DC5ED09ECBF745EB6C6C6CEC0397CBB5333C3C7CBAB1B1A10E0E0E94108D46D5E6E6A61A191951FAFBE8DCDCDCE7080361208CF212467D7DFD886E099183C3E1505EAF57CDCECEAAA9A929E5743AD3C5F15DC19D59ADD6F77527D1858505954824D465040201D5D3D3131F1F1FFF84018230104679084364911282BEA09F1BC3F25E3ED7E3BC7069C832A4BDBDFD85C8221B441A9D9D9DFB353535B7280A8481304A2B0C5966E81617118442A12BC7AE7C9F92466D6DED9D7CEDF4D5C0C040ECAA994526B23C191C1CFC86A2401808A3E4C2789C9A5964831C97DAD390C942CE1DDAEDF665D9B3C805D9D3E8EAEA7A56A41FFC30B51953E945919E0579501B6FCB45B74F65F07774749C647BC197E31C0EC7B19C97D7DD133D45799DDAE0CC16D9086D6A6A3A2ED28F4F19EF2103E4FF2CA420C883DA784B2E2FE45536387341364293E7F7E6D5793E5C72EBA6A066E6A2200F63F330BB308CA88F5493BB21B920C727CFBD97CF431ED17C66188D8D8D31A69D2C495892947449220F67298FC7739CCBF89D9C9CDC2F648631B7BEBEBE97EB1E86DD6E5F63638B4D4F363D4BB7E969B1583E9281DFDADA1A938B78B6177B7DFCA19C274F84E67597C4E9743ECD45186EB73BACFFD83A8A0261208C92DF255995C13F343474727C7CF54443BE1F1D1D8D2767178FF27E0E434ED6EB9A67D9C862717171DF6AB5FEC673180803619485306EEBB62312E8EDED3D0D87C3178E5BF9BCAFAFEF24290B39FE76414F7AEAE9C9CB99999995442211BF4C16F3F3F32F9B9B9B7F2FA8338A823CC8A2D84F7A7EA8C7E4ABD426687777F79947C3FBFBFBD39FF27C25C717E5F1709969B4B5B5FDAC7FA4EFF0F07037B9E689ADADADFDE472B99EEA8E9E18250B8A823CC8227F6C36DBBB168BE5BE1E9FFF5C7237453EF7EA95C17B45EB34B93CA9968DD0B48EE5F5072D8B46239621140579904551C5F18E1EAB5F64FC7BFB5DA3C76E49A028C8832C80A2200FB2000608C24018080361200C8481301006C24018080361200C848130100645411E640157E2F7FBCD5814AF7551C4C9C3D83CC802CE110C0677229188A98A221C0E7FAF8B628B3C8CCD832CE01C8140E0CBE5E5E5FDDDDDDD7FCD70F59082F0F97C7FEA564D1EC6E6411670213AE0BBDACA8F642A27EBBF326EF2F76D195D10E441160000000000000000000000000000000000005021FC0713D4C1C9B74304720000000049454E44AE426082, '0', null);
INSERT INTO `act_de_model` VALUES ('82114da5-e0f6-11ea-9096-e0d55e485056', '转正流程', 'formal', '转正流程', null, '2020-08-18 09:59:53.388000', 'superAdmin', '2020-08-31 09:55:35.221000', 'superAdmin', '1', '{\"modelId\":\"82114da5-e0f6-11ea-9096-e0d55e485056\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"formal\",\"name\":\"转正模型\",\"documentation\":\"转正模型\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"escalationdefinitions\":\"\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\"},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F\"}],\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":193},\"upperLeft\":{\"x\":100,\"y\":163}},\"dockers\":[]},{\"resourceId\":\"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4\",\"properties\":{\"overrideid\":\"\",\"name\":\"填写申请单\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"initiator\"}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8\"}],\"bounds\":{\"lowerRight\":{\"x\":274.4890581296828,\"y\":217.09854567332218},\"upperLeft\":{\"x\":174.48905812968277,\"y\":137.09854567332218}},\"dockers\":[]},{\"resourceId\":\"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4\"}],\"bounds\":{\"lowerRight\":{\"x\":173.87686255641609,\"y\":177.8720425939571},\"upperLeft\":{\"x\":130.54148164110265,\"y\":177.51525016837908}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50.000000000000014,\"y\":40}],\"target\":{\"resourceId\":\"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4\"}},{\"resourceId\":\"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2\",\"properties\":{\"overrideid\":\"\",\"name\":\"部门经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"1275735541155614721\",\"firstName\":\"俞宝山[yubaoshan]\",\"$$hashKey\":\"object:4403\"}}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483\"}],\"bounds\":{\"lowerRight\":{\"x\":420,\"y\":218},\"upperLeft\":{\"x\":320,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2\"}],\"bounds\":{\"lowerRight\":{\"x\":319.54903503781736,\"y\":177.68745140354622},\"upperLeft\":{\"x\":274.94002309186544,\"y\":177.41109426977596}},\"dockers\":[{\"x\":50.000000000000014,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2\"}},{\"resourceId\":\"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D\",\"properties\":{\"overrideid\":\"\",\"name\":\"主管审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"1280709549107552257\",\"firstName\":\"徐玉祥[xuyuxiang]\",\"$$hashKey\":\"object:4601\"}}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A\"}],\"bounds\":{\"lowerRight\":{\"x\":561.1496536284474,\"y\":217.09854567332218},\"upperLeft\":{\"x\":461.1496536284473,\"y\":137.09854567332218}},\"dockers\":[]},{\"resourceId\":\"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D\"}],\"bounds\":{\"lowerRight\":{\"x\":460.526748917857,\"y\":177.67669607889732},\"upperLeft\":{\"x\":420.6229047105904,\"y\":177.42184959442486}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50.000000000000036,\"y\":40}],\"target\":{\"resourceId\":\"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D\"}},{\"resourceId\":\"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431\",\"properties\":{\"overrideid\":\"\",\"name\":\"总经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"1280700700074041345\",\"firstName\":\"老俞[laoyu]\",\"$$hashKey\":\"object:4796\"}}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\",\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-982850A7-599B-4944-B40A-58D0E584E60D\"}],\"bounds\":{\"lowerRight\":{\"x\":710,\"y\":218},\"upperLeft\":{\"x\":610,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431\"}],\"bounds\":{\"lowerRight\":{\"x\":609.5770517690605,\"y\":177.6946329924341},\"upperLeft\":{\"x\":561.5726018593869,\"y\":177.40391268088808}},\"dockers\":[{\"x\":50.000000000000036,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431\"}},{\"resourceId\":\"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6\",\"properties\":{\"overrideid\":\"\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":783,\"y\":192},\"upperLeft\":{\"x\":755,\"y\":164}},\"dockers\":[]},{\"resourceId\":\"sid-982850A7-599B-4944-B40A-58D0E584E60D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6\"}],\"bounds\":{\"lowerRight\":{\"x\":754.375,\"y\":178},\"upperLeft\":{\"x\":710.390625,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6\"}}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004794944415478DAED9DBD4B5B5118C61D1C3A74ECD0A143870E0E1DFA0774089D0B2E86F8118C62C410901421200EA2810C1141B4828B8B54AAB6A50EA1935163A454080E2D84D880429110346D6353A3A4269EBE6FC805B586D87C98DC739E1F1C12E3C5C39387F3DCF79C7BAEB7A10100000000000000000000000000104234EEEDEDBDDDDADACAAEAEAE8A9595959A359FCF270281C0776A66E853DB3755344A099BB6B9B9290E0F0F453A9DAE798BC7E3626363E31799D8027DEAFAA68A4629E1B3C045D33E7F70E6DAEF44B496E6A5E9EC10863E757D5345A394705979F14BD38C0BAF7B6A7A5620E3CEA04F5DDF54D128253C5FBCCEB890CF556BE304F4A9EB9B2A1A950A955ACF5FAB1D2A7AD727BB6FAA68943E5478AEAA1917F9F852BA5091499FECBEA9A251EA50D10CBBDA640915D9F4C9EE9B2A1A9598FED44BABD6F447167DB2FBA68A46840A4205A18250A94AA8B4B5B5DDA3666D6D6D1DA1D71746A3F15155063CFDF1A776BBDDDFDDDD7D449D898E8E8EE3F6F6F6457AFF10C62154102A72848AC9649AA0317DCA63FC62A3CF9769CC3FA85847838383EFAC566BD6EBF58A582C2618DE08343F3F7F62369B53D4A901C62154102AFAD648E3F8150708150BE71E8F27BBB0B020A6A7A7733FE7C3659FDE3F29BBA3A1A1A1E5E1E1E1F3442221AE83B72EF7F4F4FCA412E92E8C43A82054F4A99102A38583836622E79148E4D218E7B1EF72B9B4AA65BFACD989CD667BC6154AA140D1989C9CCCD0B16E18875041A8E853235520110E8D603078ED18CF64321783C55B72470E87E3134F798AB1B3B323060606BEC238840A42457F1A4D26D3630E0B1AC3B9F02804171766B339CBC796BC784BA5D031AF9D1423994C0A8BC5F2A78CD22BCC2BCDB21A27AB3ED97D935DA3A68D9A8B83626666A6E8589F9A9A3AE363F9AA50A99D8A9B7275B5B89456CFC6419FBABEA9A2716969A9E838E763F2C78F94142A5D5D5DC968345AB4232E8B3A3B3BD3283131FDC1F44797D598EDA6958AC7E3499655A9F4F5F5BD9F9B9B2BDA112FEED86CB6208C43A82054F4A79102A2895AA6B7B737B7945188DDDD5D5E534953A89C95BC67C56834DEA76AE5942F1B178217761C0E478A2A956618875041A8E8F692F23A57206EB75BA452A97FC6F9F6F6366F1DC9E437C24D94D5195F56B6DBEDC7E3E3E322140A09EDF232BF7285C28162B158DEC038840A4245BF1AB95AA1C088736870C5C253215E3F999D9D154EA7F3D2CE5A83C1D058768754ADDC191B1B7B3D3A3AFA83A644B9DD75F459A6BFBFFF4B252A14840A4205A1527B8DF960592FB090BB4FBF375724506E13840A4205A15217371436E5176F733714F26D385C5834E811840A4205A1827F7D8050813E840A4205A1825041A840234205A1825041A82054FE9FABCF56A993765AADE7FEC8A24F76DF54D12825814020562F8F95D45A341A5DACD453E064D527BB6FAA689492B5B5B566BFDF7F74707070520F670136CDE7F37DABD4F36A65D527BB6FAA689416FA929E53FA06B9AC2BF4D4FB5B6ADC7FB8D2A6C9AA4F76DF54D1080000000000000000000000000000000000000000000000000000A8147F01C3C9C852339444A40000000049454E44AE426082, '0', null);

-- ----------------------------
-- Table structure for `act_de_model_history`
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_history`;
CREATE TABLE `act_de_model_history` (
  `id` varchar(255) NOT NULL,
  `name` varchar(400) NOT NULL,
  `model_key` varchar(400) NOT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `model_comment` varchar(4000) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `removal_date` datetime(6) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `model_editor_json` longtext,
  `model_id` varchar(255) NOT NULL,
  `model_type` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_proc_mod_history_proc` (`model_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_de_model_history
-- ----------------------------
INSERT INTO `act_de_model_history` VALUES ('48ce341d-fcd8-11ea-a4d5-e0d55e485056', '请假流程', 'leave', '请假流程', null, '2020-08-16 15:45:20.900000', 'superAdmin', '2020-08-16 17:00:51.219000', 'superAdmin', null, '1', '{\"modelId\":\"6faec554-df94-11ea-aecf-fa1265c5e47d\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"leave\",\"name\":\"请假流程\",\"documentation\":\"请假流程\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.flowable.org/processdef\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"{\\\"executionListeners\\\":[]}\",\"eventlisteners\":\"{\\\"eventListeners\\\":[]}\",\"signaldefinitions\":\"[]\",\"messagedefinitions\":\"[]\",\"escalationdefinitions\":\"[]\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\",\"messages\":[]},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"startEvent1\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]},\"initiator\":\"INITIATOR\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"formproperties\":\"\",\"interrupting\":true},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\"}],\"bounds\":{\"lowerRight\":{\"x\":130,\"y\":193},\"upperLeft\":{\"x\":100,\"y\":163}},\"dockers\":[]},{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\",\"properties\":{\"overrideid\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\",\"name\":\"填写申请单\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"initiator\"}}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\"}],\"bounds\":{\"lowerRight\":{\"x\":275,\"y\":218},\"upperLeft\":{\"x\":175,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\",\"properties\":{\"overrideid\":\"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\"}],\"bounds\":{\"lowerRight\":{\"x\":174.15625,\"y\":178},\"upperLeft\":{\"x\":130.609375,\"y\":178}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-54572B0C-206E-423B-AA4A-170EA2547C2F\"}},{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\",\"properties\":{\"overrideid\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\",\"name\":\"老俞审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"assignee\":{\"id\":\"1280700700074041345\",\"firstName\":\"老俞[laoyu]\"},\"type\":\"user\"},\"initiatorCanCompleteTask\":false}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\"}],\"bounds\":{\"lowerRight\":{\"x\":420,\"y\":218},\"upperLeft\":{\"x\":320,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\",\"properties\":{\"overrideid\":\"sid-A99E5D1C-210A-424B-BC98-FE18780C993F\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\"}],\"bounds\":{\"lowerRight\":{\"x\":319.15625,\"y\":178},\"upperLeft\":{\"x\":275.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4\"}},{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\",\"properties\":{\"overrideid\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\",\"name\":\"宝山审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":false,\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"assignee\":{\"id\":\"1275735541155614721\",\"firstName\":\"俞宝山[yubaoshan]\"},\"type\":\"user\"},\"initiatorCanCompleteTask\":false}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"formfieldvalidation\":true,\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\"}],\"bounds\":{\"lowerRight\":{\"x\":565,\"y\":218},\"upperLeft\":{\"x\":465,\"y\":138}},\"dockers\":[]},{\"resourceId\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\",\"properties\":{\"overrideid\":\"sid-85466395-9D76-459D-8A07-E235DA564B0D\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\"}],\"bounds\":{\"lowerRight\":{\"x\":464.15625,\"y\":178},\"upperLeft\":{\"x\":420.84375,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45\"}},{\"resourceId\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\",\"properties\":{\"overrideid\":\"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\"}],\"bounds\":{\"lowerRight\":{\"x\":614.640625,\"y\":178},\"upperLeft\":{\"x\":565.875,\"y\":178}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\"}},{\"resourceId\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\",\"properties\":{\"overrideid\":\"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":643,\"y\":192},\"upperLeft\":{\"x\":615,\"y\":164}},\"dockers\":[]}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', '6faec554-df94-11ea-aecf-fa1265c5e47d', '0', null);

-- ----------------------------
-- Table structure for `act_de_model_relation`
-- ----------------------------
DROP TABLE IF EXISTS `act_de_model_relation`;
CREATE TABLE `act_de_model_relation` (
  `id` varchar(255) NOT NULL,
  `parent_model_id` varchar(255) DEFAULT NULL,
  `model_id` varchar(255) DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_relation_parent` (`parent_model_id`) USING BTREE,
  KEY `fk_relation_child` (`model_id`) USING BTREE,
  CONSTRAINT `act_de_model_relation_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `act_de_model` (`id`),
  CONSTRAINT `act_de_model_relation_ibfk_2` FOREIGN KEY (`parent_model_id`) REFERENCES `act_de_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_de_model_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `act_evt_log`
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ge_bytearray`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO `act_ge_bytearray` VALUES ('1294922083660345346', '1', '请假流程.bpmn20.xml', '1294922083219943426', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E58187E6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8AFB7E58187E6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D36324539353337382D443641412D343243442D383346382D3933303138413644304144382220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422206E616D653D22E88081E586AFE5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41393945354431432D323130412D343234422D424339382D4645313837383043393933462220736F757263655265663D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622207461726765745265663D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522206E616D653D22E5AE9DE5B1B1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D38353436363339352D394437362D343539442D384130372D4532333544413536344230442220736F757263655265663D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422207461726765745265663D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E3C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D227369642D36393145443245412D343935362D343733442D423932452D3736463045434139383930452220736F757263655265663D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522207461726765745265663D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D41323146463443422D464442462D343033412D393036352D39424135314233413038304222206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246222069643D2242504D4E53686170655F7369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234222069643D2242504D4E53686170655F7369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435222069643D2242504D4E53686170655F7369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042222069643D2242504D4E53686170655F7369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223631352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045222069643D2242504D4E456467655F7369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E3934393939393939393939362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223631352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044222069643D2242504D4E456467655F7369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438222069643D2242504D4E456467655F7369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346222069643D2242504D4E456467655F7369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, '0');
INSERT INTO `act_ge_bytearray` VALUES ('1294922084922830850', '1', '请假流程.leave.png', '1294922083219943426', 0x89504E470D0A1A0A0000000D494844520000028D000000E40806000000FDC91EF600000CD34944415478DAEDDDEF6F55F51D07701FF8C03F620F4CB664FE097BB007FE0126F381A4D87B95A692561C201649C89494A044D01812B7643121311A16961883AC6352FAC3F2533226814E42563644A1B65EC62A22F75A8B9C7DBF5DAF3B160A17686FCFB9F7F54A3E017ACB8F94773FDFCFF99E73CFB9EF3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080059524C9FD67CF9E7DF7E8D1A3DF0F0C0C247D7D7DAACED5DFDF9F1C3870E0DFA18A32A46448866408C8A4D8A80F1E3C98944AA5647272522D525DBC7831D9BF7FFFE5D0B81F932125434A8680CC8947F61A75661AF66438E23F2D434A86940C0199134F056994D9A9D0ACA76448C99092212073E2B52C9A64A69A7522434A86940C01B96DD6DF7C35969C3DF65672AA7FD374C59FC78F69B09AB50CC9900CC91060689CAE2B13A3C927BD1B92937BD6FDA8E2C7E26B9AAC055F866448866408303426E74FFDE986465DAD0BA77A34590BBE0CC9900CC91060689C4C4E7FB875CE661D5FD3642DF832244332244380A131F9A46FE39CCD3ABEA6C95AF06548866448860043A366AD59CB900CC9900C0186C6DB37EBF82EC5B99A757C4D93B5E0CB900CC9900C0186C6E4CCE1DFCDD9ACE36B9AAC055F866448866408303426974687934FF675DF784A287C2CBEA6C95AF06548866448860043E3747DFAB7776E68D6F1631AAC662D433224433204181AFF57DF7E9B9C39F2FB1B4F09858FC5D734590BBE0CC9900CC910D0E443637CD2C2C8E1DFCE792D517CCDD3182CF832244332244340B30E8DE1C87DECCC60F2F7BDBF99B351572B7E4EFC5C47FB167C199221199221A08986C6DB1DD53BDAD7AC6548866448860043634D47F5B73ADAD7742DF832244332244340130C8D77DBA8ABA5E95AF06548866448868026181A95662D433224433204A0596BD632244332A40C8D8066AD59CB900CC9903234029AB5662D434A86940C41FD2449F2C0F0F070E7DB6FBFBD7FCB962D9757AF5E3DD5D6D6962C5DBA3429168BD757AC5831F9C20B2F9CDDBA75EB8E503F37342ACD5A8664488664A8B1140A859FB4B4B4AC0C6BFFBBA1CE84BA12E7805095509F86D776851F9F8F9F67726AD261F1BDF7DE7BE7A5975E9A5AB3664DF2E69B6F26478F1E4D464747934AA59244F1C752A9947CFCF1C749182A93679F7DF6FA73CF3D77AEA3A363B9A15169D6322443322443F9F6F8E38F3F1AAA2FD4E4CC90584B7D183EBF68926A1261386C7FF9E597BF5DB76EDDF44078EDDAB5A456274E9C48D6AF5F7FADB3B3F3F492254B7E6668549AB50CC9900CC950BE84C1EFC130F8EDBD8341F16675B091E6006EDC5DBC7FF7EEDD834F3FFD74D2D3D37347C3E26C7BF7EE4DDADBDBCB8DB2EBA8596BD632244332A49A61686C696959DADADAFA9FF40058281492575E7925191C1C4C3EFFFCF3E4EBAFBF9E5EEBAF5EBD3A7D06F2F0E1C3C9B66DDB92279E7862F6E078C5AE63830E8C4343437F5DB56A5532323292CC8773E7CE2561002D2F5FBEFCD7864665C1972119922119CAFCC0F84818F2AEA587C51D3B764C5F8A568B898989E9CF8FBF2F3D3C863F73B949AB81C41DC63830D61A8C5AC53FAFA3A323F7471A9AB5662D43322443AA9187C6B8C3981E18BBBABAA67715EF46FC7DF112B75983A31DC74610AF618CA7A4E76B87F1663B8E4F3EF9E44408CC43864665C15732244332942DF11AC6F429E9EEEEEE1F4E41DFAD78EA7AF3E6CDB34F553F64EACAF769E907366DDA3419AF615C487BF6EC29170A858F0C8DCA82AF64488664285BC2C0D89FDE61BCD781313D38CEDA713C68F2CAB15DBB76FD21FE877EF7DD77C9427BE69967C6F3BA3DAD596BD632244332A41A71688CB7D5495FC378B7A7A46F75AA3A7D8DA3D3D439DE658CF7618CB7D5A98793274F4EE675B751B3D6AC654886644835E8D0D8571DE8E29B5816C2CE9D3BED36E65D7CD24B7CF3CBBDDC5AE74EB5B7B78FC76B27B2F4CD12EA979AB5662D43322443AA9186C65A72159FE0527DF34BDC0DBC74E9D282ACFDF15DD5B36EC7F3A0292C67E2A301B76FDF9ED4D3B66DDB4EC4470D65E56B90DA2EEF6B6969F98566AD59CB900CC9906A84A1B1965CCD3C1A70FAF35E7DF5D5855EFFD343E3F3A6B09C89CF928E8F06ACA723478E9C0B61E9C9DA3755AA3EB8D9919966AD59CB900CC990CAE3D078AB5CCD3C4B7AFAF5A1A1A1055DFFE30DC053FF961E5358CEAC5EBD7A6A6C6CACAE43E3F8F8782984E57C86BFA97E38324B7F7369D69AB50CC9900CA99C0F8D37E42AFCFA4CF5E3F3FD0698D9E2936352FF8EF3A6B09C696B6B4B2A954A5D87C6F8F785B054B2FE4D953E328BDBFA9AB5662D43322443AA1186C674AE4295ABBF9EAFDBECDCEAF63BA9BFBB620ACB99F81FB718EEF101E88B529A75B64A86940C29199ADFAAF7FA6F0ACB9965CB965DAFF74E63B95C1ECFC94EE3B1F80CCE871F7EF87EA7851CE1CB900CC9906AA09DC61F72159FD262A7919AAC5AB56AB2DED7347EF1C517FFC8F8358D3F6AD259B99628FC136E5A5979DD829FFD0C652D53167C1992A1C5CF956B1AA9D9860D1BCED4FBDDD3BDBDBD7FC9E8BBA73F8A77C59FDDA4B33434DEEA638BFDBA053FFB19CA5AA62CF83224438B9F2BEF9EA666AFBDF6DAF67ADFA7B1BBBB7B4FC6EED378D3237A43A3A1B1D13264C19721196ABAA1F1B6B9729F466AF6E28B2FFE74E5CA95DFD7F1893095D6D6D67FE5F14EF086464363DE3364C197211992A1D9E21361C29A3C558F27C2148BC5EB9E0893735D5D5DFFACD7B3A77B7B7B77E4F59993864643A305DF822F4332E4D9D39E3DDDD49E7AEAA9256BD7AE9DAAC36EE3446B6BEBF110CEA2A1D1D068C1B7E05BF06548863233343E5A1DE8E26EE37CBF2126FE7961FDBF9EBAB978D1F495639D9D9DC33D3D3D0B3A31C6EB27E3D1C5EDAED9D1AC0D8D167C0BBE0CC9900CD557589F3FAC0E755D5D5DF376FB9D789B9DB56BD75E4BEF32E6750EE0FF6179B0BDBDBD3C3232B22003E3F0F0F0EEF0778C85A38B87F2FA3572CB1DB7DC69C405FF3EB74B9121193234CECC01A12E5687BBEEEEEE7B1E1CE3C0B879F3E6F4758C57F23C0790522C160B9D9D9D574BA5D2BC0E8C172E5C38D4DADAFA59DEB7A3DD54D74D75654886644835EAD018B5B4B42CADBE29A6BAE378B7A7AAE3EF9BB5C3E8B474A329140AED1D1D1D57E66BC731EE30C6813104717DDEBF369AB5662D43322443AA9187C6991DC7B6F4E018AF718C6F8E89EF7EAEF55DD2F14D2FE96B186335C21CC01C471AC562F1F2FBEFBFFFCD3DBC3966E2F5D75F7F2B9E928E016C84AF8B66AD59CB900CC9906AF4A1B13A07849A480F7D71788CF7718C37008FBB88D553D7F114747CD24BBC71F71B6FBC912C5BB6ECFB594FA1B9D2287300B7B8B6211C250C7476768E1F3F7EBC7C27F761DCB76FDFCE30741E8B17BB36D2B50B9AB5662D43322443AA1986C6EA1C90BE15CF5DD641D73036D7F0F8581C1EDBDADA4A5BB66C3975E8D0A1CFC211C558A552999E10CBE5F2787C96747F7FFF9F376EDCF8413812391B43128F2A1AEDDD519AB5662D43322443AA5986C6F41C30333C4EDDC9B0D8887300358A778C0FA15933F38CCA4F43556682117F3C1F9F21191F09D4C87778D7AC356B1992211952CD36349A0340B3D6AC6548866448191A01CD5AB3962125434A8600CD5A59F0950C291902346B65C1573224433204181A95055FC9900CC9106068549AB50CC9900CC9106068549AB50CC9900C294323A0596BD632244332A40C8D8066AD59CB909221656804346BCD5A86940C291902346B65C15732A46408D0AC95055FC9900CC910606854167CFF773224433204181A95662D433224433204181A3549CD5A8664488694A111D0AC356B1992211952864640B3D6AC6548C9903234029AB5662D434A86940C019AB5B2E02B1992211902346B65C1573224433204181A95662D43322443320434838181014D323B5509CD7A4A86940C29190232E7C0810363A55249A3CC408D8E8EFE3134EBD332A46448C9109039838383BF1A1A1AFAEACB2FBF2C6B988B77641F1B757F7FFF67A11E932125434A86804C0A0DE2917064792C9E9288D7B2A8BA57FCBA9FCE73A396211992211902000000000000000000000000000000000000000000009857FF05C5C0144B0D1FC0580000000049454E44AE426082, '1');
INSERT INTO `act_ge_bytearray` VALUES ('1295553080900943873', '1', '转正流程.bpmn20.xml', '1295553080485707777', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D22666F726D616C22206E616D653D22E8BDACE6ADA3E6A8A1E59E8B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8BDACE6ADA3E6A8A1E59E8B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D34353434363337322D394245362D344142392D424236442D4436384537434539303934462220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222206E616D653D22E983A8E997A8E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373132333745412D324542462D343042352D393046422D4231343532413130423541382220736F757263655265663D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422207461726765745265663D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422206E616D653D22E4B8BBE7AEA1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730393534393130373535323235372220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE5BE90E78E89E7A5A55B787579757869616E675D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D32453436433039322D354142312D343635302D384133412D4638454145424543333438332220736F757263655265663D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222207461726765745265663D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33394535383643422D383143462D344242352D413433462D3334464633453032343338412220736F757263655265663D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422207461726765745265663D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D43424133303830432D454431352D343341432D383341302D35343634354143334543413622206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39383238353041372D353939422D343934342D423430412D3538443045353834453630442220736F757263655265663D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122207461726765745265663D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F666F726D616C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22666F726D616C222069643D2242504D4E506C616E655F666F726D616C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234222069643D2242504D4E53686170655F7369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132222069643D2242504D4E53686170655F7369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344222069643D2242504D4E53686170655F7369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331222069643D2242504D4E53686170655F7369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136222069643D2242504D4E53686170655F7369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446222069643D2242504D4E456467655F7369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044222069643D2242504D4E456467655F7369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393939392220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138222069643D2242504D4E456467655F7369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833222069643D2242504D4E456467655F7369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841222069643D2242504D4E456467655F7369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, '0');
INSERT INTO `act_ge_bytearray` VALUES ('1295553081920159745', '1', '转正流程.formal.png', '1295553080485707777', 0x89504E470D0A1A0A0000000D4948445200000319000000E40806000000F407E9A500000E2E4944415478DAEDDDEF6F55F51D07701EF8607FC41E906CC9FC13F6600FFC034CE603C985F62A4D25AD3A402C929029294189456348DC92C584C460BA740931C83A26D01F160AD88C41A09310CB862894D6CB5845A4975AE4ECFBAD5CBDF407DE0BEDED3DB7AF57F20EDAF22BF0E673CEA7E7DC7B962D0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000968824491EB970E1C29E818181EF7A7A7A92AEAE2EA970BABBBB9323478EFC3724AB43A2433AA4433AA44340EAC5A1DCDFDF9FE472B964626242162957AF5E4D0E1F3E7C3D0CE92775487448744887740848B5F8551F43B96A86F3445757D7391D121D121DD2211D02522D5E563614AB2761304FEA90E890E8900EE910906AF13E4A03B1AA0673A243A243A2433AA443C0925832BEF96A24B970E2DDE46CF7B6A9C4FF8E1F334C0D661DD2211DD2211D124B0650F660BE31369C7C72704B7266FFA67B123F163F67A03AB8EB900EE9900EE990583280B206F3A5B37F9D31940BB97CB6D3407570D7211DD2211DD221B16400E50DE6731FED987330C7CF19A80EEE3AA4433AA4433A24960CA0ACC1FC49D7D6390773FC9C81EAE0AE433AA4433AA44362C9000C66835987744887448774488780C51BCCF11D38E61ACCF17306AA83BB0EE9900EE9900E892503286B309F3FF6C7390773FC9C81EAE0AE433AA4433AA44362C900CA1ACCD78607934F0EB5CEBCBC1C3E163F67A03AB8EB900EE9900EE990583280B20673CC67FF7C6FC6608E1F334C0D661DD2211DD2211D124B0650FE60BE752B397FFC4F332F2F878FC5CF19A80EEE3AA4433AA4433A24960CA0E4C11C9F823A74EC0F73DEC71A3FE749A90EEE3AA4433AA4433A24960CE0A707F3AD5BC9C8F9DEE45F077E3FE7502E247E9FF87D7D25C8C15D87744887744887C49201CC3A987FEA2B3EBE126430EB900EE9900EE990583280B20673295FF1B9DF57820C5807771DD2211DD2211DD221C092714F1E74281762C03AB8EB900EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE91060308B83BBE8900EE9900EE91060C910835987744887744887C49201254992E467838383CDBB77EF3EDCD6D6767DFDFAF5930D0D0DC9CA952B936C367BE7B9E79E9B78F9E5972FECD8B1A33DE457960C3198754887744887744896EE92515F5FFFF34C26B3369C2BEE09391F72239E3786E4433E0B9FDB1BBE7D297E3F67DA4B74B978FFFDF7DF7BF5D55727376CD890BCF3CE3BC9C0C040323C3C9CE4F3F9248ADFE672B9E4E4C99349584292175E78E1CE8B2FBE78B1A9A9698D25430C661DD2211DD2211D92A5B364AC5AB5EA8990AE9089BB4B4529F9287CFFAC33EF25222C138DAFBDF6DAAD4D9B364D2D10B76FDF4E4A75FAF4E964F3E6CDB79B9B9BCFAD58B1E297960C319875488774488774486A77C9088BC2F2B0281C2863B1982DFDB574DEC8CCAB178FECDBB7AFF7D9679F4D3A3B3BCB5A2EA63B70E040D2D8D8385E2B57350C668359877448874487C49271AF4C26B3B2AEAEEE7FC50B437D7D7DF2FAEBAF27BDBDBDC9175F7C917CFDF5D753E786376FDE9CBA23E6D8B163C9CE9D3B93A79E7A6AFAA271C3558D1A5D30FAFAFAFEB16EDDBA64686828990F172F5E4CC2C232BE66CD9ADF5932C4C15D87744887744887A476968CB0603C1E9682DBC5CB457B7BFBD4ADF4A5181B1B9BFAFEF1C7152F1BE1E7ACB9DBEE97B47805232E18A516A354F1E76B6A6A4AFD666A301BCC3AA4433A243A24968C1FAF60142F182D2D2D53572D1E44FC71F116FD698B862B1AB520BE0623DE22355F573066BBA2F1F4D34F8F85C23C6AC9100777D1211DD2211D92F42E19F13518C5B748B5B6B6FE704BD4838AB7526DDFBE7DFAAD53A93D6FE4FBDBA47EB66DDBB689F81A8C85B47FFFFEF1FAFAFA8F2D19E2E02E3AA4433AA44392DE25232C18DDC557301E76C1285E34A65DD1E877A69E627BF7EEFD73FC0BFDF6DB6F9385F6FCF3CF8FA6F5F297C16C30EB900EE990E8902CF50EC5B7A92D7E0DC683DE2275BF5BA78A5FA3E1B6A9145FC588CFC1886F535B0967CE9C9948EBD50C83D960D6211DD221D121B164ACEA2A2C00F145DB0BA1A3A3C3D58CB48B4FF28E2FF67E98B7AA2D576363E368BC97AF9AFEB184FCC66036987548877448744874686EF109DD85177BC7AB0DD7AE5D5B9073C5F8AE53D3DEDE76F932D265F7EEDD8777EDDA9554D2CE9D3B4FC747C957CB9F41D1E5B8AE4C26F36B83D960D6211DD221D121D1A199C2C7D716BEDF1B6FBCB1D0E78BC54BC64BCB4897B6B6B6EB030303155D328E1F3F7E3194A5B3DAFE5115E5C3D9367983D960D6211DD221D12159CA1D0A1FDB53F87C5F5FDF829E2FC607F615FD5E3A9DB5A7CCFAF5EB274746462ABA648C8E8EE642592E55F13FAA1F36F9E27F5C06B3C1AC433AA443A243B2943B14FEFF7CE1E3F3FD82EFE9E293C18B7E1F979CB5A74C43434392CFE72BBA64C45F2F94255FEDFFA88A37F978D9D06036987548877448744896728742C60BFF3F5F6F5B7BBFB7B32DFAB5F3CEDA5326FEC52D86128A5C753198AB2B3A243A243AA4433AB478A9F4F9A2B3F69459BD7AF59D4A5FC9181F1F1F4DC9958C13994CE6F1C71E7BEC1197987DF54787744887448764A977283E85DB950C4AB26EDDBA894ABF26E3CA952B9F56F96B32EE19C8D5721F6BF82DCC9A6AF9BCC15C7D1DAAF6CE2C76A77428FD1D7382E858E65856D90E794D0625DBB265CBF94ABFBBD4C18307FF5EA5EF2EF5717C8AE5F4815C4D83F97E1F5BECCF1BCCD5D7A16AEFCC62774A87D2DF314B8663996359653BE4DDA528D99B6FBEB9ABD2CFC9686D6DDD5F65CFC998F5AB3D06B3C19CF60E593274C892A1438E658E65F3D921CFC9A064AFBCF2CA2FD6AE5DFB5D059FF89DAFABABFB4F1A9FDC68301BCC69EB902543872C193AE458E658369FE213BFC339DC64259EF89DCD66EF78E277CAB5B4B4FCFBE4C99395BA55AA3D14A53F8D7F4E06B3C16CC9B06458322C193AE458B6D43B149F9B5138F96F6F6F5F90F3C58E8E8EE2AB18A93C6F2478E69967566CDCB871B2025733C6EAEAEA4E8572662D1906B383BBCE58322C19960CC732C7B2542E194F141680783563BE5F001E7FBE70BE78A7E86180A93C6FE4AEE6E6E6C1CECECE05DD30E2EB3FE236FA53F78B1ACC06B383BB2543872C19960CC732C7B2EA15CEE73E2A2C012D2D2DF3F676B6F16D6B376EDC78BBF82A465ACF1BF9B12CCB1B1B1BC78786861664C1181C1CDC177E8D91B08D3E9AD63F236FFBE76DFFD2B8642CF316B63AE42D6C75C8B1CCB16C01CE1B43AE169681D6D6D6875E34E282B17DFBF6E2D761DC48F3792345B2D96C7D7373F3CD5C2E37AF0BC6E5CB978FD6D5D57D9EF6CB5D1E60E401463AA4433A243A24968CEF6532999585178117AE683CE8AD53F1C74DBB82E136A95A535F5FDFD8D4D47463BEAE68C42B1871C10845DC9CF63F1B83D960D6211DD221D121B164DC7345A3A178D188AFD1882F068FEF0E55EABB48C5177917BF0623A616CE1B996333CD66B3D73FF8E0836F1EE2C5E0636FBDF5D6BBF116A958C05AF87331980D661DD2211D121D124BC6CCF3C690B1E225212E1BF1391AF1817DF12A45E156AA784B547C92777CD0DEDB6FBF9DAC5EBDFABB694F19BF512BE78DCCBD992E0F5B654F7373F3E8A953A7C6CB790EC6A143873AC2927222BE58A796EEA533980D661DD2211D121D124BC6ECE78DC56F6DFB80E9F71A8CA5B56C3C19978D8686865C5B5BDBD9A3478F7E1E36D0917C3E3FB5518C8F8F8F5EB972E5D3EEEEEEBF6DDDBAF5C3B0B95E8825895B68ADBD1B80C16C30EB900EE990E8905832EE7FDE7877D9982C67B9A8C5F3464A149FF0184AB32194604FC86721F9BBC588DF5E0AE98C8F7CAFE527321ACC06B30EE9900E890E8925C3792318CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C319875488774488774482C1980C16C30EB900EE990E890E81060308B83BBE890BF3B1DD2211D022C196230EB900EE9900EE99058320083D960D6211DD221D121D121C0603698754874487448877408B0648883BBE8900EE9900EE91060C930100D661DD2211D121D124B0660301BCC3A243A243AA4433A0418CCE2E02E3AA4433AA4433A045832C460D6211DD2211DD221B1640006B3C1AC433AA443A243A24380C12C0EEEA243A2433AA4438025430C661DD2211DD2211D124B0660301BCC3AA4433A243A243A0418CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE910507D7A7A7A0CC4EA493E0CE6491D121D121DD2211D0252EDC8912323B95CCE50AC820C0F0FFF250CE6733A243A243AA4433A04A45A6F6FEF6FFBFAFABEFAF2CB2FC70DC7C5FBAA4F1CCADDDDDD9F873CA943A243A2433AA44340EA8561F0785757D789787933DE4729154FFC733F97E6A1AC433AA4433AA4433A94F60E01000000000000000000000000000000000000000000000000000000F3E0FFB1815AA5D70A02FE0000000049454E44AE426082, '1');
INSERT INTO `act_ge_bytearray` VALUES ('1304341425315528705', '1', '出差流程.bpmn20.xml', '1304341425068064769', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D2274726176656C22206E616D653D22E587BAE5B7AEE6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE587BAE5B7AEE6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373043463233352D374341392D344537412D383339322D3735414131463533323631312220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322206E616D653D22E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41394546363142422D324342322D343034462D383141302D3245324636333935363532342220736F757263655265663D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722207461726765745265663D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922206E616D653D22E9A286E5AFBCE4BC9AE7ADBE2220666C6F7761626C653A61737369676E65653D22247B7065727D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A2020202020203C6D756C7469496E7374616E63654C6F6F7043686172616374657269737469637320697353657175656E7469616C3D2266616C73652220666C6F7761626C653A636F6C6C656374696F6E3D22706572732220666C6F7761626C653A656C656D656E745661726961626C653D22706572223E0A20202020202020203C6C6F6F7043617264696E616C6974793E247B6E756D7D3C2F6C6F6F7043617264696E616C6974793E0A2020202020203C2F6D756C7469496E7374616E63654C6F6F704368617261637465726973746963733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D42353237464544362D374544442D344438462D394543452D4541334244413338453446432220736F757263655265663D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322207461726765745265663D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33433541373042382D423030362D344130392D383243452D3231373245334644373835312220736F757263655265663D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922207461726765745265663D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D35353744313135382D343444302D343541302D423635302D41343535423146423043344522206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39424243373736362D353535432D343231392D384430422D4444373244463139384243302220736F757263655265663D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722207461726765745265663D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F74726176656C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D2274726176656C222069643D2242504D4E506C616E655F74726176656C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437222069643D2242504D4E53686170655F7369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133222069643D2242504D4E53686170655F7369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539222069643D2242504D4E53686170655F7369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237222069643D2242504D4E53686170655F7369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445222069643D2242504D4E53686170655F7369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735302E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531222069643D2242504D4E456467655F7369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643222069643D2242504D4E456467655F7369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131222069643D2242504D4E456467655F7369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330222069643D2242504D4E456467655F7369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393536332220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735302E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234222069643D2242504D4E456467655F7369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, '0');
INSERT INTO `act_ge_bytearray` VALUES ('1304341426900975618', '1', '出差流程.travel.png', '1304341425068064769', 0x89504E470D0A1A0A0000000D4948445200000314000000E4080600000001F9621500000E704944415478DAEDDDFF6FD4F51D07707EF087FD11FB81644BE69FB01FF6837F80C9FC4172D89ED254D2AA03C4220999921294583486C42D594C480CA64B971083AC6302FD62A180CD18043A08B16C8842692D6315293D6B91CFDEEF8E7367CBD5A35F8EFBDC3D1EC92BD5BB82A43E79BDDFAFFB7C5BB1020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080054892E4914B972EED1D1818F8AEA7A727E9EAEA5265AEEEEEEEE4E8D1A3FF0E959521254332244332244340AAC406DCDFDF9F8C8D8D25535353EA21D5F5EBD79323478EDC0C0DF949195232A46448866408488DF8698E065C318D78AAABABEB820C2919523224433204A4463C34AC01564E85263C2D434A86940CC9900C01A911CF7BD4FC2AAA092732A46448C9900CC91050754D78E2AB91E4D2C9F792F3DDDB672AFE737C4DE3D48465488664488664481928C040316FDD1A1F4ECE1DDA9A9C3DB0F907155F8BEF699E16721992211992211952060A305014AD2BE7FF3CA701E7EBEAF94ECDD3422E43322443322443CA4001068AE275E1E39D459B707C4FF3B490CB900CC9900CC99032508081A2689DEBDA56B409C7F7344F0BB90CC9900CC9900C290305182834614D5886644886940C290305B0F44D38DE09A358138EEF699E16721992211992211952060A305014AD8BC77F5FB409C7F7344F0BB90CC9900CC9900C29030518288AD68DE1C1E4DCE1D6B98788C36BF13DCDD3422E43322443322443CA4001068A79EBB3BFBF3FA709C7D7344E4D58866448866448869481020C14F3D737DF24174FFC61EE21E2F05A7C4FF3B490CB900CC9900CC99032508081A2E89345878EFFAEE879A7F13D4F18B590CB900CC9900CC9903250808162CE273923177B937F1CFC6DD1069CAFF83DF17B7DC26321972119922119922165A00003C58F7E92E3131E4D588664488664488694810228DA844BF92467BE4F7834530BB90CC9900CC9900CC91050C303C5421B70BE34530BB90CC9900CC9900CC91050C30385D28465488664488664481928004D5813962119922125434A86004D5813962125434A86644886004D5859C8950CC9900CC9900C41F54892E427838383CD7BF6EC39D2D6D67673C3860DD30D0D0DC9EAD5AB936C367BF7F9E79F9F7AE595572EEDDCB9B33DD42F0C144A139621199221199221551B03457D7DFD4F3399CCBAB02FDC1BEA62A85B718F182A17EAB3F0DEBEF0F5E5F87D76D5353A487CF0C107EFBFF6DA6BD31B376E4CDE7DF7DD64606020191E1E4E72B95C12C5AF636363C9A953A7923070242FBEF8E2DD975E7AE9725353D35A0385D284654886644886644855E740F1D4534F3D11AA2BD4D4BD01A294FA387C7FD62EBB4684C1A1F1F5D75FFF66F3E6CD33C3C29D3B7792529D397326D9B265CB9DE6E6E60BAB56ADFAB9814269C232244332244332A4AA2343612858198682830F3044DCAFFAAB698FC8DCA3128FECDFBFBFF7B9E79E4B3A3B3B1F689098EDE0C183496363E364B51CADD0843561199221195232A46A3943994C66755D5DDD7F0A8783FAFAFAE48D37DE487A7B7B932FBEF822F9FAEBAF67F681B76FDF9E39ABE5F8F1E3C9AE5DBB92A79F7E7AF65071CBD18A2A1D26FAFAFAFEB67EFDFA64686828590A972F5F4EC27032B976EDDADF182894855C86644886644886543A33148689C7C30070A77090686F6F9F39F5BD14E3E3E333DF1F7F5DE160117ECFAA3B4DBEA6C523137198283518A58ABF5F535353EAA7504D581396211992212543AA1633148F4C140E132D2D2D3347231622FEBA784AFDACA1C2918A6A10AF9988A7392DD59189FB1DA978E69967C643601E3550280BB992211992211952E9C850BC66A2F034A7D6D6D6EF4F6B5AA8783AD48E1D3B669FFE94DA3D22FF3BD5E927DBB76F9F8AD74C2CA703070E4CD6D7D77F62A0501672254332244332A4D291A1304C74171E9958EC30513854CC3A52D16F579E62FBF6EDFB63FC1FFAEDB7DF26CBED85175E184DEB612D4D581396211992212543AA9632146F0D5B78CDC4424F739AEFF4A7C26B2A9CFA94E2A313F13913F1D6B0E570F6ECD9A9B41EA5D0843561199221195232A46A6CA0E8CA6FF6E305D5CBA1A3A3C3518AB48B4FC08E17622FE6F6B00FAAB1B171349E8F57497F5942FD4A13D6846548866448C990AA850C959297F864EBFC85D8F128C28D1B3796655F18EFFE34EB96B22B57902E7BF6EC39B27BF7EEA49C76EDDA75263E82BD527E060587D9BA3299CC2F35614D5886644886940CA96ACE50297909AFAFCB7FDF9B6FBEB9DC7BC3C281E2653BF494696B6BBB39303050D681E2C489139743583A2BAD0917D447F79BDA35614D5886644886940CA96A1A28E6CB4B786D6FFEFDBEBEBE65DD1BC687DF15FC593AEDD05366C3860DD3232323651D28464747C74258AE547013FE7E6A2FFCCBA5096BC232244332A4644855E94031272FE1DF2FE65F5FEA8BB1678B4FD42EF8735CB1434F998686862497CB9575A088FFBD10965CA537E1C2A93D1E0ED4843561199221195232A4AA79A028CC4BA8C9FCBF2FD5AD62E7BB856CC17F3B67879E32F17FDCC35042902BAE34E1CA2A195232A464488664A83C55EEBDA11D7ACAAC59B3E66EB98F504C4E4E8EA6E408C5C94C26F3F8638F3DF688C3C43ED591211992212543AA068E507C9F97F8F46A472828C9FAF5EBA7CA7D0DC5B56BD73EADF06B287ED07C2BE5BCD3F047B86F55CAFB16F2CACF50A565CA66508664C85A662DAB9881624E5E5C4341C9B66EDD7AB1DC77793A74E8D05F2BF42E4F9FC42742CE6EBE95D484E77BED61BF6F21AFFC0C555AA66C06654886AC65D6B2873E5014CD8BBB3C51B2B7DE7A6B77B99F43D1DADA7AA0C29E4371DF4F7134614DB8DA3264332843322443D6326B59A979F11C0A4AF6EAABAFFE6CDDBA75DF95F149D9B9BABABA7FA5F129889AB0269CF60CD90CCA900CC990B5CC5A56AAF8A4ECB05F9B2EC793B2B3D9EC5D4FCA4EB99696967F9E3A75AA5CA73BB587A0F4A7F1E7A4096BC23683368332244332642DABA50CC5E752E437FAEDEDEDCBB237ECE8E8283C3A91CA3D22C1B3CF3EBB6AD3A64DD365384A315E5757773A84336BA0D0842DE436833683322443D6326B59C50F144FE437FBF128C5525F9C1D7FBFB037BC5BF060BD54EE11B9A7B9B979B0B3B37359A78978BD469C3C7FECFC4E4D5813B690DB0CCA900CC990B5CC5A5619C2DEEDE3FC86BFA5A565C96E211B6F15BB69D3A63B854727D2BA47E4FF6159D9D8D838393434B42CC3C4E0E0E0FEF0DF180993E7A369FD19B9D59E5BED55E36670855B7ECA900CC990B54C867E648F18EA7A7EE3DFDADABAE8A1220E133B76EC28BC6EE2569AF78814C866B3F5CDCDCDB7C7C6C6967498B87AF5EAB1BABABACFD37E18CBC3803C0C4886644886940CA95ACC502693599DBF403B7FA462A1A73FC55F37EBC884539DAA4D7D7D7D635353D3ADA53A52118F4CC4612204714BDA7F369AB0262C433224434A8654AD66286CFC1B0A878A784D45BC503BDEA5A9D4BB39C50BB00BAF9988550D7B448A4CA1D96CF6E6871F7E38B1880BB5C7DF7EFBEDF7E2694E3180D5F073D1843561199221195232A46A3943718F186ABC70208883457C4E457CF85D3CFA903F1D2A9ED6149F801D1F5AF7CE3BEF246BD6ACF96ED6D3B96F55CB1E91E253E8CA3041F63437378F9E3E7D7AF2419E3371F8F0E18E30909C8C17D754D3F9709AB0262C433224434A8654AD6728EE110B6F27BBC0EA77CD446D0D164FC6C1A2A1A161ACADADEDFCB163C73E0FD3E6482E979B991E26272747AF5DBBF6697777F75FB66DDBF65198522FC590C489B3DAAED4D7843561199221195232A46A3D43857BC47B83C5F4830C12D5B847A444F1698921341B4308F686FA2C54EE5E30E2D72BA13AE3A3D2ABF9E9869AB0262C433224434A869481C21E1134614D5886940C291952320468C29AB0855CC99092211992214013561672254332244332244380814269C232244332244332A40C148026AC09CB900CC990922125438026AC09CB90922125433224438026AC2CE44A86644886644886000385D28465488664488664481928C040A1F969C23224433254624D4C4C24E7CE9D9BF9BA98D765481FD287000385D2846548866A30437138087FE499AF8B795D86F4217D083050284D588664C84061A0902165A00034614D58866448860C1432A40C148026AC09CB90922103850C29190234614DD842AE64C8402143FA903E0468C2CA42AE64C84061A090217D083050284D58866448860C1432A40C148026AC09CB900CC990814286940C019AB0262C434A860C1432A40FC910A0092B0BB9922103850CE943FA1060A0509AB00CC99081C2402143CA4001060ACD4F13962119922103850C290305B0303D3D3D9A5FE5542E34E16919523264A090217D481F0252E3E8D1A3236363631A6005D4F0F0F09F4213BE20434A862AB7262626668683F87531AFCB903EA40F0155A3B7B7F7D77D7D7D5F7DF9E597931AE1C3FB342736E0EEEEEECF433D29434A86940CC9900C01A912FEE23FDED5D575321EA28CE73DAAB257FCB95F4873039621199221199221194A7B86000000000000000000000000000000000000000000000000000000E0A1FA2FE7E745A5C30319360000000049454E44AE426082, '1');
INSERT INTO `act_ge_bytearray` VALUES ('1308406617288617986', '1', 'var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308406617791934466', '1', 'hist.var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308586688364371969', '1', 'var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308586688863494145', '1', 'hist.var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308587454428831745', '1', 'var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308587454923759618', '1', 'hist.var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308589270763790337', '1', 'var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);
INSERT INTO `act_ge_bytearray` VALUES ('1308589271267106818', '1', 'hist.var-pers', null, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, null);

-- ----------------------------
-- Table structure for `act_ge_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('batch.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count', 'true', '2');
INSERT INTO `act_ge_property` VALUES ('cfg.task-related-entities-count', 'true', '2');
INSERT INTO `act_ge_property` VALUES ('common.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('entitylink.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('eventsubscription.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('identitylink.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('job.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1', '1');
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(6.5.0.6)', '1');
INSERT INTO `act_ge_property` VALUES ('schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('task.schema.version', '6.5.0.6', '1');
INSERT INTO `act_ge_property` VALUES ('variable.schema.version', '6.5.0.6', '1');

-- ----------------------------
-- Table structure for `act_hi_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO `act_hi_actinst` VALUES ('1308406301734350850', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:02:26.005', '2020-09-22 22:02:26.318', '313', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406303806337026', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-22 22:02:26.499', '2020-09-22 22:02:26.499', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406304053800962', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:02:26.558', '2020-09-22 22:02:29.247', '2689', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406316305362945', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-22 22:02:29.478', '2020-09-22 22:02:29.478', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406316791902210', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:02:29.595', '2020-09-22 22:08:35.052', '365457', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406614050615297', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:03:40.467', '2020-09-22 22:03:41.535', '1068', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406619301883906', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-22 22:03:41.719', '2020-09-22 22:03:41.719', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406619561930754', '2', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:03:41.780', '2020-09-22 22:03:44.554', '2774', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406632182591490', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-22 22:03:44.789', '2020-09-22 22:03:44.789', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406632677519362', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:03:44.907', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406819621842946', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:04:29.478', '2020-09-22 22:04:29.827', '349', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406821853212673', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-22 22:04:30.010', '2020-09-22 22:04:30.010', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406822138425345', '2', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:04:30.078', '2020-09-22 22:04:32.721', '2643', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406834209632258', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-22 22:04:32.956', '2020-09-22 22:04:32.956', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308406834738114561', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-22 22:04:33.082', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308407850615320578', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', null, null, null, 'sequenceFlow', null, '2020-09-22 22:08:35.286', '2020-09-22 22:08:35.286', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308407851106054145', '3', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', null, '主管审批', 'userTask', '1280709549107552257', '2020-09-22 22:08:35.404', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583523564908545', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:46:38.981', '2020-09-23 09:46:39.248', '267', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583525452345345', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:39.432', '2020-09-23 09:46:39.432', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583525724975106', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:46:39.496', '2020-09-23 09:46:42.210', '2714', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583538093977602', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:42.445', '2020-09-23 09:46:42.445', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583538588905473', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:46:42.564', '2020-09-23 09:46:45.280', '2716', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583550957907969', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:45.513', '2020-09-23 09:46:45.513', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308583551444447233', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', null, '主管审批', 'userTask', '1280709549107552257', '2020-09-23 09:46:45.629', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586277431631873', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:57:35.554', '2020-09-23 09:57:36.067', '513', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586280283758593', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 09:57:36.234', '2020-09-23 09:57:36.234', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586280539611138', '2', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:57:36.296', '2020-09-23 09:57:38.701', '2405', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586291503521794', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 09:57:38.910', '2020-09-23 09:57:38.910', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586291956506625', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 09:57:39.018', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586686682456065', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:59:13.127', '2020-09-23 09:59:13.810', '683', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586690235031554', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:13.975', '2020-09-23 09:59:13.975', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586690486689794', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:59:14.034', '2020-09-23 09:59:16.461', '2427', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586701551263745', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:16.673', '2020-09-23 09:59:16.673', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586702000054273', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:59:16.780', '2020-09-23 09:59:19.134', '2354', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586712754249730', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:19.344', '2020-09-23 09:59:19.344', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586716319408130', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', null, '领导会签', 'userTask', '1275735541155614721', '2020-09-23 09:59:20.194', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586717904855041', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', null, '领导会签', 'userTask', '1280700700074041345', '2020-09-23 09:59:20.571', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308586719137980418', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', null, '领导会签', 'userTask', '1280709549107552257', '2020-09-23 09:59:20.866', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587452872744962', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:02:15.801', '2020-09-23 10:02:16.449', '648', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587456282714114', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:16.614', '2020-09-23 10:02:16.614', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587456551149569', '2', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:16.678', '2020-09-23 10:02:19.104', '2426', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587467590557698', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:19.311', '2020-09-23 10:02:19.311', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587468056125441', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:19.421', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587551543746561', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:02:39.328', '2020-09-23 10:02:39.612', '284', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587553410211842', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:39.771', '2020-09-23 10:02:39.771', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587553657675778', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:39.830', '2020-09-23 10:02:42.148', '2318', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587564248293378', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:42.356', '2020-09-23 10:02:42.356', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587564709666818', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:02:42.465', '2020-09-23 10:02:44.835', '2370', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587575518388225', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:45.043', '2020-09-23 10:02:45.043', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587575975567361', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', null, '宝山审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:45.151', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587713993334785', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:03:18.057', '2020-09-23 10:03:18.279', '222', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587715612336130', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:03:18.443', '2020-09-23 10:03:18.443', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587715863994370', '2', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:03:18.504', '2020-09-23 10:03:20.815', '2311', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587726433640449', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:03:21.024', '2020-09-23 10:03:21.024', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308587726920179714', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:03:21.140', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588719409946626', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:07:17.767', '2020-09-23 10:07:18.083', '316', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588721486127106', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:07:18.262', '2020-09-23 10:07:18.262', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588721754562561', '2', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:07:18.327', '2020-09-23 10:07:20.978', '2651', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588733838352385', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:07:21.208', '2020-09-23 10:07:21.208', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588734329085953', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:07:21.325', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588942660165634', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:08:10.995', '2020-09-23 10:08:11.292', '297', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588944648265730', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:08:11.468', '2020-09-23 10:08:11.468', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588944899923970', '2', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:08:11.529', '2020-09-23 10:08:14.154', '2625', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588956883050497', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:08:14.386', '2020-09-23 10:08:14.386', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308588957361201153', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:08:14.500', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308589269002182657', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:09:28.801', '2020-09-23 10:09:29.518', '717', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308589272768667649', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 10:09:29.698', '2020-09-23 10:09:29.698', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308589273020325890', '2', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:09:29.759', '2020-09-23 10:09:32.491', '2732', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308589285452242945', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 10:09:32.722', '2020-09-23 10:09:32.722', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308589285938782210', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:09:32.839', null, null, null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308590489804693505', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:14:19.862', '2020-09-23 10:14:20.166', '304', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308590491771822082', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:14:20.331', '2020-09-23 10:14:20.331', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308590492027674626', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:14:20.393', '2020-09-23 10:14:22.715', '2322', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308590502639263745', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:14:22.924', '2020-09-23 10:14:22.924', '0', null, '');
INSERT INTO `act_hi_actinst` VALUES ('1308590503100637186', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:14:23.033', '2020-09-23 10:18:24.490', '241457', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO `act_hi_actinst` VALUES ('1308591517623083009', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:18:24.914', null, null, null, '');

-- ----------------------------
-- Table structure for `act_hi_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------
INSERT INTO `act_hi_comment` VALUES ('1308407844994953218', 'comment', '2020-09-22 22:08:33.885', '1275735541155614721', '1308406317274247169', '1308406300706746370', 'AddComment', '俞宝山提交了任务，意见：我觉得可以;', 0xE4BF9EE5AE9DE5B1B1E68F90E4BAA4E4BA86E4BBBBE58AA1EFBC8CE6848FE8A781EFBC9AE68891E8A789E5BE97E58FAFE4BBA53B);
INSERT INTO `act_hi_comment` VALUES ('1308407861721837569', 'event', '2020-09-22 22:08:37.875', '1265476890672672808', '1308407851600982018', null, 'DeleteGroupLink', 'null_|_assignee', null);
INSERT INTO `act_hi_comment` VALUES ('1308407866788556802', 'event', '2020-09-22 22:08:39.081', '1265476890672672808', '1308407851600982018', null, 'AddUserLink', '1280709549107552257_|_assignee', null);
INSERT INTO `act_hi_comment` VALUES ('1308583546591637506', 'comment', '2020-09-23 09:46:44.411', '1275735541155614721', '1308583539075444738', '1308583522503749633', 'AddComment', '与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B);
INSERT INTO `act_hi_comment` VALUES ('1308586708929044481', 'comment', '2020-09-23 09:59:18.374', '1275735541155614721', '1308586702457233410', '1308586685709377538', 'AddComment', '与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B);
INSERT INTO `act_hi_comment` VALUES ('1308587571659628545', 'comment', '2020-09-23 10:02:44.062', '1280700700074041345', '1308587565158457345', '1308587550507753474', 'AddComment', '与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B);
INSERT INTO `act_hi_comment` VALUES ('1308591513432973314', 'comment', '2020-09-23 10:18:23.857', '1280700700074041345', '1308590503566204930', '1308590488798060546', 'AddComment', '老俞退回任务到【填写申请单】，退回原因：跳什么舞，回家睡觉;', 0xE586AFE7A195E6A5A0E98080E59B9EE4BBBBE58AA1E588B0E38090E5A1ABE58699E794B3E8AFB7E58D95E38091EFBC8CE98080E59B9EE58E9FE59BA0EFBC9AE8B7B3E4BB80E4B988E8889EEFBC8CE59B9EE5AEB6E79DA1E8A7893B);

-- ----------------------------
-- Table structure for `act_hi_detail`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------
INSERT INTO `act_hi_detail` VALUES ('1308406301990203394', 'FormProperty', '1308406300706746370', '1308406301486886914', null, '1308406301734350850', 'formData', null, null, '2020-09-22 22:02:26.005', null, null, null, '{\"applyUserName\":\"超级管理员\",\"appyDate\":\"2020-09-22\",\"applyDept\":\"总公司\",\"applyPosition\":\"老总\",\"entryDate\":\"2020-09-22\",\"formalDate\":\"2020-09-22\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308406614306467841', 'FormProperty', '1308406613064953858', '1308406613807345665', null, '1308406614050615297', 'formData', null, null, '2020-09-22 22:03:40.468', null, null, null, '{\"name\":\"超级管理员\",\"dept\":\"总公司\",\"travelDate\":[\"2020-09-01\",\"2020-09-22\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"成都\",\"traffic\":\"飞机\",\"money\":1000,\"key\":1600783367583},{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"火车\",\"money\":800,\"key\":1600783379936},{\"startPlace\":\"昆明\",\"endPlace\":\"西双版纳\",\"traffic\":\"汽车\",\"money\":320,\"key\":1600783388839},{\"startPlace\":\"西双版纳\",\"endPlace\":\"北京\",\"traffic\":\"飞机\",\"money\":1600,\"key\":1600783402408}]}', null);
INSERT INTO `act_hi_detail` VALUES ('1308406819877695490', 'FormProperty', '1308406818585849858', '1308406819361796097', null, '1308406819621842946', 'formData', null, null, '2020-09-22 22:04:29.478', null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-22\",\"2020-09-25\"],\"type\":\"1\",\"remark\":\"心情不好，想跳三天舞\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308407847201157122', 'FormProperty', '1308406300706746370', '1308406301486886914', '1308406317274247169', '1308406316791902210', 'formData', null, null, '2020-09-22 22:08:34.348', null, null, null, '{\"applyUserName\":\"超级管理员\",\"appyDate\":\"2020-09-22\",\"applyDept\":\"总公司\",\"applyPosition\":\"老总\",\"entryDate\":\"2020-09-22\",\"formalDate\":\"2020-09-22\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308583523824955393', 'FormProperty', '1308583522503749633', '1308583523304861698', null, '1308583523564908545', 'formData', null, null, '2020-09-23 09:46:38.981', null, null, null, '{\"applyUserName\":\"俞宝山\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"前端开发工程师\",\"entryDate\":\"2020-09-09\",\"formalDate\":\"2020-09-23\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308586277687484418', 'FormProperty', '1308586276353695745', '1308586277171585026', null, '1308586277431631873', 'formData', null, null, '2020-09-23 09:57:35.554', null, null, null, '{\"name\":\"俞宝山\",\"deptName\":\"研发部\",\"time\":[\"2020-09-23\",\"2020-09-24\"],\"type\":\"1\",\"remark\":\"产品要上线了，请求回家跳一天舞\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308586686925725698', 'FormProperty', '1308586685709377538', '1308586686443380737', null, '1308586686682456065', 'formData', null, null, '2020-09-23 09:59:13.127', null, null, null, '{\"name\":\"俞宝山\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"乌鲁木齐\",\"endPlace\":\"天山\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826323124},{\"startPlace\":\"天山\",\"endPlace\":\"乌鲁木齐\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826343146}]}', null);
INSERT INTO `act_hi_detail` VALUES ('1308587453116014594', 'FormProperty', '1308587451853529089', '1308587452633669633', null, '1308587452872744962', 'formData', null, null, '2020-09-23 10:02:15.801', null, null, null, '{\"name\":\"老俞\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"石家庄\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826515851},{\"startPlace\":\"石家庄\",\"endPlace\":\"北京\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826526978}]}', null);
INSERT INTO `act_hi_detail` VALUES ('1308587551795404802', 'FormProperty', '1308587550507753474', '1308587551300476930', null, '1308587551543746561', 'formData', null, null, '2020-09-23 10:02:39.328', null, null, null, '{\"name\":\"老俞\",\"deptName\":\"研发部\",\"time\":[\"2020-09-25\",\"2020-09-27\"],\"type\":\"1\",\"remark\":\"回家跳舞\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308587714240798722', 'FormProperty', '1308587712978313218', '1308587713737482242', null, '1308587713993334785', 'formData', null, null, '2020-09-23 10:03:18.057', null, null, null, '{\"applyUserName\":\"老俞\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"主管\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-22\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308588719665799169', 'FormProperty', '1308588718357176322', '1308588719162482690', null, '1308588719409946626', 'formData', null, null, '2020-09-23 10:07:17.767', null, null, null, '{\"name\":\"徐玉祥\",\"deptName\":\"研发部\",\"time\":[\"2020-10-01\",\"2020-10-19\"],\"type\":\"1\",\"remark\":\"国庆逢中秋，必须出去嗨\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308588942920212481', 'FormProperty', '1308588941628366850', '1308588942400118785', null, '1308588942660165634', 'formData', null, null, '2020-09-23 10:08:10.995', null, null, null, '{\"applyUserName\":\"徐玉祥\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"后端开发工程师\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-25\"}', null);
INSERT INTO `act_hi_detail` VALUES ('1308589269304172545', 'FormProperty', '1308589267949412354', '1308589268750524417', null, '1308589269002182657', 'formData', null, null, '2020-09-23 10:09:28.802', null, null, null, '{\"name\":\"徐玉祥\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-10-01\"],\"trafficList\":[{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"飞机\",\"money\":1300,\"key\":1600826934163},{\"startPlace\":\"昆明\",\"endPlace\":\"攀枝花\",\"traffic\":\"火车\",\"money\":400,\"key\":1600826947547},{\"startPlace\":\"攀枝花\",\"endPlace\":\"成都\",\"traffic\":\"火车\",\"money\":1200,\"key\":1600826955187}]}', null);
INSERT INTO `act_hi_detail` VALUES ('1308590490060546049', 'FormProperty', '1308590488798060546', '1308590489553035265', null, '1308590489804693505', 'formData', null, null, '2020-09-23 10:14:19.862', null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-24\",\"2020-10-14\"],\"type\":\"1\",\"remark\":\"跳舞跳舞跳舞！！！！！！！！！！\"}', null);

-- ----------------------------
-- Table structure for `act_hi_entitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_entitylink`;
CREATE TABLE `act_hi_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO `act_hi_identitylink` VALUES ('1308406301226840066', null, 'starter', '1265476890672672808', null, '2020-09-22 22:02:25.883', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406304850718721', null, 'assignee', '1265476890672672808', '1308406304594866177', '2020-09-22 22:02:26.688', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406305358229505', null, 'participant', '1265476890672672808', null, '2020-09-22 22:02:26.868', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406313876860930', null, 'participant', '1265476890672672808', null, '2020-09-22 22:02:28.899', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406317517516801', null, 'assignee', '1275735541155614721', '1308406317274247169', '2020-09-22 22:02:29.710', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406318016638977', null, 'participant', '1275735541155614721', null, '2020-09-22 22:02:29.886', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406613555687426', null, 'starter', '1265476890672672808', null, '2020-09-22 22:03:40.349', '1308406613064953858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406620316905474', null, 'assignee', '1265476890672672808', '1308406620056858626', '2020-09-22 22:03:41.899', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406620824416257', null, 'participant', '1265476890672672808', null, '2020-09-22 22:03:42.082', '1308406613064953858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406629749895170', null, 'participant', '1265476890672672808', null, '2020-09-22 22:03:44.209', '1308406613064953858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406633407328257', null, 'assignee', '1275735541155614721', '1308406633172447233', '2020-09-22 22:03:45.025', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406633906450433', null, 'participant', '1275735541155614721', null, '2020-09-22 22:03:45.200', '1308406613064953858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406819105943553', null, 'starter', '1265476890672672808', null, '2020-09-22 22:04:29.356', '1308406818585849858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406822872428545', null, 'assignee', '1265476890672672808', '1308406822629158913', '2020-09-22 22:04:30.195', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406823371550722', null, 'participant', '1265476890672672808', null, '2020-09-22 22:04:30.372', '1308406818585849858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406831776935937', null, 'participant', '1265476890672672808', null, '2020-09-22 22:04:32.376', '1308406818585849858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406835497283586', null, 'assignee', '1280700700074041345', '1308406835233042433', '2020-09-22 22:04:33.200', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308406836000600066', null, 'participant', '1280700700074041345', null, '2020-09-22 22:04:33.383', '1308406818585849858', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308407848664969218', null, 'participant', '1265476890672672808', null, '2020-09-22 22:08:34.821', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308407851844251650', null, 'assignee', '1280709549107552257', '1308407851600982018', '2020-09-22 22:08:35.522', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308407852334985218', null, 'participant', '1280709549107552257', null, '2020-09-22 22:08:35.697', '1308406300706746370', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308407861465985026', null, 'assignee', null, '1308407851600982018', '2020-09-22 22:08:37.814', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308407866041970690', null, 'assignee', '1280709549107552257', '1308407851600982018', '2020-09-22 22:08:38.906', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583523040620545', null, 'starter', '1275735541155614721', null, '2020-09-23 09:46:38.857', '1308583522503749633', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583526576418817', null, 'assignee', '1275735541155614721', '1308583526312177666', '2020-09-23 09:46:39.641', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583527075540994', null, 'participant', '1275735541155614721', null, '2020-09-23 09:46:39.818', '1308583522503749633', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583535636115457', null, 'participant', '1275735541155614721', null, '2020-09-23 09:46:41.860', '1308583522503749633', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583539327102977', null, 'assignee', '1275735541155614721', '1308583539075444738', '2020-09-23 09:46:42.681', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583548533600258', null, 'participant', '1275735541155614721', null, '2020-09-23 09:46:44.934', '1308583522503749633', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583552174256129', null, 'assignee', '1280709549107552257', '1308583551935180802', '2020-09-23 09:46:45.746', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308583552690155522', null, 'participant', '1280709549107552257', null, '2020-09-23 09:46:45.925', '1308583522503749633', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586276898955265', null, 'starter', '1275735541155614721', null, '2020-09-23 09:57:35.429', '1308586276353695745', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586281382666242', null, 'assignee', '1275735541155614721', '1308586281105842178', '2020-09-23 09:57:36.434', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586281839845377', null, 'participant', '1275735541155614721', null, '2020-09-23 09:57:36.606', '1308586276353695745', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586289326678017', null, 'participant', '1275735541155614721', null, '2020-09-23 09:57:38.390', '1308586276353695745', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586292665344001', null, 'assignee', '1280700700074041345', '1308586292422074369', '2020-09-23 09:57:39.129', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586293126717442', null, 'participant', '1280700700074041345', null, '2020-09-23 09:57:39.296', '1308586276353695745', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586686191722498', null, 'starter', '1275735541155614721', null, '2020-09-23 09:59:13.011', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586691203915778', null, 'assignee', '1275735541155614721', '1308586690956451842', '2020-09-23 09:59:14.147', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586691669483521', null, 'participant', '1275735541155614721', null, '2020-09-23 09:59:14.316', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586699412168705', null, 'participant', '1275735541155614721', null, '2020-09-23 09:59:16.163', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586702696308737', null, 'assignee', '1275735541155614721', '1308586702457233410', '2020-09-23 09:59:16.889', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586710615154689', null, 'participant', '1275735541155614721', null, '2020-09-23 09:59:18.833', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586717011468290', null, 'assignee', '1275735541155614721', '1308586716768198657', '2020-09-23 09:59:20.300', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586718399782914', null, 'assignee', '1280700700074041345', '1308586718148124673', '2020-09-23 09:59:20.629', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586718647246849', null, 'participant', '1280700700074041345', null, '2020-09-23 09:59:20.749', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586719632908289', null, 'assignee', '1280709549107552257', '1308586719393832961', '2020-09-23 09:59:20.927', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308586719880372226', null, 'participant', '1280709549107552257', null, '2020-09-23 09:59:21.043', '1308586685709377538', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587452382011393', null, 'starter', '1280700700074041345', null, '2020-09-23 10:02:15.684', '1308587451853529089', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587457251598337', null, 'assignee', '1280700700074041345', '1308587457004134402', '2020-09-23 10:02:16.787', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587457721360385', null, 'participant', '1280700700074041345', null, '2020-09-23 10:02:16.958', '1308587451853529089', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587465472434177', null, 'participant', '1280700700074041345', null, '2020-09-23 10:02:18.806', '1308587451853529089', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587468764962817', null, 'assignee', '1275735541155614721', '1308587468509110274', '2020-09-23 10:02:19.531', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587469213753345', null, 'participant', '1275735541155614721', null, '2020-09-23 10:02:19.698', '1308587451853529089', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587551040430081', null, 'starter', '1280700700074041345', null, '2020-09-23 10:02:39.207', '1308587550507753474', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587554412650498', null, 'assignee', '1280700700074041345', '1308587554144215042', '2020-09-23 10:02:39.946', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587554878218241', null, 'participant', '1280700700074041345', null, '2020-09-23 10:02:40.121', '1308587550507753474', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587562130169857', null, 'participant', '1280700700074041345', null, '2020-09-23 10:02:41.850', '1308587550507753474', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587565401726978', null, 'assignee', '1280700700074041345', '1308587565158457345', '2020-09-23 10:02:42.574', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587573337350145', null, 'participant', '1280700700074041345', null, '2020-09-23 10:02:44.522', '1308587550507753474', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587576667627521', null, 'assignee', '1275735541155614721', '1308587576432746498', '2020-09-23 10:02:45.260', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587577120612354', null, 'participant', '1275735541155614721', null, '2020-09-23 10:02:45.425', '1308587550507753474', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587713485824002', null, 'starter', '1280700700074041345', null, '2020-09-23 10:03:17.938', '1308587712978313218', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587716581220354', null, 'assignee', '1280700700074041345', '1308587716329562114', '2020-09-23 10:03:18.615', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587717034205185', null, 'participant', '1280700700074041345', null, '2020-09-23 10:03:18.783', '1308587712978313218', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587724307128321', null, 'participant', '1280700700074041345', null, '2020-09-23 10:03:20.517', '1308587712978313218', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587727629017090', null, 'assignee', '1275735541155614721', '1308587727377358849', '2020-09-23 10:03:21.248', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308587728090390529', null, 'participant', '1275735541155614721', null, '2020-09-23 10:03:21.420', '1308587712978313218', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588718894047233', null, 'starter', '1280709549107552257', null, '2020-09-23 10:07:17.645', '1308588718357176322', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588722522120193', null, 'assignee', '1280709549107552257', '1308588722266267649', '2020-09-23 10:07:18.449', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588723096739842', null, 'participant', '1280709549107552257', null, '2020-09-23 10:07:18.648', '1308588718357176322', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588731435016194', null, 'participant', '1280709549107552257', null, '2020-09-23 10:07:20.636', '1308588718357176322', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588735113420801', null, 'assignee', '1280700700074041345', '1308588734824013825', '2020-09-23 10:07:21.443', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588735608348674', null, 'participant', '1280700700074041345', null, '2020-09-23 10:07:21.630', '1308588718357176322', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588942156849153', null, 'starter', '1280709549107552257', null, '2020-09-23 10:08:10.874', '1308588941628366850', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588945663287298', null, 'assignee', '1280709549107552257', '1308588945399046146', '2020-09-23 10:08:11.648', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588946162409474', null, 'participant', '1280709549107552257', null, '2020-09-23 10:08:11.829', '1308588941628366850', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588954462937089', null, 'participant', '1280709549107552257', null, '2020-09-23 10:08:13.810', '1308588941628366850', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588958086815745', null, 'assignee', '1275735541155614721', '1308588957851934722', '2020-09-23 10:08:14.616', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308588958577549314', null, 'participant', '1275735541155614721', null, '2020-09-23 10:08:14.790', '1308588941628366850', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589268490477570', null, 'starter', '1280709549107552257', null, '2020-09-23 10:09:28.678', '1308589267949412354', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589273775300610', null, 'assignee', '1280709549107552257', '1308589273519448066', '2020-09-23 10:09:29.878', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589274274422785', null, 'participant', '1280709549107552257', null, '2020-09-23 10:09:30.057', '1308589267949412354', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589283048906753', null, 'participant', '1280709549107552257', null, '2020-09-23 10:09:32.149', '1308589267949412354', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589286731505665', null, 'assignee', '1275735541155614721', '1308589286484041730', '2020-09-23 10:09:32.969', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308589287243210754', null, 'participant', '1275735541155614721', null, '2020-09-23 10:09:33.149', '1308589267949412354', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590489305571329', null, 'starter', '1265476890672672808', null, '2020-09-23 10:14:19.743', '1308590488798060546', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590492744900609', null, 'assignee', '1265476890672672808', '1308590492497436673', '2020-09-23 10:14:20.505', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590493223051265', null, 'participant', '1265476890672672808', null, '2020-09-23 10:14:20.677', '1308590488798060546', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590500516945922', null, 'participant', '1265476890672672808', null, '2020-09-23 10:14:22.417', '1308590488798060546', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590503809474562', null, 'assignee', '1280700700074041345', '1308590503566204930', '2020-09-23 10:14:23.143', null, null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308590504275042305', null, 'participant', '1280700700074041345', null, '2020-09-23 10:14:23.312', '1308590488798060546', null, null, null, null);
INSERT INTO `act_hi_identitylink` VALUES ('1308591518612938753', null, 'assignee', '1265476890672672808', '1308591518118010881', '2020-09-23 10:18:25.090', null, null, null, null, null);

-- ----------------------------
-- Table structure for `act_hi_procinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO `act_hi_procinst` VALUES ('1308406300706746370', '2', '1308406300706746370', null, 'formal:1:1295553082574471169', '2020-09-22 22:02:25.698', null, null, '1265476890672672808', 'startEvent1', null, null, null, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308406613064953858', '2', '1308406613064953858', null, 'travel:1:1304341427379126274', '2020-09-22 22:03:40.172', null, null, '1265476890672672808', 'startEvent1', null, null, null, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308406818585849858', '2', '1308406818585849858', null, 'leave:1:1294922085572947969', '2020-09-22 22:04:29.165', null, null, '1265476890672672808', 'startEvent1', null, null, null, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308583522503749633', '2', '1308583522503749633', null, 'formal:1:1295553082574471169', '2020-09-23 09:46:38.668', null, null, '1275735541155614721', 'startEvent1', null, null, null, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308586276353695745', '2', '1308586276353695745', null, 'leave:1:1294922085572947969', '2020-09-23 09:57:35.235', null, null, '1275735541155614721', 'startEvent1', null, null, null, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308586685709377538', '2', '1308586685709377538', null, 'travel:1:1304341427379126274', '2020-09-23 09:59:12.834', null, null, '1275735541155614721', 'startEvent1', null, null, null, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308587451853529089', '2', '1308587451853529089', null, 'travel:1:1304341427379126274', '2020-09-23 10:02:15.495', null, null, '1280700700074041345', 'startEvent1', null, null, null, '', '老俞在2020-09-23 10:02:18发起了出差流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308587550507753474', '2', '1308587550507753474', null, 'leave:1:1294922085572947969', '2020-09-23 10:02:39.011', null, null, '1280700700074041345', 'startEvent1', null, null, null, '', '老俞在2020-09-23 10:02:41发起了请假流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308587712978313218', '2', '1308587712978313218', null, 'formal:1:1295553082574471169', '2020-09-23 10:03:17.754', null, null, '1280700700074041345', 'startEvent1', null, null, null, '', '老俞在2020-09-23 10:03:20发起了转正流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308588718357176322', '2', '1308588718357176322', null, 'leave:1:1294922085572947969', '2020-09-23 10:07:17.446', null, null, '1280709549107552257', 'startEvent1', null, null, null, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308588941628366850', '2', '1308588941628366850', null, 'formal:1:1295553082574471169', '2020-09-23 10:08:10.679', null, null, '1280709549107552257', 'startEvent1', null, null, null, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308589267949412354', '2', '1308589267949412354', null, 'travel:1:1304341427379126274', '2020-09-23 10:09:28.481', null, null, '1280709549107552257', 'startEvent1', null, null, null, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', null, null, null, null);
INSERT INTO `act_hi_procinst` VALUES ('1308590488798060546', '2', '1308590488798060546', null, 'leave:1:1294922085572947969', '2020-09-23 10:14:19.559', null, null, '1265476890672672808', 'startEvent1', null, null, null, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', null, null, null, null);

-- ----------------------------
-- Table structure for `act_hi_taskinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO `act_hi_taskinst` VALUES ('1308406304594866177', '2', 'formal:1:1295553082574471169', null, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406300706746370', '1308406301486886914', null, null, null, null, null, '填写申请单', null, null, null, '1265476890672672808', '2020-09-22 22:02:26.616', null, '2020-09-22 22:02:29.074', '2458', null, '50', null, null, null, '', '2020-09-22 22:02:29.074');
INSERT INTO `act_hi_taskinst` VALUES ('1308406317274247169', '2', 'formal:1:1295553082574471169', null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406300706746370', '1308406301486886914', null, null, null, null, null, '部门经理审批', null, null, null, '1275735541155614721', '2020-09-22 22:02:29.653', null, '2020-09-22 22:08:34.938', '365285', null, '50', null, null, null, '', '2020-09-22 22:08:34.938');
INSERT INTO `act_hi_taskinst` VALUES ('1308406620056858626', '2', 'travel:1:1304341427379126274', null, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406613064953858', '1308406613807345665', null, null, null, null, null, '填写申请单', null, null, null, '1265476890672672808', '2020-09-22 22:03:41.839', null, '2020-09-22 22:03:44.382', '2543', null, '50', null, null, null, '', '2020-09-22 22:03:44.382');
INSERT INTO `act_hi_taskinst` VALUES ('1308406633172447233', '1', 'travel:1:1304341427379126274', null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406613064953858', '1308406613807345665', null, null, null, null, null, '经理审批', null, null, null, '1275735541155614721', '2020-09-22 22:03:44.966', null, null, null, null, '50', null, null, null, '', '2020-09-22 22:03:45.025');
INSERT INTO `act_hi_taskinst` VALUES ('1308406822629158913', '2', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406818585849858', '1308406819361796097', null, null, null, null, null, '填写申请单', null, null, null, '1265476890672672808', '2020-09-22 22:04:30.136', null, '2020-09-22 22:04:32.549', '2413', null, '50', null, null, null, '', '2020-09-22 22:04:32.549');
INSERT INTO `act_hi_taskinst` VALUES ('1308406835233042433', '1', 'leave:1:1294922085572947969', null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406818585849858', '1308406819361796097', null, null, null, null, null, '老俞审批', null, null, null, '1280700700074041345', '2020-09-22 22:04:33.140', null, null, null, null, '50', null, null, null, '', '2020-09-22 22:04:33.200');
INSERT INTO `act_hi_taskinst` VALUES ('1308407851600982018', '4', 'formal:1:1295553082574471169', null, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308406300706746370', '1308406301486886914', null, null, null, null, null, '主管审批', null, null, null, '1280709549107552257', '2020-09-22 22:08:35.463', null, null, null, null, '50', '2020-09-24 00:00:00.000', null, null, '', '2020-09-22 22:08:39.941');
INSERT INTO `act_hi_taskinst` VALUES ('1308583526312177666', '2', 'formal:1:1295553082574471169', null, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583522503749633', '1308583523304861698', null, null, null, null, null, '填写申请单', null, null, null, '1275735541155614721', '2020-09-23 09:46:39.555', null, '2020-09-23 09:46:42.036', '2481', null, '50', null, null, null, '', '2020-09-23 09:46:42.036');
INSERT INTO `act_hi_taskinst` VALUES ('1308583539075444738', '2', 'formal:1:1295553082574471169', null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583522503749633', '1308583523304861698', null, null, null, null, null, '部门经理审批', null, null, null, '1275735541155614721', '2020-09-23 09:46:42.622', null, '2020-09-23 09:46:45.108', '2486', null, '50', null, null, null, '', '2020-09-23 09:46:45.108');
INSERT INTO `act_hi_taskinst` VALUES ('1308583551935180802', '1', 'formal:1:1295553082574471169', null, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583522503749633', '1308583523304861698', null, null, null, null, null, '主管审批', null, null, null, '1280709549107552257', '2020-09-23 09:46:45.688', null, null, null, null, '50', null, null, null, '', '2020-09-23 09:46:45.746');
INSERT INTO `act_hi_taskinst` VALUES ('1308586281105842178', '2', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586276353695745', '1308586277171585026', null, null, null, null, null, '填写申请单', null, null, null, '1275735541155614721', '2020-09-23 09:57:36.347', null, '2020-09-23 09:57:38.539', '2192', null, '50', null, null, null, '', '2020-09-23 09:57:38.539');
INSERT INTO `act_hi_taskinst` VALUES ('1308586292422074369', '1', 'leave:1:1294922085572947969', null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586276353695745', '1308586277171585026', null, null, null, null, null, '老俞审批', null, null, null, '1280700700074041345', '2020-09-23 09:57:39.070', null, null, null, null, '50', null, null, null, '', '2020-09-23 09:57:39.129');
INSERT INTO `act_hi_taskinst` VALUES ('1308586690956451842', '2', 'travel:1:1304341427379126274', null, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586685709377538', '1308586686443380737', null, null, null, null, null, '填写申请单', null, null, null, '1275735541155614721', '2020-09-23 09:59:14.085', null, '2020-09-23 09:59:16.313', '2228', null, '50', null, null, null, '', '2020-09-23 09:59:16.313');
INSERT INTO `act_hi_taskinst` VALUES ('1308586702457233410', '2', 'travel:1:1304341427379126274', null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586685709377538', '1308586686443380737', null, null, null, null, null, '经理审批', null, null, null, '1275735541155614721', '2020-09-23 09:59:16.831', null, '2020-09-23 09:59:18.982', '2151', null, '50', null, null, null, '', '2020-09-23 09:59:18.982');
INSERT INTO `act_hi_taskinst` VALUES ('1308586716768198657', '1', 'travel:1:1304341427379126274', null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714415194113', null, null, null, null, null, '领导会签', null, null, null, '1275735541155614721', '2020-09-23 09:59:20.244', null, null, null, null, '50', null, null, null, '', '2020-09-23 09:59:20.300');
INSERT INTO `act_hi_taskinst` VALUES ('1308586718148124673', '1', 'travel:1:1304341427379126274', null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714654269441', null, null, null, null, null, '领导会签', null, null, null, '1280700700074041345', '2020-09-23 09:59:20.572', null, null, null, null, '50', null, null, null, '', '2020-09-23 09:59:20.629');
INSERT INTO `act_hi_taskinst` VALUES ('1308586719393832961', '1', 'travel:1:1304341427379126274', null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714893344770', null, null, null, null, null, '领导会签', null, null, null, '1280709549107552257', '2020-09-23 09:59:20.867', null, null, null, null, '50', null, null, null, '', '2020-09-23 09:59:20.927');
INSERT INTO `act_hi_taskinst` VALUES ('1308587457004134402', '2', 'travel:1:1304341427379126274', null, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587451853529089', '1308587452633669633', null, null, null, null, null, '填写申请单', null, null, null, '1280700700074041345', '2020-09-23 10:02:16.728', null, '2020-09-23 10:02:18.956', '2228', null, '50', null, null, null, '', '2020-09-23 10:02:18.956');
INSERT INTO `act_hi_taskinst` VALUES ('1308587468509110274', '1', 'travel:1:1304341427379126274', null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587451853529089', '1308587452633669633', null, null, null, null, null, '经理审批', null, null, null, '1275735541155614721', '2020-09-23 10:02:19.471', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:02:19.531');
INSERT INTO `act_hi_taskinst` VALUES ('1308587554144215042', '2', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587550507753474', '1308587551300476930', null, null, null, null, null, '填写申请单', null, null, null, '1280700700074041345', '2020-09-23 10:02:39.881', null, '2020-09-23 10:02:41.999', '2118', null, '50', null, null, null, '', '2020-09-23 10:02:41.999');
INSERT INTO `act_hi_taskinst` VALUES ('1308587565158457345', '2', 'leave:1:1294922085572947969', null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587550507753474', '1308587551300476930', null, null, null, null, null, '老俞审批', null, null, null, '1280700700074041345', '2020-09-23 10:02:42.515', null, '2020-09-23 10:02:44.685', '2170', null, '50', null, null, null, '', '2020-09-23 10:02:44.685');
INSERT INTO `act_hi_taskinst` VALUES ('1308587576432746498', '1', 'leave:1:1294922085572947969', null, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587550507753474', '1308587551300476930', null, null, null, null, null, '宝山审批', null, null, null, '1275735541155614721', '2020-09-23 10:02:45.202', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:02:45.260');
INSERT INTO `act_hi_taskinst` VALUES ('1308587716329562114', '2', 'formal:1:1295553082574471169', null, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587712978313218', '1308587713737482242', null, null, null, null, null, '填写申请单', null, null, null, '1280700700074041345', '2020-09-23 10:03:18.555', null, '2020-09-23 10:03:20.667', '2112', null, '50', null, null, null, '', '2020-09-23 10:03:20.667');
INSERT INTO `act_hi_taskinst` VALUES ('1308587727377358849', '1', 'formal:1:1295553082574471169', null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587712978313218', '1308587713737482242', null, null, null, null, null, '部门经理审批', null, null, null, '1275735541155614721', '2020-09-23 10:03:21.190', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:03:21.248');
INSERT INTO `act_hi_taskinst` VALUES ('1308588722266267649', '2', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588718357176322', '1308588719162482690', null, null, null, null, null, '填写申请单', null, null, null, '1280709549107552257', '2020-09-23 10:07:18.386', null, '2020-09-23 10:07:20.807', '2421', null, '50', null, null, null, '', '2020-09-23 10:07:20.807');
INSERT INTO `act_hi_taskinst` VALUES ('1308588734824013825', '1', 'leave:1:1294922085572947969', null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588718357176322', '1308588719162482690', null, null, null, null, null, '老俞审批', null, null, null, '1280700700074041345', '2020-09-23 10:07:21.383', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:07:21.443');
INSERT INTO `act_hi_taskinst` VALUES ('1308588945399046146', '2', 'formal:1:1295553082574471169', null, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588941628366850', '1308588942400118785', null, null, null, null, null, '填写申请单', null, null, null, '1280709549107552257', '2020-09-23 10:08:11.586', null, '2020-09-23 10:08:13.983', '2397', null, '50', null, null, null, '', '2020-09-23 10:08:13.983');
INSERT INTO `act_hi_taskinst` VALUES ('1308588957851934722', '1', 'formal:1:1295553082574471169', null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588941628366850', '1308588942400118785', null, null, null, null, null, '部门经理审批', null, null, null, '1275735541155614721', '2020-09-23 10:08:14.558', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:08:14.616');
INSERT INTO `act_hi_taskinst` VALUES ('1308589273519448066', '2', 'travel:1:1304341427379126274', null, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589267949412354', '1308589268750524417', null, null, null, null, null, '填写申请单', null, null, null, '1280709549107552257', '2020-09-23 10:09:29.817', null, '2020-09-23 10:09:32.321', '2504', null, '50', null, null, null, '', '2020-09-23 10:09:32.321');
INSERT INTO `act_hi_taskinst` VALUES ('1308589286484041730', '1', 'travel:1:1304341427379126274', null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589267949412354', '1308589268750524417', null, null, null, null, null, '经理审批', null, null, null, '1275735541155614721', '2020-09-23 10:09:32.897', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:09:32.969');
INSERT INTO `act_hi_taskinst` VALUES ('1308590492497436673', '2', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308590489553035265', null, null, null, null, null, '填写申请单', null, null, null, '1265476890672672808', '2020-09-23 10:14:20.444', null, '2020-09-23 10:14:22.567', '2123', null, '50', null, null, null, '', '2020-09-23 10:14:22.567');
INSERT INTO `act_hi_taskinst` VALUES ('1308590503566204930', '2', 'leave:1:1294922085572947969', null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590488798060546', '1308590489553035265', null, null, null, null, null, '老俞审批', null, null, null, '1280700700074041345', '2020-09-23 10:14:23.083', null, '2020-09-23 10:18:24.604', '241521', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '50', null, null, null, '', '2020-09-23 10:18:24.604');
INSERT INTO `act_hi_taskinst` VALUES ('1308591518118010881', '1', 'leave:1:1294922085572947969', null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308591517363036162', null, null, null, null, null, '填写申请单', null, null, null, '1265476890672672808', '2020-09-23 10:18:24.972', null, null, null, null, '50', null, null, null, '', '2020-09-23 10:18:25.090');

-- ----------------------------
-- Table structure for `act_hi_tsk_log`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_tsk_log`;
CREATE TABLE `act_hi_tsk_log` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_tsk_log
-- ----------------------------

-- ----------------------------
-- Table structure for `act_hi_varinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO `act_hi_varinst` VALUES ('1308406300954210305', '0', '1308406300706746370', '1308406300706746370', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1265476890672672808', null, '2020-09-22 22:02:25.822', '2020-09-22 22:02:25.822');
INSERT INTO `act_hi_varinst` VALUES ('1308406302497714177', '1', '1308406300706746370', '1308406300706746370', null, 'formData', 'string', null, null, null, null, null, null, '{\"applyUserName\":\"超级管理员\",\"appyDate\":\"2020-09-22\",\"applyDept\":\"总公司\",\"applyPosition\":\"老总\",\"entryDate\":\"2020-09-22\",\"formalDate\":\"2020-09-22\"}', null, '2020-09-22 22:02:26.186', '2020-09-22 22:08:34.704');
INSERT INTO `act_hi_varinst` VALUES ('1308406613316612097', '0', '1308406613064953858', '1308406613064953858', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1265476890672672808', null, '2020-09-22 22:03:40.291', '2020-09-22 22:03:40.291');
INSERT INTO `act_hi_varinst` VALUES ('1308406614793007106', '0', '1308406613064953858', '1308406613064953858', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"dept\":\"总公司\",\"travelDate\":[\"2020-09-01\",\"2020-09-22\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"成都\",\"traffic\":\"飞机\",\"money\":1000,\"key\":1600783367583},{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"火车\",\"money\":800,\"key\":1600783379936},{\"startPlace\":\"昆明\",\"endPlace\":\"西双版纳\",\"traffic\":\"汽车\",\"money\":320,\"key\":1600783388839},{\"startPlace\":\"西双版纳\",\"endPlace\":\"北京\",\"traffic\":\"飞机\",\"money\":1600,\"key\":1600783402408}]}', null, '2020-09-22 22:03:40.645', '2020-09-22 22:03:40.645');
INSERT INTO `act_hi_varinst` VALUES ('1308406617540276225', '0', '1308406613064953858', '1308406613064953858', null, 'pers', 'serializable', null, null, null, '1308406617791934466', null, null, null, null, '2020-09-22 22:03:41.300', '2020-09-22 22:03:41.300');
INSERT INTO `act_hi_varinst` VALUES ('1308406618278473729', '0', '1308406613064953858', '1308406613064953858', null, 'num', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-22 22:03:41.476', '2020-09-22 22:03:41.476');
INSERT INTO `act_hi_varinst` VALUES ('1308406818841702402', '0', '1308406818585849858', '1308406818585849858', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1265476890672672808', null, '2020-09-22 22:04:29.294', '2020-09-22 22:04:29.294');
INSERT INTO `act_hi_varinst` VALUES ('1308406820372623362', '0', '1308406818585849858', '1308406818585849858', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-22\",\"2020-09-25\"],\"type\":\"1\",\"remark\":\"心情不好，想跳三天舞\"}', null, '2020-09-22 22:04:29.658', '2020-09-22 22:04:29.658');
INSERT INTO `act_hi_varinst` VALUES ('1308583522767990785', '0', '1308583522503749633', '1308583522503749633', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1275735541155614721', null, '2020-09-23 09:46:38.793', '2020-09-23 09:46:38.793');
INSERT INTO `act_hi_varinst` VALUES ('1308583524093390850', '0', '1308583522503749633', '1308583522503749633', null, 'formData', 'string', null, null, null, null, null, null, '{\"applyUserName\":\"俞宝山\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"前端开发工程师\",\"entryDate\":\"2020-09-09\",\"formalDate\":\"2020-09-23\"}', null, '2020-09-23 09:46:39.108', '2020-09-23 09:46:39.108');
INSERT INTO `act_hi_varinst` VALUES ('1308586276622131202', '0', '1308586276353695745', '1308586276353695745', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1275735541155614721', null, '2020-09-23 09:57:35.365', '2020-09-23 09:57:35.365');
INSERT INTO `act_hi_varinst` VALUES ('1308586277955919874', '0', '1308586276353695745', '1308586276353695745', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"俞宝山\",\"deptName\":\"研发部\",\"time\":[\"2020-09-23\",\"2020-09-24\"],\"type\":\"1\",\"remark\":\"产品要上线了，请求回家跳一天舞\"}', null, '2020-09-23 09:57:35.679', '2020-09-23 09:57:35.679');
INSERT INTO `act_hi_varinst` VALUES ('1308586685948452865', '0', '1308586685709377538', '1308586685709377538', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1275735541155614721', null, '2020-09-23 09:59:12.952', '2020-09-23 09:59:12.952');
INSERT INTO `act_hi_varinst` VALUES ('1308586687177383938', '0', '1308586685709377538', '1308586685709377538', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"俞宝山\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"乌鲁木齐\",\"endPlace\":\"天山\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826323124},{\"startPlace\":\"天山\",\"endPlace\":\"乌鲁木齐\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826343146}]}', null, '2020-09-23 09:59:13.246', '2020-09-23 09:59:13.246');
INSERT INTO `act_hi_varinst` VALUES ('1308586688616030209', '0', '1308586685709377538', '1308586685709377538', null, 'pers', 'serializable', null, null, null, '1308586688863494145', null, null, null, null, '2020-09-23 09:59:13.589', '2020-09-23 09:59:13.589');
INSERT INTO `act_hi_varinst` VALUES ('1308586689337450497', '0', '1308586685709377538', '1308586685709377538', null, 'num', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-23 09:59:13.760', '2020-09-23 09:59:13.760');
INSERT INTO `act_hi_varinst` VALUES ('1308586713685385218', '0', '1308586685709377538', '1308586713228206081', null, 'nrOfInstances', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-23 09:59:19.566', '2020-09-23 09:59:19.566');
INSERT INTO `act_hi_varinst` VALUES ('1308586713928654849', '0', '1308586685709377538', '1308586713228206081', null, 'nrOfCompletedInstances', 'integer', null, null, null, null, null, '0', '0', null, '2020-09-23 09:59:19.624', '2020-09-23 09:59:19.624');
INSERT INTO `act_hi_varinst` VALUES ('1308586714167730178', '0', '1308586685709377538', '1308586713228206081', null, 'nrOfActiveInstances', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-23 09:59:19.680', '2020-09-23 09:59:19.680');
INSERT INTO `act_hi_varinst` VALUES ('1308586715350523905', '0', '1308586685709377538', '1308586714415194113', null, 'per', 'long', null, null, null, null, null, '1275735541155614721', '1275735541155614721', null, '2020-09-23 09:59:19.963', '2020-09-23 09:59:19.963');
INSERT INTO `act_hi_varinst` VALUES ('1308586715593793538', '0', '1308586685709377538', '1308586714654269441', null, 'per', 'long', null, null, null, null, null, '1280700700074041345', '1280700700074041345', null, '2020-09-23 09:59:20.021', '2020-09-23 09:59:20.021');
INSERT INTO `act_hi_varinst` VALUES ('1308586715832868865', '0', '1308586685709377538', '1308586714893344770', null, 'per', 'long', null, null, null, null, null, '1280709549107552257', '1280709549107552257', null, '2020-09-23 09:59:20.078', '2020-09-23 09:59:20.078');
INSERT INTO `act_hi_varinst` VALUES ('1308586716080332801', '0', '1308586685709377538', '1308586714415194113', null, 'loopCounter', 'integer', null, null, null, null, null, '0', '0', null, '2020-09-23 09:59:20.136', '2020-09-23 09:59:20.136');
INSERT INTO `act_hi_varinst` VALUES ('1308586717665779713', '0', '1308586685709377538', '1308586714654269441', null, 'loopCounter', 'integer', null, null, null, null, null, '1', '1', null, '2020-09-23 09:59:20.515', '2020-09-23 09:59:20.515');
INSERT INTO `act_hi_varinst` VALUES ('1308586718903099393', '0', '1308586685709377538', '1308586714893344770', null, 'loopCounter', 'integer', null, null, null, null, null, '2', '2', null, '2020-09-23 09:59:20.809', '2020-09-23 09:59:20.809');
INSERT INTO `act_hi_varinst` VALUES ('1308587452117770241', '0', '1308587451853529089', '1308587451853529089', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280700700074041345', null, '2020-09-23 10:02:15.622', '2020-09-23 10:02:15.622');
INSERT INTO `act_hi_varinst` VALUES ('1308587453568999425', '0', '1308587451853529089', '1308587451853529089', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"老俞\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"石家庄\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826515851},{\"startPlace\":\"石家庄\",\"endPlace\":\"北京\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826526978}]}', null, '2020-09-23 10:02:15.967', '2020-09-23 10:02:15.967');
INSERT INTO `act_hi_varinst` VALUES ('1308587454676295682', '0', '1308587451853529089', '1308587451853529089', null, 'pers', 'serializable', null, null, null, '1308587454923759618', null, null, null, null, '2020-09-23 10:02:16.232', '2020-09-23 10:02:16.232');
INSERT INTO `act_hi_varinst` VALUES ('1308587455368355841', '0', '1308587451853529089', '1308587451853529089', null, 'num', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-23 10:02:16.398', '2020-09-23 10:02:16.398');
INSERT INTO `act_hi_varinst` VALUES ('1308587550784577538', '0', '1308587550507753474', '1308587550507753474', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280700700074041345', null, '2020-09-23 10:02:39.145', '2020-09-23 10:02:39.145');
INSERT INTO `act_hi_varinst` VALUES ('1308587552252583938', '0', '1308587550507753474', '1308587550507753474', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"老俞\",\"deptName\":\"研发部\",\"time\":[\"2020-09-25\",\"2020-09-27\"],\"type\":\"1\",\"remark\":\"回家跳舞\"}', null, '2020-09-23 10:02:39.495', '2020-09-23 10:02:39.495');
INSERT INTO `act_hi_varinst` VALUES ('1308587713229971458', '0', '1308587712978313218', '1308587712978313218', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280700700074041345', null, '2020-09-23 10:03:17.877', '2020-09-23 10:03:17.877');
INSERT INTO `act_hi_varinst` VALUES ('1308587714496651266', '0', '1308587712978313218', '1308587712978313218', null, 'formData', 'string', null, null, null, null, null, null, '{\"applyUserName\":\"老俞\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"主管\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-22\"}', null, '2020-09-23 10:03:18.179', '2020-09-23 10:03:18.179');
INSERT INTO `act_hi_varinst` VALUES ('1308588718629806082', '0', '1308588718357176322', '1308588718357176322', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280709549107552257', null, '2020-09-23 10:07:17.582', '2020-09-23 10:07:17.582');
INSERT INTO `act_hi_varinst` VALUES ('1308588720164921345', '0', '1308588718357176322', '1308588718357176322', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"徐玉祥\",\"deptName\":\"研发部\",\"time\":[\"2020-10-01\",\"2020-10-19\"],\"type\":\"1\",\"remark\":\"国庆逢中秋，必须出去嗨\"}', null, '2020-09-23 10:07:17.947', '2020-09-23 10:07:17.947');
INSERT INTO `act_hi_varinst` VALUES ('1308588941900996610', '0', '1308588941628366850', '1308588941628366850', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280709549107552257', null, '2020-09-23 10:08:10.814', '2020-09-23 10:08:10.814');
INSERT INTO `act_hi_varinst` VALUES ('1308588943423528961', '0', '1308588941628366850', '1308588941628366850', null, 'formData', 'string', null, null, null, null, null, null, '{\"applyUserName\":\"徐玉祥\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"后端开发工程师\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-25\"}', null, '2020-09-23 10:08:11.176', '2020-09-23 10:08:11.176');
INSERT INTO `act_hi_varinst` VALUES ('1308589268226236418', '0', '1308589267949412354', '1308589267949412354', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1280709549107552257', null, '2020-09-23 10:09:28.615', '2020-09-23 10:09:28.615');
INSERT INTO `act_hi_varinst` VALUES ('1308589269815877633', '0', '1308589267949412354', '1308589267949412354', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"徐玉祥\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-10-01\"],\"trafficList\":[{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"飞机\",\"money\":1300,\"key\":1600826934163},{\"startPlace\":\"昆明\",\"endPlace\":\"攀枝花\",\"traffic\":\"火车\",\"money\":400,\"key\":1600826947547},{\"startPlace\":\"攀枝花\",\"endPlace\":\"成都\",\"traffic\":\"火车\",\"money\":1200,\"key\":1600826955187}]}', null, '2020-09-23 10:09:28.995', '2020-09-23 10:09:28.995');
INSERT INTO `act_hi_varinst` VALUES ('1308589271011254273', '0', '1308589267949412354', '1308589267949412354', null, 'pers', 'serializable', null, null, null, '1308589271267106818', null, null, null, null, '2020-09-23 10:09:29.279', '2020-09-23 10:09:29.279');
INSERT INTO `act_hi_varinst` VALUES ('1308589271770423297', '0', '1308589267949412354', '1308589267949412354', null, 'num', 'integer', null, null, null, null, null, '3', '3', null, '2020-09-23 10:09:29.461', '2020-09-23 10:09:29.461');
INSERT INTO `act_hi_varinst` VALUES ('1308590489049718785', '0', '1308590488798060546', '1308590488798060546', null, 'INITIATOR', 'string', null, null, null, null, null, null, '1265476890672672808', null, '2020-09-23 10:14:19.683', '2020-09-23 10:14:19.683');
INSERT INTO `act_hi_varinst` VALUES ('1308590490513530881', '0', '1308590488798060546', '1308590488798060546', null, 'formData', 'string', null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-24\",\"2020-10-14\"],\"type\":\"1\",\"remark\":\"跳舞跳舞跳舞！！！！！！！！！！\"}', null, '2020-09-23 10:14:20.031', '2020-09-23 10:14:20.031');

-- ----------------------------
-- Table structure for `act_id_bytearray`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_bytearray`;
CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_group`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_membership`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`) USING BTREE,
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_priv`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv`;
CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_priv_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv_mapping`;
CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`) USING BTREE,
  KEY `ACT_IDX_PRIV_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_priv_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_property`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_property`;
CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO `act_id_property` VALUES ('schema.version', '6.5.0.6', '1');

-- ----------------------------
-- Table structure for `act_id_token`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_token`;
CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `IP_ADDRESS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_token
-- ----------------------------

-- ----------------------------
-- Table structure for `act_id_user`
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for `act_procdef_info`
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO `act_re_deployment` VALUES ('1294922083219943426', '请假流程', 'kaoqin', null, '', '2020-08-16 17:00:57.678', null, null, null, null);
INSERT INTO `act_re_deployment` VALUES ('1295553080485707777', '转正流程', 'xingzheng', null, '', '2020-08-18 10:48:19.152', null, null, null, null);
INSERT INTO `act_re_deployment` VALUES ('1304341425068064769', '出差流程', 'travel', null, '', '2020-09-11 16:50:03.823', null, null, null, null);

-- ----------------------------
-- Table structure for `act_re_model`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for `act_re_procdef`
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO `act_re_procdef` VALUES ('formal:1:1295553082574471169', '2', 'xingzheng', '转正流程', 'formal', '1', '1295553080485707777', '转正流程.bpmn20.xml', '转正流程.formal.png', '转正流程', '0', '1', '1', '', null, null, null, '0');
INSERT INTO `act_re_procdef` VALUES ('leave:1:1294922085572947969', '4', 'kaoqin', '请假流程', 'leave', '1', '1294922083219943426', '请假流程.bpmn20.xml', '请假流程.leave.png', '请假流程', '0', '1', '1', '', null, null, null, '0');
INSERT INTO `act_re_procdef` VALUES ('travel:1:1304341427379126274', '2', 'travel', '出差流程', 'travel', '1', '1304341425068064769', '出差流程.bpmn20.xml', '出差流程.travel.png', '出差流程', '0', '1', '1', '', null, null, null, '0');

-- ----------------------------
-- Table structure for `act_ru_actinst`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_actinst`;
CREATE TABLE `act_ru_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_START` (`START_TIME_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------
INSERT INTO `act_ru_actinst` VALUES ('1308406301734350850', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:02:26.005', '2020-09-22 22:02:26.318', '313', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406303806337026', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-22 22:02:26.499', '2020-09-22 22:02:26.499', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406304053800962', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:02:26.558', '2020-09-22 22:02:29.247', '2689', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406316305362945', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-22 22:02:29.478', '2020-09-22 22:02:29.478', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406316791902210', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:02:29.595', '2020-09-22 22:08:35.052', '365457', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406614050615297', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:03:40.467', '2020-09-22 22:03:41.535', '1068', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406619301883906', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-22 22:03:41.719', '2020-09-22 22:03:41.719', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406619561930754', '2', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:03:41.780', '2020-09-22 22:03:44.554', '2774', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406632182591490', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-22 22:03:44.789', '2020-09-22 22:03:44.789', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406632677519362', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:03:44.907', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406819621842946', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-22 22:04:29.478', '2020-09-22 22:04:29.827', '349', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406821853212673', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-22 22:04:30.010', '2020-09-22 22:04:30.010', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406822138425345', '2', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:04:30.078', '2020-09-22 22:04:32.721', '2643', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406834209632258', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-22 22:04:32.956', '2020-09-22 22:04:32.956', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308406834738114561', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-22 22:04:33.082', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308407850615320578', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', null, null, null, 'sequenceFlow', null, '2020-09-22 22:08:35.286', '2020-09-22 22:08:35.286', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308407851106054145', '3', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', null, '主管审批', 'userTask', '1280709549107552257', '2020-09-22 22:08:35.404', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583523564908545', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:46:38.981', '2020-09-23 09:46:39.248', '267', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583525452345345', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:39.432', '2020-09-23 09:46:39.432', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583525724975106', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:46:39.496', '2020-09-23 09:46:42.210', '2714', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583538093977602', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:42.445', '2020-09-23 09:46:42.445', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583538588905473', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:46:42.564', '2020-09-23 09:46:45.280', '2716', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583550957907969', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', null, null, null, 'sequenceFlow', null, '2020-09-23 09:46:45.513', '2020-09-23 09:46:45.513', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308583551444447233', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', null, '主管审批', 'userTask', '1280709549107552257', '2020-09-23 09:46:45.629', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586277431631873', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:57:35.554', '2020-09-23 09:57:36.067', '513', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586280283758593', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 09:57:36.234', '2020-09-23 09:57:36.234', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586280539611138', '2', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:57:36.296', '2020-09-23 09:57:38.701', '2405', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586291503521794', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 09:57:38.910', '2020-09-23 09:57:38.910', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586291956506625', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 09:57:39.018', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586686682456065', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 09:59:13.127', '2020-09-23 09:59:13.810', '683', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586690235031554', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:13.975', '2020-09-23 09:59:13.975', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586690486689794', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', null, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:59:14.034', '2020-09-23 09:59:16.461', '2427', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586701551263745', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:16.673', '2020-09-23 09:59:16.673', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586702000054273', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:59:16.780', '2020-09-23 09:59:19.134', '2354', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586712754249730', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', null, null, null, 'sequenceFlow', null, '2020-09-23 09:59:19.344', '2020-09-23 09:59:19.344', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586716319408130', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', null, '领导会签', 'userTask', '1275735541155614721', '2020-09-23 09:59:20.194', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586717904855041', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', null, '领导会签', 'userTask', '1280700700074041345', '2020-09-23 09:59:20.571', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308586719137980418', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', null, '领导会签', 'userTask', '1280709549107552257', '2020-09-23 09:59:20.866', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587452872744962', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:02:15.801', '2020-09-23 10:02:16.449', '648', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587456282714114', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:16.614', '2020-09-23 10:02:16.614', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587456551149569', '2', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:16.678', '2020-09-23 10:02:19.104', '2426', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587467590557698', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:19.311', '2020-09-23 10:02:19.311', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587468056125441', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:19.421', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587551543746561', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:02:39.328', '2020-09-23 10:02:39.612', '284', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587553410211842', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:39.771', '2020-09-23 10:02:39.771', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587553657675778', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:39.830', '2020-09-23 10:02:42.148', '2318', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587564248293378', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:42.356', '2020-09-23 10:02:42.356', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587564709666818', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:02:42.465', '2020-09-23 10:02:44.835', '2370', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587575518388225', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', null, null, null, 'sequenceFlow', null, '2020-09-23 10:02:45.043', '2020-09-23 10:02:45.043', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587575975567361', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', null, '宝山审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:45.151', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587713993334785', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:03:18.057', '2020-09-23 10:03:18.279', '222', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587715612336130', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:03:18.443', '2020-09-23 10:03:18.443', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587715863994370', '2', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', null, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:03:18.504', '2020-09-23 10:03:20.815', '2311', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587726433640449', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:03:21.024', '2020-09-23 10:03:21.024', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308587726920179714', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:03:21.140', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588719409946626', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:07:17.767', '2020-09-23 10:07:18.083', '316', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588721486127106', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:07:18.262', '2020-09-23 10:07:18.262', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588721754562561', '2', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:07:18.327', '2020-09-23 10:07:20.978', '2651', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588733838352385', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:07:21.208', '2020-09-23 10:07:21.208', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588734329085953', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:07:21.325', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588942660165634', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:08:10.995', '2020-09-23 10:08:11.292', '297', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588944648265730', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:08:11.468', '2020-09-23 10:08:11.468', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588944899923970', '2', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:08:11.529', '2020-09-23 10:08:14.154', '2625', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588956883050497', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:08:14.386', '2020-09-23 10:08:14.386', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308588957361201153', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', null, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:08:14.500', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308589269002182657', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:09:28.801', '2020-09-23 10:09:29.518', '717', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308589272768667649', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', null, null, null, 'sequenceFlow', null, '2020-09-23 10:09:29.698', '2020-09-23 10:09:29.698', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308589273020325890', '2', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', null, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:09:29.759', '2020-09-23 10:09:32.491', '2732', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308589285452242945', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', null, null, null, 'sequenceFlow', null, '2020-09-23 10:09:32.722', '2020-09-23 10:09:32.722', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308589285938782210', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', null, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:09:32.839', null, null, null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308590489804693505', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', null, null, '开始', 'startEvent', null, '2020-09-23 10:14:19.862', '2020-09-23 10:14:20.166', '304', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308590491771822082', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', null, null, null, 'sequenceFlow', null, '2020-09-23 10:14:20.331', '2020-09-23 10:14:20.331', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308590492027674626', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:14:20.393', '2020-09-23 10:14:22.715', '2322', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308590502639263745', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', null, null, null, 'sequenceFlow', null, '2020-09-23 10:14:22.924', '2020-09-23 10:14:22.924', '0', null, '');
INSERT INTO `act_ru_actinst` VALUES ('1308590503100637186', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', null, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:14:23.033', '2020-09-23 10:18:24.490', '241457', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO `act_ru_actinst` VALUES ('1308591517623083009', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', null, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:18:24.914', null, null, null, '');

-- ----------------------------
-- Table structure for `act_ru_deadletter_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_deadletter_job`;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_deadletter_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_entitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_entitylink`;
CREATE TABLE `act_ru_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_event_subscr`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`) USING BTREE,
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_execution`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`) USING BTREE,
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO `act_ru_execution` VALUES ('1308406300706746370', '2', '1308406300706746370', null, null, 'formal:1:1295553082574471169', null, '1308406300706746370', null, '1', '0', '1', '0', '0', '1', null, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', 'startEvent1', '2020-09-22 22:02:25.698', '1265476890672672808', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308406301486886914', '3', '1308406300706746370', null, '1308406300706746370', 'formal:1:1295553082574471169', null, '1308406300706746370', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-22 22:02:25.886', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308406613064953858', '2', '1308406613064953858', null, null, 'travel:1:1304341427379126274', null, '1308406613064953858', null, '1', '0', '1', '0', '0', '1', null, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', 'startEvent1', '2020-09-22 22:03:40.172', '1265476890672672808', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308406613807345665', '2', '1308406613064953858', null, '1308406613064953858', 'travel:1:1304341427379126274', null, '1308406613064953858', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-22 22:03:40.349', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308406818585849858', '2', '1308406818585849858', null, null, 'leave:1:1294922085572947969', null, '1308406818585849858', null, '1', '0', '1', '0', '0', '1', null, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', 'startEvent1', '2020-09-22 22:04:29.165', '1265476890672672808', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308406819361796097', '2', '1308406818585849858', null, '1308406818585849858', 'leave:1:1294922085572947969', null, '1308406818585849858', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-22 22:04:29.356', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308583522503749633', '2', '1308583522503749633', null, null, 'formal:1:1295553082574471169', null, '1308583522503749633', null, '1', '0', '1', '0', '0', '1', null, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', 'startEvent1', '2020-09-23 09:46:38.668', '1275735541155614721', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308583523304861698', '3', '1308583522503749633', null, '1308583522503749633', 'formal:1:1295553082574471169', null, '1308583522503749633', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 09:46:38.858', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586276353695745', '2', '1308586276353695745', null, null, 'leave:1:1294922085572947969', null, '1308586276353695745', null, '1', '0', '1', '0', '0', '1', null, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', 'startEvent1', '2020-09-23 09:57:35.235', '1275735541155614721', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586277171585026', '2', '1308586276353695745', null, '1308586276353695745', 'leave:1:1294922085572947969', null, '1308586276353695745', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 09:57:35.430', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586685709377538', '2', '1308586685709377538', null, null, 'travel:1:1304341427379126274', null, '1308586685709377538', null, '1', '0', '1', '0', '0', '1', null, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', 'startEvent1', '2020-09-23 09:59:12.834', '1275735541155614721', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586713228206081', '1', '1308586685709377538', null, '1308586685709377538', 'travel:1:1304341427379126274', null, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '0', '0', '0', '0', '1', '1', null, '', null, null, '2020-09-23 09:59:19.345', null, null, '1', '0', '0', '0', '0', '0', '0', '3', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586714415194113', '1', '1308586685709377538', null, '1308586713228206081', 'travel:1:1304341427379126274', null, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 09:59:19.680', null, null, '1', '0', '1', '0', '0', '0', '0', '2', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586714654269441', '1', '1308586685709377538', null, '1308586713228206081', 'travel:1:1304341427379126274', null, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 09:59:19.739', null, null, '1', '0', '1', '0', '0', '0', '0', '2', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308586714893344770', '1', '1308586685709377538', null, '1308586713228206081', 'travel:1:1304341427379126274', null, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 09:59:19.796', null, null, '1', '0', '1', '0', '0', '0', '0', '2', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587451853529089', '2', '1308587451853529089', null, null, 'travel:1:1304341427379126274', null, '1308587451853529089', null, '1', '0', '1', '0', '0', '1', null, '', '老俞在2020-09-23 10:02:18发起了出差流程', 'startEvent1', '2020-09-23 10:02:15.495', '1280700700074041345', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587452633669633', '2', '1308587451853529089', null, '1308587451853529089', 'travel:1:1304341427379126274', null, '1308587451853529089', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:02:15.684', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587550507753474', '2', '1308587550507753474', null, null, 'leave:1:1294922085572947969', null, '1308587550507753474', null, '1', '0', '1', '0', '0', '1', null, '', '老俞在2020-09-23 10:02:41发起了请假流程', 'startEvent1', '2020-09-23 10:02:39.011', '1280700700074041345', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587551300476930', '3', '1308587550507753474', null, '1308587550507753474', 'leave:1:1294922085572947969', null, '1308587550507753474', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:02:39.207', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587712978313218', '2', '1308587712978313218', null, null, 'formal:1:1295553082574471169', null, '1308587712978313218', null, '1', '0', '1', '0', '0', '1', null, '', '老俞在2020-09-23 10:03:20发起了转正流程', 'startEvent1', '2020-09-23 10:03:17.754', '1280700700074041345', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308587713737482242', '2', '1308587712978313218', null, '1308587712978313218', 'formal:1:1295553082574471169', null, '1308587712978313218', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:03:17.938', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308588718357176322', '2', '1308588718357176322', null, null, 'leave:1:1294922085572947969', null, '1308588718357176322', null, '1', '0', '1', '0', '0', '1', null, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', 'startEvent1', '2020-09-23 10:07:17.446', '1280709549107552257', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308588719162482690', '2', '1308588718357176322', null, '1308588718357176322', 'leave:1:1294922085572947969', null, '1308588718357176322', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:07:17.645', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308588941628366850', '2', '1308588941628366850', null, null, 'formal:1:1295553082574471169', null, '1308588941628366850', null, '1', '0', '1', '0', '0', '1', null, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', 'startEvent1', '2020-09-23 10:08:10.679', '1280709549107552257', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308588942400118785', '2', '1308588941628366850', null, '1308588941628366850', 'formal:1:1295553082574471169', null, '1308588941628366850', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:08:10.874', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308589267949412354', '2', '1308589267949412354', null, null, 'travel:1:1304341427379126274', null, '1308589267949412354', null, '1', '0', '1', '0', '0', '1', null, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', 'startEvent1', '2020-09-23 10:09:28.481', '1280709549107552257', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308589268750524417', '2', '1308589267949412354', null, '1308589267949412354', 'travel:1:1304341427379126274', null, '1308589267949412354', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:09:28.679', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308590488798060546', '2', '1308590488798060546', null, null, 'leave:1:1294922085572947969', null, '1308590488798060546', null, '1', '0', '1', '0', '0', '1', null, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', 'startEvent1', '2020-09-23 10:14:19.559', '1265476890672672808', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `act_ru_execution` VALUES ('1308591517363036162', '1', '1308590488798060546', null, '1308590488798060546', 'leave:1:1294922085572947969', null, '1308590488798060546', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1', '0', '0', '0', '0', '1', null, '', null, null, '2020-09-23 10:18:24.721', null, null, '1', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `act_ru_history_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_history_job`;
CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_history_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_identitylink`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO `act_ru_identitylink` VALUES ('1308406301226840066', '1', null, 'starter', '1265476890672672808', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406305358229505', '1', null, 'participant', '1265476890672672808', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406313876860930', '1', null, 'participant', '1265476890672672808', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406318016638977', '1', null, 'participant', '1275735541155614721', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406613555687426', '1', null, 'starter', '1265476890672672808', null, '1308406613064953858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406620824416257', '1', null, 'participant', '1265476890672672808', null, '1308406613064953858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406629749895170', '1', null, 'participant', '1265476890672672808', null, '1308406613064953858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406633906450433', '1', null, 'participant', '1275735541155614721', null, '1308406613064953858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406819105943553', '1', null, 'starter', '1265476890672672808', null, '1308406818585849858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406823371550722', '1', null, 'participant', '1265476890672672808', null, '1308406818585849858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406831776935937', '1', null, 'participant', '1265476890672672808', null, '1308406818585849858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308406836000600066', '1', null, 'participant', '1280700700074041345', null, '1308406818585849858', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308407848664969218', '1', null, 'participant', '1265476890672672808', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308407852334985218', '1', null, 'participant', '1280709549107552257', null, '1308406300706746370', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308583523040620545', '1', null, 'starter', '1275735541155614721', null, '1308583522503749633', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308583527075540994', '1', null, 'participant', '1275735541155614721', null, '1308583522503749633', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308583535636115457', '1', null, 'participant', '1275735541155614721', null, '1308583522503749633', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308583548533600258', '1', null, 'participant', '1275735541155614721', null, '1308583522503749633', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308583552690155522', '1', null, 'participant', '1280709549107552257', null, '1308583522503749633', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586276898955265', '1', null, 'starter', '1275735541155614721', null, '1308586276353695745', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586281839845377', '1', null, 'participant', '1275735541155614721', null, '1308586276353695745', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586289326678017', '1', null, 'participant', '1275735541155614721', null, '1308586276353695745', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586293126717442', '1', null, 'participant', '1280700700074041345', null, '1308586276353695745', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586686191722498', '1', null, 'starter', '1275735541155614721', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586691669483521', '1', null, 'participant', '1275735541155614721', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586699412168705', '1', null, 'participant', '1275735541155614721', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586710615154689', '1', null, 'participant', '1275735541155614721', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586718647246849', '1', null, 'participant', '1280700700074041345', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308586719880372226', '1', null, 'participant', '1280709549107552257', null, '1308586685709377538', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587452382011393', '1', null, 'starter', '1280700700074041345', null, '1308587451853529089', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587457721360385', '1', null, 'participant', '1280700700074041345', null, '1308587451853529089', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587465472434177', '1', null, 'participant', '1280700700074041345', null, '1308587451853529089', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587469213753345', '1', null, 'participant', '1275735541155614721', null, '1308587451853529089', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587551040430081', '1', null, 'starter', '1280700700074041345', null, '1308587550507753474', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587554878218241', '1', null, 'participant', '1280700700074041345', null, '1308587550507753474', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587562130169857', '1', null, 'participant', '1280700700074041345', null, '1308587550507753474', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587573337350145', '1', null, 'participant', '1280700700074041345', null, '1308587550507753474', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587577120612354', '1', null, 'participant', '1275735541155614721', null, '1308587550507753474', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587713485824002', '1', null, 'starter', '1280700700074041345', null, '1308587712978313218', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587717034205185', '1', null, 'participant', '1280700700074041345', null, '1308587712978313218', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587724307128321', '1', null, 'participant', '1280700700074041345', null, '1308587712978313218', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308587728090390529', '1', null, 'participant', '1275735541155614721', null, '1308587712978313218', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588718894047233', '1', null, 'starter', '1280709549107552257', null, '1308588718357176322', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588723096739842', '1', null, 'participant', '1280709549107552257', null, '1308588718357176322', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588731435016194', '1', null, 'participant', '1280709549107552257', null, '1308588718357176322', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588735608348674', '1', null, 'participant', '1280700700074041345', null, '1308588718357176322', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588942156849153', '1', null, 'starter', '1280709549107552257', null, '1308588941628366850', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588946162409474', '1', null, 'participant', '1280709549107552257', null, '1308588941628366850', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588954462937089', '1', null, 'participant', '1280709549107552257', null, '1308588941628366850', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308588958577549314', '1', null, 'participant', '1275735541155614721', null, '1308588941628366850', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308589268490477570', '1', null, 'starter', '1280709549107552257', null, '1308589267949412354', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308589274274422785', '1', null, 'participant', '1280709549107552257', null, '1308589267949412354', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308589283048906753', '1', null, 'participant', '1280709549107552257', null, '1308589267949412354', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308589287243210754', '1', null, 'participant', '1275735541155614721', null, '1308589267949412354', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308590489305571329', '1', null, 'starter', '1265476890672672808', null, '1308590488798060546', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308590493223051265', '1', null, 'participant', '1265476890672672808', null, '1308590488798060546', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308590500516945922', '1', null, 'participant', '1265476890672672808', null, '1308590488798060546', null, null, null, null, null);
INSERT INTO `act_ru_identitylink` VALUES ('1308590504275042305', '1', null, 'participant', '1280700700074041345', null, '1308590488798060546', null, null, null, null, null);

-- ----------------------------
-- Table structure for `act_ru_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_suspended_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_suspended_job`;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_suspended_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_task`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`) USING BTREE,
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO `act_ru_task` VALUES ('1308406633172447233', '1', '1308406613807345665', '1308406613064953858', 'travel:1:1304341427379126274', null, null, null, null, null, null, '经理审批', null, null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', null, '1275735541155614721', null, '50', '2020-09-22 22:03:44.966', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308406835233042433', '1', '1308406819361796097', '1308406818585849858', 'leave:1:1294922085572947969', null, null, null, null, null, null, '老俞审批', null, null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', null, '1280700700074041345', null, '50', '2020-09-22 22:04:33.140', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308407851600982018', '4', '1308406301486886914', '1308406300706746370', 'formal:1:1295553082574471169', null, null, null, null, null, null, '主管审批', null, null, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', null, '1280709549107552257', null, '50', '2020-09-22 22:08:35.463', '2020-09-24 00:00:00.000', null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308583551935180802', '1', '1308583523304861698', '1308583522503749633', 'formal:1:1295553082574471169', null, null, null, null, null, null, '主管审批', null, null, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', null, '1280709549107552257', null, '50', '2020-09-23 09:46:45.688', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308586292422074369', '1', '1308586277171585026', '1308586276353695745', 'leave:1:1294922085572947969', null, null, null, null, null, null, '老俞审批', null, null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', null, '1280700700074041345', null, '50', '2020-09-23 09:57:39.070', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308586716768198657', '1', '1308586714415194113', '1308586685709377538', 'travel:1:1304341427379126274', null, null, null, null, null, null, '领导会签', null, null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', null, '1275735541155614721', null, '50', '2020-09-23 09:59:20.244', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308586718148124673', '1', '1308586714654269441', '1308586685709377538', 'travel:1:1304341427379126274', null, null, null, null, null, null, '领导会签', null, null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', null, '1280700700074041345', null, '50', '2020-09-23 09:59:20.572', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308586719393832961', '1', '1308586714893344770', '1308586685709377538', 'travel:1:1304341427379126274', null, null, null, null, null, null, '领导会签', null, null, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', null, '1280709549107552257', null, '50', '2020-09-23 09:59:20.867', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308587468509110274', '1', '1308587452633669633', '1308587451853529089', 'travel:1:1304341427379126274', null, null, null, null, null, null, '经理审批', null, null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', null, '1275735541155614721', null, '50', '2020-09-23 10:02:19.471', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308587576432746498', '1', '1308587551300476930', '1308587550507753474', 'leave:1:1294922085572947969', null, null, null, null, null, null, '宝山审批', null, null, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', null, '1275735541155614721', null, '50', '2020-09-23 10:02:45.202', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308587727377358849', '1', '1308587713737482242', '1308587712978313218', 'formal:1:1295553082574471169', null, null, null, null, null, null, '部门经理审批', null, null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', null, '1275735541155614721', null, '50', '2020-09-23 10:03:21.190', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308588734824013825', '1', '1308588719162482690', '1308588718357176322', 'leave:1:1294922085572947969', null, null, null, null, null, null, '老俞审批', null, null, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', null, '1280700700074041345', null, '50', '2020-09-23 10:07:21.383', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308588957851934722', '1', '1308588942400118785', '1308588941628366850', 'formal:1:1295553082574471169', null, null, null, null, null, null, '部门经理审批', null, null, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', null, '1275735541155614721', null, '50', '2020-09-23 10:08:14.558', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308589286484041730', '1', '1308589268750524417', '1308589267949412354', 'travel:1:1304341427379126274', null, null, null, null, null, null, '经理审批', null, null, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', null, '1275735541155614721', null, '50', '2020-09-23 10:09:32.897', null, null, '1', '', null, null, '1', '0', '0', '0');
INSERT INTO `act_ru_task` VALUES ('1308591518118010881', '1', '1308591517363036162', '1308590488798060546', 'leave:1:1294922085572947969', null, null, null, null, null, null, '填写申请单', null, null, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', null, '1265476890672672808', null, '50', '2020-09-23 10:18:24.972', null, null, '1', '', null, null, '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `act_ru_timer_job`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_timer_job`;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_timer_job
-- ----------------------------

-- ----------------------------
-- Table structure for `act_ru_variable`
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`) USING BTREE,
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO `act_ru_variable` VALUES ('1308406300954210305', '1', 'string', 'INITIATOR', '1308406300706746370', '1308406300706746370', null, null, null, null, null, null, null, '1265476890672672808', null);
INSERT INTO `act_ru_variable` VALUES ('1308406302497714177', '1', 'string', 'formData', '1308406300706746370', '1308406300706746370', null, null, null, null, null, null, null, '{\"applyUserName\":\"超级管理员\",\"appyDate\":\"2020-09-22\",\"applyDept\":\"总公司\",\"applyPosition\":\"老总\",\"entryDate\":\"2020-09-22\",\"formalDate\":\"2020-09-22\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308406613316612097', '1', 'string', 'INITIATOR', '1308406613064953858', '1308406613064953858', null, null, null, null, null, null, null, '1265476890672672808', null);
INSERT INTO `act_ru_variable` VALUES ('1308406614793007106', '1', 'string', 'formData', '1308406613064953858', '1308406613064953858', null, null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"dept\":\"总公司\",\"travelDate\":[\"2020-09-01\",\"2020-09-22\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"成都\",\"traffic\":\"飞机\",\"money\":1000,\"key\":1600783367583},{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"火车\",\"money\":800,\"key\":1600783379936},{\"startPlace\":\"昆明\",\"endPlace\":\"西双版纳\",\"traffic\":\"汽车\",\"money\":320,\"key\":1600783388839},{\"startPlace\":\"西双版纳\",\"endPlace\":\"北京\",\"traffic\":\"飞机\",\"money\":1600,\"key\":1600783402408}]}', null);
INSERT INTO `act_ru_variable` VALUES ('1308406617540276225', '1', 'serializable', 'pers', '1308406613064953858', '1308406613064953858', null, null, null, null, '1308406617288617986', null, null, null, null);
INSERT INTO `act_ru_variable` VALUES ('1308406618278473729', '1', 'integer', 'num', '1308406613064953858', '1308406613064953858', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308406818841702402', '1', 'string', 'INITIATOR', '1308406818585849858', '1308406818585849858', null, null, null, null, null, null, null, '1265476890672672808', null);
INSERT INTO `act_ru_variable` VALUES ('1308406820372623362', '1', 'string', 'formData', '1308406818585849858', '1308406818585849858', null, null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-22\",\"2020-09-25\"],\"type\":\"1\",\"remark\":\"心情不好，想跳三天舞\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308583522767990785', '1', 'string', 'INITIATOR', '1308583522503749633', '1308583522503749633', null, null, null, null, null, null, null, '1275735541155614721', null);
INSERT INTO `act_ru_variable` VALUES ('1308583524093390850', '1', 'string', 'formData', '1308583522503749633', '1308583522503749633', null, null, null, null, null, null, null, '{\"applyUserName\":\"俞宝山\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"前端开发工程师\",\"entryDate\":\"2020-09-09\",\"formalDate\":\"2020-09-23\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308586276622131202', '1', 'string', 'INITIATOR', '1308586276353695745', '1308586276353695745', null, null, null, null, null, null, null, '1275735541155614721', null);
INSERT INTO `act_ru_variable` VALUES ('1308586277955919874', '1', 'string', 'formData', '1308586276353695745', '1308586276353695745', null, null, null, null, null, null, null, '{\"name\":\"俞宝山\",\"deptName\":\"研发部\",\"time\":[\"2020-09-23\",\"2020-09-24\"],\"type\":\"1\",\"remark\":\"产品要上线了，请求回家跳一天舞\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308586685948452865', '1', 'string', 'INITIATOR', '1308586685709377538', '1308586685709377538', null, null, null, null, null, null, null, '1275735541155614721', null);
INSERT INTO `act_ru_variable` VALUES ('1308586687177383938', '1', 'string', 'formData', '1308586685709377538', '1308586685709377538', null, null, null, null, null, null, null, '{\"name\":\"俞宝山\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"乌鲁木齐\",\"endPlace\":\"天山\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826323124},{\"startPlace\":\"天山\",\"endPlace\":\"乌鲁木齐\",\"traffic\":\"火车\",\"money\":340,\"key\":1600826343146}]}', null);
INSERT INTO `act_ru_variable` VALUES ('1308586688616030209', '1', 'serializable', 'pers', '1308586685709377538', '1308586685709377538', null, null, null, null, '1308586688364371969', null, null, null, null);
INSERT INTO `act_ru_variable` VALUES ('1308586689337450497', '1', 'integer', 'num', '1308586685709377538', '1308586685709377538', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308586713685385218', '1', 'integer', 'nrOfInstances', '1308586713228206081', '1308586685709377538', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308586713928654849', '1', 'integer', 'nrOfCompletedInstances', '1308586713228206081', '1308586685709377538', null, null, null, null, null, null, '0', '0', null);
INSERT INTO `act_ru_variable` VALUES ('1308586714167730178', '1', 'integer', 'nrOfActiveInstances', '1308586713228206081', '1308586685709377538', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308586715350523905', '1', 'long', 'per', '1308586714415194113', '1308586685709377538', null, null, null, null, null, null, '1275735541155614721', '1275735541155614721', null);
INSERT INTO `act_ru_variable` VALUES ('1308586715593793538', '1', 'long', 'per', '1308586714654269441', '1308586685709377538', null, null, null, null, null, null, '1280700700074041345', '1280700700074041345', null);
INSERT INTO `act_ru_variable` VALUES ('1308586715832868865', '1', 'long', 'per', '1308586714893344770', '1308586685709377538', null, null, null, null, null, null, '1280709549107552257', '1280709549107552257', null);
INSERT INTO `act_ru_variable` VALUES ('1308586716080332801', '1', 'integer', 'loopCounter', '1308586714415194113', '1308586685709377538', null, null, null, null, null, null, '0', '0', null);
INSERT INTO `act_ru_variable` VALUES ('1308586717665779713', '1', 'integer', 'loopCounter', '1308586714654269441', '1308586685709377538', null, null, null, null, null, null, '1', '1', null);
INSERT INTO `act_ru_variable` VALUES ('1308586718903099393', '1', 'integer', 'loopCounter', '1308586714893344770', '1308586685709377538', null, null, null, null, null, null, '2', '2', null);
INSERT INTO `act_ru_variable` VALUES ('1308587452117770241', '1', 'string', 'INITIATOR', '1308587451853529089', '1308587451853529089', null, null, null, null, null, null, null, '1280700700074041345', null);
INSERT INTO `act_ru_variable` VALUES ('1308587453568999425', '1', 'string', 'formData', '1308587451853529089', '1308587451853529089', null, null, null, null, null, null, null, '{\"name\":\"老俞\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-09-27\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"石家庄\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826515851},{\"startPlace\":\"石家庄\",\"endPlace\":\"北京\",\"traffic\":\"火车\",\"money\":230,\"key\":1600826526978}]}', null);
INSERT INTO `act_ru_variable` VALUES ('1308587454676295682', '1', 'serializable', 'pers', '1308587451853529089', '1308587451853529089', null, null, null, null, '1308587454428831745', null, null, null, null);
INSERT INTO `act_ru_variable` VALUES ('1308587455368355841', '1', 'integer', 'num', '1308587451853529089', '1308587451853529089', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308587550784577538', '1', 'string', 'INITIATOR', '1308587550507753474', '1308587550507753474', null, null, null, null, null, null, null, '1280700700074041345', null);
INSERT INTO `act_ru_variable` VALUES ('1308587552252583938', '1', 'string', 'formData', '1308587550507753474', '1308587550507753474', null, null, null, null, null, null, null, '{\"name\":\"老俞\",\"deptName\":\"研发部\",\"time\":[\"2020-09-25\",\"2020-09-27\"],\"type\":\"1\",\"remark\":\"回家跳舞\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308587713229971458', '1', 'string', 'INITIATOR', '1308587712978313218', '1308587712978313218', null, null, null, null, null, null, null, '1280700700074041345', null);
INSERT INTO `act_ru_variable` VALUES ('1308587714496651266', '1', 'string', 'formData', '1308587712978313218', '1308587712978313218', null, null, null, null, null, null, null, '{\"applyUserName\":\"老俞\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"主管\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-22\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308588718629806082', '1', 'string', 'INITIATOR', '1308588718357176322', '1308588718357176322', null, null, null, null, null, null, null, '1280709549107552257', null);
INSERT INTO `act_ru_variable` VALUES ('1308588720164921345', '1', 'string', 'formData', '1308588718357176322', '1308588718357176322', null, null, null, null, null, null, null, '{\"name\":\"徐玉祥\",\"deptName\":\"研发部\",\"time\":[\"2020-10-01\",\"2020-10-19\"],\"type\":\"1\",\"remark\":\"国庆逢中秋，必须出去嗨\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308588941900996610', '1', 'string', 'INITIATOR', '1308588941628366850', '1308588941628366850', null, null, null, null, null, null, null, '1280709549107552257', null);
INSERT INTO `act_ru_variable` VALUES ('1308588943423528961', '1', 'string', 'formData', '1308588941628366850', '1308588941628366850', null, null, null, null, null, null, null, '{\"applyUserName\":\"徐玉祥\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"后端开发工程师\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-25\"}', null);
INSERT INTO `act_ru_variable` VALUES ('1308589268226236418', '1', 'string', 'INITIATOR', '1308589267949412354', '1308589267949412354', null, null, null, null, null, null, null, '1280709549107552257', null);
INSERT INTO `act_ru_variable` VALUES ('1308589269815877633', '1', 'string', 'formData', '1308589267949412354', '1308589267949412354', null, null, null, null, null, null, null, '{\"name\":\"徐玉祥\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-24\",\"2020-10-01\"],\"trafficList\":[{\"startPlace\":\"成都\",\"endPlace\":\"昆明\",\"traffic\":\"飞机\",\"money\":1300,\"key\":1600826934163},{\"startPlace\":\"昆明\",\"endPlace\":\"攀枝花\",\"traffic\":\"火车\",\"money\":400,\"key\":1600826947547},{\"startPlace\":\"攀枝花\",\"endPlace\":\"成都\",\"traffic\":\"火车\",\"money\":1200,\"key\":1600826955187}]}', null);
INSERT INTO `act_ru_variable` VALUES ('1308589271011254273', '1', 'serializable', 'pers', '1308589267949412354', '1308589267949412354', null, null, null, null, '1308589270763790337', null, null, null, null);
INSERT INTO `act_ru_variable` VALUES ('1308589271770423297', '1', 'integer', 'num', '1308589267949412354', '1308589267949412354', null, null, null, null, null, null, '3', '3', null);
INSERT INTO `act_ru_variable` VALUES ('1308590489049718785', '1', 'string', 'INITIATOR', '1308590488798060546', '1308590488798060546', null, null, null, null, null, null, null, '1265476890672672808', null);
INSERT INTO `act_ru_variable` VALUES ('1308590490513530881', '1', 'string', 'formData', '1308590488798060546', '1308590488798060546', null, null, null, null, null, null, null, '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-24\",\"2020-10-14\"],\"type\":\"1\",\"remark\":\"跳舞跳舞跳舞！！！！！！！！！！\"}', null);

-- ----------------------------
-- Table structure for `flw_button`
-- ----------------------------
DROP TABLE IF EXISTS `flw_button`;
CREATE TABLE `flw_button` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) NOT NULL COMMENT '流程实例id',
  `act_id` varchar(64) NOT NULL COMMENT '活动节点id',
  `act_name` varchar(255) DEFAULT NULL COMMENT '活动节点名称',
  `submit` char(1) DEFAULT NULL COMMENT '提交（Y-是，N-否）',
  `save` char(1) DEFAULT NULL COMMENT '保存（Y-是，N-否）',
  `back` char(1) DEFAULT NULL COMMENT '退回（Y-是，N-否）',
  `turn` char(1) DEFAULT NULL COMMENT '转办（Y-是，N-否）',
  `next` char(1) DEFAULT NULL COMMENT '指定（Y-是，N-否）',
  `entrust` char(1) DEFAULT NULL COMMENT '委托（Y-是，N-否）',
  `end` char(1) DEFAULT NULL COMMENT '终止（Y-是，N-否）',
  `trace` char(1) DEFAULT NULL COMMENT '追踪（Y-是，N-否）',
  `suspend` char(1) DEFAULT NULL COMMENT '挂起（Y-是，N-否）',
  `jump` char(1) DEFAULT NULL COMMENT '跳转（Y-是，N-否）',
  `add_sign` char(1) DEFAULT NULL COMMENT '加签（Y-是，N-否）',
  `delete_sign` char(1) DEFAULT NULL COMMENT '减签（Y-是，N-否）',
  `version` varchar(20) DEFAULT NULL COMMENT '版本',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304342034198446082 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程节点按钮表';

-- ----------------------------
-- Records of flw_button
-- ----------------------------
INSERT INTO `flw_button` VALUES ('1294925235696578561', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '2020-08-16 17:13:29', '1265476890672672808', null, null);
INSERT INTO `flw_button` VALUES ('1294925267078361090', 'leave:1:1294922085572947969', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '宝山审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '2020-08-16 17:13:37', '1265476890672672808', null, null);
INSERT INTO `flw_button` VALUES ('1295542179338616834', 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', null, '2020-08-18 10:05:00', '1265476890672672808', '2020-09-09 20:14:49', '1265476890672672808');
INSERT INTO `flw_button` VALUES ('1295542245906415618', 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', null, '2020-08-18 10:05:16', '1265476890672672808', '2020-09-22 21:17:56', '1265476890672672808');
INSERT INTO `flw_button` VALUES ('1295542270900273153', 'formal:1:1295553082574471169', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '部门经理审批', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', null, '2020-08-18 10:05:22', '1265476890672672808', '2020-08-18 10:06:41', '1265476890672672808');
INSERT INTO `flw_button` VALUES ('1295542365045620738', 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', null, '2020-08-18 10:05:44', '1265476890672672808', '2020-08-18 10:06:52', '1265476890672672808');
INSERT INTO `flw_button` VALUES ('1295542516766179329', 'formal:1:1295553082574471169', 'sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', null, '2020-08-18 10:06:21', '1265476890672672808', null, null);
INSERT INTO `flw_button` VALUES ('1304341611609735169', 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', null, '2020-09-11 16:50:48', '1265476890672672808', '2020-09-22 21:18:55', '1265476890672672808');
INSERT INTO `flw_button` VALUES ('1304341640323940353', 'travel:1:1304341427379126274', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '经理审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', null, '2020-09-11 16:50:55', '1265476890672672808', null, null);
INSERT INTO `flw_button` VALUES ('1304341958755500033', 'travel:1:1304341427379126274', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '领导会签', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', null, '2020-09-11 16:52:11', '1265476890672672808', null, null);
INSERT INTO `flw_button` VALUES ('1304342034198446081', 'travel:1:1304341427379126274', 'sid-6D4A69E7-A765-49EC-94C6-C238AF325027', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', null, '2020-09-11 16:52:29', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `flw_category`
-- ----------------------------
DROP TABLE IF EXISTS `flw_category`;
CREATE TABLE `flw_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1308401074679459842 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程分类表';

-- ----------------------------
-- Records of flw_category
-- ----------------------------
INSERT INTO `flw_category` VALUES ('1290140237082759170', '考勤类', 'kaoqin', '100', '考勤类', '0', '2020-08-03 12:19:37', '1265476890672672808', '2020-08-06 16:18:18', '1265476890672672808');
INSERT INTO `flw_category` VALUES ('1290670559956320258', '行政类', 'xingzheng', '100', '行政类', '0', '2020-08-04 23:26:56', '1265476890672672808', '2020-08-06 16:13:59', '1265476890672672808');
INSERT INTO `flw_category` VALUES ('1308401074679459841', '差旅类', 'travel', '100', '差旅类', '0', '2020-09-22 21:41:40', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `flw_channel_definition`
-- ----------------------------
DROP TABLE IF EXISTS `flw_channel_definition`;
CREATE TABLE `flw_channel_definition` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_channel_definition
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_draft`
-- ----------------------------
DROP TABLE IF EXISTS `flw_draft`;
CREATE TABLE `flw_draft` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) NOT NULL COMMENT '流程定义id',
  `form_json` text NOT NULL COMMENT '表单布局数据',
  `form_data` text NOT NULL COMMENT '表单填写数据',
  `process_name` varchar(255) NOT NULL COMMENT '流程名称',
  `category` varchar(50) NOT NULL COMMENT '分类编码',
  `category_name` varchar(100) NOT NULL COMMENT '分类名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1308589423692308483 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='申请草稿表';

-- ----------------------------
-- Records of flw_draft
-- ----------------------------
INSERT INTO `flw_draft` VALUES ('1308407141660504066', 'travel:1:1304341427379126274', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"超级管理员\",\"dept\":\"总公司\",\"travelDate\":[\"2020-09-10\",\"2020-09-19\"],\"trafficList\":[{\"startPlace\":\"俄罗斯\",\"endPlace\":\"纽约\",\"traffic\":\"飞机\",\"money\":3200,\"key\":1600783500495},{\"startPlace\":\"纽约\",\"endPlace\":\"北京\",\"traffic\":\"飞机\",\"money\":1800,\"key\":1600783512343},{\"startPlace\":\"北京\",\"endPlace\":\"东京\",\"traffic\":\"飞机\",\"money\":1500,\"key\":1600783521559},{\"startPlace\":\"东京\",\"endPlace\":\"大阪\",\"traffic\":\"火车\",\"money\":400,\"key\":1600783534784}]}', '出差申请', 'travel', '差旅类', '2020-09-22 22:05:46', '1265476890672672808', null, null);
INSERT INTO `flw_draft` VALUES ('1308407262112526337', 'leave:1:1294922085572947969', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"超级管理员\",\"deptName\":\"总公司\",\"time\":[\"2020-09-30\",\"2020-10-01\"],\"type\":\"1\",\"remark\":\"放假了，请求回家吃烤肉\"}', '请假申请', 'kaoqin', '考勤类', '2020-09-22 22:06:15', '1265476890672672808', null, null);
INSERT INTO `flw_draft` VALUES ('1308407362373169154', 'formal:1:1295553082574471169', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"applyUserName\":\"超级管理员\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"总公司\",\"applyPosition\":\"老大\",\"entryDate\":\"2020-09-08\",\"formalDate\":\"2020-09-30\"}', '转正申请', 'xingzheng', '行政类', '2020-09-22 22:06:39', '1265476890672672808', null, null);
INSERT INTO `flw_draft` VALUES ('1308586063039782913', 'formal:1:1295553082574471169', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"applyUserName\":\"俞宝山\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"前端开发工程师\",\"entryDate\":\"2020-09-09\",\"formalDate\":\"2020-09-23\"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 09:56:44', '1275735541155614721', null, null);
INSERT INTO `flw_draft` VALUES ('1308586445610639361', 'leave:1:1294922085572947969', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"俞宝山\",\"deptName\":\"研发部\",\"time\":[\"2020-09-24\",\"2020-09-25\"],\"type\":\"1\",\"remark\":\"一天跳舞没跳够，再来一天\"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 09:58:16', '1275735541155614721', null, null);
INSERT INTO `flw_draft` VALUES ('1308586966652248065', 'travel:1:1304341427379126274', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"俞宝山\",\"dept\":\"研发部\",\"travelDate\":[\"2020-10-21\",\"2020-10-29\"],\"trafficList\":[{\"startPlace\":\"乌鲁木齐\",\"endPlace\":\"新加坡\",\"traffic\":\"飞机\",\"money\":1440,\"key\":1600826393108},{\"startPlace\":\"新加坡\",\"endPlace\":\"乌鲁木齐\",\"traffic\":\"飞机\",\"money\":1440,\"key\":1600826411250}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:00:20', '1275735541155614721', null, null);
INSERT INTO `flw_draft` VALUES ('1308587986744729601', 'travel:1:1304341427379126274', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"老俞\",\"dept\":\"研发部\",\"travelDate\":[\"2020-09-30\",\"2020-10-11\"],\"trafficList\":[{\"startPlace\":\"北京\",\"endPlace\":\"青岛\",\"traffic\":\"飞机\",\"money\":1200,\"key\":1600826633299},{\"startPlace\":\"青岛\",\"endPlace\":\"南通\",\"traffic\":\"火车\",\"money\":640,\"key\":1600826646459},{\"startPlace\":\"南通\",\"endPlace\":\"北京\",\"traffic\":\"飞机\",\"money\":1600,\"key\":1600826655203}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:04:23', '1280700700074041345', null, null);
INSERT INTO `flw_draft` VALUES ('1308588109390372865', 'leave:1:1294922085572947969', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"老俞\",\"deptName\":\"研发部\",\"time\":[\"2020-09-25\",\"2020-09-27\"],\"type\":\"1\",\"remark\":\"项目上线，需庆祝\"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 10:04:52', '1280700700074041345', null, null);
INSERT INTO `flw_draft` VALUES ('1308588188574638082', 'formal:1:1295553082574471169', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"applyUserName\":\"老俞\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"主管\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-23\"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 10:05:11', '1280700700074041345', null, null);
INSERT INTO `flw_draft` VALUES ('1308588839165714434', 'leave:1:1294922085572947969', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"徐玉祥\",\"deptName\":\"研发部\",\"time\":[\"2020-09-27\",\"2020-10-20\"],\"type\":\"3\",\"remark\":\"回家结婚\"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 10:07:46', '1280709549107552257', null, null);
INSERT INTO `flw_draft` VALUES ('1308589063913299970', 'formal:1:1295553082574471169', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"applyUserName\":\"徐玉祥\",\"appyDate\":\"2020-09-23\",\"applyDept\":\"研发部\",\"applyPosition\":\"后端开发工程师\",\"entryDate\":\"2020-09-01\",\"formalDate\":\"2020-09-25\"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 10:08:40', '1280709549107552257', null, null);
INSERT INTO `flw_draft` VALUES ('1308589423692308482', 'travel:1:1304341427379126274', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '{\"name\":\"徐玉祥\",\"dept\":\"研发部\",\"travelDate\":[\"2020-10-01\",\"2020-10-23\"],\"trafficList\":[{\"startPlace\":\"成都\",\"endPlace\":\"绵阳\",\"traffic\":\"火车\",\"money\":250,\"key\":1600826986325},{\"startPlace\":\"绵阳\",\"endPlace\":\"成都\",\"traffic\":\"火车\",\"money\":250,\"key\":1600826996492}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:10:06', '1280709549107552257', null, null);

-- ----------------------------
-- Table structure for `flw_event`
-- ----------------------------
DROP TABLE IF EXISTS `flw_event`;
CREATE TABLE `flw_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) NOT NULL COMMENT '流程定义id',
  `act_id` varchar(64) DEFAULT NULL COMMENT '活动节点id',
  `act_name` varchar(255) DEFAULT NULL COMMENT '活动节点名称',
  `node_type` tinyint(4) NOT NULL COMMENT '事件节点类型（字典 1全局 2节点）',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `type` varchar(100) NOT NULL COMMENT '类型（字典 见事件类型字典）',
  `script` text NOT NULL COMMENT '脚本',
  `exec_sort` int(11) NOT NULL COMMENT '执行顺序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304342885814124546 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程事件配置表';

-- ----------------------------
-- Records of flw_event
-- ----------------------------
INSERT INTO `flw_event` VALUES ('1294925374511263745', 'leave:1:1294922085572947969', '', '', '1', '启动时打印一句话', 'PROCESS_STARTED', 'System.out.println(\"这是打印的内容\");', '100', '启动时打印一句话', '2020-08-16 17:14:02', '1265476890672672808', '2020-08-24 09:51:09', '1265476890672672808');
INSERT INTO `flw_event` VALUES ('1295536105399222273', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', '2', '任务完成时打印一句话', 'TASK_COMPLETED', 'System.out.println(\"这是打印的内容\");', '100', '任务完成时打印一句话', '2020-08-18 09:40:52', '1265476890672672808', null, null);
INSERT INTO `flw_event` VALUES ('1304342885814124545', 'travel:1:1304341427379126274', '', '', '1', '流程启动时设置会签人员参数', 'PROCESS_STARTED', 'import cn.hutool.core.collection.CollectionUtil;\nimport com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;\n\nList<Long> userIdList = CollectionUtil.newArrayList();\nuserIdList.add(1275735541155614721);\nuserIdList.add(1280700700074041345);\nuserIdList.add(1280709549107552257);\n\n//调用脚本工具类，给执行实例设置会签人员\nBpmScriptUtil.setVariableForInstance(execution, \"pers\", userIdList);\n//调用脚本工具类，给执行实例设置多实例基数为会签人员数量\nBpmScriptUtil.setVariableForInstance(execution, \"num\", 3);', '100', '流程启动时设置会签人员参数', '2020-09-11 16:55:52', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `flw_event_definition`
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_definition`;
CREATE TABLE `flw_event_definition` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_event_definition
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_event_deployment`
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_deployment`;
CREATE TABLE `flw_event_deployment` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_event_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_event_resource`
-- ----------------------------
DROP TABLE IF EXISTS `flw_event_resource`;
CREATE TABLE `flw_event_resource` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_event_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_ev_databasechangelog`
-- ----------------------------
DROP TABLE IF EXISTS `flw_ev_databasechangelog`;
CREATE TABLE `flw_ev_databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_ev_databasechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_ev_databasechangeloglock`
-- ----------------------------
DROP TABLE IF EXISTS `flw_ev_databasechangeloglock`;
CREATE TABLE `flw_ev_databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_ev_databasechangeloglock
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_form`
-- ----------------------------
DROP TABLE IF EXISTS `flw_form`;
CREATE TABLE `flw_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `form_id` bigint(20) NOT NULL COMMENT '表单id',
  `process_definition_id` varchar(64) NOT NULL COMMENT '流程定义id',
  `act_id` varchar(64) DEFAULT NULL COMMENT '活动节点id',
  `act_name` varchar(255) DEFAULT NULL COMMENT '活动节点名称',
  `node_type` tinyint(4) NOT NULL COMMENT '表单节点类型（字典 1全局 2节点）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1308592009845628930 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程表单配置表';

-- ----------------------------
-- Records of flw_form
-- ----------------------------
INSERT INTO `flw_form` VALUES ('1289833421153099778', '1294922455393120258', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', '3', '2020-08-16 17:43:20', '1265476890672672808', '2020-08-17 20:29:58', '1265476890672672808');
INSERT INTO `flw_form` VALUES ('1295301986463330305', '1294922365303664641', 'leave:1:1294922085572947969', '', '', '1', '2020-08-17 18:10:34', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1295387809110192130', '1294922455393120258', 'leave:1:1294922085572947969', '', '', '2', '2020-08-17 23:51:35', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1295553303433936897', '1295542814805032961', 'formal:1:1295553082574471169', '', '', '1', '2020-08-18 10:49:12', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1295553341874733058', '1295542814805032961', 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', '3', '2020-08-18 10:49:22', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1295553371952087042', '1295542994690342913', 'formal:1:1295553082574471169', '', '', '2', '2020-08-18 10:49:29', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1296623909172662273', '1295542814805032962', 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', '3', '2020-08-21 09:43:25', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1304342082042871810', '1304313274803888130', 'travel:1:1304341427379126274', '', '', '1', '2020-09-11 16:52:41', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1304342120999567362', '1304313274803888130', 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', '3', '2020-09-11 16:52:50', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1304342154944069633', '1304317596870582274', 'travel:1:1304341427379126274', '', '', '2', '2020-09-11 16:52:58', '1265476890672672808', null, null);
INSERT INTO `flw_form` VALUES ('1308592009845628929', '1294922365303664641', 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', '3', '2020-09-23 10:20:22', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `flw_form_resource`
-- ----------------------------
DROP TABLE IF EXISTS `flw_form_resource`;
CREATE TABLE `flw_form_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(50) NOT NULL COMMENT '表单编码',
  `name` varchar(100) NOT NULL COMMENT '表单名称',
  `category` varchar(100) NOT NULL COMMENT '表单分类',
  `form_json` text COMMENT '表单数据',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304317596870582275 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程脚本表';

-- ----------------------------
-- Records of flw_form_resource
-- ----------------------------
INSERT INTO `flw_form_resource` VALUES ('1294922365303664641', 'leaveFormWrite', '请假填写单', 'kaoqin', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680070926\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":false,\"hidden\":false,\"defaultValue\":\"1\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569035169\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '请假填写单', '0', '2020-08-16 17:02:05', '1265476890672672808', '2020-08-18 09:42:32', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1294922455393120258', 'leaveFormRead', '请假只读单', 'kaoqin', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":2,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">请假申请单</p>\"},\"key\":\"html_1597568556394\"}]}]},{\"tds\":[]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597680134338\"},{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"name\",\"key\":\"input_1597568614214\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"deptName\",\"key\":\"input_1597568763728\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"请假时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"time\",\"key\":\"date_1597568665026\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"radio\",\"label\":\"请假类型\",\"icon\":\"icon-danxuan-cuxiantiao\",\"options\":{\"disabled\":true,\"hidden\":false,\"defaultValue\":\"\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"事假\"},{\"value\":\"2\",\"label\":\"病假\"},{\"value\":\"3\",\"label\":\"婚假\"},{\"value\":\"4\",\"label\":\"丧假\"},{\"value\":\"5\",\"label\":\"产假\"},{\"value\":\"6\",\"label\":\"陪产假\"}]},\"model\":\"type\",\"key\":\"radio_1597569102078\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"textarea\",\"label\":\"备注\",\"icon\":\"icon-edit\",\"options\":{\"width\":\"100%\",\"minRows\":4,\"maxRows\":6,\"maxLength\":null,\"defaultValue\":\"\",\"clearable\":false,\"hidden\":false,\"disabled\":true,\"placeholder\":\"请输入\"},\"model\":\"remark\",\"key\":\"textarea_1597568894122\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597568752172\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '请假只读单', '0', '2020-08-16 17:02:27', '1265476890672672808', '2020-08-18 10:41:24', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1295542814805032961', 'formalFormWrite', '转正填写单', 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '转正填写单', '0', '2020-08-18 10:07:32', '1265476890672672808', '2020-08-23 10:06:06', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1295542814805032962', 'formalFormWriteWithAssess', '转正填写单_主管填写', 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '转正填写单_主管填写', '0', '2020-08-18 10:07:32', '1265476890672672808', '2020-08-24 09:35:18', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1295542994690342913', 'formalFormRead', '转正只读单', 'xingzheng', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">转正申请单</p>\"},\"key\":\"html_1597716603199\"}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"基础信息\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716627935\"}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"申请人\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyUserName\",\"key\":\"input_1597716641999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"申请日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"appyDate\",\"key\":\"date_1597716651343\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyDept\",\"key\":\"input_1597716702769\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"职位\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"applyPosition\",\"key\":\"input_1597716704432\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"入职日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"entryDate\",\"key\":\"date_1597716762482\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"原定转正日期\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":false,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"formalDate\",\"key\":\"date_1597716764298\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":4,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"主管意见\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716917249\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价因素\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716936582\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评价要点\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716938115\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"评分\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597716939964\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"勤务态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717056583\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.严格遵守工作制度，有效利用工作时间\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717074899\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA1\",\"key\":\"select_1597717139965\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.对新工作持积极态度\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717087514\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB1\",\"key\":\"select_1597717207246\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.忠于职守、坚守岗位\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717092168\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC1\",\"key\":\"select_1597717210999\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.以协作精神工作，协助上级，配合同事\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597717114348\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD1\",\"key\":\"select_1597717214390\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":4,\"list\":[{\"type\":\"text\",\"label\":\"工作效率\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718178533\"}]},{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"A.工作速度快，不误工期\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718183341\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreA2\",\"key\":\"select_1597718199894\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"B.业务处置得当，经常保持良好成绩\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718189309\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreB2\",\"key\":\"select_1597718202917\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"C.工作方法合理，时间和经费的使用十分有效\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718192222\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreC2\",\"key\":\"select_1597718205853\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"text\",\"label\":\"D.工作中没有半途而废，不了了之和造成后遗症的现象\",\"icon\":\"icon-zihao\",\"options\":{\"textAlign\":\"left\",\"hidden\":false,\"showRequiredMark\":false},\"key\":\"text_1597718195214\"}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"select\",\"label\":\"\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":true,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"1\",\"label\":\"1\"},{\"value\":\"2\",\"label\":\"2\"},{\"value\":\"3\",\"label\":\"3\"},{\"value\":\"4\",\"label\":\"4\"},{\"value\":\"5\",\"label\":\"5\"}],\"showSearch\":false},\"model\":\"scoreD2\",\"key\":\"select_1597718208718\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1597716599116\"}],\"config\":{\"layout\":\"vertical\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '转正只读单', '0', '2020-08-18 10:08:15', '1265476890672672808', '2020-08-24 09:35:51', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1304313274803888130', 'travelWrite', '出差填写单', 'travel', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":false,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":true,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":false,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '出差填写单', '0', '2020-09-11 14:58:12', '1265476890672672808', '2020-09-11 15:14:56', '1265476890672672808');
INSERT INTO `flw_form_resource` VALUES ('1304317596870582274', 'travelRead', '出差只读单', 'travel', '{\"list\":[{\"type\":\"table\",\"label\":\"表格布局\",\"trs\":[{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"html\",\"label\":\"HTML\",\"icon\":\"icon-ai-code\",\"options\":{\"hidden\":false,\"defaultValue\":\"<p style=\\\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\\\">出差申请单</p>\"},\"key\":\"html_1599807751285\"}]}]},{\"tds\":[{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"姓名\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"name\",\"key\":\"input_1599807772599\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]},{\"colspan\":1,\"rowspan\":1,\"list\":[{\"type\":\"input\",\"label\":\"部门\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":true},\"model\":\"dept\",\"key\":\"input_1599807774961\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"date\",\"label\":\"出差时间\",\"icon\":\"icon-calendar\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"rangeDefaultValue\":[],\"range\":true,\"showTime\":false,\"disabled\":true,\"hidden\":false,\"clearable\":false,\"placeholder\":\"请选择\",\"rangePlaceholder\":[\"开始时间\",\"结束时间\"],\"format\":\"YYYY-MM-DD\"},\"model\":\"travelDate\",\"key\":\"date_1599807843566\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}]}]},{\"tds\":[{\"colspan\":2,\"rowspan\":1,\"list\":[{\"type\":\"batch\",\"label\":\"交通费\",\"icon\":\"icon-biaoge\",\"list\":[{\"type\":\"input\",\"label\":\"出发地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"startPlace\",\"key\":\"input_1599807902416\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"input\",\"label\":\"到达地\",\"icon\":\"icon-write\",\"options\":{\"type\":\"text\",\"width\":\"100%\",\"defaultValue\":\"\",\"placeholder\":\"请输入\",\"clearable\":false,\"maxLength\":null,\"hidden\":false,\"disabled\":false},\"model\":\"endPlace\",\"key\":\"input_1599807905299\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"select\",\"label\":\"交通工具\",\"icon\":\"icon-xiala\",\"options\":{\"width\":\"100%\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"hidden\":false,\"placeholder\":\"请选择\",\"dynamicKey\":\"\",\"dynamic\":false,\"options\":[{\"value\":\"飞机\",\"label\":\"飞机\"},{\"value\":\"火车\",\"label\":\"火车\"},{\"value\":\"汽车\",\"label\":\"汽车\"}],\"showSearch\":false},\"model\":\"traffic\",\"key\":\"select_1599807912449\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]},{\"type\":\"number\",\"label\":\"金额\",\"icon\":\"icon-number\",\"options\":{\"width\":\"100%\",\"defaultValue\":0,\"min\":null,\"max\":null,\"precision\":null,\"step\":1,\"hidden\":false,\"disabled\":false,\"placeholder\":\"请输入\"},\"model\":\"money\",\"key\":\"number_1599807922017\",\"rules\":[{\"required\":false,\"message\":\"必填项\"}]}],\"options\":{\"scrollY\":0,\"disabled\":true,\"hidden\":false,\"showLabel\":false,\"hideSequence\":false,\"width\":\"100%\"},\"model\":\"trafficList\",\"key\":\"batch_1599807855999\"}]}]}],\"options\":{\"width\":\"100%\",\"bordered\":true,\"bright\":false,\"small\":true,\"customStyle\":\"\"},\"key\":\"table_1599807746899\"}],\"config\":{\"layout\":\"horizontal\",\"labelCol\":{\"span\":4},\"wrapperCol\":{\"span\":18},\"hideRequiredMark\":false,\"customStyle\":\"\"}}', '出差只读单', '0', '2020-09-11 15:15:23', '1265476890672672808', '2020-09-11 15:16:17', '1265476890672672808');

-- ----------------------------
-- Table structure for `flw_option`
-- ----------------------------
DROP TABLE IF EXISTS `flw_option`;
CREATE TABLE `flw_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(64) NOT NULL COMMENT '流程定义id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题规则',
  `jump_first` char(1) NOT NULL COMMENT '自动完成第一个任务（Y-是，N-否）',
  `smart_complete` char(1) NOT NULL COMMENT '跳过相同处理人（Y-是，N-否）',
  `version` varchar(20) DEFAULT NULL COMMENT '版本',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304341429899902978 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程选项配置表';

-- ----------------------------
-- Records of flw_option
-- ----------------------------
INSERT INTO `flw_option` VALUES ('1294922087854649346', 'leave:1:1294922085572947969', 'user在time发起了title', 'Y', 'Y', null, '2020-08-16 17:00:59', '1265476890672672808', '2020-08-18 00:05:38', '1265476890672672808');
INSERT INTO `flw_option` VALUES ('1295553085309157378', 'formal:1:1295553082574471169', 'user在time发起了title', 'Y', 'Y', null, '2020-08-18 10:48:20', '1265476890672672808', null, null);
INSERT INTO `flw_option` VALUES ('1304341429899902977', 'travel:1:1304341427379126274', null, 'Y', 'Y', null, '2020-09-11 16:50:05', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `flw_ru_batch`
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch`;
CREATE TABLE `flw_ru_batch` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_ru_batch
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_ru_batch_part`
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch_part`;
CREATE TABLE `flw_ru_batch_part` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `FLW_IDX_BATCH_PART` (`BATCH_ID_`) USING BTREE,
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flw_ru_batch_part
-- ----------------------------

-- ----------------------------
-- Table structure for `flw_script`
-- ----------------------------
DROP TABLE IF EXISTS `flw_script`;
CREATE TABLE `flw_script` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '脚本名称',
  `type` tinyint(4) NOT NULL COMMENT '脚本类别（字典 1流程脚本 2系统脚本）',
  `lang` tinyint(4) NOT NULL COMMENT '脚本语言（字典1 groovy)',
  `content` text COMMENT '脚本内容',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304322960072609795 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程脚本表';

-- ----------------------------
-- Records of flw_script
-- ----------------------------
INSERT INTO `flw_script` VALUES ('1294898800718163970', '打印内容', '1', '1', 'System.out.println(\"这是打印的内容\");', '打印内容', '0', '2020-08-16 15:28:27', '1265476890672672808', '2020-08-16 18:23:26', '1265476890672672808');
INSERT INTO `flw_script` VALUES ('1304322960072609794', '设置会签人员', '1', '1', 'import cn.hutool.core.collection.CollectionUtil;\nimport com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;\n\nList<Long> userIdList = CollectionUtil.newArrayList();\nuserIdList.add(1275735541155614721);\nuserIdList.add(1280700700074041345);\nuserIdList.add(1280709549107552257);\n\n//调用脚本工具类，给执行实例设置会签人员\nBpmScriptUtil.setVariableForInstance(execution, \"pers\", userIdList);\n//调用脚本工具类，给执行实例设置多实例基数为会签人员数量\nBpmScriptUtil.setVariableForInstance(execution, \"num\", 3);', '流程启动时给流程实例设置会签人员', '0', '2020-09-11 15:36:41', '1265476890672672808', '2020-09-11 16:55:02', '1265476890672672808');

-- ----------------------------
-- Table structure for `flw_shortcut`
-- ----------------------------
DROP TABLE IF EXISTS `flw_shortcut`;
CREATE TABLE `flw_shortcut` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `process_definition_id` varchar(100) NOT NULL COMMENT '流程定义id',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `category` varchar(50) NOT NULL COMMENT '分类',
  `category_name` varchar(100) NOT NULL COMMENT '分类名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `version` tinyint(4) NOT NULL COMMENT '定义版本',
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `sort` int(11) NOT NULL COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1304343307362648067 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程申请入口表';

-- ----------------------------
-- Records of flw_shortcut
-- ----------------------------
INSERT INTO `flw_shortcut` VALUES ('1295307482717040642', 'leave:1:1294922085572947969', '请假申请', 'kaoqin', '考勤类', '请假申请', '1', 'profile', '100', '0', '2020-08-17 18:32:24', '1265476890672672808', null, null);
INSERT INTO `flw_shortcut` VALUES ('1295934105837555714', 'formal:1:1295553082574471169', '转正申请', 'xingzheng', '行政类', '转正申请', '1', 'block', '100', '0', '2020-08-19 12:02:23', '1265476890672672808', null, null);
INSERT INTO `flw_shortcut` VALUES ('1304343307362648066', 'travel:1:1304341427379126274', '出差申请', 'travel', '差旅类', '出差申请', '1', 'thunderbolt', '100', '0', '2020-09-11 16:57:33', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `pay_ali_trade_history`
-- ----------------------------
DROP TABLE IF EXISTS `pay_ali_trade_history`;
CREATE TABLE `pay_ali_trade_history` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `out_trade_no` varchar(20) NOT NULL COMMENT '商家订单号',
  `trade_no` varchar(100) DEFAULT NULL COMMENT '支付宝订单号',
  `bill_date` datetime NOT NULL COMMENT '交易时间',
  `amount` decimal(10,2) NOT NULL COMMENT '交易金额',
  `subject` varchar(255) NOT NULL COMMENT '商品名称',
  `body` varchar(255) NOT NULL COMMENT '商品描述',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pay_ali_trade_history
-- ----------------------------
INSERT INTO `pay_ali_trade_history` VALUES ('1308743504209526785', '1308743503441969153', '2020092322001400230504748834', '2020-09-23 20:22:21', '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '1', '2020-09-23 20:22:21', '-1', null, null);
INSERT INTO `pay_ali_trade_history` VALUES ('1308752588191268865', '1308752588027691009', null, '2020-09-23 20:58:27', '1.00', 'XiaoNuo快速开发平台WAP支付测试商品', 'XiaoNuo快速开发平台WAP支付测试商品', '0', '2020-09-23 20:58:27', '-1', null, null);
INSERT INTO `pay_ali_trade_history` VALUES ('1308754130948579329', '1308754130894053377', null, '2020-09-23 21:04:35', '1.00', 'XiaoNuo快速开发平台扫码支付测试商品', 'XiaoNuo快速开发平台扫码支付测试商品', '1', '2020-09-23 21:04:35', '-1', null, null);
INSERT INTO `pay_ali_trade_history` VALUES ('1308759207155326978', '1308759206559735810', null, '2020-09-23 21:24:45', '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '0', '2020-09-23 21:24:45', '-1', null, null);
INSERT INTO `pay_ali_trade_history` VALUES ('1308760139100315649', '1308760138500530177', '2020092322001400230504749933', '2020-09-23 21:28:27', '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '1', '2020-09-23 21:28:27', '-1', null, null);

-- ----------------------------
-- Table structure for `sys_app`
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '应用名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `active` varchar(1) DEFAULT NULL COMMENT '是否默认激活（Y-是，N-否）',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统应用表';

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO `sys_app` VALUES ('1265476890672672821', '系统应用', 'system', 'Y', '0', '2020-03-25 19:07:00', '1265476890672672808', '2020-08-15 15:23:05', '1280709549107552257');
INSERT INTO `sys_app` VALUES ('1265476890672672822', '业务应用', 'business', 'N', '2', '2020-03-26 08:40:33', '1265476890672672808', '2020-09-23 22:00:01', '1265476890672672808');
INSERT INTO `sys_app` VALUES ('1265476890672672823', '在线办公', 'office', 'N', '0', '2020-04-02 15:48:43', '1265476890672672808', '2020-09-23 22:00:15', '1265476890672672808');
INSERT INTO `sys_app` VALUES ('1290262474351808514', '高级体验', 'experience', 'N', '0', '2020-08-03 20:25:20', '1265476890672672808', '2020-08-15 15:46:12', '1265476890672672808');
INSERT INTO `sys_app` VALUES ('1342451550318694401', '系统工具', 'system_tool', 'N', '0', '2020-12-25 20:46:06', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_code_generate`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_generate`;
CREATE TABLE `sys_code_generate` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `author_name` varchar(255) NOT NULL COMMENT '作者姓名',
  `class_name` varchar(255) NOT NULL COMMENT '类名',
  `table_prefix` varchar(255) NOT NULL COMMENT '是否移除表前缀',
  `generate_type` varchar(255) NOT NULL COMMENT '生成位置类型',
  `table_name` varchar(255) NOT NULL COMMENT '数据库表名',
  `package_name` varchar(255) DEFAULT NULL COMMENT '包名称',
  `bus_name` varchar(255) DEFAULT NULL COMMENT '业务名',
  `table_comment` varchar(255) DEFAULT NULL COMMENT '功能名',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成基础配置';

-- ----------------------------
-- Records of sys_code_generate
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `value` varchar(255) NOT NULL COMMENT '值',
  `sys_flag` char(1) NOT NULL COMMENT '是否是系统参数（Y-是，N-否）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `group_code` varchar(255) NOT NULL DEFAULT 'DEFAULT' COMMENT '常量所属分类的编码，来自于“常量的分类”字典',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1265117443880853504', '验证码开关', 'XIAONUO_KAPTCHA_OPEN', 'N', 'Y', '登录验证码开关 N关闭 Y打开', '0', 'DEFAULT', '2020-04-14 23:30:14', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1265117443880853506', 'jwt密钥', 'XIAONUO_JWT_SECRET', 'xiaonuo', 'Y', '（重要）jwt密钥，默认为空，自行设置', '0', 'DEFAULT', '2020-05-26 06:35:19', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1265117443880853507', '默认密码', 'XIAONUO_DEFAULT_PASSWORD', '123456', 'Y', '默认密码', '0', 'DEFAULT', '2020-05-26 06:37:56', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1265117443880853508', 'token过期时间', 'XIAONUO_TOKEN_EXPIRE', '86400', 'Y', 'token过期时间（单位：秒）', '0', 'DEFAULT', '2020-05-27 11:54:49', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1265117443880853509', 'session会话过期时间', 'XIAONUO_SESSION_EXPIRE', '7200', 'Y', 'session会话过期时间（单位：秒）', '0', 'DEFAULT', '2020-05-27 11:54:49', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1265117443880853519', '阿里云短信keyId', 'XIAONUO_ALIYUN_SMS_ACCESSKEY_ID', '你的keyId', 'Y', '阿里云短信keyId', '0', 'ALIYUN_SMS', '2020-06-07 16:27:11', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269547042242371585', '阿里云短信secret', 'XIAONUO_ALIYUN_SMS_ACCESSKEY_SECRET', '你的secret', 'Y', '阿里云短信secret', '0', 'ALIYUN_SMS', '2020-06-07 16:29:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269547130041737217', '阿里云短信签名', 'XIAONUO_ALIYUN_SMS_SIGN_NAME', 'XiaoNuo快速开发平台', 'Y', '阿里云短信签名', '0', 'ALIYUN_SMS', '2020-06-07 16:29:58', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269547279530926081', '阿里云短信-登录模板号', 'XIAONUO_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', 'SMS_1877123456', 'Y', '阿里云短信-登录模板号', '0', 'ALIYUN_SMS', '2020-06-07 16:30:33', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269547410879750145', '阿里云短信默认失效时间', 'XIAONUO_ALIYUN_SMS_INVALIDATE_MINUTES', '5', 'Y', '阿里云短信默认失效时间（单位：分钟）', '0', 'ALIYUN_SMS', '2020-06-07 16:31:04', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269575927357071361', '腾讯云短信secretId', 'XIAONUO_TENCENT_SMS_SECRET_ID', '你的secretId', 'Y', '腾讯云短信secretId', '0', 'TENCENT_SMS', '2020-06-07 18:24:23', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269575991693500418', '腾讯云短信secretKey', 'XIAONUO_TENCENT_SMS_SECRET_KEY', '你的secretkey', 'Y', '腾讯云短信secretKey', '0', 'TENCENT_SMS', '2020-06-07 18:24:39', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269576044084551682', '腾讯云短信sdkAppId', 'XIAONUO_TENCENT_SMS_SDK_APP_ID', '1400375123', 'Y', '腾讯云短信sdkAppId', '0', 'TENCENT_SMS', '2020-06-07 18:24:51', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1269576089294954497', '腾讯云短信签名', 'XIAONUO_TENCENT_SMS_SIGN', 'XiaoNuo快速开发平台', 'Y', '腾讯云短信签名', '0', 'TENCENT_SMS', '2020-06-07 18:25:02', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270378172860403713', '邮箱host', 'XIAONUO_EMAIL_HOST', 'smtp.126.com', 'Y', '邮箱host', '0', 'EMAIL', '2020-06-09 23:32:14', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270378295543795714', '邮箱用户名', 'XIAONUO_EMAIL_USERNAME', 'test@126.com', 'Y', '邮箱用户名', '0', 'EMAIL', '2020-06-09 23:32:43', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270378340510928897', '邮箱密码', 'XIAONUO_EMAIL_PASSWORD', '你的邮箱密码', 'Y', '邮箱密码', '0', 'EMAIL', '2020-06-09 23:32:54', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270378527358783489', '邮箱端口', 'XIAONUO_EMAIL_PORT', '465', 'Y', '邮箱端口', '0', 'EMAIL', '2020-06-09 23:33:38', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270378790035460097', '邮箱是否开启ssl', 'XIAONUO_EMAIL_SSL', 'true', 'Y', '邮箱是否开启ssl', '0', 'EMAIL', '2020-06-09 23:34:41', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270380786649972737', '邮箱发件人', 'XIAONUO_EMAIL_FROM', 'test@126.com', 'Y', '邮箱发件人', '0', 'EMAIL', '2020-06-09 23:42:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270380786649972738', 'win本地上传文件路径', 'XIAONUO_FILE_UPLOAD_PATH_FOR_WINDOWS', 'd:/tmp', 'Y', 'win本地上传文件路径', '0', 'FILE_PATH', '2020-06-09 23:42:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270380786649972739', 'linux/mac本地上传文件路径', 'XIAONUO_FILE_UPLOAD_PATH_FOR_LINUX', '/tmp', 'Y', 'linux/mac本地上传文件路径', '0', 'FILE_PATH', '2020-06-09 23:42:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270380786649982740', 'XiaoNuo演示环境', 'XIAONUO_DEMO_ENV_FLAG', 'false', 'Y', 'XiaoNuo演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', '0', 'DEFAULT', '2020-06-09 23:42:37', '1265476890672672808', '2020-09-03 14:38:17', '1265476890672672808');
INSERT INTO `sys_config` VALUES ('1270380786649982741', 'XiaoNuo放开XSS过滤的接口', 'XIAONUO_UN_XSS_FILTER_URL', '/demo/xssfilter,/demo/unxss', 'Y', '多个url可以用英文逗号隔开', '0', 'DEFAULT', '2020-06-09 23:42:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1270380786649982742', '单用户登陆的开关', 'XIAONUO_ENABLE_SINGLE_LOGIN', 'false', 'Y', '单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', '0', 'DEFAULT', '2020-06-09 23:42:37', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1280694183769792514', 'druid监控登录账号', 'XIAONUO_DRUID_USERNAME', '', 'Y', 'druid监控登录账号', '0', 'DEFAULT', '2020-07-08 10:44:22', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1280694281648070658', 'druid监控界面登录密码', 'XIAONUO_DRUID_PASSWORD', '', 'Y', 'druid监控登录密码', '0', 'DEFAULT', '2020-07-08 10:44:46', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1280694281648070659', '阿里云定位api接口地址', 'XIAONUO_IP_GEO_API', 'http://api01.aliyun.venuscn.com/ip?ip=%s', 'Y', '阿里云定位api接口地址', '0', 'DEFAULT', '2020-07-20 10:44:46', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1280694281648070660', '阿里云定位appCode', 'XIAONUO_IP_GEO_APP_CODE', '461535aabeae4f34861884d392f5d452', 'Y', '阿里云定位appCode', '0', 'DEFAULT', '2020-07-20 10:44:46', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288309751255412737', 'Oauth用户登录的开关', 'XIAONUO_ENABLE_OAUTH_LOGIN', 'true', 'Y', 'Oauth用户登录的开关', '0', 'OAUTH', '2020-07-29 11:05:55', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288310043346743297', 'Oauth码云登录ClientId', 'XIAONUO_OAUTH_GITEE_CLIENT_ID', '你的clientId', 'Y', 'Oauth码云登录ClientId', '0', 'OAUTH', '2020-07-29 11:07:05', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288310157876408321', 'Oauth码云登录ClientSecret', 'XIAONUO_OAUTH_GITEE_CLIENT_SECRET', '你的clientSecret', 'Y', 'Oauth码云登录ClientSecret', '0', 'OAUTH', '2020-07-29 11:07:32', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288310280056483841', 'Oauth码云登录回调地址', 'XIAONUO_OAUTH_GITEE_REDIRECT_URI', 'http://127.0.0.1:82/oauth/callback/gitee', 'Y', 'Oauth码云登录回调地址', '0', 'OAUTH', '2020-07-29 11:08:01', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288358228593221633', '前端项目地址', 'XIAONUO_WEB_URL', 'http://localhost:8080', 'Y', '前端项目地址', '0', 'DEFAULT', '2020-07-29 14:18:33', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288358228593221634', '支付宝支付跳转地址', 'XIAONUO_ALIPAY_RETURN_URL', 'http://localhost:8080/pay/index', 'Y', '支付宝支付跳转地址', '0', 'DEFAULT', '2020-07-29 14:18:33', '1265476890672672808', null, null);
INSERT INTO `sys_config` VALUES ('1288358228593221635', '是否开启多租户', 'XIAONUO_TENANT_OPEN', 'false', 'Y', '是否开启多租户', '0', 'DEFAULT', '2020-09-03 17:45:58', '1265476890672672808', '2020-09-23 22:23:38', '1265476890672672808');

-- ----------------------------
-- Table structure for `sys_database_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_database_info`;
CREATE TABLE `sys_database_info` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `db_name` varchar(255) NOT NULL COMMENT '数据库名称（英文名称）',
  `jdbc_driver` varchar(255) NOT NULL COMMENT 'jdbc的驱动类型',
  `user_name` varchar(255) NOT NULL COMMENT '数据库连接的账号',
  `password` varchar(255) NOT NULL COMMENT '数据库连接密码',
  `jdbc_url` varchar(2000) NOT NULL COMMENT 'jdbc的url',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注，摘要',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `NAME_UNIQUE` (`db_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='数据库信息表';

-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO `sys_database_info` VALUES ('1298984760954310657', 'backup', 'com.mysql.cj.jdbc.Driver', 'root', 'ybs1003', 'jdbc:mysql://49.232.20.132:3306/xiaonuo-vue-backup?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '备份数据源', '2020-08-27 22:04:36');
INSERT INTO `sys_database_info` VALUES ('1304687049021960193', 'xiaonuo_tenant_db_beijing', 'com.mysql.cj.jdbc.Driver', 'root', 'ybs1003', 'jdbc:mysql://39.107.82.232:3306/xiaonuo_tenant_db_beijing?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '北京客户数据源', '2020-09-12 15:43:27');
INSERT INTO `sys_database_info` VALUES ('1304687901644279809', 'xiaonuo_tenant_db_guangzhou', 'com.mysql.cj.jdbc.Driver', 'root', 'ybs1003', 'jdbc:mysql://39.107.82.232:3306/xiaonuo_tenant_db_guangzhou?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '广州客户数据源', '2020-09-12 15:46:50');
INSERT INTO `sys_database_info` VALUES ('1342451051922132994', 'master', 'com.mysql.cj.jdbc.Driver', 'root', 'ybs1003', 'jdbc:mysql://localhost:3306/xiaonuo-vue?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '主数据源，项目启动数据源！', '2020-12-25 20:44:06');

-- ----------------------------
-- Table structure for `sys_demo_leave`
-- ----------------------------
DROP TABLE IF EXISTS `sys_demo_leave`;
CREATE TABLE `sys_demo_leave` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `org_name` varchar(50) NOT NULL COMMENT '部门名',
  `type` tinyint(4) NOT NULL COMMENT '请假类型（字典 1事假 2病假 3婚假 4丧假 5产假 6其他）',
  `begin_time` datetime NOT NULL COMMENT '请假开始时间',
  `end_time` datetime NOT NULL COMMENT '请假结束时间',
  `days` tinyint(4) NOT NULL COMMENT '请假天数',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `flw_process_status` tinyint(4) DEFAULT NULL COMMENT '流程状态（字典 0草稿 1审核中 2已退回 3已完成）',
  `flw_start_user_id` bigint(20) DEFAULT NULL COMMENT '发起人id',
  `flw_start_user_name` varchar(100) DEFAULT NULL COMMENT '发起人姓名',
  `flw_start_org_id` bigint(20) DEFAULT NULL COMMENT '发起人所属机构id',
  `flw_start_org_name` varchar(100) DEFAULT NULL COMMENT '发起人所属机构名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_demo_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `type_id` bigint(20) NOT NULL COMMENT '字典类型id',
  `value` text NOT NULL COMMENT '值',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统字典值表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1265216536659087357', '1265216211667636234', '男', '1', '100', '男性', '0', '2020-04-01 10:23:29', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087358', '1265216211667636234', '女', '2', '100', '女性', '0', '2020-04-01 10:23:49', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087359', '1265216211667636234', '未知', '3', '100', '未知性别', '0', '2020-04-01 10:24:01', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087361', '1265216211667636235', '默认常量', 'DEFAULT', '100', '默认常量，都以XIAONUO_开头的', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087363', '1265216211667636235', '阿里云短信', 'ALIYUN_SMS', '100', '阿里云短信配置', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087364', '1265216211667636235', '腾讯云短信', 'TENCENT_SMS', '100', '腾讯云短信', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087365', '1265216211667636235', '邮件配置', 'EMAIL', '100', '邮箱配置', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087366', '1265216211667636235', '文件上传路径', 'FILE_PATH', '100', '文件上传路径', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216536659087367', '1265216211667636235', 'Oauth配置', 'OAUTH', '100', 'Oauth配置', '0', '2020-04-14 23:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216617500102656', '1265216211667636226', '正常', '0', '100', '正常', '0', '2020-05-26 17:41:44', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216617500102657', '1265216211667636226', '停用', '1', '100', '停用', '0', '2020-05-26 17:42:03', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265216938389524482', '1265216211667636226', '删除', '2', '100', '删除', '0', '2020-05-26 17:43:19', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265217669028892673', '1265217074079453185', '否', 'N', '100', '否', '0', '2020-05-26 17:46:14', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265217706584690689', '1265217074079453185', '是', 'Y', '100', '是', '0', '2020-05-26 17:46:23', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265220776437731330', '1265217846770913282', '登录', '1', '100', '登录', '0', '2020-05-26 17:58:34', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265220806070489090', '1265217846770913282', '登出', '2', '100', '登出', '0', '2020-05-26 17:58:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265221129564573697', '1265221049302372354', '目录', '0', '100', '目录', '0', '2020-05-26 17:59:59', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265221163119005697', '1265221049302372354', '菜单', '1', '100', '菜单', '0', '2020-05-26 18:00:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265221188091891713', '1265221049302372354', '按钮', '2', '100', '按钮', '0', '2020-05-26 18:00:13', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466389204967426', '1265466149622128641', '未发送', '0', '100', '未发送', '0', '2020-05-27 10:14:33', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466432670539778', '1265466149622128641', '发送成功', '1', '100', '发送成功', '0', '2020-05-27 10:14:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466486097584130', '1265466149622128641', '发送失败', '2', '100', '发送失败', '0', '2020-05-27 10:14:56', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466530477514754', '1265466149622128641', '失效', '3', '100', '失效', '0', '2020-05-27 10:15:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466835009150978', '1265466752209395713', '无', '0', '100', '无', '0', '2020-05-27 10:16:19', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466874758569986', '1265466752209395713', '组件', '1', '100', '组件', '0', '2020-05-27 10:16:29', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466925476093953', '1265466752209395713', '内链', '2', '100', '内链', '0', '2020-05-27 10:16:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265466962209808385', '1265466752209395713', '外链', '3', '100', '外链', '0', '2020-05-27 10:16:50', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467428423475202', '1265467337566461954', '系统权重', '1', '100', '系统权重', '0', '2020-05-27 10:18:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467503090475009', '1265467337566461954', '业务权重', '2', '100', '业务权重', '0', '2020-05-27 10:18:59', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467709110493186', '1265467629167058946', '事假', '1', '100', '事假', '0', '2020-05-27 10:19:48', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467745013735426', '1265467629167058946', '病假', '2', '100', '病假', '0', '2020-05-27 10:19:56', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467785253888001', '1265467629167058946', '婚假', '3', '100', '婚假', '0', '2020-05-27 10:20:06', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467823426248706', '1265467629167058946', '丧假', '4', '100', '丧假', '0', '2020-05-27 10:20:15', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467855781109762', '1265467629167058946', '产假', '5', '100', '产假', '0', '2020-05-27 10:20:23', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265467895782187010', '1265467629167058946', '其他', '6', '100', '其他', '0', '2020-05-27 10:20:32', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468138431062018', '1265468028632571905', '全部数据', '1', '100', '全部数据', '0', '2020-05-27 10:21:30', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468194928336897', '1265468028632571905', '本部门及以下数据', '2', '100', '本部门及以下数据', '0', '2020-05-27 10:21:44', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468241992622082', '1265468028632571905', '本部门数据', '3', '100', '本部门数据', '0', '2020-05-27 10:21:55', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468273634451457', '1265468028632571905', '仅本人数据', '4', '100', '仅本人数据', '0', '2020-05-27 10:22:02', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468302046666753', '1265468028632571905', '自定义数据', '5', '100', '自定义数据', '0', '2020-05-27 10:22:09', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468508100239362', '1265468437904367618', 'app', '1', '100', 'app', '0', '2020-05-27 10:22:58', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468543433056258', '1265468437904367618', 'pc', '2', '100', 'pc', '0', '2020-05-27 10:23:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468576874242050', '1265468437904367618', '其他', '3', '100', '其他', '0', '2020-05-27 10:23:15', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468839764828161', '1265468761230680066', 'Integer', '1', '100', 'Integer', '0', '2020-05-27 10:24:17', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468871641538562', '1265468761230680066', 'String', '2', '100', 'String', '0', '2020-05-27 10:24:25', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468898896125954', '1265468761230680066', 'Long', '3', '100', 'Long', '0', '2020-05-27 10:24:31', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468922275176450', '1265468761230680066', 'Double', '4', '100', 'Double', '0', '2020-05-27 10:24:37', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468946648276993', '1265468761230680066', 'Boolean', '5', '100', 'Boolean', '0', '2020-05-27 10:24:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468970450952193', '1265468761230680066', 'Date', '6', '100', 'Date', '0', '2020-05-27 10:24:48', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265468970450952194', '1265468761230680066', 'List', '7', '100', 'List', '0', '2020-05-27 10:24:48', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469305756196865', '1265469198583341057', '流程脚本', '1', '100', '流程脚本', '0', '2020-05-27 10:26:08', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469330859106306', '1265469198583341057', '系统脚本', '2', '100', '系统脚本', '0', '2020-05-27 10:26:14', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469526330449922', '1265469441454514178', 'groovy', '1', '100', 'groovy', '0', '2020-05-27 10:27:01', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469753078718464', '1265469702042427393', '启动', '1', '100', '启动', '0', '2020-05-27 10:30:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469753078718465', '1265469702042427393', '全局', '2', '100', '全局', '0', '2020-05-27 10:27:55', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265469779460890626', '1265469702042427393', '节点', '3', '100', '节点', '0', '2020-05-27 10:28:01', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470046877130753', '1265469962873610241', '流程启动', 'PROCESS_STARTED', '100', '流程启动', '0', '2020-05-27 10:29:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470074517594113', '1265469962873610241', '流程完成', 'PROCESS_COMPLETED', '100', '流程完成', '0', '2020-05-27 10:29:12', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470103152107521', '1265469962873610241', '流程取消', 'PROCESS_CANCELLED', '100', '流程取消', '0', '2020-05-27 10:29:19', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470125725851649', '1265469962873610241', '活动开始', 'ACTIVITY_STARTED', '100', '活动开始', '0', '2020-05-27 10:29:24', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470153416646657', '1265469962873610241', '活动完成', 'ACTIVITY_COMPLETED', '100', '活动完成', '0', '2020-05-27 10:29:31', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470179165478913', '1265469962873610241', '活动取消', 'ACTIVITY_CANCELLED', '100', '活动取消', '0', '2020-05-27 10:29:37', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470207363784705', '1265469962873610241', '任务分配', 'TASK_ASSIGNED', '100', '任务分配', '0', '2020-05-27 10:29:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470236853936130', '1265469962873610241', '任务创建', 'TASK_CREATED', '100', '任务创建', '0', '2020-05-27 10:29:50', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470266780295170', '1265469962873610241', '任务完成', 'TASK_COMPLETED', '100', '任务完成', '0', '2020-05-27 10:29:58', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470296446607361', '1265469962873610241', '连接线', 'SEQUENCEFLOW_TAKEN', '100', '连接线', '0', '2020-05-27 10:30:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470296446607362', '1265469962873610242', '全局', '1', '100', '全局', '0', '2020-05-27 10:30:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470296446607363', '1265469962873610242', '节点', '2', '100', '节点', '0', '2020-05-27 10:30:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470526197997569', '1265470456631271426', '草稿', '0', '100', '草稿', '0', '2020-05-27 10:30:59', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470552823439361', '1265470456631271426', '审核中', '1', '100', '审核中', '0', '2020-05-27 10:31:06', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470575615287297', '1265470456631271426', '已退回', '2', '100', '已退回', '0', '2020-05-27 10:31:11', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1265470607588466690', '1265470456631271426', '已完成', '3', '100', '已完成', '0', '2020-05-27 10:31:19', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617233011335170', '1275617093517172738', '其它', '0', '100', '其它', '0', '2020-06-24 10:30:23', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617295355469826', '1275617093517172738', '增加', '1', '100', '增加', '0', '2020-06-24 10:30:38', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617348610547714', '1275617093517172738', '删除', '2', '100', '删除', '0', '2020-06-24 10:30:50', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617395515449346', '1275617093517172738', '编辑', '3', '100', '编辑', '0', '2020-06-24 10:31:02', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617433612312577', '1275617093517172738', '更新', '4', '100', '更新', '0', '2020-06-24 10:31:11', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617472707420161', '1275617093517172738', '查询', '5', '100', '查询', '0', '2020-06-24 10:31:20', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617502973517826', '1275617093517172738', '详情', '6', '100', '详情', '0', '2020-06-24 10:31:27', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617536959963137', '1275617093517172738', '树', '7', '100', '树', '0', '2020-06-24 10:31:35', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617619524837377', '1275617093517172738', '导入', '8', '100', '导入', '0', '2020-06-24 10:31:55', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617651816783873', '1275617093517172738', '导出', '9', '100', '导出', '0', '2020-06-24 10:32:03', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617683475390465', '1275617093517172738', '授权', '10', '100', '授权', '0', '2020-06-24 10:32:10', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617709928865793', '1275617093517172738', '强退', '11', '100', '强退', '0', '2020-06-24 10:32:17', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617739091861505', '1275617093517172738', '清空', '12', '100', '清空', '0', '2020-06-24 10:32:23', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1275617788601425921', '1275617093517172738', '修改状态', '13', '100', '修改状态', '0', '2020-06-24 10:32:35', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1277774590944317441', '1277774529430654977', '阿里云', '1', '100', '阿里云', '0', '2020-06-30 09:22:57', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1277774666055913474', '1277774529430654977', '腾讯云', '2', '100', '腾讯云', '0', '2020-06-30 09:23:15', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1277774695168577538', '1277774529430654977', 'minio', '3', '100', 'minio', '0', '2020-06-30 09:23:22', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1277774726835572737', '1277774529430654977', '本地', '4', '100', '本地', '0', '2020-06-30 09:23:29', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278607123583868929', '1278606951432855553', '运行', '1', '100', '运行', '0', '2020-07-02 16:31:08', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278607162943217666', '1278606951432855553', '停止', '2', '100', '停止', '0', '2020-07-02 16:31:18', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939265862004738', '1278911800547147777', '通知', '1', '100', '通知', '0', '2020-07-03 14:30:57', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939319922388994', '1278911800547147777', '公告', '2', '100', '公告', '0', '2020-07-03 14:31:10', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939399001796609', '1278911952657776642', '草稿', '0', '100', '草稿', '0', '2020-07-03 14:31:29', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939432686252034', '1278911952657776642', '发布', '1', '100', '发布', '0', '2020-07-03 14:31:37', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939458804183041', '1278911952657776642', '撤回', '2', '100', '撤回', '0', '2020-07-03 14:31:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278939485878415362', '1278911952657776642', '删除', '3', '100', '删除', '0', '2020-07-03 14:31:50', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278992343223025665', '1278992276965605377', '委托中', '0', '90', '委托中', '0', '2020-07-03 18:01:52', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278992370066571266', '1278992276965605377', '委托结束', '1', '100', '委托结束', '0', '2020-07-03 18:01:58', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1278992396788482050', '1278992276965605377', '未委托', '2', '100', '未委托', '0', '2020-07-03 18:02:05', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291390260160299009', '1291390159941599233', '是', 'true', '100', '是', '2', '2020-08-06 23:06:46', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291390315437031426', '1291390159941599233', '否', 'false', '100', '否', '2', '2020-08-06 23:06:59', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291391148769738754', '1291391077990858754', '是', 'true', '100', '是', '0', '2020-08-06 23:10:17', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291391205719998465', '1291391077990858754', '否', 'false', '100', '否', '0', '2020-08-06 23:10:31', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291393684314587138', '1291393441594408961', '是', 'true', '100', '已结束', '0', '2020-08-06 23:20:22', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1291393766048989186', '1291393441594408961', '否', 'false', '100', '未结束', '0', '2020-08-06 23:20:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300767954291433474', '1300767512828354562', 'Mysql', 'com.mysql.cj.jdbc.Driver', '100', 'Mysql数据库驱动', '0', '2020-09-01 20:10:22', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768214854180866', '1300767512828354562', 'Oracle', 'oracle.jdbc.OracleDriver', '100', 'Oracle数据库驱动', '0', '2020-09-01 20:11:24', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196417', '1300767512828354562', 'Sqlserver', 'com.microsoft.jdbc.sqlserver.SQLServerDriver', '100', 'Sqlserver数据库', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196418', '1300767512828354563', '未支付', '0', '100', '未支付', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196419', '1300767512828354563', '已支付', '1', '100', '已支付', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196420', '1300767512828354563', '已退款', '2', '100', '已退款', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196421', '1300767512828354563', '已关闭', '3', '100', '已关闭', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1300768392747196422', '1300767512828354563', '已关闭有退款', '4', '100', '已关闭有退款', '0', '2020-09-01 20:12:07', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1342451445578534913', '1342451383595110402', '下载压缩包', '1', '100', '下载压缩包', '0', '2020-12-25 20:45:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_data` VALUES ('1342451490893795329', '1342451383595110402', '生成到本项目', '2', '100', '生成到本项目', '0', '2020-12-25 20:45:52', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1265216211667636226', '通用状态', 'common_status', '100', '通用状态', '0', '2020-05-26 17:40:26', '1265476890672672808', '2020-06-08 11:31:47', '1265476890672672808');
INSERT INTO `sys_dict_type` VALUES ('1265216211667636234', '性别', 'sex', '100', '性别字典', '0', '2020-04-01 10:12:30', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265216211667636235', '常量的分类', 'consts_type', '100', '常量的分类，用于区别一组配置', '0', '2020-04-14 23:24:13', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265217074079453185', '是否', 'yes_or_no', '100', '是否', '0', '2020-05-26 17:43:52', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265217846770913282', '访问类型', 'vis_type', '100', '访问类型', '0', '2020-05-26 17:46:56', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265221049302372354', '菜单类型', 'menu_type', '100', '菜单类型', '0', '2020-05-26 17:59:39', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265466149622128641', '发送类型', 'send_type', '100', '发送类型', '0', '2020-05-27 10:13:36', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265466752209395713', '打开方式', 'open_type', '100', '打开方式', '0', '2020-05-27 10:16:00', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265467337566461954', '菜单权重', 'menu_weight', '100', '菜单权重', '0', '2020-05-27 10:18:19', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265467629167058946', '请假类型', 'leave_type', '100', '请假类型', '0', '2020-05-27 10:19:29', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265468028632571905', '数据范围类型', 'data_scope_type', '100', '数据范围类型', '0', '2020-05-27 10:21:04', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265468437904367618', '短信发送来源', 'sms_send_source', '100', '短信发送来源', '0', '2020-05-27 10:22:42', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265468761230680066', '字段类型', 'filed_type', '100', '字段类型', '0', '2020-05-27 10:23:59', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265469198583341057', '脚本类型', 'script_type', '100', '脚本类型', '0', '2020-05-27 10:25:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265469441454514178', '脚本语言类型', 'script_language_type', '100', '脚本语言类型', '0', '2020-05-27 10:26:41', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265469702042427393', '表单类型', 'form_type', '100', '表单类型', '0', '2020-05-27 10:27:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265469962873610241', '事件类型', 'event_type', '100', '事件类型', '0', '2020-05-27 10:28:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265469962873610242', '事件节点类型', 'event_node_type', '100', '事件节点类型', '0', '2020-05-27 10:28:45', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1265470456631271426', '流程状态', 'process_status', '100', '流程状态', '0', '2020-05-27 10:30:43', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1275617093517172738', '操作类型', 'op_type', '100', '操作类型', '0', '2020-06-24 10:29:50', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1277774529430654977', '文件存储位置', 'file_storage_location', '100', '文件存储位置', '0', '2020-06-30 09:22:42', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1278606951432855553', '运行状态', 'run_status', '100', '定时任务运行状态', '0', '2020-07-02 16:30:27', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1278911800547147777', '通知公告类型', 'notice_type', '100', '通知公告类型', '0', '2020-07-03 12:41:49', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1278911952657776642', '通知公告状态', 'notice_status', '100', '通知公告状态', '0', '2020-07-03 12:42:25', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1278992276965605377', '委托状态', 'delegate_status', '100', '委托状态', '0', '2020-07-03 18:01:36', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1291390159941599233', '是否boolean', 'yes_true_false', '100', '是否boolean', '2', '2020-08-06 23:06:22', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1291391077990858754', '流程是否挂起', 'suspended_status', '100', '流程是否挂起', '0', '2020-08-06 23:10:01', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1291393441594408961', '是否结束', 'ended_status', '100', '是否结束', '0', '2020-08-06 23:19:24', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1300767512828354562', 'JDBC驱动类型', 'jdbc_driver', '100', 'JDBC驱动类型', '0', '2020-09-01 20:08:37', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1300767512828354563', '支付宝交易状态', 'alipay_trade_status', '100', '支付宝交易状态', '0', '2020-09-23 10:36:53', '1265476890672672808', null, null);
INSERT INTO `sys_dict_type` VALUES ('1342451383595110402', '代码生成方式', 'code_gen_create_type', '100', '代码生成方式', '0', '2020-12-25 20:45:26', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_emp`
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp`;
CREATE TABLE `sys_emp` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `job_num` varchar(100) DEFAULT NULL COMMENT '工号',
  `org_id` bigint(20) NOT NULL COMMENT '所属机构id',
  `org_name` varchar(100) NOT NULL COMMENT '所属机构名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='员工表';

-- ----------------------------
-- Records of sys_emp
-- ----------------------------
INSERT INTO `sys_emp` VALUES ('1275735541155614721', '102', '1265476890672672769', '华夏集团北京分公司');
INSERT INTO `sys_emp` VALUES ('1280700700074041345', '110', '1265476890672672771', '研发部');
INSERT INTO `sys_emp` VALUES ('1280709549107552257', '100', '1265476890672672770', '华夏集团成都分公司');

-- ----------------------------
-- Table structure for `sys_emp_ext_org_pos`
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp_ext_org_pos`;
CREATE TABLE `sys_emp_ext_org_pos` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `emp_id` bigint(20) NOT NULL COMMENT '员工id',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  `pos_id` bigint(20) NOT NULL COMMENT '岗位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='员工附属机构岗位表';

-- ----------------------------
-- Records of sys_emp_ext_org_pos
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_emp_pos`
-- ----------------------------
DROP TABLE IF EXISTS `sys_emp_pos`;
CREATE TABLE `sys_emp_pos` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `emp_id` bigint(20) NOT NULL COMMENT '员工id',
  `pos_id` bigint(20) NOT NULL COMMENT '职位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='员工职位关联表';

-- ----------------------------
-- Records of sys_emp_pos
-- ----------------------------
INSERT INTO `sys_emp_pos` VALUES ('1280710811995709441', '1275735541155614721', '1265476890672672787');
INSERT INTO `sys_emp_pos` VALUES ('1280710828479324161', '1280700700074041345', '1265476890672672790');
INSERT INTO `sys_emp_pos` VALUES ('1281042262003867649', '1280709549107552257', '1265476890672672787');

-- ----------------------------
-- Table structure for `sys_file_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `file_location` tinyint(4) NOT NULL COMMENT '文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）',
  `file_bucket` varchar(1000) DEFAULT NULL COMMENT '文件仓库',
  `file_origin_name` varchar(100) NOT NULL COMMENT '文件名称（上传时候的文件名）',
  `file_suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀',
  `file_size_kb` bigint(20) DEFAULT NULL COMMENT '文件大小kb',
  `file_size_info` varchar(100) DEFAULT NULL COMMENT '文件大小信息，计算后的',
  `file_object_name` varchar(100) NOT NULL COMMENT '存储到bucket的名称（文件唯一标识id）',
  `file_path` varchar(1000) DEFAULT NULL COMMENT '存储路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `pid` bigint(20) NOT NULL COMMENT '父id',
  `pids` text NOT NULL COMMENT '父ids',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '菜单类型（字典 0目录 1菜单 2按钮）',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `router` varchar(255) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件地址',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `application` varchar(50) NOT NULL COMMENT '应用分类（应用编码）',
  `open_type` tinyint(4) NOT NULL COMMENT '打开方式（字典 0无 1组件 2内链 3外链）',
  `visible` char(1) NOT NULL COMMENT '是否可见（Y-是，N-否）',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `redirect` varchar(255) DEFAULT NULL COMMENT '重定向地址',
  `weight` tinyint(4) DEFAULT NULL COMMENT '权重（字典 1系统权重 2业务权重）',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1264622039642255311', '0', '[0],', '主控面板', 'system_index', '0', 'home', '/', 'RouteView', null, 'system', '0', 'Y', null, '/analysis', '1', '1', null, '0', '2020-05-25 02:19:24', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255321', '1264622039642255311', '[0],[1264622039642255311],', '分析页', 'system_index_dashboard', '1', null, 'analysis', 'system/dashboard/Analysis', null, 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-25 02:21:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255331', '1264622039642255311', '[0],[1264622039642255311],', '工作台', 'system_index_workplace', '1', null, 'workplace', 'system/dashboard/Workplace', null, 'system', '0', 'Y', null, null, '1', '2', null, '0', '2020-05-25 02:23:48', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255341', '0', '[0],', '组织架构', 'sys_mgr', '0', 'team', '/sys', 'PageView', null, 'system', '0', 'Y', null, null, '1', '2', null, '0', '2020-03-27 15:58:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255351', '1264622039642255341', '[0],[1264622039642255341],', '用户管理', 'sys_user_mgr', '1', null, '/mgr_user', 'system/user/index', null, 'system', '1', 'Y', null, null, '1', '3', null, '0', '2020-03-27 16:10:21', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255361', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户查询', 'sys_user_mgr_page', '2', null, null, null, 'sysUser:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:36:49', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255371', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户编辑', 'sys_user_mgr_edit', '2', null, null, null, 'sysUser:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:20:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255381', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户增加', 'sys_user_mgr_add', '2', null, null, null, 'sysUser:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:37:35', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255391', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户删除', 'sys_user_mgr_delete', '2', null, null, null, 'sysUser:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:37:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255401', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户详情', 'sys_user_mgr_detail', '2', null, null, null, 'sysUser:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:38:25', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255411', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户导出', 'sys_user_mgr_export', '2', null, null, null, 'sysUser:export', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:21:59', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255421', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户选择器', 'sys_user_mgr_selector', '2', null, null, null, 'sysUser:selector', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-03 13:30:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255431', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户授权角色', 'sys_user_mgr_grant_role', '2', null, null, null, 'sysUser:grantRole', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 09:22:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255441', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户拥有角色', 'sys_user_mgr_own_role', '2', null, null, null, 'sysUser:ownRole', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 14:27:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255451', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户授权数据', 'sys_user_mgr_grant_data', '2', null, null, null, 'sysUser:grantData', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 09:22:13', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255461', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户拥有数据', 'sys_user_mgr_own_data', '2', null, null, null, 'sysUser:ownData', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 14:27:41', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255471', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户更新信息', 'sys_user_mgr_update_info', '2', null, null, null, 'sysUser:updateInfo', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 16:19:32', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255481', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改密码', 'sys_user_mgr_update_pwd', '2', null, null, null, 'sysUser:updatePwd', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 16:20:25', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255491', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改状态', 'sys_user_mgr_change_status', '2', null, null, null, 'sysUser:changeStatus', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-23 11:13:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255501', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改头像', 'sys_user_mgr_update_avatar', '2', null, null, null, 'sysUser:updateAvatar', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:21:42', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255511', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户重置密码', 'sys_user_mgr_reset_pwd', '2', null, null, null, 'sysUser:resetPwd', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 15:01:51', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255521', '1264622039642255341', '[0],[1264622039642255341],', '机构管理', 'sys_org_mgr', '1', null, '/org', 'system/org/index', null, 'system', '1', 'Y', null, null, '1', '4', null, '0', '2020-03-27 17:15:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255531', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构查询', 'sys_org_mgr_page', '2', null, null, null, 'sysOrg:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:17:37', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255541', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构列表', 'sys_org_mgr_list', '2', null, null, null, 'sysOrg:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:54:26', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255551', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构增加', 'sys_org_mgr_add', '2', null, null, null, 'sysOrg:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:19:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255561', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构编辑', 'sys_org_mgr_edit', '2', null, null, null, 'sysOrg:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:54:37', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255571', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构删除', 'sys_org_mgr_delete', '2', null, null, null, 'sysOrg:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:20:48', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255581', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构详情', 'sys_org_mgr_detail', '2', null, null, null, 'sysOrg:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:21:15', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255591', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构树', 'sys_org_mgr_tree', '2', null, null, null, 'sysOrg:tree', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:21:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255601', '1264622039642255341', '[0],[1264622039642255341],', '职位管理', 'sys_pos_mgr', '1', null, '/pos', 'system/pos/index', null, 'system', '1', 'Y', null, null, '1', '5', null, '0', '2020-03-27 18:38:31', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255611', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位查询', 'sys_pos_mgr_page', '2', null, null, null, 'sysPos:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:41:48', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255621', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位列表', 'sys_pos_mgr_list', '2', null, null, null, 'sysPos:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:55:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255631', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位增加', 'sys_pos_mgr_add', '2', null, null, null, 'sysPos:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:42:20', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255641', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位编辑', 'sys_pos_mgr_edit', '2', null, null, null, 'sysPos:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:56:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255651', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位删除', 'sys_pos_mgr_delete', '2', null, null, null, 'sysPos:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:42:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255661', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位详情', 'sys_pos_mgr_detail', '2', null, null, null, 'sysPos:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:43:00', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255671', '0', '[0],', '权限管理', 'auth_manager', '0', 'safety-certificate', '/auth', 'PageView', null, 'system', '0', 'Y', null, null, '1', '3', null, '0', '2020-07-15 15:51:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255681', '1264622039642255671', '[0],[1264622039642255671],', '应用管理', 'sys_app_mgr', '1', null, '/app', 'system/app/index', null, 'system', '1', 'Y', null, null, '1', '6', null, '0', '2020-03-27 16:40:21', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255691', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用查询', 'sys_app_mgr_page', '2', null, null, null, 'sysApp:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:41:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255701', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用列表', 'sys_app_mgr_list', '2', null, null, null, 'sysApp:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 10:04:59', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255711', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用增加', 'sys_app_mgr_add', '2', null, null, null, 'sysApp:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 16:44:10', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255721', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用编辑', 'sys_app_mgr_edit', '2', null, null, null, 'sysApp:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 10:04:34', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255731', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用删除', 'sys_app_mgr_delete', '2', null, null, null, 'sysApp:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:14:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255741', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用详情', 'sys_app_mgr_detail', '2', null, null, null, 'sysApp:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:14:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255751', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '设为默认应用', 'sys_app_mgr_set_as_default', '2', null, null, null, 'sysApp:setAsDefault', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 17:14:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255761', '1264622039642255671', '[0],[1264622039642255671],', '菜单管理', 'sys_menu_mgr', '1', null, '/menu', 'system/menu/index', null, 'system', '1', 'Y', null, null, '1', '7', null, '0', '2020-03-27 18:44:35', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255771', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单列表', 'sys_menu_mgr_list', '2', null, null, null, 'sysMenu:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:45:20', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255781', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单增加', 'sys_menu_mgr_add', '2', null, null, null, 'sysMenu:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:45:37', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255791', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单编辑', 'sys_menu_mgr_edit', '2', null, null, null, 'sysMenu:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:52:00', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255801', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单删除', 'sys_menu_mgr_delete', '2', null, null, null, 'sysMenu:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:46:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255811', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单详情', 'sys_menu_mgr_detail', '2', null, null, null, 'sysMenu:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:46:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255821', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单授权树', 'sys_menu_mgr_grant_tree', '2', null, null, null, 'sysMenu:treeForGrant', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-03 09:50:31', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255831', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单树', 'sys_menu_mgr_tree', '2', null, null, null, 'sysMenu:tree', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-27 18:47:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255841', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单切换', 'sys_menu_mgr_change', '2', null, null, null, 'sysMenu:change', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-03 09:51:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255851', '1264622039642255671', '[0],[1264622039642255671],', '角色管理', 'sys_role_mgr', '1', null, '/role', 'system/role/index', null, 'system', '1', 'Y', null, null, '1', '8', null, '0', '2020-03-28 16:01:09', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255861', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色查询', 'sys_role_mgr_page', '2', null, null, null, 'sysRole:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-28 16:02:09', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255871', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色增加', 'sys_role_mgr_add', '2', null, null, null, 'sysRole:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-28 16:02:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255881', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色编辑', 'sys_role_mgr_edit', '2', null, null, null, 'sysRole:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:57:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255891', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色删除', 'sys_role_mgr_delete', '2', null, null, null, 'sysRole:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-28 16:02:46', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255901', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色详情', 'sys_role_mgr_detail', '2', null, null, null, 'sysRole:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-03-28 16:03:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255911', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色下拉', 'sys_role_mgr_drop_down', '2', null, null, null, 'sysRole:dropDown', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 15:45:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255921', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色授权菜单', 'sys_role_mgr_grant_menu', '2', null, null, null, 'sysRole:grantMenu', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 09:16:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255931', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色拥有菜单', 'sys_role_mgr_own_menu', '2', null, null, null, 'sysRole:ownMenu', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 14:21:54', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255941', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色授权数据', 'sys_role_mgr_grant_data', '2', null, null, null, 'sysRole:grantData', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 09:16:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255951', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色拥有数据', 'sys_role_mgr_own_data', '2', null, null, null, 'sysRole:ownData', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 14:23:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255961', '0', '[0],', '开发管理', 'system_tools', '0', 'euro', '/tools', 'PageView', null, 'system', '1', 'Y', null, null, '1', '4', null, '0', '2020-05-25 02:10:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255971', '1264622039642255961', '[0],[1264622039642255961],', '系统配置', 'system_tools_config', '1', null, '/config', 'system/config/index', null, 'system', '1', 'Y', null, null, '1', '9', null, '0', '2020-05-25 02:12:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255981', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置查询', 'system_tools_config_page', '2', null, null, null, 'sysConfig:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:02:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642255991', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置列表', 'system_tools_config_list', '2', null, null, null, 'sysConfig:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:02:42', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256001', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置增加', 'system_tools_config_add', '2', null, null, null, 'sysConfig:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:03:31', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256011', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置编辑', 'system_tools_config_edit', '2', null, null, null, 'sysConfig:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:03:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256021', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置删除', 'system_tools_config_delete', '2', null, null, null, 'sysConfig:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:03:44', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256031', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置详情', 'system_tools_config_detail', '2', null, null, null, 'sysConfig:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 17:02:59', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256041', '1264622039642255961', '[0],[1264622039642255961],', '邮件发送', 'sys_email_mgr', '1', null, '/email', 'system/email/index', null, 'system', '1', 'Y', null, null, '1', '10', null, '0', '2020-07-02 11:44:21', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256051', '1264622039642256041', '[0],[1264622039642255961],[1264622039642256041],', '发送文本邮件', 'sys_email_mgr_send_email', '2', null, null, null, 'email:sendEmail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:45:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256061', '1264622039642256041', '[0],[1264622039642255961],[1264622039642256041],', '发送html邮件', 'sys_email_mgr_send_email_html', '2', null, null, null, 'email:sendEmailHtml', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 11:45:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256071', '1264622039642255961', '[0],[1264622039642255961],', '短信管理', 'sys_sms_mgr', '1', null, '/sms', 'system/sms/index', null, 'system', '1', 'Y', null, null, '1', '11', null, '0', '2020-07-02 12:00:12', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256081', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '短信发送查询', 'sys_sms_mgr_page', '2', null, null, null, 'sms:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:16:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256091', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '发送验证码短信', 'sys_sms_mgr_send_login_message', '2', null, null, null, 'sms:sendLoginMessage', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:02:31', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256101', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '验证短信验证码', 'sys_sms_mgr_validate_message', '2', null, null, null, 'sms:validateMessage', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 12:02:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256111', '1264622039642255961', '[0],[1264622039642255961],', '字典管理', 'sys_dict_mgr', '1', null, '/dict', 'system/dict/index', null, 'system', '1', 'Y', null, null, '1', '12', null, '0', '2020-04-01 11:17:26', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256121', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型查询', 'sys_dict_mgr_dict_type_page', '2', null, null, null, 'sysDictType:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:20:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256131', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型列表', 'sys_dict_mgr_dict_type_list', '2', null, null, null, 'sysDictType:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-29 15:12:35', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256141', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型增加', 'sys_dict_mgr_dict_type_add', '2', null, null, null, 'sysDictType:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:19:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256151', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型删除', 'sys_dict_mgr_dict_type_delete', '2', null, null, null, 'sysDictType:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:21:30', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256161', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型编辑', 'sys_dict_mgr_dict_type_edit', '2', null, null, null, 'sysDictType:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:21:42', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256171', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型详情', 'sys_dict_mgr_dict_type_detail', '2', null, null, null, 'sysDictType:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:22:06', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256181', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型下拉', 'sys_dict_mgr_dict_type_drop_down', '2', null, null, null, 'sysDictType:dropDown', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:22:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256191', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型修改状态', 'sys_dict_mgr_dict_type_change_status', '2', null, null, null, 'sysDictType:changeStatus', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-23 11:15:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256201', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值查询', 'sys_dict_mgr_dict_page', '2', null, null, null, 'sysDictData:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:23:11', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256211', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值列表', 'sys_dict_mgr_dict_list', '2', null, null, null, 'sysDictData:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:24:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256221', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值增加', 'sys_dict_mgr_dict_add', '2', null, null, null, 'sysDictData:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:22:51', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256231', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值删除', 'sys_dict_mgr_dict_delete', '2', null, null, null, 'sysDictData:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:23:26', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256241', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值编辑', 'sys_dict_mgr_dict_edit', '2', null, null, null, 'sysDictData:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:24:21', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256251', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值详情', 'sys_dict_mgr_dict_detail', '2', null, null, null, 'sysDictData:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-04-01 11:24:42', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256261', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值修改状态', 'sys_dict_mgr_dict_change_status', '2', null, null, null, 'sysDictData:changeStatus', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-23 11:17:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256271', '1264622039642255961', '[0],[1264622039642255961],', '接口文档', 'sys_swagger_mgr', '1', null, '/swagger', 'Iframe', null, 'system', '2', 'Y', 'http://localhost:82/doc.html', null, '1', '13', null, '0', '2020-07-02 12:16:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256281', '0', '[0],', '日志管理', 'sys_log_mgr', '0', 'read', '/log', 'PageView', null, 'system', '1', 'Y', null, null, '1', '5', null, '0', '2020-04-01 09:25:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256291', '1264622039642256281', '[0],[1264622039642256281],', '访问日志', 'sys_log_mgr_vis_log', '1', null, '/vislog', 'system/log/vislog/index', null, 'system', '0', 'Y', null, null, '1', '14', null, '0', '2020-04-01 09:26:40', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256301', '1264622039642256291', '[0],[1264622039642256281],[1264622039642256291],', '访问日志查询', 'sys_log_mgr_vis_log_page', '2', null, null, null, 'sysVisLog:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 09:55:51', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256311', '1264622039642256291', '[0],[1264622039642256281],[1264622039642256291],', '访问日志清空', 'sys_log_mgr_vis_log_delete', '2', null, null, null, 'sysVisLog:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 09:56:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256321', '1264622039642256281', '[0],[1264622039642256281],', '操作日志', 'sys_log_mgr_op_log', '1', null, '/oplog', 'system/log/oplog/index', null, 'system', '0', 'Y', null, null, '1', '15', null, '0', '2020-04-01 09:26:59', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256331', '1264622039642256321', '[0],[1264622039642256281],[1264622039642256321],', '操作日志查询', 'sys_log_mgr_op_log_page', '2', null, null, null, 'sysOpLog:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 09:57:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256341', '1264622039642256321', '[0],[1264622039642256281],[1264622039642256321],', '操作日志清空', 'sys_log_mgr_op_log_delete', '2', null, null, null, 'sysOpLog:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-02 09:58:13', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256351', '0', '[0],', '系统监控', 'sys_monitor_mgr', '0', 'deployment-unit', '/monitor', 'PageView', null, 'system', '1', 'Y', null, null, '1', '6', null, '0', '2020-06-05 16:00:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256361', '1264622039642256351', '[0],[1264622039642256351],', '服务监控', 'sys_monitor_mgr_machine_monitor', '1', null, '/machine', 'system/machine/index', null, 'system', '1', 'Y', null, null, '1', '16', null, '0', '2020-06-05 16:02:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256371', '1264622039642256361', '[0],[1264622039642256351],[1264622039642256361],', '服务监控查询', 'sys_monitor_mgr_machine_monitor_query', '2', null, null, null, 'sysMachine:query', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-05 16:05:33', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256381', '1264622039642256351', '[0],[1264622039642256351],', '在线用户', 'sys_monitor_mgr_online_user', '1', null, '/onlineUser', 'system/onlineUser/index', null, 'system', '1', 'Y', null, null, '1', '17', null, '0', '2020-06-05 16:01:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256391', '1264622039642256381', '[0],[1264622039642256351],[1264622039642256381],', '在线用户列表', 'sys_monitor_mgr_online_user_list', '2', null, null, null, 'sysOnlineUser:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-05 16:03:46', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256401', '1264622039642256381', '[0],[1264622039642256351],[1264622039642256381],', '在线用户强退', 'sys_monitor_mgr_online_user_force_exist', '2', null, null, null, 'sysOnlineUser:forceExist', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-05 16:04:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256411', '1264622039642256351', '[0],[1264622039642256351],', '数据监控', 'sys_monitor_mgr_druid', '1', null, '/druid', 'Iframe', null, 'system', '2', 'Y', 'http://localhost:82/druid/login.html', null, '1', '18', null, '0', '2020-06-28 16:15:07', '1265476890672672808', '2020-09-13 09:39:10', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642256421', '0', '[0],', '通知公告', 'sys_notice', '0', 'sound', '/notice', 'PageView', null, 'system', '1', 'Y', null, null, '1', '7', null, '0', '2020-06-29 15:41:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256431', '1264622039642256421', '[0],[1264622039642256421],', '公告管理', 'sys_notice_mgr', '1', null, '/notice', 'system/notice/index', null, 'system', '1', 'Y', null, null, '1', '19', null, '0', '2020-06-29 15:44:24', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256441', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告查询', 'sys_notice_mgr_page', '2', null, null, null, 'sysNotice:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:45:30', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256451', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告增加', 'sys_notice_mgr_add', '2', null, null, null, 'sysNotice:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:45:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256461', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告编辑', 'sys_notice_mgr_edit', '2', null, null, null, 'sysNotice:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:46:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256471', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告删除', 'sys_notice_mgr_delete', '2', null, null, null, 'sysNotice:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:46:11', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256481', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告查看', 'sys_notice_mgr_detail', '2', null, null, null, 'sysNotice:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:46:33', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256491', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告修改状态', 'sys_notice_mgr_changeStatus', '2', null, null, null, 'sysNotice:changeStatus', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 15:46:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256501', '1264622039642256421', '[0],[1264622039642256421],', '已收公告', 'sys_notice_mgr_received', '1', null, '/noticeReceived', 'system/noticeReceived/index', null, 'system', '1', 'Y', null, null, '1', '20', null, '0', '2020-06-29 16:32:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256511', '1264622039642256501', '[0],[1264622039642256421],[1264622039642256501],', '已收公告查询', 'sys_notice_mgr_received_page', '2', null, null, null, 'sysNotice:received', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-29 16:33:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256521', '0', '[0],', '文件管理', 'sys_file_mgr', '0', 'file', '/file', 'PageView', null, 'system', '1', 'Y', null, null, '1', '8', null, '0', '2020-06-24 17:31:10', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256531', '1264622039642256521', '[0],[1264622039642256521],', '系统文件', 'sys_file_mgr_sys_file', '1', null, '/file', 'system/file/index', null, 'system', '1', 'Y', null, null, '1', '21', null, '0', '2020-06-24 17:32:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256541', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件查询', 'sys_file_mgr_sys_file_page', '2', null, null, null, 'sysFileInfo:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:35:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256551', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件列表', 'sys_file_mgr_sys_file_list', '2', null, null, null, 'sysFileInfo:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:35:49', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256561', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件删除', 'sys_file_mgr_sys_file_delete', '2', null, null, null, 'sysFileInfo:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:36:11', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256571', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件详情', 'sys_file_mgr_sys_file_detail', '2', null, null, null, 'sysFileInfo:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:36:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256581', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件上传', 'sys_file_mgr_sys_file_upload', '2', null, null, null, 'sysFileInfo:upload', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:34:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256591', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件下载', 'sys_file_mgr_sys_file_download', '2', null, null, null, 'sysFileInfo:download', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:34:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256601', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '图片预览', 'sys_file_mgr_sys_file_preview', '2', null, null, null, 'sysFileInfo:preview', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-06-24 17:35:19', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256611', '0', '[0],', '定时任务', 'sys_timers', '0', 'dashboard', '/timers', 'PageView', null, 'system', '1', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:17:20', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256621', '1264622039642256611', '[0],[1264622039642256611],', '任务管理', 'sys_timers_mgr', '1', null, '/timers', 'system/timers/index', null, 'system', '1', 'Y', null, null, '1', '22', null, '0', '2020-07-01 17:18:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256631', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务查询', 'sys_timers_mgr_page', '2', null, null, null, 'sysTimers:page', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:19:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256641', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务列表', 'sys_timers_mgr_list', '2', null, null, null, 'sysTimers:list', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:19:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256651', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务详情', 'sys_timers_mgr_detail', '2', null, null, null, 'sysTimers:detail', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:20:10', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256661', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务增加', 'sys_timers_mgr_add', '2', null, null, null, 'sysTimers:add', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:20:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256671', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务删除', 'sys_timers_mgr_delete', '2', null, null, null, 'sysTimers:delete', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:20:33', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256681', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务编辑', 'sys_timers_mgr_edit', '2', null, null, null, 'sysTimers:edit', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:20:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256691', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务可执行列表', 'sys_timers_mgr_get_action_classes', '2', null, null, null, 'sysTimers:getActionClasses', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:22:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256701', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务启动', 'sys_timers_mgr_start', '2', null, null, null, 'sysTimers:start', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:22:32', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256711', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务关闭', 'sys_timers_mgr_stop', '2', null, null, null, 'sysTimers:stop', 'system', '0', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:22:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256721', '0', '[0],', '业务流程', 'sys_flw_mgr', '0', 'cluster', '/flw', 'PageView', null, 'office', '1', 'Y', null, null, '0', '9', null, '0', '2020-05-27 15:04:59', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256731', '1264622039642256721', '[0],[1264622039642256721],', '模型设计', 'sys_flw_model_designer', '1', null, '/designer', 'Iframe', null, 'office', '2', 'Y', 'http://localhost:82/designer/index.html?token=', null, '0', '23', null, '2', '2020-05-27 15:08:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256732', '1264622039642256721', '[0],[1264622039642256721],', '模型管理', 'sys_flw_model_mgr', '1', null, '/model', 'flowable/model/index', null, 'office', '1', 'Y', null, null, '1', '24', null, '0', '2020-05-27 15:21:16', '1265476890672672808', '2020-08-17 21:32:34', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642256733', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型列表', 'sys_flw_model_mgr_model_list', '2', null, null, null, 'flowableModel:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:47', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256734', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型增加', 'sys_flw_model_mgr_model_add', '2', null, null, null, 'flowableModel:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256735', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型删除', 'sys_flw_model_mgr_model_delete', '2', null, null, null, 'flowableModel:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256736', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型编辑', 'sys_flw_model_mgr_model_edit', '2', null, null, null, 'flowableModel:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256737', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型预览', 'sys_flw_model_mgr_model_preview', '2', null, null, null, 'flowableModel:preview', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256738', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型版本', 'sys_flw_model_mgr_model_version', '2', null, null, null, 'flowableModel:version', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256739', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型设为新版本', 'sys_flw_model_mgr_model_set_as_new', '2', null, null, null, 'flowableModel:setAsNew', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256740', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型导入', 'sys_flw_model_mgr_model_import_model', '2', null, null, null, 'flowableModel:importModel', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256741', '1264622039642256721', '[0],[1264622039642256721],', '定义管理', 'sys_flw_definition_mgr', '1', null, '/defenition', 'flowable/defenition/index', null, 'office', '1', 'Y', null, null, '0', '24', null, '0', '2020-05-27 15:21:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256751', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义查询', 'sys_flw_definition_mgr_page', '2', null, null, null, 'flowableDefinition:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:22:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256761', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义部署', 'sys_flw_definition_mgr_deploy', '2', null, null, null, 'flowableDefinition:deploy', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:22:48', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256771', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义删除', 'sys_flw_definition_mgr_delete', '2', null, null, null, 'flowableDefinition:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:23:06', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256781', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义导出', 'sys_flw_definition_mgr_export', '2', null, null, null, 'flowableDefinition:export', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:23:21', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256791', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义映射', 'sys_flw_definition_mgr_mapping', '2', null, null, null, 'flowableDefinition:mapping', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:23:40', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256801', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义挂起', 'sys_flw_definition_mgr_suspend', '2', null, null, null, 'flowableDefinition:suspend', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:23:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256811', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义激活', 'sys_flw_definition_mgr_active', '2', null, null, null, 'flowableDefinition:active', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:24:09', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256821', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义追踪', 'sys_flw_definition_mgr_trace', '2', null, null, null, 'flowableDefinition:trace', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:24:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256831', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '任务节点', 'sys_flw_definition_mgr_userTasks', '2', null, null, null, 'flowableDefinition:userTasks', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:25:04', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256841', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项编辑', 'sys_flw_definition_mgr_option_edit', '2', null, null, null, 'flowableOption:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:26:39', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256851', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项查看', 'sys_flw_definition_mgr_option_detail', '2', null, null, null, 'flowableOption:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:26:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256861', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项列表', 'sys_flw_definition_mgr_option_list', '2', null, null, null, 'flowableOption:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:27:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256871', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮增加', 'sys_flw_definition_mgr_button_add', '2', null, null, null, 'flowableButton:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:05:54', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256881', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮删除', 'sys_flw_definition_mgr_button_delete', '2', null, null, null, 'flowableButton:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256891', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮编辑', 'sys_flw_definition_mgr_button_edit', '2', null, null, null, 'flowableButton:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:20', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256901', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮查看', 'sys_flw_definition_mgr_button_detail', '2', null, null, null, 'flowableButton:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:35', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256911', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮列表', 'sys_flw_definition_mgr_button_list', '2', null, null, null, 'flowableButton:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:47', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256912', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮追踪', 'sys_flw_definition_mgr_button_trace', '2', null, null, null, 'flowableButton:trace', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:06:47', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256921', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件增加', 'sys_flw_definition_mgr_event_add', '2', null, null, null, 'flowableEvent:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256931', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件删除', 'sys_flw_definition_mgr_event_delete', '2', null, null, null, 'flowableEvent:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256941', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件编辑', 'sys_flw_definition_mgr_event_edit', '2', null, null, null, 'flowableEvent:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:07:50', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256951', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件查看', 'sys_flw_definition_mgr_event_detail', '2', null, null, null, 'flowableEvent:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:14', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256961', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件列表', 'sys_flw_definition_mgr_event_list', '2', null, null, null, 'flowableEvent:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256971', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '表单列表', 'sys_flw_definition_mgr_form_list', '2', null, null, null, 'flowableForm:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256981', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单增加', 'sys_flw_definition_mgr_form_add', '2', null, null, null, 'flowableForm:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642256991', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单删除', 'sys_flw_definition_mgr_form_delete', '2', null, null, null, 'flowableForm:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257001', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单编辑', 'sys_flw_definition_mgr_form_edit', '2', null, null, null, 'flowableForm:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257011', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单查看', 'sys_flw_definition_mgr_form_detail', '2', null, null, null, 'flowableForm:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257021', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程启动表单', 'sys_flw_definition_mgr_form_start_form_data', '2', null, null, null, 'flowableForm:startFormData', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257022', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程全局表单', 'sys_flw_definition_mgr_form_global_form_data', '2', null, null, null, 'flowableForm:globalFormData', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257031', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程任务表单', 'sys_flw_definition_mgr_form_task_form_data', '2', null, null, null, 'flowableForm:taskFormData', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257041', '1264622039642256721', '[0],[1264622039642256721],', '分类管理', 'sys_flw_category_mgr', '1', null, '/category', 'flowable/category/index', null, 'office', '1', 'Y', null, null, '0', '25', null, '0', '2020-05-27 15:10:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257051', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类查询', 'sys_flw_category_mgr_page', '2', null, null, null, 'flowableCategory:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-07-02 12:24:58', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257061', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类列表', 'sys_flw_category_mgr_list', '2', null, null, null, 'flowableCategory:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:13:47', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257071', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类增加', 'sys_flw_category_mgr_add', '2', null, null, null, 'flowableCategory:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:14:18', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257081', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类删除', 'sys_flw_category_mgr_delete', '2', null, null, null, 'flowableCategory:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:16:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257091', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类编辑', 'sys_flw_category_mgr_edit', '2', null, null, null, 'flowableCategory:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:17:05', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257101', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类详情', 'sys_flw_category_mgr_detail', '2', null, null, null, 'flowableCategory:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 15:17:49', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257111', '1264622039642256721', '[0],[1264622039642256721],', '表单管理', 'sys_flw_form_resource_mgr', '1', null, '/form', 'flowable/form/index', null, 'office', '1', 'Y', null, null, '0', '26', null, '0', '2020-05-27 16:43:34', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257121', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单查询', 'sys_flw_form_resource_mgr_form_page', '2', null, null, null, 'flowableFormResource:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257131', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单增加', 'sys_flw_form_resource_mgr_form_add', '2', null, null, null, 'flowableFormResource:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257141', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单删除', 'sys_flw_form_resource_mgr_form_delete', '2', null, null, null, 'flowableFormResource:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257151', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单编辑', 'sys_flw_form_resource_mgr_form_edit', '2', null, null, null, 'flowableFormResource:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257161', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单查看', 'sys_flw_form_resource_mgr_form_detail', '2', null, null, null, 'flowableFormResource:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257162', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单设计', 'sys_flw_form_resource_mgr_form_design', '2', null, null, null, 'flowableFormResource:design', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257163', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单列表', 'sys_flw_form_resource_mgr_form_list', '2', null, null, null, 'flowableFormResource:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:08:27', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257171', '1264622039642256721', '[0],[1264622039642256721],', '脚本管理', 'sys_flw_script_mgr', '1', null, '/script', 'flowable/script/index', null, 'office', '1', 'Y', null, null, '0', '27', null, '0', '2020-05-27 16:43:34', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257181', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本查询', 'sys_flw_script_mgr_page', '2', null, null, null, 'flowableScript:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:45:25', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257191', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本列表', 'sys_flw_script_mgr_list', '2', null, null, null, 'flowableScript:list', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:45:25', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257201', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本增加', 'sys_flw_script_mgr_add', '2', null, null, null, 'flowableScript:add', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:45:43', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257211', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本删除', 'sys_flw_script_mgr_delete', '2', null, null, null, 'flowableScript:delete', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:45:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257221', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本编辑', 'sys_flw_script_mgr_edit', '2', null, null, null, 'flowableScript:edit', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:46:15', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257231', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本查看', 'sys_flw_script_mgr_detail', '2', null, null, null, 'flowableScript:detail', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:46:26', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257232', '1264622039642256721', '[0],[1264622039642256721],', '入口管理', 'sys_flw_shortcut_mgr', '1', null, '/shortcut', 'flowable/shortcut/index', null, 'office', '1', 'Y', null, null, '0', '28', null, '0', '2020-05-27 16:46:26', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257233', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口查询', 'sys_flw_shortcut_mgr_page', '2', null, null, null, 'flowableShortcut:page', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:25:05', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257234', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口增加', 'sys_flw_shortcut_mgr_add', '2', null, null, null, 'flowableShortcut:add', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:25:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257235', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口删除', 'sys_flw_shortcut_mgr_delete', '2', null, null, null, 'flowableShortcut:delete', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:25:45', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257236', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口编辑', 'sys_flw_shortcut_mgr_edit', '2', null, null, null, 'flowableShortcut:edit', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:25:57', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257237', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口详情', 'sys_flw_shortcut_mgr_detail', '2', null, null, null, 'flowableShortcut:detail', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:26:09', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257241', '1264622039642256721', '[0],[1264622039642256721],', '实例管理', 'sys_flw_instance_mgr', '1', null, '/instance', 'flowable/instance/index', null, 'office', '1', 'Y', null, null, '0', '29', null, '0', '2020-05-27 16:10:07', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257251', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例查询', 'sys_flw_instance_mgr_page', '2', null, null, null, 'flowableInstance:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:10:55', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257261', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例历史用户任务节点', 'sys_flw_instance_mgr_his_user_tasks', '2', null, null, null, 'flowableInstance:hisUserTasks', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:11:12', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257271', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例追踪', 'sys_flw_instance_mgr_trace', '2', null, null, null, 'flowableInstance:trace', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:11:31', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257281', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例挂起', 'sys_flw_instance_mgr_suspend', '2', null, null, null, 'flowableInstance:suspend', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:11:48', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257291', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例激活', 'sys_flw_instance_mgr_active', '2', null, null, null, 'flowableInstance:active', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:12:00', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257301', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例历史审批记录', 'sys_flw_instance_mgr_comment_history', '2', null, null, null, 'flowableInstance:commentHistory', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:12:13', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257311', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例任务查询', 'sys_flw_instance_mgr_task_page', '2', null, null, null, 'flowableInstanceTask:page', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:13:41', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257312', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例表单数据', 'sys_flw_instance_mgr_form_data', '2', null, null, null, 'flowableInstance:formData', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:13:41', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257313', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '加签用户选择器', 'sys_flw_instance_mgr_add_sign_user_selector', '2', null, null, null, 'flowableInstance:addSignUserSelector', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:13:41', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257314', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '减签用户选择器', 'sys_flw_instance_mgr_delete_sign_user_selector', '2', null, null, null, 'flowableInstance:deleteSignUserSelector', 'office', '0', 'Y', null, null, '0', '100', null, '0', '2020-05-27 16:13:41', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257321', '0', '[0],', '在线办公', 'sys_flw_office', '0', 'laptop', '/handle', 'PageView', null, 'office', '1', 'Y', null, null, '1', '10', null, '0', '2020-05-27 16:55:15', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257331', '1264622039642257321', '[0],[1264622039642257321],', '我的任务', 'sys_flw_task_mgr', '0', null, '/task', 'RouteView', null, 'office', '1', 'Y', null, null, '1', '30', null, '0', '2020-05-27 16:16:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257341', '1264622039642257331', '[0],[1264622039642257321],[1264622039642257331],', '待办任务', 'sys_flw_task_mgr_todo_task', '1', null, '/todoTask', 'flowable/task/todoTask/index', null, 'office', '1', 'Y', null, null, '1', '1', null, '0', '2020-05-27 16:18:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257351', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务查询', 'sys_flw_task_mgr_todo_task_page', '2', null, null, null, 'flowableTodoTask:page', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:19:11', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257361', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '流程发起', 'sys_flw_task_mgr_todo_task_start', '2', null, null, null, 'flowableHandleTask:start', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:39:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257371', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务提交', 'sys_flw_task_mgr_todo_task_submit', '2', null, null, null, 'flowableHandleTask:submit', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:39:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257381', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务保存', 'sys_flw_task_mgr_todo_task_save', '2', null, null, null, 'flowableHandleTask:save', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:39:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257391', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务退回', 'sys_flw_task_mgr_todo_task_back', '2', null, null, null, 'flowableHandleTask:back', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:39:46', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257401', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务转办', 'sys_flw_task_mgr_todo_task_turn', '2', null, null, null, 'flowableHandleTask:turn', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:39:46', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257411', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务委托', 'sys_flw_task_mgr_todo_task_entrust', '2', null, null, null, 'flowableHandleTask:entrust', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:40:03', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257421', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务终止', 'sys_flw_task_mgr_todo_task_end', '2', null, null, null, 'flowableHandleTask:end', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:40:19', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257431', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务挂起', 'sys_flw_task_mgr_todo_task_suspend', '2', null, null, null, 'flowableHandleTask:suspend', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:40:40', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257441', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务跳转', 'sys_flw_task_mgr_todo_task_jump', '2', null, null, null, 'flowableHandleTask:jump', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:40:52', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257451', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务加签', 'sys_flw_task_mgr_todo_task_add_sign', '2', null, null, null, 'flowableHandleTask:addSign', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:41:03', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257461', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务减签', 'sys_flw_task_mgr_todo_task_delete_sign', '2', null, null, null, 'flowableHandleTask:deleteSign', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:41:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257462', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务数据', 'sys_flw_task_mgr_todo_task_task_data', '2', null, null, null, 'flowableHandleTask:taskData', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:41:16', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257471', '1264622039642257331', '[0],[1264622039642257321],[1264622039642257331],', '已办任务', 'sys_flw_task_mgr_done_task', '1', null, '/doneTask', 'flowable/task/doneTask/index', null, 'office', '1', 'Y', null, null, '1', '2', null, '0', '2020-05-27 16:19:29', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257481', '1264622039642257471', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', '已办任务查询', 'sys_flw_task_mgr_done_task_page', '2', null, null, null, 'flowableDoneTask:page', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257491', '1264622039642257321', '[0],[1264622039642257321],', '我的申请', 'sys_flw_apply_mgr', '0', null, '/myapply', 'RouteView', null, 'office', '1', 'Y', null, null, '1', '31', null, '0', '2020-07-02 14:22:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257501', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '起草申请', 'sys_flw_apply_mgr_draft_apply_mgr', '1', null, '/drafapply', 'flowable/draftapply/index', null, 'office', '1', 'Y', null, null, '1', '100', null, '0', '2020-07-02 14:24:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257511', '1264622039642257501', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', '起草入口列表', 'sys_flw_apply_mgr_draft_apply_mgr_list', '2', null, null, null, 'flowableShortcut:list', 'office', '1', 'Y', null, null, '0', '100', null, '0', '2020-07-02 14:25:19', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257521', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '起草表单填写', 'sys_flw_apply_mgr_draft_apply_mgr_apply_form', '1', null, '/draftapply/form', 'flowable/draftapply/form', null, 'office', '1', 'N', null, null, '1', '1', null, '2', '2020-08-21 22:33:38', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257522', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '申请草稿', 'sys_flw_mgr_draft_mgr', '1', null, '/draft', 'flowable/draft/index', null, 'office', '1', 'Y', null, null, '1', '100', null, '0', '2020-09-09 15:32:40', '1265476890672672808', '2020-09-09 23:47:48', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257523', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿查询', 'sys_flw_mgr_draft_mgr_page', '2', null, null, null, 'flowableDraft:page', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257524', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿添加或编辑', 'sys_flw_mgr_draft_mgr_add_or_update', '2', null, null, null, 'flowableDraft:addOrUpdate', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257525', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿删除', 'sys_flw_mgr_draft_mgr_delete', '2', null, null, null, 'flowableDraft:delete', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257531', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '已发申请', 'sys_flw_apply_mgr_applyed_mgr', '1', null, '/applyed', 'flowable/applyed/index', null, 'office', '1', 'Y', null, null, '1', '100', null, '0', '2020-07-02 14:24:22', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257532', '1264622039642257531', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', '已发申请查询', 'sys_flw_apply_mgr_applyed_mgr_page', '2', null, null, null, 'flowableInstance:my', 'office', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257641', '0', '[0],', '多数据源', 'dbs_databaseInfo', '0', 'sliders', '/database', 'PageView', null, 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-08-26 00:53:28', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257642', '1264622039642257641', '[0],[1264622039642257641],', '数据源管理', 'dbs_databaseInfo_mgr', '1', null, '/databaseInfo', 'dbs/databaseInfo/index', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:18:53', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257643', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源查询', 'dbs_databaseInfo_mgr_page', '2', null, null, null, 'databaseInfo:page', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257644', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源增加', 'dbs_databaseInfo_mgr_add', '2', null, null, null, 'databaseInfo:add', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257645', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源编辑', 'dbs_databaseInfo_mgr_edit', '2', null, null, null, 'databaseInfo:edit', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257646', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源删除', 'dbs_databaseInfo_mgr_delete', '2', null, null, null, 'databaseInfo:delete', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:32', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257651', '0', '[0],', 'SaaS租户', 'tenant_tenantInfo', '0', 'switcher', '/tenant', 'PageView', null, 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-08-26 00:53:28', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257652', '1264622039642257651', '[0],[1264622039642256611],', '租户管理', 'tenant_tenantInfo_mgr', '1', null, '/tenantInfo', 'tenant/tenantInfo/index', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-07-01 17:18:53', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257653', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户查询', 'tenant_tenantInfo_mgr_page', '2', null, null, null, 'tenantInfo:page', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257654', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户新增', 'tenant_tenantInfo_mgr_add', '2', null, null, null, 'tenantInfo:add', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257655', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户编辑', 'tenant_tenantInfo_mgr_edit', '2', null, null, null, 'tenantInfo:edit', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257656', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户删除', 'tenant_tenantInfo_mgr_delete', '2', null, null, null, 'tenantInfo:delete', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257657', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户查看', 'tenant_tenantInfo_mgr_detail', '2', null, null, null, 'tenantInfo:detail', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257658', '1264622039642257652', '[0],[1264622039642257651],[1264622039642257652],', '租户列表', 'tenant_tenantInfo_mgr_list', '2', null, null, null, 'tenantInfo:list', 'experience', '0', 'Y', null, null, '1', '100', null, '0', '2020-05-27 16:20:01', '1265476890672672808', '2020-09-23 22:00:39', '1265476890672672808');
INSERT INTO `sys_menu` VALUES ('1264622039642257671', '0', '[0],', '支付管理', 'pay_manage', '0', 'strikethrough', '/paymanage', 'PageView', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-09-03 00:35:34', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257681', '1264622039642257671', '[0],[1264622039642257671],', '支付体验', 'pay_manage_index', '1', '', '/pay/index', 'pay/index', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-08-26 14:55:08', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257691', '1264622039642257671', '[0],[1264622039642257671],', '支付订单', 'pay_manage_order', '1', null, '/pay/alipay/index', 'pay/alipay/index', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-09-03 00:39:56', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1264622039642257701', '0', '[0],', '设计表单', 'form_design', '1', 'pic-left', '/formdesign', 'formDesign', null, 'experience', '1', 'Y', null, null, '1', '100', null, '0', '2020-08-15 15:48:23', '1265476890672672808', null, null);
INSERT INTO `sys_menu` VALUES ('1342451789402411009', '0', '[0],', '代码生成', 'code_gen', '1', 'thunderbolt', '/codeGenerate/index', 'gen/codeGenerate/index', '', 'system_tool', '1', 'Y', null, '', '1', '100', '代码生成', '0', '2020-12-25 20:47:03', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(1000) DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '内容',
  `type` tinyint(4) NOT NULL COMMENT '类型（字典 1通知 2公告）',
  `public_user_id` bigint(20) NOT NULL COMMENT '发布人id',
  `public_user_name` varchar(100) NOT NULL COMMENT '发布人姓名',
  `public_org_id` bigint(20) DEFAULT NULL COMMENT '发布机构id',
  `public_org_name` varchar(50) DEFAULT NULL COMMENT '发布机构名称',
  `public_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤回时间',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0草稿 1发布 2撤回 3删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1304960081456066561', 'qqqq', 0x7171717171713C703E3C2F703E, '1', '1265476890672672808', '超级管理员', null, null, '2020-09-13 09:48:23', '2020-09-13 09:52:26', '3', '2020-09-13 09:48:23', '1265476890672672808', '2020-09-13 09:52:27', '1280700700074041345');
INSERT INTO `sys_notice` VALUES ('1304960124862918657', '123123123', 0x3C703E32333132333132333132333132333C2F703E, '2', '1265476890672672808', '超级管理员', null, null, '2020-09-13 09:48:33', '2020-09-13 09:52:28', '3', '2020-09-13 09:48:33', '1265476890672672808', '2020-09-13 09:52:40', '1280700700074041345');
INSERT INTO `sys_notice` VALUES ('1304961721068220417', '北京的秋天', 0x3C703E3C696D67207372633D2268747470733A2F2F74696D6773612E62616964752E636F6D2F74696D673F696D61676526616D703B7175616C6974793D383026616D703B73697A653D62393939395F313030303026616D703B7365633D3135393939373230373136383826616D703B64693D396436393238303737313730313865396633366463323039623866326132393026616D703B696D67747970653D3026616D703B7372633D68747470253341253246253246696D67312E696D67746E2E6264696D672E636F6D2532466974253246752533443331373838363937333625324331343330323430373631253236666D2533443231342532366770253344302E6A7067223E266E6273703B266E6273703B3C62723E3C2F703E, '1', '1280700700074041345', '老俞', '1265476890672672771', '研发部', '2020-09-13 09:54:54', null, '1', '2020-09-13 09:54:54', '1280700700074041345', null, null);
INSERT INTO `sys_notice` VALUES ('1304964964817104898', '北京的秋天', 0x3C646976207374796C653D22746578742D616C69676E3A2063656E7465723B223E3C696D67207372633D2268747470733A2F2F74696D6773612E62616964752E636F6D2F74696D673F696D61676526616D703B7175616C6974793D383026616D703B73697A653D62393939395F313030303026616D703B7365633D3135393939373239333632343026616D703B64693D306336353631306137306137663864653236653834663531646137373630346626616D703B696D67747970653D3026616D703B7372633D68747470253341253246253246696D67312E696D67746E2E6264696D672E636F6D2532466974253246752533443331373838363937333625324331343330323430373631253236666D2533443231342532366770253344302E6A7067223E266E6273703B266E6273703B3C62723E3C2F6469763E3C703E3C2F703E, '1', '1265476890672672808', '超级管理员', null, null, '2020-09-13 10:07:47', null, '1', '2020-09-13 10:07:47', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_notice_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_user`;
CREATE TABLE `sys_notice_user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `notice_id` bigint(20) NOT NULL COMMENT '通知公告id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `status` tinyint(4) NOT NULL COMMENT '状态（字典 0未读 1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户数据范围表';

-- ----------------------------
-- Records of sys_notice_user
-- ----------------------------
INSERT INTO `sys_notice_user` VALUES ('1304960081539952642', '1304960081456066561', '1280700700074041345', '0', null);
INSERT INTO `sys_notice_user` VALUES ('1304960124934221825', '1304960124862918657', '1280700700074041345', '1', '2020-09-13 09:49:02');
INSERT INTO `sys_notice_user` VALUES ('1304961721131134977', '1304961721068220417', '1280700700074041345', '1', '2020-09-13 09:54:56');
INSERT INTO `sys_notice_user` VALUES ('1304964964875825153', '1304964964817104898', '1280700700074041345', '0', null);

-- ----------------------------
-- Table structure for `sys_oauth_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_user`;
CREATE TABLE `sys_oauth_user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `uuid` varchar(255) NOT NULL COMMENT '第三方平台的用户唯一id',
  `access_token` varchar(255) DEFAULT NULL COMMENT '用户授权的token',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(500) DEFAULT NULL COMMENT '头像',
  `blog` varchar(255) DEFAULT NULL COMMENT '用户网址',
  `company` varchar(255) DEFAULT NULL COMMENT '所在公司',
  `location` varchar(255) DEFAULT NULL COMMENT '位置',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `gender` varchar(50) DEFAULT NULL COMMENT '性别',
  `source` varchar(255) DEFAULT NULL COMMENT '用户来源',
  `remark` varchar(255) DEFAULT NULL COMMENT '用户备注（各平台中的用户个人介绍）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='第三方认证用户信息表';

-- ----------------------------
-- Records of sys_oauth_user
-- ----------------------------
INSERT INTO `sys_oauth_user` VALUES ('1288324058135449602', '1564001', '29b2ce48dc050056503c2cf237648e43', '就是那个锅', 'https://portrait.gitee.com/uploads/avatars/user/521/1564001_tpot_1590649435.png', 'http://tpot.com.cn', null, null, '1633655315@qq.com', '未知', 'GITEE', '', '2020-07-29 12:02:46', '-1', null, null);

-- ----------------------------
-- Table structure for `sys_op_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_op_log`;
CREATE TABLE `sys_op_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `op_type` tinyint(4) DEFAULT NULL COMMENT '操作类型',
  `success` char(1) DEFAULT NULL COMMENT '是否执行成功（Y-是，N-否）',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
  `url` varchar(500) DEFAULT NULL COMMENT '请求地址',
  `class_name` varchar(500) DEFAULT NULL COMMENT '类名称',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '方法名称',
  `req_method` varchar(255) DEFAULT NULL COMMENT '请求方式（GET POST PUT DELETE)',
  `param` text COMMENT '请求参数',
  `result` longtext COMMENT '返回结果',
  `op_time` datetime DEFAULT NULL COMMENT '操作时间',
  `account` varchar(50) DEFAULT NULL COMMENT '操作账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统操作日志表';

-- ----------------------------
-- Records of sys_op_log
-- ----------------------------
INSERT INTO `sys_op_log` VALUES ('1342452085335724034', '操作日志_清空', '12', 'Y', 0xE68890E58A9F, '127.0.0.1', '-', 'Chrome', 'Windows 10 or Windows Server 2016', '/sysOpLog/delete', 'com.cn.xiaonuo.sys.modular.log.controller.SysLogController', 'opLogDelete', 'POST', '', '{\"code\":200,\"message\":\"请求成功\",\"success\":true}', '2020-12-25 20:48:13', 'superAdmin');

-- ----------------------------
-- Table structure for `sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `pid` bigint(20) NOT NULL COMMENT '父id',
  `pids` text NOT NULL COMMENT '父ids',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统组织机构表';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('1265476890651701250', '0', '[0],', '华夏集团', 'hxjt', '100', '华夏集团总公司', '0', '2020-03-26 16:50:53', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672769', '1265476890651701250', '[0],[1265476890651701250],', '华夏集团北京分公司', 'hxjt_bj', '100', '华夏集团北京分公司', '0', '2020-03-26 16:55:42', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672770', '1265476890651701250', '[0],[1265476890651701250],', '华夏集团成都分公司', 'hxjt_cd', '100', '华夏集团成都分公司', '0', '2020-03-26 16:56:02', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672771', '1265476890672672769', '[0],[1265476890651701250],[1265476890672672769],', '研发部', 'hxjt_bj_yfb', '100', '华夏集团北京分公司研发部', '0', '2020-03-26 16:56:36', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672772', '1265476890672672769', '[0],[1265476890651701250],[1265476890672672769],', '企划部', 'hxjt_bj_qhb', '100', '华夏集团北京分公司企划部', '0', '2020-03-26 16:57:06', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672773', '1265476890672672770', '[0],[1265476890651701250],[1265476890672672770],', '市场部', 'hxjt_cd_scb', '100', '华夏集团成都分公司市场部', '0', '2020-03-26 16:57:35', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672774', '1265476890672672770', '[0],[1265476890651701250],[1265476890672672770],', '财务部', 'hxjt_cd_cwb', '100', '华夏集团成都分公司财务部', '0', '2020-03-26 16:58:01', '1265476890672672808', null, null);
INSERT INTO `sys_org` VALUES ('1265476890672672775', '1265476890672672773', '[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', '市场部二部', 'hxjt_cd_scb_2b', '100', '华夏集团成都分公司市场部二部', '0', '2020-04-06 15:36:50', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_pos`
-- ----------------------------
DROP TABLE IF EXISTS `sys_pos`;
CREATE TABLE `sys_pos` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `CODE_UNI` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统职位表';

-- ----------------------------
-- Records of sys_pos
-- ----------------------------
INSERT INTO `sys_pos` VALUES ('1265476890672672787', '总经理', 'zjl', '100', '总经理职位', '0', '2020-03-26 19:28:54', '1265476890672672808', '2020-06-02 21:01:04', '1265476890672672808');
INSERT INTO `sys_pos` VALUES ('1265476890672672788', '副总经理', 'fzjl', '100', '副总经理职位', '0', '2020-03-26 19:29:57', '1265476890672672808', null, null);
INSERT INTO `sys_pos` VALUES ('1265476890672672789', '部门经理', 'bmjl', '100', '部门经理职位', '0', '2020-03-26 19:31:49', '1265476890672672808', null, null);
INSERT INTO `sys_pos` VALUES ('1265476890672672790', '工作人员', 'gzry', '100', '工作人员职位', '0', '2020-05-27 11:32:00', '1265476890672672808', '2020-06-01 10:51:35', '1265476890672672808');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `sort` int(11) NOT NULL COMMENT '序号',
  `data_scope_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1停用 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1265476890672672817', '组织架构管理员', 'ent_manager_role', '100', '1', '组织架构管理员', '0', '2020-04-02 19:27:26', '1265476890672672808', '2020-09-12 15:54:07', '1265476890672672808');
INSERT INTO `sys_role` VALUES ('1265476890672672818', '权限管理员', 'auth_role', '101', '5', '权限管理员', '0', '2020-04-02 19:28:40', '1265476890672672808', '2020-07-16 10:52:21', '1265476890672672808');
INSERT INTO `sys_role` VALUES ('1265476890672672819', '公告发布员', 'notice_produce_role', '102', '5', '公告发布员', '0', '2020-05-29 15:48:11', '1265476890672672808', '2020-08-08 19:28:34', '1265476890672672808');

-- ----------------------------
-- Table structure for `sys_role_data_scope`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_data_scope`;
CREATE TABLE `sys_role_data_scope` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统角色数据范围表';

-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO `sys_role_data_scope` VALUES ('1277435908822102018', '1265476890672672818', '1265476890651701250');
INSERT INTO `sys_role_data_scope` VALUES ('1277435909635796993', '1265476890672672818', '1265476890672672769');
INSERT INTO `sys_role_data_scope` VALUES ('1277435910432714754', '1265476890672672818', '1265476890672672771');
INSERT INTO `sys_role_data_scope` VALUES ('1277435911233826818', '1265476890672672818', '1265476890672672772');
INSERT INTO `sys_role_data_scope` VALUES ('1277435912018161666', '1265476890672672818', '1265476890672672770');
INSERT INTO `sys_role_data_scope` VALUES ('1277435912810885122', '1265476890672672818', '1265476890672672773');
INSERT INTO `sys_role_data_scope` VALUES ('1277435913595219970', '1265476890672672818', '1265476890672672775');
INSERT INTO `sys_role_data_scope` VALUES ('1277435914392137730', '1265476890672672818', '1265476890672672774');
INSERT INTO `sys_role_data_scope` VALUES ('1292060127645429762', '1265476890672672819', '1265476890672672774');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1304366872187256834', '1265476890672672818', '1264622039642255671');
INSERT INTO `sys_role_menu` VALUES ('1304366872602492929', '1265476890672672818', '1264622039642255681');
INSERT INTO `sys_role_menu` VALUES ('1304366873026117634', '1265476890672672818', '1264622039642255761');
INSERT INTO `sys_role_menu` VALUES ('1304366873449742337', '1265476890672672818', '1264622039642255851');
INSERT INTO `sys_role_menu` VALUES ('1304366873864978433', '1265476890672672818', '1264622039642255691');
INSERT INTO `sys_role_menu` VALUES ('1304366874284408834', '1265476890672672818', '1264622039642255701');
INSERT INTO `sys_role_menu` VALUES ('1304366874703839233', '1265476890672672818', '1264622039642255711');
INSERT INTO `sys_role_menu` VALUES ('1304366875119075330', '1265476890672672818', '1264622039642255721');
INSERT INTO `sys_role_menu` VALUES ('1304366875538505730', '1265476890672672818', '1264622039642255731');
INSERT INTO `sys_role_menu` VALUES ('1304366875962130433', '1265476890672672818', '1264622039642255741');
INSERT INTO `sys_role_menu` VALUES ('1304366876377366529', '1265476890672672818', '1264622039642255751');
INSERT INTO `sys_role_menu` VALUES ('1304366876800991233', '1265476890672672818', '1264622039642255771');
INSERT INTO `sys_role_menu` VALUES ('1304366877216227330', '1265476890672672818', '1264622039642255781');
INSERT INTO `sys_role_menu` VALUES ('1304366877639852033', '1265476890672672818', '1264622039642255791');
INSERT INTO `sys_role_menu` VALUES ('1304366878067671041', '1265476890672672818', '1264622039642255801');
INSERT INTO `sys_role_menu` VALUES ('1304366878487101441', '1265476890672672818', '1264622039642255811');
INSERT INTO `sys_role_menu` VALUES ('1304366878898143233', '1265476890672672818', '1264622039642255821');
INSERT INTO `sys_role_menu` VALUES ('1304366879325962242', '1265476890672672818', '1264622039642255831');
INSERT INTO `sys_role_menu` VALUES ('1304366879745392641', '1265476890672672818', '1264622039642255841');
INSERT INTO `sys_role_menu` VALUES ('1304366880160628738', '1265476890672672818', '1264622039642255881');
INSERT INTO `sys_role_menu` VALUES ('1304366880580059138', '1265476890672672818', '1264622039642255891');
INSERT INTO `sys_role_menu` VALUES ('1304366880999489537', '1265476890672672818', '1264622039642255901');
INSERT INTO `sys_role_menu` VALUES ('1304366881423114242', '1265476890672672818', '1264622039642255911');
INSERT INTO `sys_role_menu` VALUES ('1304366881838350338', '1265476890672672818', '1264622039642255921');
INSERT INTO `sys_role_menu` VALUES ('1304366882261975042', '1265476890672672818', '1264622039642255931');
INSERT INTO `sys_role_menu` VALUES ('1304366882685599745', '1265476890672672818', '1264622039642255941');
INSERT INTO `sys_role_menu` VALUES ('1304366883100835842', '1265476890672672818', '1264622039642255951');
INSERT INTO `sys_role_menu` VALUES ('1304366883520266242', '1265476890672672818', '1264622039642255861');
INSERT INTO `sys_role_menu` VALUES ('1304366883939696642', '1265476890672672818', '1264622039642255871');
INSERT INTO `sys_role_menu` VALUES ('1304366884363321346', '1265476890672672818', '1264622039642257021');
INSERT INTO `sys_role_menu` VALUES ('1304366884782751746', '1265476890672672818', '1264622039642257031');
INSERT INTO `sys_role_menu` VALUES ('1304366885197987842', '1265476890672672818', '1264622039642256831');
INSERT INTO `sys_role_menu` VALUES ('1304366885617418242', '1265476890672672818', '1264622039642257261');
INSERT INTO `sys_role_menu` VALUES ('1304366886045237250', '1265476890672672818', '1264622039642257271');
INSERT INTO `sys_role_menu` VALUES ('1304366886473056258', '1265476890672672818', '1264622039642257301');
INSERT INTO `sys_role_menu` VALUES ('1304366886884098050', '1265476890672672818', '1264622039642257321');
INSERT INTO `sys_role_menu` VALUES ('1304366887307722754', '1265476890672672818', '1264622039642257331');
INSERT INTO `sys_role_menu` VALUES ('1304366887722958850', '1265476890672672818', '1264622039642257471');
INSERT INTO `sys_role_menu` VALUES ('1304366888142389250', '1265476890672672818', '1264622039642257481');
INSERT INTO `sys_role_menu` VALUES ('1304366888566013954', '1265476890672672818', '1264622039642257341');
INSERT INTO `sys_role_menu` VALUES ('1304366888981250049', '1265476890672672818', '1264622039642257411');
INSERT INTO `sys_role_menu` VALUES ('1304366889404874754', '1265476890672672818', '1264622039642257421');
INSERT INTO `sys_role_menu` VALUES ('1304366889820110850', '1265476890672672818', '1264622039642257431');
INSERT INTO `sys_role_menu` VALUES ('1304366890235346946', '1265476890672672818', '1264622039642257441');
INSERT INTO `sys_role_menu` VALUES ('1304366890663165954', '1265476890672672818', '1264622039642257451');
INSERT INTO `sys_role_menu` VALUES ('1304366891082596354', '1265476890672672818', '1264622039642257461');
INSERT INTO `sys_role_menu` VALUES ('1304366891506221057', '1265476890672672818', '1264622039642257351');
INSERT INTO `sys_role_menu` VALUES ('1304366891925651458', '1265476890672672818', '1264622039642257361');
INSERT INTO `sys_role_menu` VALUES ('1304366892345081858', '1265476890672672818', '1264622039642257371');
INSERT INTO `sys_role_menu` VALUES ('1304366892764512258', '1265476890672672818', '1264622039642257381');
INSERT INTO `sys_role_menu` VALUES ('1304366893183942658', '1265476890672672818', '1264622039642257391');
INSERT INTO `sys_role_menu` VALUES ('1304366893607567361', '1265476890672672818', '1264622039642257401');
INSERT INTO `sys_role_menu` VALUES ('1304366894031192065', '1265476890672672818', '1264622039642257491');
INSERT INTO `sys_role_menu` VALUES ('1304366894446428162', '1265476890672672818', '1264622039642257501');
INSERT INTO `sys_role_menu` VALUES ('1304366894865858562', '1265476890672672818', '1264622039642257511');
INSERT INTO `sys_role_menu` VALUES ('1304366895285288961', '1265476890672672818', '1264622039642255591');
INSERT INTO `sys_role_menu` VALUES ('1304366895708913665', '1265476890672672818', '1264622039642257061');
INSERT INTO `sys_role_menu` VALUES ('1304366896132538369', '1265476890672672818', '1264622039642257462');
INSERT INTO `sys_role_menu` VALUES ('1304366896556163074', '1265476890672672818', '1264622039642256912');
INSERT INTO `sys_role_menu` VALUES ('1304366896979787777', '1265476890672672818', '1264622039642255421');
INSERT INTO `sys_role_menu` VALUES ('1304366897399218178', '1265476890672672818', '1264622039642257022');
INSERT INTO `sys_role_menu` VALUES ('1304366897827037185', '1265476890672672818', '1264622039642256821');
INSERT INTO `sys_role_menu` VALUES ('1304366898242273282', '1265476890672672818', '1264622039642257311');
INSERT INTO `sys_role_menu` VALUES ('1304366898670092290', '1265476890672672818', '1264622039642257312');
INSERT INTO `sys_role_menu` VALUES ('1304366899089522690', '1265476890672672818', '1264622039642257313');
INSERT INTO `sys_role_menu` VALUES ('1304366899508953089', '1265476890672672818', '1264622039642257314');
INSERT INTO `sys_role_menu` VALUES ('1304366899932577793', '1265476890672672818', '1264622039642257522');
INSERT INTO `sys_role_menu` VALUES ('1304366900352008193', '1265476890672672818', '1264622039642257523');
INSERT INTO `sys_role_menu` VALUES ('1304366900771438594', '1265476890672672818', '1264622039642257524');
INSERT INTO `sys_role_menu` VALUES ('1304366901190868994', '1265476890672672818', '1264622039642257525');
INSERT INTO `sys_role_menu` VALUES ('1304366901610299394', '1265476890672672818', '1264622039642257531');
INSERT INTO `sys_role_menu` VALUES ('1304366902033924097', '1265476890672672818', '1264622039642257532');
INSERT INTO `sys_role_menu` VALUES ('1307864773769273346', '1265476890672672819', '1264622039642256431');
INSERT INTO `sys_role_menu` VALUES ('1307864774197092353', '1265476890672672819', '1264622039642256421');
INSERT INTO `sys_role_menu` VALUES ('1307864774624911362', '1265476890672672819', '1264622039642256441');
INSERT INTO `sys_role_menu` VALUES ('1307864775048536065', '1265476890672672819', '1264622039642256451');
INSERT INTO `sys_role_menu` VALUES ('1307864775467966465', '1265476890672672819', '1264622039642256461');
INSERT INTO `sys_role_menu` VALUES ('1307864775887396866', '1265476890672672819', '1264622039642256471');
INSERT INTO `sys_role_menu` VALUES ('1307864776311021570', '1265476890672672819', '1264622039642256481');
INSERT INTO `sys_role_menu` VALUES ('1307864776730451969', '1265476890672672819', '1264622039642256491');
INSERT INTO `sys_role_menu` VALUES ('1307864777154076673', '1265476890672672819', '1264622039642256501');
INSERT INTO `sys_role_menu` VALUES ('1307864777573507074', '1265476890672672819', '1264622039642256511');
INSERT INTO `sys_role_menu` VALUES ('1307864778005520386', '1265476890672672819', '1264622039642255421');
INSERT INTO `sys_role_menu` VALUES ('1307864778424950785', '1265476890672672819', '1264622039642257321');
INSERT INTO `sys_role_menu` VALUES ('1307864778840186881', '1265476890672672819', '1264622039642257331');
INSERT INTO `sys_role_menu` VALUES ('1307864779263811585', '1265476890672672819', '1264622039642257021');
INSERT INTO `sys_role_menu` VALUES ('1307864779683241986', '1265476890672672819', '1264622039642257011');
INSERT INTO `sys_role_menu` VALUES ('1307864780106866689', '1265476890672672819', '1264622039642256831');
INSERT INTO `sys_role_menu` VALUES ('1307864780530491393', '1265476890672672819', '1264622039642257061');
INSERT INTO `sys_role_menu` VALUES ('1307864780945727489', '1265476890672672819', '1264622039642257501');
INSERT INTO `sys_role_menu` VALUES ('1307864781369352193', '1265476890672672819', '1264622039642257491');
INSERT INTO `sys_role_menu` VALUES ('1307864781792976897', '1265476890672672819', '1264622039642257511');
INSERT INTO `sys_role_menu` VALUES ('1307864782216601602', '1265476890672672819', '1264622039642257271');
INSERT INTO `sys_role_menu` VALUES ('1307864782631837697', '1265476890672672819', '1264622039642257261');
INSERT INTO `sys_role_menu` VALUES ('1307864783063851009', '1265476890672672819', '1264622039642257301');
INSERT INTO `sys_role_menu` VALUES ('1307864783483281410', '1265476890672672819', '1264622039642257471');
INSERT INTO `sys_role_menu` VALUES ('1307864783902711809', '1265476890672672819', '1264622039642257341');
INSERT INTO `sys_role_menu` VALUES ('1307864784322142210', '1265476890672672819', '1264622039642257481');
INSERT INTO `sys_role_menu` VALUES ('1307864784745766913', '1265476890672672819', '1264622039642257411');
INSERT INTO `sys_role_menu` VALUES ('1307864785169391618', '1265476890672672819', '1264622039642257431');
INSERT INTO `sys_role_menu` VALUES ('1307864785588822018', '1265476890672672819', '1264622039642257421');
INSERT INTO `sys_role_menu` VALUES ('1307864786012446722', '1265476890672672819', '1264622039642257441');
INSERT INTO `sys_role_menu` VALUES ('1307864786436071426', '1265476890672672819', '1264622039642257451');
INSERT INTO `sys_role_menu` VALUES ('1307864786859696130', '1265476890672672819', '1264622039642257461');
INSERT INTO `sys_role_menu` VALUES ('1307864787274932225', '1265476890672672819', '1264622039642257351');
INSERT INTO `sys_role_menu` VALUES ('1307864787702751233', '1265476890672672819', '1264622039642257361');
INSERT INTO `sys_role_menu` VALUES ('1307864788113793026', '1265476890672672819', '1264622039642257371');
INSERT INTO `sys_role_menu` VALUES ('1307864788541612034', '1265476890672672819', '1264622039642257381');
INSERT INTO `sys_role_menu` VALUES ('1307864788961042433', '1265476890672672819', '1264622039642257391');
INSERT INTO `sys_role_menu` VALUES ('1307864789384667138', '1265476890672672819', '1264622039642257401');
INSERT INTO `sys_role_menu` VALUES ('1307864789808291841', '1265476890672672819', '1264622039642257462');
INSERT INTO `sys_role_menu` VALUES ('1307864790227722241', '1265476890672672819', '1264622039642257031');
INSERT INTO `sys_role_menu` VALUES ('1307864790659735554', '1265476890672672819', '1264622039642256912');
INSERT INTO `sys_role_menu` VALUES ('1307864791079165953', '1265476890672672819', '1264622039642257022');
INSERT INTO `sys_role_menu` VALUES ('1307864791494402050', '1265476890672672819', '1264622039642257311');
INSERT INTO `sys_role_menu` VALUES ('1307864791913832450', '1265476890672672819', '1264622039642257312');
INSERT INTO `sys_role_menu` VALUES ('1307864792345845762', '1265476890672672819', '1264622039642257313');
INSERT INTO `sys_role_menu` VALUES ('1307864792769470465', '1265476890672672819', '1264622039642257314');
INSERT INTO `sys_role_menu` VALUES ('1307864793193095169', '1265476890672672819', '1264622039642257522');
INSERT INTO `sys_role_menu` VALUES ('1307864793612525570', '1265476890672672819', '1264622039642257523');
INSERT INTO `sys_role_menu` VALUES ('1307864794027761665', '1265476890672672819', '1264622039642257524');
INSERT INTO `sys_role_menu` VALUES ('1307864794459774978', '1265476890672672819', '1264622039642257525');
INSERT INTO `sys_role_menu` VALUES ('1307864794875011073', '1265476890672672819', '1264622039642257532');
INSERT INTO `sys_role_menu` VALUES ('1307864795307024385', '1265476890672672819', '1264622039642257531');
INSERT INTO `sys_role_menu` VALUES ('1307864795722260482', '1265476890672672819', '1264622039642256821');
INSERT INTO `sys_role_menu` VALUES ('1307864929906434049', '1265476890672672817', '1264622039642255311');
INSERT INTO `sys_role_menu` VALUES ('1307864930338447362', '1265476890672672817', '1264622039642255331');
INSERT INTO `sys_role_menu` VALUES ('1307864930753683457', '1265476890672672817', '1264622039642255321');
INSERT INTO `sys_role_menu` VALUES ('1307864931181502465', '1265476890672672817', '1264622039642255341');
INSERT INTO `sys_role_menu` VALUES ('1307864931596738561', '1265476890672672817', '1264622039642255351');
INSERT INTO `sys_role_menu` VALUES ('1307864932020363266', '1265476890672672817', '1264622039642255361');
INSERT INTO `sys_role_menu` VALUES ('1307864932439793666', '1265476890672672817', '1264622039642255371');
INSERT INTO `sys_role_menu` VALUES ('1307864932863418369', '1265476890672672817', '1264622039642255381');
INSERT INTO `sys_role_menu` VALUES ('1307864933287043073', '1265476890672672817', '1264622039642255391');
INSERT INTO `sys_role_menu` VALUES ('1307864933706473474', '1265476890672672817', '1264622039642255401');
INSERT INTO `sys_role_menu` VALUES ('1307864934130098177', '1265476890672672817', '1264622039642255411');
INSERT INTO `sys_role_menu` VALUES ('1307864934553722881', '1265476890672672817', '1264622039642255421');
INSERT INTO `sys_role_menu` VALUES ('1307864934973153281', '1265476890672672817', '1264622039642255431');
INSERT INTO `sys_role_menu` VALUES ('1307864935392583681', '1265476890672672817', '1264622039642255441');
INSERT INTO `sys_role_menu` VALUES ('1307864935820402689', '1265476890672672817', '1264622039642255451');
INSERT INTO `sys_role_menu` VALUES ('1307864936239833090', '1265476890672672817', '1264622039642255461');
INSERT INTO `sys_role_menu` VALUES ('1307864936663457793', '1265476890672672817', '1264622039642255471');
INSERT INTO `sys_role_menu` VALUES ('1307864937087082498', '1265476890672672817', '1264622039642255481');
INSERT INTO `sys_role_menu` VALUES ('1307864937506512898', '1265476890672672817', '1264622039642255491');
INSERT INTO `sys_role_menu` VALUES ('1307864937938526210', '1265476890672672817', '1264622039642255501');
INSERT INTO `sys_role_menu` VALUES ('1307864938357956610', '1265476890672672817', '1264622039642255511');
INSERT INTO `sys_role_menu` VALUES ('1307864938777387010', '1265476890672672817', '1264622039642255521');
INSERT INTO `sys_role_menu` VALUES ('1307864939201011713', '1265476890672672817', '1264622039642255531');
INSERT INTO `sys_role_menu` VALUES ('1307864939624636418', '1265476890672672817', '1264622039642255541');
INSERT INTO `sys_role_menu` VALUES ('1307864940044066817', '1265476890672672817', '1264622039642255551');
INSERT INTO `sys_role_menu` VALUES ('1307864940467691522', '1265476890672672817', '1264622039642255561');
INSERT INTO `sys_role_menu` VALUES ('1307864940933259265', '1265476890672672817', '1264622039642255571');
INSERT INTO `sys_role_menu` VALUES ('1307864941356883970', '1265476890672672817', '1264622039642255581');
INSERT INTO `sys_role_menu` VALUES ('1307864941776314369', '1265476890672672817', '1264622039642255591');
INSERT INTO `sys_role_menu` VALUES ('1307864942195744769', '1265476890672672817', '1264622039642255601');
INSERT INTO `sys_role_menu` VALUES ('1307864942619369473', '1265476890672672817', '1264622039642255621');
INSERT INTO `sys_role_menu` VALUES ('1307864943042994178', '1265476890672672817', '1264622039642255631');
INSERT INTO `sys_role_menu` VALUES ('1307864943462424577', '1265476890672672817', '1264622039642255641');
INSERT INTO `sys_role_menu` VALUES ('1307864943886049282', '1265476890672672817', '1264622039642255651');
INSERT INTO `sys_role_menu` VALUES ('1307864944309673986', '1265476890672672817', '1264622039642255661');
INSERT INTO `sys_role_menu` VALUES ('1307864944733298690', '1265476890672672817', '1264622039642255611');
INSERT INTO `sys_role_menu` VALUES ('1307864945156923393', '1265476890672672817', '1264622039642257321');
INSERT INTO `sys_role_menu` VALUES ('1307864945576353793', '1265476890672672817', '1264622039642257331');
INSERT INTO `sys_role_menu` VALUES ('1307864945999978497', '1265476890672672817', '1264622039642257471');
INSERT INTO `sys_role_menu` VALUES ('1307864946423603201', '1265476890672672817', '1264622039642257481');
INSERT INTO `sys_role_menu` VALUES ('1307864946847227905', '1265476890672672817', '1264622039642257341');
INSERT INTO `sys_role_menu` VALUES ('1307864947266658305', '1265476890672672817', '1264622039642257411');
INSERT INTO `sys_role_menu` VALUES ('1307864947681894402', '1265476890672672817', '1264622039642257421');
INSERT INTO `sys_role_menu` VALUES ('1307864948109713409', '1265476890672672817', '1264622039642257431');
INSERT INTO `sys_role_menu` VALUES ('1307864948529143810', '1265476890672672817', '1264622039642257441');
INSERT INTO `sys_role_menu` VALUES ('1307864948952768513', '1265476890672672817', '1264622039642257451');
INSERT INTO `sys_role_menu` VALUES ('1307864949380587522', '1265476890672672817', '1264622039642257461');
INSERT INTO `sys_role_menu` VALUES ('1307864949804212225', '1265476890672672817', '1264622039642257351');
INSERT INTO `sys_role_menu` VALUES ('1307864950223642626', '1265476890672672817', '1264622039642257361');
INSERT INTO `sys_role_menu` VALUES ('1307864950638878721', '1265476890672672817', '1264622039642257371');
INSERT INTO `sys_role_menu` VALUES ('1307864951066697729', '1265476890672672817', '1264622039642257381');
INSERT INTO `sys_role_menu` VALUES ('1307864951490322433', '1265476890672672817', '1264622039642257391');
INSERT INTO `sys_role_menu` VALUES ('1307864951913947137', '1265476890672672817', '1264622039642257401');
INSERT INTO `sys_role_menu` VALUES ('1307864952329183233', '1265476890672672817', '1264622039642257491');
INSERT INTO `sys_role_menu` VALUES ('1307864952757002241', '1265476890672672817', '1264622039642257501');
INSERT INTO `sys_role_menu` VALUES ('1307864953176432642', '1265476890672672817', '1264622039642257511');
INSERT INTO `sys_role_menu` VALUES ('1307864953600057346', '1265476890672672817', '1264622039642256831');
INSERT INTO `sys_role_menu` VALUES ('1307864954019487746', '1265476890672672817', '1264622039642257031');
INSERT INTO `sys_role_menu` VALUES ('1307864954447306754', '1265476890672672817', '1264622039642257021');
INSERT INTO `sys_role_menu` VALUES ('1307864954870931458', '1265476890672672817', '1264622039642257061');
INSERT INTO `sys_role_menu` VALUES ('1307864955290361857', '1265476890672672817', '1264622039642257261');
INSERT INTO `sys_role_menu` VALUES ('1307864955709792258', '1265476890672672817', '1264622039642257301');
INSERT INTO `sys_role_menu` VALUES ('1307864956133416962', '1265476890672672817', '1264622039642257271');
INSERT INTO `sys_role_menu` VALUES ('1307864956557041665', '1265476890672672817', '1264622039642257462');
INSERT INTO `sys_role_menu` VALUES ('1307864956976472066', '1265476890672672817', '1264622039642256912');
INSERT INTO `sys_role_menu` VALUES ('1307864957400096770', '1265476890672672817', '1264622039642255911');
INSERT INTO `sys_role_menu` VALUES ('1307864957861470210', '1265476890672672817', '1264622039642257522');
INSERT INTO `sys_role_menu` VALUES ('1307864958280900610', '1265476890672672817', '1264622039642257523');
INSERT INTO `sys_role_menu` VALUES ('1307864958704525314', '1265476890672672817', '1264622039642257524');
INSERT INTO `sys_role_menu` VALUES ('1307864959132344321', '1265476890672672817', '1264622039642257525');
INSERT INTO `sys_role_menu` VALUES ('1307864959555969026', '1265476890672672817', '1264622039642257532');
INSERT INTO `sys_role_menu` VALUES ('1307864959975399425', '1265476890672672817', '1264622039642257531');
INSERT INTO `sys_role_menu` VALUES ('1307864960399024129', '1265476890672672817', '1264622039642257311');
INSERT INTO `sys_role_menu` VALUES ('1307864960822648833', '1265476890672672817', '1264622039642257312');
INSERT INTO `sys_role_menu` VALUES ('1307864961242079233', '1265476890672672817', '1264622039642257313');
INSERT INTO `sys_role_menu` VALUES ('1307864961657315330', '1265476890672672817', '1264622039642257314');
INSERT INTO `sys_role_menu` VALUES ('1307864962085134337', '1265476890672672817', '1264622039642256821');
INSERT INTO `sys_role_menu` VALUES ('1307864962504564737', '1265476890672672817', '1264622039642257022');

-- ----------------------------
-- Table structure for `sys_sms`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `phone_numbers` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `validate_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '短信验证码',
  `template_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '短信模板ID',
  `biz_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '回执id，可根据该id查询具体的发送状态',
  `status` tinyint(4) NOT NULL COMMENT '发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）',
  `source` tinyint(4) NOT NULL COMMENT '来源（字典 1 app， 2 pc， 3 其他）',
  `invalid_time` datetime DEFAULT NULL COMMENT '失效时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='短信信息发送表';

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_tenant_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_info`;
CREATE TABLE `sys_tenant_info` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '租户名称',
  `code` varchar(255) DEFAULT NULL COMMENT '租户的编码',
  `db_name` varchar(255) DEFAULT NULL COMMENT '关联的数据库名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='租户表';

-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------
INSERT INTO `sys_tenant_info` VALUES ('1301724123547000811', '总公司（管理单位）', 'default', 'master', '2020-09-04 11:29:51', '1265476890672672808', null, null);
INSERT INTO `sys_tenant_info` VALUES ('1304687130978660353', '北京分公司', 'beijing', 'xiaonuo_tenant_db_beijing', '2020-09-12 15:43:47', '1265476890672672808', null, null);
INSERT INTO `sys_tenant_info` VALUES ('1304687938700955650', '广州分公司', 'guangzhou', 'xiaonuo_tenant_db_guangzhou', '2020-09-12 15:46:59', '1265476890672672808', null, null);

-- ----------------------------
-- Table structure for `sys_timers`
-- ----------------------------
DROP TABLE IF EXISTS `sys_timers`;
CREATE TABLE `sys_timers` (
  `id` bigint(20) NOT NULL COMMENT '定时器id',
  `timer_name` varchar(255) DEFAULT '' COMMENT '任务名称',
  `action_class` varchar(255) DEFAULT NULL COMMENT '执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）',
  `cron` varchar(255) DEFAULT '' COMMENT '定时任务表达式',
  `job_status` tinyint(4) DEFAULT '0' COMMENT '状态（字典 1运行  2停止）',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务';

-- ----------------------------
-- Records of sys_timers
-- ----------------------------
INSERT INTO `sys_timers` VALUES ('1288760324837851137', '定时同步缓存常量', 'com.cn.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', '0 0/1 * * * ?', '1', '定时同步sys_config表的数据到缓存常量中', '2020-07-30 16:56:20', '1265476890672672808', '2020-07-30 16:58:52', '1265476890672672808');
INSERT INTO `sys_timers` VALUES ('1304971718170832898', '定时打印一句话', 'com.cn.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', '0 0 * * * ? *', '2', '定时打印一句话', '2020-09-13 10:34:37', '1265476890672672808', '2020-09-23 20:37:48', '1265476890672672808');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `avatar` bigint(20) DEFAULT NULL COMMENT '头像',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` tinyint(4) NOT NULL COMMENT '性别(字典 1男 2女 3未知)',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `last_login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `admin_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '管理员类型（0超级管理员 1非管理员）',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（字典 0正常 1冻结 2删除）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1265476890672672808', 'superAdmin', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '超级管理员', '超级管理员', '1307862361155280898', '2020-03-18', '1', 'superAdmin@qq.com', '15228937093', '1234567890', '127.0.0.1', '2020-12-25 20:47:18', '1', '0', '2020-05-29 16:39:28', '-1', '2020-12-25 20:47:18', '-1');
INSERT INTO `sys_user` VALUES ('1275735541155614721', 'yubaoshan', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '俞宝山', '俞宝山', '1307866860842360834', '1992-10-03', '1', 'await183@qq.com', '18200001102', '', '127.0.0.1', '2020-09-23 10:15:10', '2', '0', '2020-06-24 18:20:30', '1265476890672672808', '2020-09-23 10:15:10', '-1');
INSERT INTO `sys_user` VALUES ('1280700700074041345', 'laoyu', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', 'laoyu', '老俞', '1307863984313180161', '2020-07-01', '1', null, '18200001103', null, '127.0.0.1', '2020-09-23 10:17:27', '2', '0', '2020-07-08 11:10:16', '1265476890672672808', '2020-09-23 10:17:27', '-1');
INSERT INTO `sys_user` VALUES ('1280709549107552257', 'xuyuxiang', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '就是那个锅', '徐玉祥', '1307863777357832194', '2020-07-01', '1', null, '18200001100', null, '127.0.0.1', '2020-09-23 10:16:54', '2', '0', '2020-07-08 11:45:26', '1265476890672672808', '2020-09-23 10:16:54', '-1');

-- ----------------------------
-- Table structure for `sys_user_data_scope`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_data_scope`;
CREATE TABLE `sys_user_data_scope` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户数据范围表';

-- ----------------------------
-- Records of sys_user_data_scope
-- ----------------------------
INSERT INTO `sys_user_data_scope` VALUES ('1277459951742840834', '1266277099455635457', '1265476890672672770');
INSERT INTO `sys_user_data_scope` VALUES ('1277459952577507330', '1266277099455635457', '1265476890672672773');
INSERT INTO `sys_user_data_scope` VALUES ('1277459953424756737', '1266277099455635457', '1265476890672672775');
INSERT INTO `sys_user_data_scope` VALUES ('1277459954267811841', '1266277099455635457', '1265476890672672774');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043527249922', '1265476890672672809', '1265476890651701250');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043535638529', '1265476890672672809', '1265476890672672769');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043535638530', '1265476890672672809', '1265476890672672771');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043535638531', '1265476890672672809', '1265476890672672772');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043544027137', '1265476890672672809', '1265476890672672770');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043544027138', '1265476890672672809', '1265476890672672773');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043552415746', '1265476890672672809', '1265476890672672775');
INSERT INTO `sys_user_data_scope` VALUES ('1280712043552415747', '1265476890672672809', '1265476890672672774');
INSERT INTO `sys_user_data_scope` VALUES ('1280712071570366466', '1275735541155614721', '1265476890672672769');
INSERT INTO `sys_user_data_scope` VALUES ('1280712071570366467', '1275735541155614721', '1265476890672672771');
INSERT INTO `sys_user_data_scope` VALUES ('1280712071578755074', '1275735541155614721', '1265476890672672772');
INSERT INTO `sys_user_data_scope` VALUES ('1285129189085609986', '1280700700074041345', '1265476890672672770');
INSERT INTO `sys_user_data_scope` VALUES ('1285129189093998594', '1280700700074041345', '1265476890672672773');
INSERT INTO `sys_user_data_scope` VALUES ('1285129189102387201', '1280700700074041345', '1265476890672672775');
INSERT INTO `sys_user_data_scope` VALUES ('1285129189106581505', '1280700700074041345', '1265476890672672774');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1283596900713574402', '1275735541155614721', '1265476890672672817');
INSERT INTO `sys_user_role` VALUES ('1283596920384860162', '1280700700074041345', '1265476890672672819');
INSERT INTO `sys_user_role` VALUES ('1283596949627547649', '1280709549107552257', '1265476890672672818');

-- ----------------------------
-- Table structure for `sys_vis_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_vis_log`;
CREATE TABLE `sys_vis_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `success` char(1) DEFAULT NULL COMMENT '是否执行成功（Y-是，N-否）',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
  `vis_type` tinyint(4) NOT NULL COMMENT '操作类型（字典 1登入 2登出）',
  `vis_time` datetime DEFAULT NULL COMMENT '访问时间',
  `account` varchar(50) DEFAULT NULL COMMENT '访问账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统访问日志表';

-- ----------------------------
-- Records of sys_vis_log
-- ----------------------------
