/*
 Navicat Premium Data Transfer

 Source Server         : 本机sqlServer
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : xiaonuo-vue-tenant
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 09/04/2021 19:59:12
*/


-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_de_databasechangelog]') AND type IN ('U'))
	DROP TABLE [dbo].[act_de_databasechangelog]
GO

CREATE TABLE [dbo].[act_de_databasechangelog] (
  [ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AUTHOR] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FILENAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DATEEXECUTED] datetime2(7)  NOT NULL,
  [ORDEREXECUTED] int  NOT NULL,
  [EXECTYPE] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MD5SUM] nvarchar(35) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COMMENTS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TAG] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LIQUIBASE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTEXTS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LABELS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_de_databasechangelog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_de_databasechangeloglock]') AND type IN ('U'))
	DROP TABLE [dbo].[act_de_databasechangeloglock]
GO

CREATE TABLE [dbo].[act_de_databasechangeloglock] (
  [ID] int  NOT NULL,
  [LOCKED] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LOCKGRANTED] datetime2(7)  NULL,
  [LOCKEDBY] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_de_databasechangeloglock] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_de_model]') AND type IN ('U'))
	DROP TABLE [dbo].[act_de_model]
GO

CREATE TABLE [dbo].[act_de_model] (
  [id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [model_key] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [model_comment] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [created] datetime2(7)  NULL,
  [created_by] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [last_updated] datetime2(7)  NULL,
  [last_updated_by] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] int  NULL,
  [model_editor_json] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [thumbnail] varbinary(max)  NULL,
  [model_type] int  NULL,
  [tenant_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_de_model] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO [dbo].[act_de_model]  VALUES (N'4bd58cbc-60b7-11eb-a285-5405dbb6a472', N'用车申请', N'car_model', N'用车申请', NULL, N'2021-01-27 23:49:52.9910000', N'superAdmin', N'2021-01-27 23:56:03.8110000', N'superAdmin', N'1', N'{"modelId":"4bd58cbc-60b7-11eb-a285-5405dbb6a472","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"car_model","name":"用车申请","documentation":"用车申请","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737"}],"bounds":{"lowerRight":{"x":140,"y":207},"upperLeft":{"x":110,"y":177}},"dockers":[]},{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A"}],"bounds":{"lowerRight":{"x":285,"y":232},"upperLeft":{"x":185,"y":152}},"dockers":[]},{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}],"bounds":{"lowerRight":{"x":184.15625,"y":192},"upperLeft":{"x":140.609375,"y":192}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}},{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330","properties":{"overrideid":"","name":"领导审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4940"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D"}],"bounds":{"lowerRight":{"x":430,"y":232},"upperLeft":{"x":330,"y":152}},"dockers":[]},{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}],"bounds":{"lowerRight":{"x":329.15625,"y":192},"upperLeft":{"x":285.84375,"y":192}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}},{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","asynchronousdefinition":"false"},"stencil":{"id":"ThrowNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":488,"y":207},"upperLeft":{"x":458,"y":177}},"dockers":[{"x":473,"y":192}]},{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}],"bounds":{"lowerRight":{"x":457.46875,"y":192},"upperLeft":{"x":430.40625,"y":192}},"dockers":[{"x":50,"y":40},{"x":15,"y":15}],"target":{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', 0x89504E470D0A1A0A0000000D49484452000000F80000004008060000003748BA13000006634944415478DAED9C4B48A35718865DCCA20B51114541172EBAA8D2D9B9A892459682055D78371A2F056F2BA5052DA24337222236B5DEE8A274512814B5341405E3258956AD68A7D8348EE3AD6888C6611CCDD49851E7F4FBE2A56A8DA3F9138DBFEF03874C9824EA9BF7C939FFF9930404000000000000000000000000C0094288474B4B4B3F4E4C4C1C0E0E0E8A818101590E9D4E270C06C30B1A2A642CBF8C811BB87846A351D86C36E1743A653D363737855EAFDFA622A6216379650CDCC0B3CA4328DE99023A69B631236379650CDCC04BC6CB9EA4A5A96F8549F785EB526E05A4F2ED236379650CDCC0C74E179F9C55D3CFE28F5F3E3B1D6B26ADDCCA2790B1BC32063728DF9F034FCE958FAFA37CC81882CB44705E369E2D1F5F47F99031049789E0CFC7BE3E573EBE8EF22163082E13C1799C2D9F0C3780043286E00F56F0F9B1D673E5E3EB281F3286E0F75C70FB96E55CE92E0EFE7F940F1943F07B2AF855C593D352F22E0547C6C02F8EC1E53CFCE5181C1903940F82236380F24170087EEBA4A7A7076665657D4AA38FC61E0D919D9DED54A954A3F4EF27B9B9B9D1101C822363EF78453E196ECD2BFA81E4B16AADAEAECEACD7EBFF2104E37038C4F4F4B4E8E8E8D8292C2CB41714147C45E33D080EC191F1F5BCCAC8C8B02A95CA178F1F3F7E1B1C1CCC3F470406068AB8B838919494E420C9ED7979792D3EF32A3333B3A5A4A4C4BABCBC7C64B51B76767644535393A3A8A868855E95DE87E0101C19BB27272747A35028ECE1E1E122353555F4F6F60ABBDDEE72892FFBFAFA04CFE6111111223939798F045FF4BA572477755555959567EAEB3232327248B3F9DA5D488EF221E3FB9031C9FD79424282232A2A4A8C8F8F5FE9D3ECECAC888E8E166AB59ABD5AF59A5724F787F480DB3C33DF14925CD07D97F9F802E583E0C8F8BC578989897B2C37AD8AAFE513DF2E262646545454BCCDCFCF7FEE15AF48D01983C1F04678487373F36BFA65BE44F9203832FE0F72C21C1A1AFACE99DBDD4C5E5B5BBB452B8066A907FF8ACACACA970707079EFAED3A26A765C5F66DEEAEA37CC8D89F3366AF08674A4A8A474EF131794D4D8DA017892D495ED1037CDFDDDD7D2824D2DEDEBEC15BFDBE281A3DEE300D25CAE73BC191B1E7195F965D6969E94FB1B1B142ABD57AE4136FBCC5C7C70B8D46B32CC9ABE2E262D3E2E2A254BFC5D4D4948396137A1F954F1C8FD320513E64EC4782FF2F3B127C212828E874B7FCA6F0FDF814DAE4E4E44B7E5C29BB7C6F6EB273EE0E7E0C3E79EFE3F29D0689F221633F14FC343BF2EA20C0F5D5F29EC3F73FF6CA21E989F51697FCA13E1B0FB57CC8F8FE641C12122279063FF14ACA6680D34B33F86B49AF34583E62892EA3253AAF8C131313251F83EFEEEEAE4BF24AA5524DCCCDCD1D4815DC68342E493A56C0061036D964B4C9C6A79EABAAAA5CEF5CF374355C5F5F2F8687879F4AF28AEEDCDAD9D9F94CAAE0757575467AAC5A9CC2C16932647CE415B1111919C91BD01E9D07B75AADA2BABA7A409257B444FF8066718B43C23A7D6161C142BFC41A3D5618CA07C191F191576AB57A5DA3D11CB2AC377D275B4B4B8B989F9F379157AB92BDCACCCCFCA6A9A949EFE9EE39BF55957E894F503E088E8CCF7B45B3F8535E6AB3E4EF9AC979E666B9F9F6E4D53EBF55D52B5E1D7F4E7555ABD54EDE54EE8A8A8A395E8EE0C326101C195FEAD55A7F7FFFB38E8E0E11161626D2D2D25C1B6F173F4D46AB68D78B004DB42EAFCACACA4C5EF58A97142C796363E3D07596EBA3A3A35B7979799BFC2E1BA552F90882437064ECDE2B5A724FACAFAFEF373434088542E13A851670FC7970DE2DE7599B8FB90D068395BCB2F9C42B7EC5E165057FE1435B5BDB8CD96CDE3D719D2F575656F8B3AC3B346B5BE8365374DB8F02EE08940F19DF978CCF7865E9EAEAFA8BBC725EF4AAA7A7E7557979F95A6E6EEE6F3EF7EAF855A7952EC7CE7EB58C5AADFE3D2727E73B3E257017B336CA07C1EF73C6275E9143BF9EF58A8EB567FCC52BBF01E543C6F8D245088EF22163080EC1513E640CC121380447C600E583E0C818A07C101C1903940F824370088EF22163080EC1513E640CC12138CA878C010487E0C818F888C1C1C187563E07956F1F19CB2B63E006FE589DCD667B30E5B3582C3F50F9CCC8585E1903370C0D0DA58C8C8CBCDAD8D8D895FBACC2C5D3E9747FD34843C6F2CA185C013D191FD32BEE142FABF8D849A683FF36F35D150F1903000000000000000000000000000000000000000000BCCABF3C976DD714CC53BE0000000049454E44AE426082, N'0', NULL)
GO

INSERT INTO [dbo].[act_de_model]  VALUES (N'674afd8b-f3fb-11ea-abe7-e0d55e485056', N'出差流程', N'travel', N'出差流程', NULL, N'2020-09-11 14:52:48.0620000', N'superAdmin', N'2020-09-11 14:55:52.7180000', N'superAdmin', N'1', N'{"modelId":"674afd8b-f3fb-11ea-abe7-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"travel","name":"出差流程","documentation":"出差流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}},{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13","properties":{"overrideid":"","name":"经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4446"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}},{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859","properties":{"overrideid":"","name":"领导会签","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"Parallel","multiinstance_cardinality":"${num}","multiinstance_collection":"pers","multiinstance_variable":"per","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"static","assignee":"${per}"}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}},{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:5494"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}],"bounds":{"lowerRight":{"x":609.15625,"y":178},"upperLeft":{"x":565.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}},{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":778,"y":192},"upperLeft":{"x":750,"y":164}},"dockers":[]},{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}],"bounds":{"lowerRight":{"x":750,"y":178},"upperLeft":{"x":710.5625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', 0x89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004454944415478DAED9DCF4B1B6918C73D78EC718F7BE8A1873DEC61FF803DE40F28ECA5E28F248A1861BD958078F0520B22EB1E16A9ACA5D893071591AE86D205A3D54841105996DD453660D8EE1245ADF547ED6A6AC2DBE7918988A66D9A8C99C9EBE7032F8176E8F49367DE6F9E796786A9A90100000000000000000000508C31B5A9546A62696929373B3B6B6666663C1BF178DC241289573242F8E1771DFCAC440BB6B8B868B6B6B64C2693F17C6C6F6F9B8585857D29E01DFCF0B3DDCF4AF417E07CC17E7FDA793ADEECA6BD2C5C467E1956F1C3CF763F2BD196F2FC17962FDAEAF31F3CFD4590A29DE0879FED7E56A2E78A858AF657FCBED74533F8E167BBDFB50A15AFCF5DAFFAA0C40F3F42A502A1A2E7A9F9A2255F3CB0EEA0C40F3F42A582A1922FD6C561CB41891F7E848A47A73F7E1957D53EE387DFB50D95C6C6C66F1B1A1A26E4332D9F46C65E7D7DFD13F90C102AF8E1674FA8C81CFF4A4644E6F63DF9BCDBD4D4F48DEB8122FFF88FA150687F6C6C2CB5BEBE7E6C849D9D9D939191913F648707F2F70F0281402D45C30FBFEAF5ABABABBB2573F9B90449D6691CCE86CCF397F2E72157E6B9064A341ADDD8DDDD358538383838EEE8E8F84DB61BA268F8E1579D7E1A28121AFF6880B4B7B79BC1C141333E3E6E8687874D6767E759B8E8D949D9A73C2D2D2D6F3F1428E783453B16DD9EA2E1875FF5F96987A2A1D1DBDBABF3F9D21C5F595931914824E704CB4F25EF480225363535756C8A607474F4CFB2538C83123FFC2AEEE7ACA164B54329142879D6D6D64C381C7E27C172120C06BF2C3554F6F4398762D035165DBCA568F8E1575D7E326FBFD70E646868E893F3BCBFBFFF50B7D505DC5277663E07DDBEC4FDACEA4AB3743A5F5B5A34FCF0F39D5FDE4BC6CF3A77750DE553E836CEFACABD523B95FDCFE854CCC515E352869F8B861F7E36FB15D3A90C0C0C64CAEA542291C8AFD3D3D3B96242657272F25FD654F0C3AFFAFCB403D3A08846A3269BCD7E708EEB059B6030787AB959AF169573F5E75D11577F7467876EDC08C741891F7E95F793B9FEB786C5F2F272C139AE61D3D3D39373BA9A58595F625B5BDBA3EEEEEEA38FDCA762BABABAD2F29F7A4CD1F0C3AF6A2F29DFD1C0686D6DCD2593C94B1DCAB940F94FC6CDB2BF48D9D1C3E6E6E68C5E5ECEAFB1E81A4A2C163B0C87C3471A28D20EDDA068F8E157BD7EFA188E73F76CAEAFAFEF501765750D257FCAE3044AA0C62DF4544802E41719AF9D1DBF098542CF78F6073FFCECF1D31BDB644E1F1558C88DB9D2A1780107257EF879FE40E117CEBD2BA70F1496BC284BA87050E2879F957050E2871FA142A8E0871FA142A87050E287DF35E1E27B557C328EAEEABD31F8E1E7273F2B4924121B7E79A5647EA4D3E931B7DE00871F7E7EF6B392B9B9B9EFE6E7E7F7363737FFF7C32F80162C1E8FBF74EB5DB5F8E1E7673F6B912FE8B624EFB2B6741F7BEB7D0586EE7FD5ED82E1879F9FFD000000000000000000000000000000000000000000C00DDE030876FE6DA03BCB1F0000000049454E44AE426082, N'0', NULL)
GO

INSERT INTO [dbo].[act_de_model]  VALUES (N'6faec554-df94-11ea-aecf-fa1265c5e47d', N'请假流程', N'leave', N'请假流程', N'', N'2020-08-16 15:45:20.9000000', N'superAdmin', N'2020-09-22 21:34:05.4040000', N'superAdmin', N'2', N'{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', 0x89504E470D0A1A0A0000000D494844520000010C0000003408060000007FD206E7000005194944415478DAED9B3B4C5B571C873364E890A163870ED9DAA1432B75E8D08121438748ED0018300F2359022C2C8B4755816A29E221401D22218C1706D82A3142540AB6034642A6292A559212350969070B613A508A1B830DA7E71FD9AA318FF875B1AFFC7DD29165FB5E1DFCD3FF7CF79C732F376E00000000000000000000C0F5A194BAB9BDBD3D1B0A854EFC7EBF5A5A5A2ADBE6F3F9543018FC4BB746F2303E0FB280734841ACAEAEAA4824A28E8E8ECABEEDEDEDA9959595BF7581549387B17990059C43AE1EE905F1E447B7FAF5C1D76F5ECBB8308EF455658B3C8CCD23330B33E461646D8046A69AE9814B31A45A395F4D7451C4C9C3D83C32B3304B1E46D5066864FD67D201A2C8C3D83C32B330913014231B61200C848130CA4D18CFD7BC6F8A415E114665E7719130CC9007C2B80E61C462EAF142FF992B88BC97CF2B5218E471561826CA03615C8330D20B21B355A230C8E3AC30CC9407C2B8C6258959DA752D492A390FB2008A823CC802280AF24018A514464343C3C7757575BDBADD93578BC5F299211D555555DD9C9898F856F3474B4BCBA9EE4CD96C36E576BBF7A6A7A7A73C1ECF2D8481301046790A438FD72A2D875F64DC5ED09ECBF745EB6C6C6CEC0397CBB5333C3C7CBAB1B1A10E0E0E94108D46D5E6E6A61A191951FAFBE8DCDCDCE7080361208CF212467D7DFD886E099183C3E1505EAF57CDCECEAAA9A929E5743AD3C5F15DC19D59ADD6F77527D1858505954824D465040201D5D3D3131F1F1FFF84018230104679084364911282BEA09F1BC3F25E3ED7E3BC7069C832A4BDBDFD85C8221B441A9D9D9DFB353535B7280A8481304A2B0C5966E81617118442A12BC7AE7C9F92466D6DED9D7CEDF4D5C0C040ECAA994526B23C191C1CFC86A2401808A3E4C2789C9A5964831C97DAD390C942CE1DDAEDF665D9B3C805D9D3E8EAEA7A56A41FFC30B51953E945919E0579501B6FCB45B74F65F07774749C647BC197E31C0EC7B19C97D7DD133D45799DDAE0CC16D9086D6A6A3A2ED28F4F19EF2103E4FF2CA420C883DA784B2E2FE45536387341364293E7F7E6D5793E5C72EBA6A066E6A2200F63F330BB308CA88F5493BB21B920C727CFBD97CF431ED17C66188D8D8D31A69D2C495892947449220F67298FC7739CCBF89D9C9CDC2F648631B7BEBEBE97EB1E86DD6E5F63638B4D4F363D4BB7E969B1583E9281DFDADA1A938B78B6177B7DFCA19C274F84E67597C4E9743ECD45186EB73BACFFD83A8A0261208C92DF255995C13F343474727C7CF54443BE1F1D1D8D2767178FF27E0E434ED6EB9A67D9C862717171DF6AB5FEC673180803619485306EEBB62312E8EDED3D0D87C3178E5BF9BCAFAFEF24290B39FE76414F7AEAE9C9CB99999995442211BF4C16F3F3F32F9B9B9B7F2FA8338A823CC8A2D84F7A7EA8C7E4ABD426687777F79947C3FBFBFBD39FF27C25C717E5F1709969B4B5B5FDAC7FA4EFF0F07037B9E689ADADADFDE472B99EEA8E9E18250B8A823CC8227F6C36DBBB168BE5BE1E9FFF5C7237453EF7EA95C17B45EB34B93CA9968DD0B48EE5F5072D8B46239621140579904551C5F18E1EAB5F64FC7BFB5DA3C76E49A028C8832C80A2200FB2000608C24018080361200C8481301006C24018080361200C848130100645411E640157E2F7FBCD5814AF7551C4C9C3D83CC802CE110C0677229188A98A221C0E7FAF8B628B3C8CCD832CE01C8140E0CBE5E5E5FDDDDDDD7FCD70F59082F0F97C7FEA564D1EC6E6411670213AE0BBDACA8F642A27EBBF326EF2F76D195D10E441160000000000000000000000000000000000005021FC0713D4C1C9B74304720000000049454E44AE426082, N'0', NULL)
GO

INSERT INTO [dbo].[act_de_model]  VALUES (N'82114da5-e0f6-11ea-9096-e0d55e485056', N'转正流程', N'formal', N'转正流程', NULL, N'2020-08-18 09:59:53.3880000', N'superAdmin', N'2020-08-31 09:55:35.2210000', N'superAdmin', N'1', N'{"modelId":"82114da5-e0f6-11ea-9096-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"formal","name":"转正模型","documentation":"转正模型","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8"}],"bounds":{"lowerRight":{"x":274.4890581296828,"y":217.09854567332218},"upperLeft":{"x":174.48905812968277,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}],"bounds":{"lowerRight":{"x":173.87686255641609,"y":177.8720425939571},"upperLeft":{"x":130.54148164110265,"y":177.51525016837908}},"dockers":[{"x":15,"y":15},{"x":50.000000000000014,"y":40}],"target":{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}},{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2","properties":{"overrideid":"","name":"部门经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4403"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}],"bounds":{"lowerRight":{"x":319.54903503781736,"y":177.68745140354622},"upperLeft":{"x":274.94002309186544,"y":177.41109426977596}},"dockers":[{"x":50.000000000000014,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}},{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D","properties":{"overrideid":"","name":"主管审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280709549107552257","firstName":"徐玉祥[xuyuxiang]","$$hashKey":"object:4601"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A"}],"bounds":{"lowerRight":{"x":561.1496536284474,"y":217.09854567332218},"upperLeft":{"x":461.1496536284473,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}],"bounds":{"lowerRight":{"x":460.526748917857,"y":177.67669607889732},"upperLeft":{"x":420.6229047105904,"y":177.42184959442486}},"dockers":[{"x":50,"y":40},{"x":50.000000000000036,"y":40}],"target":{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}},{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]","$$hashKey":"object:4796"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}],"bounds":{"lowerRight":{"x":609.5770517690605,"y":177.6946329924341},"upperLeft":{"x":561.5726018593869,"y":177.40391268088808}},"dockers":[{"x":50.000000000000036,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}},{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":783,"y":192},"upperLeft":{"x":755,"y":164}},"dockers":[]},{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}],"bounds":{"lowerRight":{"x":754.375,"y":178},"upperLeft":{"x":710.390625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', 0x89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004794944415478DAED9DBD4B5B5118C61D1C3A74ECD0A143870E0E1DFA0774089D0B2E86F8118C62C410901421200EA2810C1141B4828B8B54AAB6A50EA1935163A454080E2D84D880429110346D6353A3A4269EBE6FC805B586D87C98DC739E1F1C12E3C5C39387F3DCF79C7BAEB7A10100000000000000000000000000104234EEEDEDBDDDDADACAAEAEAE8A9595959A359FCF270281C0776A66E853DB3755344A099BB6B9B9290E0F0F453A9DAE798BC7E3626363E31799D8027DEAFAA68A4629E1B3C045D33E7F70E6DAEF44B496E6A5E9EC10863E757D5345A394705979F14BD38C0BAF7B6A7A5620E3CEA04F5DDF54D128253C5FBCCEB890CF556BE304F4A9EB9B2A1A950A955ACF5FAB1D2A7AD727BB6FAA68943E5478AEAA1917F9F852BA5091499FECBEA9A251EA50D10CBBDA640915D9F4C9EE9B2A1A9598FED44BABD6F447167DB2FBA68A46840A4205A18250A94AA8B4B5B5DDA3666D6D6D1DA1D71746A3F15155063CFDF1A776BBDDDFDDDD7D449D898E8E8EE3F6F6F6457AFF10C62154102A72848AC9649AA0317DCA63FC62A3CF9769CC3FA85847838383EFAC566BD6EBF58A582C2618DE08343F3F7F62369B53D4A901C62154102AFAD648E3F8150708150BE71E8F27BBB0B020A6A7A7733FE7C3659FDE3F29BBA3A1A1A1E5E1E1E1F3442221AE83B72EF7F4F4FCA412E92E8C43A82054F4A99102A38583836622E79148E4D218E7B1EF72B9B4AA65BFACD989CD667BC6154AA140D1989C9CCCD0B16E18875041A8E853235520110E8D603078ED18CF64321783C55B72470E87E3134F798AB1B3B323060606BEC238840A42457F1A4D26D3630E0B1AC3B9F02804171766B339CBC796BC784BA5D031AF9D1423994C0A8BC5F2A78CD22BCC2BCDB21A27AB3ED97D935DA3A68D9A8B83626666A6E8589F9A9A3AE363F9AA50A99D8A9B7275B5B89456CFC6419FBABEA9A2716969A9E838E763F2C78F94142A5D5D5DC968345AB4232E8B3A3B3BD3283131FDC1F44797D598EDA6958AC7E3499655A9F4F5F5BD9F9B9B2BDA112FEED86CB6208C43A82054F4A79102A2895AA6B7B737B7945188DDDD5D5E534953A89C95BC67C56834DEA76AE5942F1B178217761C0E478A2A956618875041A8E8F692F23A57206EB75BA452A97FC6F9F6F6366F1DC9E437C24D94D5195F56B6DBEDC7E3E3E322140A09EDF232BF7285C28162B158DEC038840A4245BF1AB95AA1C088736870C5C253215E3F999D9D154EA7F3D2CE5A83C1D058768754ADDC191B1B7B3D3A3AFA83A644B9DD75F459A6BFBFFF4B252A14840A4205A1527B8DF960592FB090BB4FBF375724506E13840A4205A15217371436E5176F733714F26D385C5834E811840A4205A1827F7D8050813E840A4205A1825041A840234205A1825041A82054FE9FABCF56A993765AADE7FEC8A24F76DF54D12825814020562F8F95D45A341A5DACD453E064D527BB6FAA689492B5B5B566BFDF7F74707070520F670136CDE7F37DABD4F36A65D527BB6FAA689416FA929E53FA06B9AC2BF4D4FB5B6ADC7FB8D2A6C9AA4F76DF54D1080000000000000000000000000000000000000000000000000000A8147F01C3C9C852339444A40000000049454E44AE426082, N'0', NULL)
GO


-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_de_model_history]') AND type IN ('U'))
	DROP TABLE [dbo].[act_de_model_history]
GO

CREATE TABLE [dbo].[act_de_model_history] (
  [id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [model_key] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [model_comment] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [created] datetime2(7)  NULL,
  [created_by] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [last_updated] datetime2(7)  NULL,
  [last_updated_by] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [removal_date] datetime2(7)  NULL,
  [version] int  NULL,
  [model_editor_json] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [model_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [model_type] int  NULL,
  [tenant_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_de_model_history] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_de_model_history
-- ----------------------------
INSERT INTO [dbo].[act_de_model_history]  VALUES (N'48ce341d-fcd8-11ea-a4d5-e0d55e485056', N'请假流程', N'leave', N'请假流程', NULL, N'2020-08-16 15:45:20.9000000', N'superAdmin', N'2020-08-16 17:00:51.2190000', N'superAdmin', NULL, N'1', N'{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', N'6faec554-df94-11ea-aecf-fa1265c5e47d', N'0', NULL)
GO


-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_de_model_relation]') AND type IN ('U'))
	DROP TABLE [dbo].[act_de_model_relation]
GO

CREATE TABLE [dbo].[act_de_model_relation] (
  [id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [parent_model_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [model_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [relation_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_de_model_relation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_evt_log]') AND type IN ('U'))
	DROP TABLE [dbo].[act_evt_log]
GO

CREATE TABLE [dbo].[act_evt_log] (
  [LOG_NR_] bigint  NOT NULL,
  [TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TIME_STAMP_] datetime2(7)  NOT NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_] varbinary(max)  NULL,
  [LOCK_OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOCK_TIME_] datetime2(7)  NULL,
  [IS_PROCESSED_] tinyint  NULL
)
GO

ALTER TABLE [dbo].[act_evt_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ge_bytearray]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ge_bytearray]
GO

CREATE TABLE [dbo].[act_ge_bytearray] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [BYTES_] varbinary(max)  NULL,
  [GENERATED_] tinyint  NULL
)
GO

ALTER TABLE [dbo].[act_ge_bytearray] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1294922083660345346', N'1', N'请假流程.bpmn20.xml', N'1294922083219943426', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E58187E6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8AFB7E58187E6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D36324539353337382D443641412D343243442D383346382D3933303138413644304144382220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422206E616D653D22E88081E586AFE5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41393945354431432D323130412D343234422D424339382D4645313837383043393933462220736F757263655265663D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622207461726765745265663D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522206E616D653D22E5AE9DE5B1B1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D38353436363339352D394437362D343539442D384130372D4532333544413536344230442220736F757263655265663D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422207461726765745265663D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E3C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D227369642D36393145443245412D343935362D343733442D423932452D3736463045434139383930452220736F757263655265663D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522207461726765745265663D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D41323146463443422D464442462D343033412D393036352D39424135314233413038304222206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246222069643D2242504D4E53686170655F7369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234222069643D2242504D4E53686170655F7369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435222069643D2242504D4E53686170655F7369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042222069643D2242504D4E53686170655F7369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223631352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045222069643D2242504D4E456467655F7369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E3934393939393939393939362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223631352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044222069643D2242504D4E456467655F7369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438222069643D2242504D4E456467655F7369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346222069643D2242504D4E456467655F7369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, N'0')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1294922084922830850', N'1', N'请假流程.leave.png', N'1294922083219943426', 0x89504E470D0A1A0A0000000D494844520000028D000000E40806000000FDC91EF600000CD34944415478DAEDDDEF6F55F51D07701FF8C03F620F4CB664FE097BB007FE0126F381A4D87B95A692561C201649C89494A044D01812B7643121311A16961883AC6352FAC3F2533226814E42563644A1B65EC62A22F75A8B9C7DBF5DAF3B160A17686FCFB9F7F54A3E017ACB8F94773FDFCFF99E73CFB9EF3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080059524C9FD67CF9E7DF7E8D1A3DF0F0C0C247D7D7DAACED5DFDF9F1C3870E0DFA18A32A46448866408C8A4D8A80F1E3C98944AA5647272522D525DBC7831D9BF7FFFE5D0B81F932125434A8680CC8947F61A75661AF66438E23F2D434A86940C0199134F056994D9A9D0ACA76448C99092212073E2B52C9A64A69A7522434A86940C01B96DD6DF7C35969C3DF65672AA7FD374C59FC78F69B09AB50CC9900CC91060689CAE2B13A3C927BD1B92937BD6FDA8E2C7E26B9AAC055F866448866408303426E74FFDE986465DAD0BA77A34590BBE0CC9900CC91060689C4C4E7FB875CE661D5FD3642DF832244332244380A131F9A46FE39CCD3ABEA6C95AF06548866448860043A366AD59CB900CC9900C0186C6DB37EBF82EC5B99A757C4D93B5E0CB900CC9900C0186C6E4CCE1DFCDD9ACE36B9AAC055F866448866408303426974687934FF675DF784A287C2CBEA6C95AF06548866448860043E3747DFAB7776E68D6F1631AAC662D433224433204181AFF57DF7E9B9C39F2FB1B4F09858FC5D734590BBE0CC9900CC910D0E443637CD2C2C8E1DFCE792D517CCDD3182CF832244332244340B30E8DE1C87DECCC60F2F7BDBF99B351572B7E4EFC5C47FB167C199221199221A08986C6DB1DD53BDAD7AC6548866448860043634D47F5B73ADAD7742DF832244332244340130C8D77DBA8ABA5E95AF06548866448868026181A95662D433224433204A0596BD632244332A40C8D8066AD59CB900CC9903234029AB5662D434A86940C41FD2449F2C0F0F070E7DB6FBFBD7FCB962D9757AF5E3DD5D6D6962C5DBA3429168BD757AC5831F9C20B2F9CDDBA75EB8E503F37342ACD5A8664488664A8B1140A859FB4B4B4AC0C6BFFBBA1CE84BA12E7805095509F86D776851F9F8F9F67726AD261F1BDF7DE7BE7A5975E9A5AB3664DF2E69B6F26478F1E4D464747934AA59244F1C752A9947CFCF1C749182A93679F7DF6FA73CF3D77AEA3A363B9A15169D6322443322443F9F6F8E38F3F1AAA2FD4E4CC90584B7D183EBF68926A1261386C7FF9E597BF5DB76EDDF44078EDDAB5A456274E9C48D6AF5F7FADB3B3F3F492254B7E6668549AB50CC9900CC950BE84C1EFC130F8EDBD8341F16675B091E6006EDC5DBC7FF7EEDD834F3FFD74D2D3D37347C3E26C7BF7EE4DDADBDBCB8DB2EBA8596BD632244332A49A61686C696959DADADAFA9FF40058281492575E7925191C1C4C3EFFFCF3E4EBAFBF9E5EEBAF5EBD3A7D06F2F0E1C3C9B66DDB92279E7862F6E078C5AE63830E8C4343437F5DB56A5532323292CC8773E7CE2561002D2F5FBEFCD7864665C1972119922119CAFCC0F84818F2AEA587C51D3B764C5F8A568B898989E9CF8FBF2F3D3C863F73B949AB81C41DC63830D61A8C5AC53FAFA3A323F7471A9AB5662D43322443AA9187C6B8C3981E18BBBABAA67715EF46FC7DF112B75983A31DC74610AF618CA7A4E76B87F1663B8E4F3EF9E44408CC43864665C15732244332942DF11AC6F429E9EEEEEE1F4E41DFAD78EA7AF3E6CDB34F553F64EACAF769E907366DDA3419AF615C487BF6EC29170A858F0C8DCA82AF64488664285BC2C0D89FDE61BCD781313D38CEDA713C68F2CAB15DBB76FD21FE877EF7DD77C9427BE69967C6F3BA3DAD596BD632244332A41A71688CB7D5495FC378B7A7A46F75AA3A7D8DA3D3D439DE658CF7618CB7D5A98793274F4EE675B751B3D6AC654886644835E8D0D8571DE8E29B5816C2CE9D3BED36E65D7CD24B7CF3CBBDDC5AE74EB5B7B78FC76B27B2F4CD12EA979AB5662D43322443AA9186C65A72159FE0527DF34BDC0DBC74E9D282ACFDF15DD5B36EC7F3A0292C67E2A301B76FDF9ED4D3B66DDB4EC4470D65E56B90DA2EEF6B6969F98566AD59CB900CC9906A84A1B1965CCD3C1A70FAF35E7DF5D5855EFFD343E3F3A6B09C89CF928E8F06ACA723478E9C0B61E9C9DA3755AA3EB8D9919966AD59CB900CC990CAE3D078AB5CCD3C4B7AFAF5A1A1A1055DFFE30DC053FF961E5358CEAC5EBD7A6A6C6CACAE43E3F8F8782984E57C86BFA97E38324B7F7369D69AB50CC9900CA99C0F8D37E42AFCFA4CF5E3F3FD0698D9E2936352FF8EF3A6B09C696B6B4B2A954A5D87C6F8F785B054B2FE4D953E328BDBFA9AB5662D43322443AA1186C674AE4295ABBF9EAFDBECDCEAF63BA9BFBB620ACB99F81FB718EEF101E88B529A75B64A86940C29199ADFAAF7FA6F0ACB9965CB965DAFF74E63B95C1ECFC94EE3B1F80CCE871F7EF87EA7851CE1CB900CC9906AA09DC61F72159FD262A7919AAC5AB56AB2DED7347EF1C517FFC8F8358D3F6AD259B99628FC136E5A5979DD829FFD0C652D53167C1992A1C5CF956B1AA9D9860D1BCED4FBDDD3BDBDBD7FC9E8BBA73F8A77C59FDDA4B33434DEEA638BFDBA053FFB19CA5AA62CF83224438B9F2BEF9EA666AFBDF6DAF67ADFA7B1BBBB7B4FC6EED378D3237A43A3A1B1D13264C19721196ABAA1F1B6B9729F466AF6E28B2FFE74E5CA95DFD7F1893095D6D6D67FE5F14EF086464363DE3364C197211992A1D9E21361C29A3C558F27C2148BC5EB9E0893735D5D5DFFACD7B3A77B7B7B77E4F59993864643A305DF822F4332E4D9D39E3DDDD49E7AEAA9256BD7AE9DAAC36EE3446B6BEBF110CEA2A1D1D068C1B7E05BF06548863233343E5A1DE8E26EE37CBF2126FE7961FDBF9EBAB978D1F495639D9D9DC33D3D3D0B3A31C6EB27E3D1C5EDAED9D1AC0D8D167C0BBE0CC9900CD557589F3FAC0E755D5D5DF376FB9D789B9DB56BD75E4BEF32E6750EE0FF6179B0BDBDBD3C3232B22003E3F0F0F0EEF0778C85A38B87F2FA3572CB1DB7DC69C405FF3EB74B9121193234CECC01A12E5687BBEEEEEE7B1E1CE3C0B879F3E6F4758C57F23C0790522C160B9D9D9D574BA5D2BC0E8C172E5C38D4DADAFA59DEB7A3DD54D74D75654886644835EAD018B5B4B42CADBE29A6BAE378B7A7AAE3EF9BB5C3E8B474A329140AED1D1D1D57E66BC731EE30C6813104717DDEBF369AB5662D43322443AA9187C6991DC7B6F4E018AF718C6F8E89EF7EAEF55DD2F14D2FE96B186335C21CC01C471AC562F1F2FBEFBFFFCD3DBC3966E2F5D75F7F2B9E928E016C84AF8B66AD59CB900CC9906AF4A1B13A07849A480F7D71788CF7718C37008FBB88D553D7F114747CD24BBC71F71B6FBC912C5BB6ECFB594FA1B9D2287300B7B8B6211C250C7476768E1F3F7EBC7C27F761DCB76FDFCE30741E8B17BB36D2B50B9AB5662D43322443AA1986C6EA1C90BE15CF5DD641D73036D7F0F8581C1EDBDADA4A5BB66C3975E8D0A1CFC211C558A552999E10CBE5F2787C96747F7FFF9F376EDCF8413812391B43128F2A1AEDDD519AB5662D43322443AA5986C6F41C30333C4EDDC9B0D8887300358A778C0FA15933F38CCA4F43556682117F3C1F9F21191F09D4C87778D7AC356B1992211952CD36349A0340B3D6AC6548866448191A01CD5AB3962125434A8600CD5A59F0950C291902346B65C1573224433204181A95055FC9900CC9106068549AB50CC9900CC9106068549AB50CC9900C294323A0596BD632244332A40C8D8066AD59CB909221656804346BCD5A86940C291902346B65C15732A46408D0AC95055FC9900CC910606854167CFF773224433204181A95662D433224433204181A3549CD5A8664488694A111D0AC356B1992211952864640B3D6AC6548C9903234029AB5662D434A86940C019AB5B2E02B1992211902346B65C1573224433204181A95662D43322443320434838181014D323B5509CD7A4A86940C29190232E7C0810363A55249A3CC408D8E8EFE3134EBD332A46448C9109039838383BF1A1A1AFAEACB2FBF2C6B988B77641F1B757F7FFF67A11E932125434A86804C0A0DE2917064792C9E9288D7B2A8BA57FCBA9FCE73A396211992211902000000000000000000000000000000000000000000009857FF05C5C0144B0D1FC0580000000049454E44AE426082, N'1')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1295553080900943873', N'1', N'转正流程.bpmn20.xml', N'1295553080485707777', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D22666F726D616C22206E616D653D22E8BDACE6ADA3E6A8A1E59E8B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8BDACE6ADA3E6A8A1E59E8B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D34353434363337322D394245362D344142392D424236442D4436384537434539303934462220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222206E616D653D22E983A8E997A8E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373132333745412D324542462D343042352D393046422D4231343532413130423541382220736F757263655265663D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422207461726765745265663D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422206E616D653D22E4B8BBE7AEA1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730393534393130373535323235372220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE5BE90E78E89E7A5A55B787579757869616E675D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D32453436433039322D354142312D343635302D384133412D4638454145424543333438332220736F757263655265663D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222207461726765745265663D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33394535383643422D383143462D344242352D413433462D3334464633453032343338412220736F757263655265663D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422207461726765745265663D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D43424133303830432D454431352D343341432D383341302D35343634354143334543413622206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39383238353041372D353939422D343934342D423430412D3538443045353834453630442220736F757263655265663D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122207461726765745265663D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F666F726D616C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22666F726D616C222069643D2242504D4E506C616E655F666F726D616C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234222069643D2242504D4E53686170655F7369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132222069643D2242504D4E53686170655F7369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344222069643D2242504D4E53686170655F7369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331222069643D2242504D4E53686170655F7369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136222069643D2242504D4E53686170655F7369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446222069643D2242504D4E456467655F7369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044222069643D2242504D4E456467655F7369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393939392220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138222069643D2242504D4E456467655F7369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833222069643D2242504D4E456467655F7369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841222069643D2242504D4E456467655F7369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, N'0')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1295553081920159745', N'1', N'转正流程.formal.png', N'1295553080485707777', 0x89504E470D0A1A0A0000000D4948445200000319000000E40806000000F407E9A500000E2E4944415478DAEDDDEF6F55F51D07701EF8607FC41E906CC9FC13F6600FFC034CE603C985F62A4D25AD3A402C929029294189456348DC92C584C460BA740931C83A26D01F160AD88C41A09310CB862894D6CB5845A4975AE4ECFBAD5CBDF407DE0BEDED3DB7AF57F20EDAF22BF0E673CEA7E7DC7B962D0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000968824491EB970E1C29E818181EF7A7A7A92AEAE2EA970BABBBB9323478EFC3724AB43A2433AA4433AA44340EAC5A1DCDFDF9FE472B964626242162957AF5E4D0E1F3E7C3D0CE92775487448744887740848B5F8551F43B96A86F3445757D7391D121D121DD2211D02522D5E563614AB2761304FEA90E890E8900EE910906AF13E4A03B1AA0673A243A243A2433AA443C0925832BEF96A24B970E2DDE46CF7B6A9C4FF8E1F334C0D661DD2211DD2211D124B0650F660BE31369C7C72704B7266FFA67B123F163F67A03AB8EB900EE9900EE990583280B206F3A5B37F9D31940BB97CB6D3407570D7211DD2211DD221B16400E50DE6731FED987330C7CF19A80EEE3AA4433AA4433A24960CA0ACC1FC49D7D6390773FC9C81EAE0AE433AA4433AA44362C9000C66835987744887448774488780C51BCCF11D38E61ACCF17306AA83BB0EE9900EE9900E892503286B309F3FF6C7390773FC9C81EAE0AE433AA4433AA44362C900CA1ACCD78607934F0EB5CEBCBC1C3E163F67A03AB8EB900EE9900EE990583280B20673CC67FF7C6FC6608E1F334C0D661DD2211DD2211D124B0650FE60BE752B397FFC4F332F2F878FC5CF19A80EEE3AA4433AA4433A24960CA0E4C11C9F823A74EC0F73DEC71A3FE749A90EEE3AA4433AA4433A24960CE0A707F3AD5BC9C8F9DEE45F077E3FE7502E247E9FF87D7D25C8C15D87744887744887C49201CC3A987FEA2B3EBE126430EB900EE9900EE990583280B20673295FF1B9DF57820C5807771DD2211DD2211DD221C092714F1E74281762C03AB8EB900EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE91060308B83BBE8900EE9900EE91060C910835987744887744887C49201254992E467838383CDBB77EF3EDCD6D6767DFDFAF5930D0D0DC9CA952B936C367BE7B9E79E9B78F9E5972FECD8B1A33DE457960C3198754887744887744896EE92515F5FFFF34C26B3369C2BEE09391F72239E3786E4433E0B9FDB1BBE7D297E3F67DA4B74B978FFFDF7DF7BF5D55727376CD890BCF3CE3BC9C0C040323C3C9CE4F3F9248ADFE672B9E4E4C99349584292175E78E1CE8B2FBE78B1A9A9698D25430C661DD2211DD2211D92A5B364AC5AB5EA8990AE9089BB4B4529F9287CFFAC33EF25222C138DAFBDF6DAAD4D9B364D2D10B76FDF4E4A75FAF4E964F3E6CDB79B9B9BCFAD58B1E297960C319875488774488774486A77C9088BC2F2B0281C2863B1982DFDB574DEC8CCAB178FECDBB7AFF7D9679F4D3A3B3BCB5A2EA63B70E040D2D8D8385E2B57350C668359877448874487C49271AF4C26B3B2AEAEEE7FC50B437D7D7DF2FAEBAF27BDBDBDC9175F7C917CFDF5D753E786376FDE9CBA23E6D8B163C9CE9D3B93A79E7A6AFAA271C3558D1A5D30FAFAFAFEB16EDDBA64686828990F172F5E4CC2C232BE66CD9ADF5932C4C15D87744887744887A476968CB0603C1E9682DBC5CB457B7BFBD4ADF4A5181B1B9BFAFEF1C7152F1BE1E7ACB9DBEE97B47805232E18A516A354F1E76B6A6A4AFD666A301BCC3AA4433A243A24968C1FAF60142F182D2D2D53572D1E44FC71F116FD698B862B1AB520BE0623DE22355F573066BBA2F1F4D34F8F85C23C6AC9100777D1211DD2211D92F42E19F13518C5B748B5B6B6FE704BD4838AB7526DDFBE7DFAAD53A93D6FE4FBDBA47EB66DDBB689F81A8C85B47FFFFEF1FAFAFA8F2D19E2E02E3AA4433AA44392DE25232C18DDC557301E76C1285E34A65DD1E877A69E627BF7EEFD73FC0BFDF6DB6F9385F6FCF3CF8FA6F5F297C16C30EB900EE990E8902CF50EC5B7A92D7E0DC683DE2275BF5BA78A5FA3E1B6A9145FC588CFC1886F535B0967CE9C9948EBD50C83D960D6211DD221D121B164ACEA2A2C00F145DB0BA1A3A3C3D58CB48B4FF28E2FF67E98B7AA2D576363E368BC97AF9AFEB184FCC66036987548877448744874686EF109DD85177BC7AB0DD7AE5D5B9073C5F8AE53D3DEDE76F932D265F7EEDD8777EDDA9554D2CE9D3B4FC747C957CB9F41D1E5B8AE4C26F36B83D960D6211DD221D121D1A199C2C7D716BEDF1B6FBCB1D0E78BC54BC64BCB4897B6B6B6EB030303155D328E1F3F7E3194A5B3DAFE5115E5C3D9367983D960D6211DD221D12159CA1D0A1FDB53F87C5F5FDF829E2FC607F615FD5E3A9DB5A7CCFAF5EB274746462ABA648C8E8EE642592E55F13FAA1F36F9E27F5C06B3C1AC433AA443A243B2943B14FEFF7CE1E3F3FD82EFE9E293C18B7E1F979CB5A74C43434392CFE72BBA64C45F2F94255FEDFFA88A37F978D9D06036987548877448744896728742C60BFF3F5F6F5B7BBFB7B32DFAB5F3CEDA5326FEC52D86128A5C753198AB2B3A243A243AA4433AB478A9F4F9A2B3F69459BD7AF59D4A5FC9181F1F1F4DC9958C13994CE6F1C71E7BEC1197987DF54787744887448764A977283E85DB950C4AB26EDDBA894ABF26E3CA952B9F56F96B32EE19C8D5721F6BF82DCC9A6AF9BCC15C7D1DAAF6CE2C76A77428FD1D7382E858E65856D90E794D0625DBB265CBF94ABFBBD4C18307FF5EA5EF2EF5717C8AE5F4815C4D83F97E1F5BECCF1BCCD5D7A16AEFCC62774A87D2DF314B8663996359653BE4DDA528D99B6FBEB9ABD2CFC9686D6DDD5F65CFC998F5AB3D06B3C19CF60E593274C892A1438E658E65F3D921CFC9A064AFBCF2CA2FD6AE5DFB5D059FF89DAFABABFB4F1A9FDC68301BCC69EB902543872C193AE458E658369FE213BFC339DC64259EF89DCD66EF78E277CAB5B4B4FCFBE4C99395BA55AA3D14A53F8D7F4E06B3C16CC9B06458322C193AE458B6D43B149F9B5138F96F6F6F5F90F3C58E8E8EE2AB18A93C6F2478E69967566CDCB871B2025733C6EAEAEA4E8572662D1906B383BBCE58322C19960CC732C7B2542E194F141680783563BE5F001E7FBE70BE78A7E86180A93C6FE4AEE6E6E6C1CECECE05DD30E2EB3FE236FA53F78B1ACC06B383BB2543872C19960CC732C7B2EA15CEE73E2A2C012D2D2DF3F676B6F16D6B376EDC78BBF82A465ACF1BF9B12CCB1B1B1BC78786861664C1181C1CDC177E8D91B08D3E9AD63F236FFBE76DFFD2B8642CF316B63AE42D6C75C8B1CCB16C01CE1B43AE169681D6D6D6875E34E282B17DFBF6E2D761DC48F3792345B2D96C7D7373F3CD5C2E37AF0BC6E5CB978FD6D5D57D9EF6CB5D1E60E401463AA4433A243A24968CEF6532999585178117AE683CE8AD53F1C74DBB82E136A95A535F5FDFD8D4D47463BEAE68C42B1871C10845DC9CF63F1B83D960D6211DD221D121B164DC7345A3A178D188AFD1882F068FEF0E55EABB48C5177917BF0623A616CE1B996333CD66B3D73FF8E0836F1EE2C5E0636FBDF5D6BBF116A958C05AF87331980D661DD2211D121D124BC6CCF3C690B1E225212E1BF1391AF1817DF12A45E156AA784B547C92777CD0DEDB6FBF9DAC5EBDFABB694F19BF512BE78DCCBD992E0F5B654F7373F3E8A953A7C6CB790EC6A143873AC2927222BE58A796EEA533980D661DD2211D121D124BC6ECE78DC56F6DFB80E9F71A8CA5B56C3C19978D8686865C5B5BDBD9A3478F7E1E36D0917C3E3FB5518C8F8F8F5EB972E5D3EEEEEEBF6DDDBAF5C3B0B95E8825895B68ADBD1B80C16C30EB900EE990E8905832EE7FDE7877D9982C67B9A8C5F3464A149FF0184AB32194604FC86721F9BBC588DF5E0AE98C8F7CAFE527321ACC06B30EE9900E890E8925C3792318CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C319875488774488774482C1980C16C30EB900EE990E890E81060308B83BBE890BF3B1DD2211D022C196230EB900EE9900EE99058320083D960D6211DD221D121D121C0603698754874487448877408B0648883BBE8900EE9900EE91060C930100D661DD2211D121D124B0660301BCC3A243A243AA4433A0418CCE2E02E3AA4433AA4433A045832C460D6211DD2211DD221B1640006B3C1AC433AA443A243A24380C12C0EEEA243A2433AA4438025430C661DD2211DD2211D124B0660301BCC3AA4433A243A243A0418CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE910507D7A7A7A0CC4EA493E0CE6491D121D121DD2211D0252EDC8912323B95CCE50AC820C0F0FFF250CE6733A243A243AA4433A04A45A6F6FEF6FFBFAFABEFAF2CB2FC70DC7C5FBAA4F1CCADDDDDD9F873CA943A243A2433AA44340EA8561F0785757D789787933DE4729154FFC733F97E6A1AC433AA4433AA4433A94F60E01000000000000000000000000000000000000000000000000000000F3E0FFB1815AA5D70A02FE0000000049454E44AE426082, N'1')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1304341425315528705', N'1', N'出差流程.bpmn20.xml', N'1304341425068064769', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D2274726176656C22206E616D653D22E587BAE5B7AEE6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE587BAE5B7AEE6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373043463233352D374341392D344537412D383339322D3735414131463533323631312220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322206E616D653D22E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41394546363142422D324342322D343034462D383141302D3245324636333935363532342220736F757263655265663D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722207461726765745265663D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922206E616D653D22E9A286E5AFBCE4BC9AE7ADBE2220666C6F7761626C653A61737369676E65653D22247B7065727D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A2020202020203C6D756C7469496E7374616E63654C6F6F7043686172616374657269737469637320697353657175656E7469616C3D2266616C73652220666C6F7761626C653A636F6C6C656374696F6E3D22706572732220666C6F7761626C653A656C656D656E745661726961626C653D22706572223E0A20202020202020203C6C6F6F7043617264696E616C6974793E247B6E756D7D3C2F6C6F6F7043617264696E616C6974793E0A2020202020203C2F6D756C7469496E7374616E63654C6F6F704368617261637465726973746963733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D42353237464544362D374544442D344438462D394543452D4541334244413338453446432220736F757263655265663D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322207461726765745265663D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33433541373042382D423030362D344130392D383243452D3231373245334644373835312220736F757263655265663D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922207461726765745265663D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D35353744313135382D343444302D343541302D423635302D41343535423146423043344522206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39424243373736362D353535432D343231392D384430422D4444373244463139384243302220736F757263655265663D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722207461726765745265663D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F74726176656C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D2274726176656C222069643D2242504D4E506C616E655F74726176656C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437222069643D2242504D4E53686170655F7369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133222069643D2242504D4E53686170655F7369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539222069643D2242504D4E53686170655F7369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237222069643D2242504D4E53686170655F7369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445222069643D2242504D4E53686170655F7369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735302E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531222069643D2242504D4E456467655F7369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643222069643D2242504D4E456467655F7369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131222069643D2242504D4E456467655F7369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330222069643D2242504D4E456467655F7369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393536332220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735302E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234222069643D2242504D4E456467655F7369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, N'0')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1304341426900975618', N'1', N'出差流程.travel.png', N'1304341425068064769', 0x89504E470D0A1A0A0000000D4948445200000314000000E4080600000001F9621500000E704944415478DAEDDDFF6FD4F51D07707EF087FD11FB81644BE69FB01FF6837F80C9FC4172D89ED254D2AA03C4220999921294583486C42D594C480CA64B971083AC6302FD62A180CD18043A08B16C8842692D6315293D6B91CFDEEF8E7367CBD5A35F8EFBDC3D1EC92BD5BB82A43E79BDDFAFFB7C5BB1020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080054892E4914B972EED1D1818F8AEA7A727E9EAEA5265AEEEEEEEE4E8D1A3FF0E959521254332244332244340AAC406DCDFDF9F8C8D8D25535353EA21D5F5EBD79323478EDC0C0DF949195232A46448866408488DF8698E065C318D78AAABABEB820C2919523224433204A4463C34AC01564E85263C2D434A86940CC9900C01A911CF7BD4FC2AAA092732A46448C9900CC91050754D78E2AB91E4D2C9F792F3DDDB672AFE737C4DE3D48465488664488664481928C040316FDD1A1F4ECE1DDA9A9C3DB0F907155F8BEF699E16721992211992211952060A305014AD2BE7FF3CA701E7EBEAF94ECDD3422E43322443322443CA4001068AE275E1E39D459B707C4FF3B490CB900CC9900CC99032508081A2689DEBDA56B409C7F7344F0BB90CC9900CC9900C290305182834614D5886644886940C290305B0F44D38DE09A358138EEF699E16721992211992211952060A305014AD8BC77F5FB409C7F7344F0BB90CC9900CC9900C29030518288AD68DE1C1E4DCE1D6B98788C36BF13DCDD3422E43322443322443CA4001068A79EBB3BFBF3FA709C7D7344E4D58866448866448869481020C14F3D737DF24174FFC61EE21E2F05A7C4FF3B490CB900CC9900CC99032508081A2E89345878EFFAEE879A7F13D4F18B590CB900CC9900CC9903250808162CE273923177B937F1CFC6DD1069CAFF83DF17B7DC26321972119922119922165A00003C58F7E92E3131E4D588664488664488694810228DA844BF92467BE4F7834530BB90CC9900CC9900CC91050C303C5421B70BE34530BB90CC9900CC9900CC91050C30385D28465488664488664481928004D5813962119922125434A86004D5813962125434A86644886004D5859C8950CC9900CC9900C41F54892E427838383CD7BF6EC39D2D6D67673C3860DD30D0D0DC9EAD5AB936C367BF7F9E79F9F7AE595572EEDDCB9B33DD42F0C144A139621199221199221551B03457D7DFD4F3399CCBAB02FDC1BEA62A85B718F182A17EAB3F0DEBEF0F5E5F87D76D5353A487CF0C107EFBFF6DA6BD31B376E4CDE7DF7DD64606020191E1E4E72B95C12C5AF636363C9A953A7923070242FBEF8E2DD975E7AE9725353D35A0385D284654886644886644855E740F1D4534F3D11AA2BD4D4BD01A294FA387C7FD62EBB4684C1A1F1F5D75FFF66F3E6CD33C3C29D3B7792529D397326D9B265CB9DE6E6E60BAB56ADFAB9814269C232244332244332A4AA2343612858198682830F3044DCAFFAAB698FC8DCA3128FECDFBFBFF7B9E79E4B3A3B3B1F689098EDE0C183496363E364B51CADD0843561199221195232A46A3943994C66755D5DDD7F0A8783FAFAFAE48D37DE487A7B7B932FBEF822F9FAEBAF67F681B76FDF9E39ABE5F8F1E3C9AE5DBB92A79F7E7AF65071CBD18A2A1D26FAFAFAFEB67EFDFA64686828590A972F5F4EC27032B976EDDADF182894855C86644886644886543A33148689C7C30070A77090686F6F9F39F5BD14E3E3E333DF1F7F5DE160117ECFAA3B4DBEA6C523137198283518A58ABF5F535353EAA7504D581396211992212543AA1633148F4C140E132D2D2D3347231622FEBA784AFDACA1C2918A6A10AF9988A7392DD59189FB1DA978E69967C643601E3550280BB992211992211952E9C850BC66A2F034A7D6D6D6EF4F6B5AA8783AD48E1D3B669FFE94DA3D22FF3BD5E927DBB76F9F8AD74C2CA703070E4CD6D7D77F62A0501672254332244332A4D291A1304C74171E9958EC30513854CC3A52D16F579E62FBF6EDFB63FC1FFAEDB7DF26CBED85175E184DEB612D4D581396211992212543AA9632146F0D5B78CDC4424F739AEFF4A7C26B2A9CFA94E2A313F13913F1D6B0E570F6ECD9A9B41EA5D0843561199221195232A46A6CA0E8CA6FF6E305D5CBA1A3A3C3518AB48B4FC08E17622FE6F6B00FAAB1B171349E8F57497F5942FD4A13D6846548866448C990AA850C959297F864EBFC85D8F128C28D1B3796655F18EFFE34EB96B22B57902E7BF6EC39B27BF7EEA49C76EDDA75263E82BD527E060587D9BA3299CC2F35614D5886644886940CA96ACE50297909AFAFCB7FDF9B6FBEB9DC7BC3C281E2653BF494696B6BBB39303050D681E2C489139743583A2BAD0917D447F79BDA35614D5886644886940CA96A1A28E6CB4B786D6FFEFDBEBEBE65DD1BC687DF15FC593AEDD05366C3860DD3232323651D28464747C74258AE547013FE7E6A2FFCCBA5096BC232244332A4644855E94031272FE1DF2FE65F5FEA8BB1678B4FD42EF8735CB1434F998686862497CB9575A088FFBD10965CA537E1C2A93D1E0ED4843561199221195232A4AA79A028CC4BA8C9FCBF2FD5AD62E7BB856CC17F3B67879E32F17FDCC35042902BAE34E1CA2A195232A464488664A83C55EEBDA11D7ACAAC59B3E66EB98F504C4E4E8EA6E408C5C94C26F3F8638F3DF688C3C43ED591211992212543AA068E507C9F97F8F46A472828C9FAF5EBA7CA7D0DC5B56BD73EADF06B287ED07C2BE5BCD3F047B86F55CAFB16F2CACF50A565CA66508664C85A662DAB9881624E5E5C4341C9B66EDD7AB1DC77793A74E8D05F2BF42E4F9FC42742CE6EBE95D484E77BED61BF6F21AFFC0C555AA66C06654886AC65D6B2873E5014CD8BBB3C51B2B7DE7A6B77B99F43D1DADA7AA0C29E4371DF4F7134614DB8DA3264332843322443D6326B59A979F11C0A4AF6EAABAFFE6CDDBA75DF95F149D9B9BABABA7FA5F129889AB0269CF60CD90CCA900CC990B5CC5A56AAF8A4ECB05F9B2EC793B2B3D9EC5D4FCA4EB99696967F9E3A75AA5CA73BB587A0F4A7F1E7A4096BC23683368332244332642DABA50CC5E752E437FAEDEDEDCBB237ECE8E8283C3A91CA3D22C1B3CF3EBB6AD3A64DD365384A315E5757773A84336BA0D0842DE436833683322443D6326B59C50F144FE437FBF128C5525F9C1D7FBFB037BC5BF060BD54EE11B9A7B9B979B0B3B37359A78978BD469C3C7FECFC4E4D5813B690DB0CCA900CC990B5CC5A5619C2DEEDE3FC86BFA5A565C96E211B6F15BB69D3A63B854727D2BA47E4FF6159D9D8D838393434B42CC3C4E0E0E0FEF0DF180993E7A369FD19B9D59E5BED55E36670855B7ECA900CC990B54C867E648F18EA7A7EE3DFDADABAE8A1220E133B76EC28BC6EE2569AF78814C866B3F5CDCDCDB7C7C6C6967498B87AF5EAB1BABABACFD37E18CBC3803C0C4886644886940CA95ACC502693599DBF403B7FA462A1A73FC55F37EBC884539DAA4D7D7D7D635353D3ADA53A52118F4CC4612204714BDA7F369AB0262C433224434A8654AD66286CFC1B0A878A784D45BC503BDEA5A9D4BB39C50BB00BAF9988550D7B448A4CA1D96CF6E6871F7E38B1880BB5C7DF7EFBEDF7E2694E3180D5F073D1843561199221195232A46A3943718F186ABC70208883457C4E457CF85D3CFA903F1D2A9ED6149F801D1F5AF7CE3BEF246BD6ACF96ED6D3B96F55CB1E91E253E8CA3041F63437378F9E3E7D7AF2419E3371F8F0E18E30909C8C17D754D3F9709AB0262C433224434A8654AD6728EE110B6F27BBC0EA77CD446D0D164FC6C1A2A1A161ACADADEDFCB163C73E0FD3E6482E979B991E26272747AF5DBBF6697777F75FB66DDBF65198522FC590C489B3DAAED4D7843561199221195232A46A3D43857BC47B83C5F4830C12D5B847A444F1698921341B4308F686FA2C54EE5E30E2D72BA13AE3A3D2ABF9E9869AB0262C433224434A869481C21E1134614D5886940C291952320468C29AB0855CC99092211992214013561672254332244332244380814269C232244332244332A40C148026AC09CB900CC990922125438026AC09CB90922125433224438026AC2CE44A86644886644886000385D28465488664488664481928C040A1F969C23224433254624D4C4C24E7CE9D9BF9BA98D765481FD287000385D2846548866A30437138087FE499AF8B795D86F4217D083050284D588664C84061A0902165A00034614D58866448860C1432A40C148026AC09CB90922103850C29190234614DD842AE64C8402143FA903E0468C2CA42AE64C84061A090217D083050284D58866448860C1432A40C148026AC09CB900CC990814286940C019AB0262C434A860C1432A40FC910A0092B0BB9922103850CE943FA1060A0509AB00CC99081C2402143CA4001060ACD4F13962119922103850C290305B0303D3D3D9A5FE5542E34E16919523264A090217D481F0252E3E8D1A3236363631A6005D4F0F0F09F4213BE20434A862AB7262626668683F87531AFCB903EA40F0155A3B7B7F7D77D7D7D5F7DF9E597931AE1C3FB342736E0EEEEEECF433D29434A86940CC9900C01A912FEE23FDED5D575321EA28CE73DAAB257FCB95F4873039621199221199221194A7B86000000000000000000000000000000000000000000000000000000E0A1FA2FE7E745A5C30319360000000049454E44AE426082, N'1')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308406617288617986', N'1', N'var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308406617791934466', N'1', N'hist.var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308586688364371969', N'1', N'var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308586688863494145', N'1', N'hist.var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308587454428831745', N'1', N'var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308587454923759618', N'1', N'hist.var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308589270763790337', N'1', N'var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1308589271267106818', N'1', N'hist.var-pers', NULL, 0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178, NULL)
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1354458534673420289', N'1', N'用车申请.bpmn20.xml', N'1354458533096361986', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D226361725F6D6F64656C22206E616D653D22E794A8E8BDA6E794B3E8AFB72220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE794A8E8BDA6E794B3E8AFB73C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D227369642D45373532334444412D304243452D343730362D423334432D3143364546363930454637352220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D42423037303532382D433345382D343233452D423430392D46364437324441334438363922206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D37334132333336412D454630312D343545352D394538452D3942383939343031373733372220736F757263655265663D227369642D45373532334444412D304243452D343730362D423334432D31433645463639304546373522207461726765745265663D227369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D44384341444237462D314343342D343045452D394434422D39414243394331453733333022206E616D653D22E9A286E5AFBCE5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D42313935423539462D444341352D343432352D413836382D4441443132354144344232412220736F757263655265663D227369642D42423037303532382D433345382D343233452D423430392D46364437324441334438363922207461726765745265663D227369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330223E3C2F73657175656E6365466C6F773E0A202020203C696E7465726D6564696174655468726F774576656E742069643D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E3C2F696E7465726D6564696174655468726F774576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D41314641364630382D414531392D343344462D424533352D3743353930364431384236442220736F757263655265663D227369642D44384341444237462D314343342D343045452D394434422D39414243394331453733333022207461726765745265663D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6361725F6D6F64656C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226361725F6D6F64656C222069643D2242504D4E506C616E655F6361725F6D6F64656C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D45373532334444412D304243452D343730362D423334432D314336454636393045463735222069643D2242504D4E53686170655F7369642D45373532334444412D304243452D343730362D423334432D314336454636393045463735223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223131302E302220793D223137372E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639222069643D2242504D4E53686170655F7369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223138352E302220793D223135322E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330222069643D2242504D4E53686170655F7369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223333302E302220793D223135322E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438222069643D2242504D4E53686170655F7369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223435382E302220793D223137372E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D42313935423539462D444341352D343432352D413836382D444144313235414434423241222069643D2242504D4E456467655F7369642D42313935423539462D444341352D343432352D413836382D444144313235414434423241223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223238342E393439393939393939393930372220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223332392E393939393939393939393830372220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41314641364630382D414531392D343344462D424533352D374335393036443138423644222069643D2242504D4E456467655F7369642D41314641364630382D414531392D343344462D424533352D374335393036443138423644223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223432392E393439393939393939393735332220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435382E302220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D37334132333336412D454630312D343545352D394538452D394238393934303137373337222069643D2242504D4E456467655F7369642D37334132333336412D454630312D343545352D394538452D394238393934303137373337223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223133392E393439393938343839393537362220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223138352E302220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, N'0')
GO

INSERT INTO [dbo].[act_ge_bytearray]  VALUES (N'1354458537030619138', N'1', N'用车申请.car_model.png', N'1354458533096361986', 0x89504E470D0A1A0A0000000D49484452000001F2000000F20806000000B6E6476400000B8B4944415478DAEDDDDD6FD5F51D07702EBCE0C20B2FBCDC05C948C6857FC02EB8F0820B2F48C60584421B6D2AA1EA40AB4242A6040226428CE1624B162309F161618931CA189342CB7812C998048AD8AC6C80D2270F5B0AC1152AE877BFCFC98E4179B0EDE9EFF4774E5FAFE41B4C4F0BA6E7DDF7E7F7DC59B3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F85E4AE981F3E7CFBF77FCF8F16FBBBBBBD3FEFDFBAD1AAFAEAEAE74F8F0E17F67AB4586AC999821A00A51C0478E1C49A552298D8D8D59D3B42E5FBE9C0E1D3A74352BE4C53264CDB40C015588BD28055C98221ECBF6AE7A65C89A691902AA1087421560715656C23765C89A691902AA10E7D7945FA14A38C99035D33204D4A084BFBE3294CE9FD891CE766D2AAFF8EFF898E254C232244340C14BF8DAC840FAAC737D3ABD67ED0F567C2C5E539E06B90CC91050E012BE74F64F77147065F59FDDAD3C0D72199221A0C825DCFBD7ADF72CE1784D791AE432244340814BF8B3FD1BEF59C2F19AF234C865488600256C19E496410EE451C27185F1BD4A385E539E06B90CC91050E0123EF7F1EFEE59C2F19AF234C8654886800297F07F067AD267FB36DC794834FB58BCA63C0D72199221A0C0251CEBC2DFDFBEA384E3638A5309CB900C01452FE11B37D2B963BFBFF39068F6B1784D791AE432244340414B389EBAD5F7F16FEF797E335EF3642E835C866408285A09677B4943E70EA4337B7F73CF02AEACF89CF85C7B5606B90CC910508012FEA93D287B564A588664082870098F670FEA7E7B56CAD42097211902A6B184275BC095A54C0D72199221601A4BD852C23224438012B60C724B860025AC8465C832C80125AC84654886A0B1A49466F7F4F4B4BFF5D65B87B66CD972F5D9679FBDD9DADA9A9A9A9A524B4BCB774F3FFDF4D84B2FBD747EEBD6ADEF66EB1706B9A584654886F42D0509D4FBEFBFFFF6E6CD9B6F767474A437DE78231D3F7E3C0D0C0CA4EBD7AFA7107F964AA5F4E9A79FA62C78E9B9E79EFBEEF9E79FBFB872E5CA1506B96590CB900CE95BA64916A0B6575E79E5C6DAB56BCBA1B975EB561AAF53A74EA575EBD6DD6A6F6FEF5DB264C95C83DC32C8654886C6DFB757AE5C49EFBCF34E792F7CDEBC79E9A1871E8AFFCFF4E0830FA63973E6A4C71E7B2CEDD8B1238D8C8C346CDF52DD56E103BB76ED3AF0D4534FA5DDBB774F6880FFD8DEBD7B535B5BDB68A36C2D2A61252C43329467DFF6F7F7A755AB569507760CEB37DF7C339D3973265DBE7CB9DCA931B87B7B7BD3CE9D3BD3E2C58BCB9F175F3B3434D4707D4B15A13A78F0E0DF56AF5E9DFAFAFAD254B878F162046D74C58A15BF36C82D835C8664E8EE7DBB6DDBB6F4F0C30FA7356BD6A40B172E8CAB5F6380C7E7C71EFBABAFBEDA507DCB24C59661842ACEC14CA5F8FBB2ADC46BCB962D6B31C82D83DC7B27433FECDB18C671083DF6BE2723BEEE91471E29EF9D0F0E0E3644DF32C973341182A9DA13BFDB9EF9E38F3F3E92856B9E416E19E4D64CCED0ED7D1B437CFEFCF9DF1F3E9FAC38ECBE60C182F2306F84BE65E28778666FDAB4692CCED1E469CF9E3DA3CDCDCD9F18E496416ECDD40CDDDEB771383DF6C4AB1DE2B70FF3D8338FC3ECF5DEB74CD0071F7CF087B85AF29B6FBE49797BE6996786EBF5908F1256C232244353D5B75F7EF965F99CF8640FA7DFEF307B9C338FF3E7F5DCB74C70EB30EE5B8C5B1E6AE1F4E9D363F5BA95A88495B00CC9D054F56D5C9D1E87D5F3B06EDDBAF221F67AEE5B26209E2014175C54739BD944B5B5B50D373535CD29CAF720DB62DD9FADF94A5809CB900CE5F9FE57FA36EE138F5BC72E5DBA944BC7C6DE78FCFD71C8BE687D4B0EE23180DBB76F4FB5B46DDBB65359B0D614E57B100F5D88153F8C4B972EFDA51236C8654886F278FF2B7D1B0F7B59B87061AE3D1BF799C77DE845EB5B7210CFF28DC700D6D2B163C72E66C1DA5DB412BE6D7D74B7AD6B256C90CB900C55F3FE57FA36866C3C992D4FF1D09878A84CD1FA961CC403F9E3304C2D0D0F0F97B2605D2A70097FBF757DFB0FA31236C8654886AA79FF2B7D3B77EEDC29BFC8EDC7E20970F138D7A2F52D3988DFAA5379207FADC4BF9705EB7AD14BF8F6ADEB385CA6840D721992A16ADEFF4ADFC655E55375CBD9FD6E458BF3E445EB5B722AA0E9308EE0176E29E1622D19B2EA31436156F902F6FC55FE9DF8774DBB06F6C4134F7C57EB3DF2D1D1D1E13AD9233F916D452F7CF4D1471F7058D41EB90CC950B5EF7FA56F6BB9475EB4BE2507AB57AF1EABF539F2C1C1C17F14FC1CF90F7EF88A727E33B6AEEFB68AF2BA415EFC0C152D530D3CC8EFFAFE57FAB696E7C88BD6B7E460FDFAF5E76A7DD57A6767E75F0A7AD5FA27CB962D5BF4E31FBE220DF2FB7D6CBA5F37C88B9FA1A265AA0107F97DDFFF4ADFD6F2AAF5A2F52D3978EDB5D7B6D7FA3EF20D1B36EC29D87DE477DD7A36C80DF246CB90419EDB201FD7FB5FE9DB5ADE475EB4BE25072FBFFCF2CF57AD5AF56D0D9FEC767DF9F2E5FFAAC7270D19E40679BD67C8209FDE0C55FAB6564F762B954A37EAB56F99A0175E78E19FB57AD67A6767E7BB59A88ED4E3F7C92037C80D72837CAAFAB616CF5AAFE7BE65829E7CF2C9252FBEF8E2CD1AEC958F645B8727FDF63383DC2037C867EA20AFF46D7F7F7FAEBFFD6C7070F06A3DF72D93D0DEDEDE93F7EF238FF343B175F853E79194B0416E901BE48D9CA14ADFE6F9FBC8EBBD6F99843887D2D6D636DAD7D797CB10EFE9E9D995FD1B43D9D6E1BC7AFD1EB9FDCCED678D38C867B9FD6C5AFBB6A3A323CD9F3FBFEA611E437CC1820569C58A150DD1B74C524B4B4B73B6A5F8DF52A934A543BCBFBFFFE8F2E5CBBFA8F7433C1EE6E1813032244379F46D0CF3D8339FEC61F6F8BAD8138F21FEF9E79F7FD2087D4B159A9B9BDB56AE5C796DAAF6CC63CB3042B574E9D275F5FEBD51C24A58866428AFBE8DC3EC716E3B2E801BEF43BAE2F3E2C2B6F8BACD9B373754DF52A52C044DD9D6E2D50F3FFCF0EB2A2E801B79FDF5D777C4E19D6CB536C2F745092B611992A13CFB362E808BABD967CF9E5DBECF3C1E1A137BDB95C3EE71F83C9ED8160F7B8907D0C4008FBDF0B8B0ADD1FA96293A87936DD975B7B7B70F9F3C79727422F789EFDBB76F6716CC1371A145239DA351C24A588664A8167D7BEDDAB5F2105FB46851F971AE31B0B34F2BDF1B1E8F5D8D73E1F1B0976C80DF68D4BE656A03B63802D6DADA5ADAB265CBD9A3478F7E3130303054F9452BF140FE78966F5757D79F376EDCF8517373F3F908546C1536DAD5924A5809CB900CE95BEA5616989F655B7B1D5960DECBD685F86D3AFF7FB670FC79299EE51B8F016CE427082961252C4332A46FC120B70C724B8600256C19E496410E2861252C43320418E496129621190294B065905B32042861252C4396410E2861252C43320418E496129621190294B065905B32042861252C4396410E06B9A5846548860083DC32C82D190294B0129621CB200794B012962119020C724B09CB900C014AD832C82D190294B0129621CB200794B012962119020C724B09CB900C014AD832C82D831C50C24A58862C831C66A2EEEE6EE5579C753D2BE19B3264CDB40C0155387CF8F050A954528005580303037FCC4AB85786AC999621A00A070E1CF8D5C18307AF7CF5D557A38A70FAF6A2A280BBBABABEC8D66219B2665A86802A653FF80BB3ADF81371482ECEAF59355FF17DEFADE702962119020000000000000000000000000000000080FBFA1F8AC73D68D2D1974F0000000049454E44AE426082, N'1')
GO


-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ge_property]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ge_property]
GO

CREATE TABLE [dbo].[act_ge_property] (
  [NAME_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VALUE_] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [REV_] int  NULL
)
GO

ALTER TABLE [dbo].[act_ge_property] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO [dbo].[act_ge_property]  VALUES (N'batch.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'cfg.execution-related-entities-count', N'true', N'2')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'cfg.task-related-entities-count', N'true', N'2')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'common.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'entitylink.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'eventsubscription.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'identitylink.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'job.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'next.dbid', N'1', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'schema.history', N'create(6.5.0.6)', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'task.schema.version', N'6.5.0.6', N'1')
GO

INSERT INTO [dbo].[act_ge_property]  VALUES (N'variable.schema.version', N'6.5.0.6', N'1')
GO


-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_actinst]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_actinst]
GO

CREATE TABLE [dbo].[act_hi_actinst] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CALL_PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ASSIGNEE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_TIME_] datetime2(7)  NOT NULL,
  [END_TIME_] datetime2(7)  NULL,
  [DURATION_] bigint  NULL,
  [DELETE_REASON_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_actinst] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406301734350850', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:02:26.0050000', N'2020-09-22 22:02:26.3180000', N'313', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406303806337026', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:02:26.4990000', N'2020-09-22 22:02:26.4990000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406304053800962', N'2', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308406304594866177', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:02:26.5580000', N'2020-09-22 22:02:29.2470000', N'2689', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406316305362945', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:02:29.4780000', N'2020-09-22 22:02:29.4780000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406316791902210', N'2', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308406317274247169', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-22 22:02:29.5950000', N'2020-09-22 22:08:35.0520000', N'365457', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406614050615297', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:03:40.4670000', N'2020-09-22 22:03:41.5350000', N'1068', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406619301883906', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:03:41.7190000', N'2020-09-22 22:03:41.7190000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406619561930754', N'2', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308406620056858626', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:03:41.7800000', N'2020-09-22 22:03:44.5540000', N'2774', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406632182591490', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:03:44.7890000', N'2020-09-22 22:03:44.7890000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406632677519362', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308406633172447233', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-22 22:03:44.9070000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406819621842946', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:04:29.4780000', N'2020-09-22 22:04:29.8270000', N'349', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406821853212673', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:04:30.0100000', N'2020-09-22 22:04:30.0100000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406822138425345', N'2', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308406822629158913', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:04:30.0780000', N'2020-09-22 22:04:32.7210000', N'2643', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406834209632258', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:04:32.9560000', N'2020-09-22 22:04:32.9560000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308406834738114561', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308406835233042433', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-22 22:04:33.0820000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308407850615320578', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:08:35.2860000', N'2020-09-22 22:08:35.2860000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308407851106054145', N'3', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308407851600982018', NULL, N'主管审批', N'userTask', N'1280709549107552257', N'2020-09-22 22:08:35.4040000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583523564908545', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:46:38.9810000', N'2020-09-23 09:46:39.2480000', N'267', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583525452345345', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:39.4320000', N'2020-09-23 09:46:39.4320000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583525724975106', N'2', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308583526312177666', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:46:39.4960000', N'2020-09-23 09:46:42.2100000', N'2714', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583538093977602', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:42.4450000', N'2020-09-23 09:46:42.4450000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583538588905473', N'2', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308583539075444738', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 09:46:42.5640000', N'2020-09-23 09:46:45.2800000', N'2716', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583550957907969', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:45.5130000', N'2020-09-23 09:46:45.5130000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308583551444447233', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308583551935180802', NULL, N'主管审批', N'userTask', N'1280709549107552257', N'2020-09-23 09:46:45.6290000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586277431631873', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:57:35.5540000', N'2020-09-23 09:57:36.0670000', N'513', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586280283758593', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:57:36.2340000', N'2020-09-23 09:57:36.2340000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586280539611138', N'2', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308586281105842178', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:57:36.2960000', N'2020-09-23 09:57:38.7010000', N'2405', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586291503521794', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:57:38.9100000', N'2020-09-23 09:57:38.9100000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586291956506625', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308586292422074369', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 09:57:39.0180000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586686682456065', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:59:13.1270000', N'2020-09-23 09:59:13.8100000', N'683', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586690235031554', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:13.9750000', N'2020-09-23 09:59:13.9750000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586690486689794', N'2', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308586690956451842', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:14.0340000', N'2020-09-23 09:59:16.4610000', N'2427', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586701551263745', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:16.6730000', N'2020-09-23 09:59:16.6730000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586702000054273', N'2', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308586702457233410', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:16.7800000', N'2020-09-23 09:59:19.1340000', N'2354', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586712754249730', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:19.3440000', N'2020-09-23 09:59:19.3440000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586716319408130', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714415194113', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586716768198657', NULL, N'领导会签', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:20.1940000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586717904855041', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714654269441', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586718148124673', NULL, N'领导会签', N'userTask', N'1280700700074041345', N'2020-09-23 09:59:20.5710000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308586719137980418', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714893344770', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586719393832961', NULL, N'领导会签', N'userTask', N'1280709549107552257', N'2020-09-23 09:59:20.8660000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587452872744962', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:02:15.8010000', N'2020-09-23 10:02:16.4490000', N'648', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587456282714114', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:16.6140000', N'2020-09-23 10:02:16.6140000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587456551149569', N'2', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308587457004134402', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:16.6780000', N'2020-09-23 10:02:19.1040000', N'2426', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587467590557698', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:19.3110000', N'2020-09-23 10:02:19.3110000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587468056125441', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308587468509110274', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:02:19.4210000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587551543746561', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:02:39.3280000', N'2020-09-23 10:02:39.6120000', N'284', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587553410211842', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:39.7710000', N'2020-09-23 10:02:39.7710000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587553657675778', N'2', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308587554144215042', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:39.8300000', N'2020-09-23 10:02:42.1480000', N'2318', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587564248293378', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:42.3560000', N'2020-09-23 10:02:42.3560000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587564709666818', N'2', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308587565158457345', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:42.4650000', N'2020-09-23 10:02:44.8350000', N'2370', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587575518388225', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:45.0430000', N'2020-09-23 10:02:45.0430000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587575975567361', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', N'1308587576432746498', NULL, N'宝山审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:02:45.1510000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587713993334785', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:03:18.0570000', N'2020-09-23 10:03:18.2790000', N'222', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587715612336130', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:03:18.4430000', N'2020-09-23 10:03:18.4430000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587715863994370', N'2', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308587716329562114', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:03:18.5040000', N'2020-09-23 10:03:20.8150000', N'2311', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587726433640449', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:03:21.0240000', N'2020-09-23 10:03:21.0240000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308587726920179714', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308587727377358849', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:03:21.1400000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588719409946626', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:07:17.7670000', N'2020-09-23 10:07:18.0830000', N'316', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588721486127106', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:07:18.2620000', N'2020-09-23 10:07:18.2620000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588721754562561', N'2', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308588722266267649', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:07:18.3270000', N'2020-09-23 10:07:20.9780000', N'2651', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588733838352385', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:07:21.2080000', N'2020-09-23 10:07:21.2080000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588734329085953', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308588734824013825', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:07:21.3250000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588942660165634', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:08:10.9950000', N'2020-09-23 10:08:11.2920000', N'297', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588944648265730', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:08:11.4680000', N'2020-09-23 10:08:11.4680000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588944899923970', N'2', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308588945399046146', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:08:11.5290000', N'2020-09-23 10:08:14.1540000', N'2625', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588956883050497', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:08:14.3860000', N'2020-09-23 10:08:14.3860000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308588957361201153', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308588957851934722', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:08:14.5000000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308589269002182657', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:09:28.8010000', N'2020-09-23 10:09:29.5180000', N'717', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308589272768667649', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:09:29.6980000', N'2020-09-23 10:09:29.6980000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308589273020325890', N'2', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308589273519448066', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:09:29.7590000', N'2020-09-23 10:09:32.4910000', N'2732', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308589285452242945', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:09:32.7220000', N'2020-09-23 10:09:32.7220000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308589285938782210', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308589286484041730', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:09:32.8390000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308590489804693505', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:14:19.8620000', N'2020-09-23 10:14:20.1660000', N'304', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308590491771822082', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:14:20.3310000', N'2020-09-23 10:14:20.3310000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308590492027674626', N'2', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308590492497436673', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-23 10:14:20.3930000', N'2020-09-23 10:14:22.7150000', N'2322', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308590502639263745', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:14:22.9240000', N'2020-09-23 10:14:22.9240000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308590503100637186', N'2', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308590503566204930', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:14:23.0330000', N'2020-09-23 10:18:24.4900000', N'241457', N'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1308591517623083009', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308591517363036162', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308591518118010881', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-23 10:18:24.9140000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1354463469016223745', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, N'startEvent', NULL, N'2021-01-28 00:17:10.3840000', N'2021-01-28 00:17:11.1080000', N'724', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1354463473504129025', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2021-01-28 00:17:11.4600000', N'2021-01-28 00:17:11.4600000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1354463474770808834', N'2', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', N'1354463476456919042', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2021-01-28 00:17:11.7690000', N'2021-01-28 00:17:13.3060000', N'1537', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1354463482802900993', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2021-01-28 00:17:13.6710000', N'2021-01-28 00:17:13.6710000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_hi_actinst]  VALUES (N'1354463484451262466', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'1354463485835382785', NULL, N'领导审批', N'userTask', N'1275735541155614721', N'2021-01-28 00:17:14.0700000', NULL, NULL, NULL, N'')
GO


-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_attachment]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_attachment]
GO

CREATE TABLE [dbo].[act_hi_attachment] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [URL_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTENT_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TIME_] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[act_hi_attachment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_comment]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_comment]
GO

CREATE TABLE [dbo].[act_hi_comment] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TIME_] datetime2(7)  NOT NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACTION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [MESSAGE_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [FULL_MSG_] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[act_hi_comment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------
INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308407844994953218', N'comment', N'2020-09-22 22:08:33.8850000', N'1275735541155614721', N'1308406317274247169', N'1308406300706746370', N'AddComment', N'俞宝山提交了任务，意见：我觉得可以;', 0xE4BF9EE5AE9DE5B1B1E68F90E4BAA4E4BA86E4BBBBE58AA1EFBC8CE6848FE8A781EFBC9AE68891E8A789E5BE97E58FAFE4BBA53B)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308407861721837569', N'event', N'2020-09-22 22:08:37.8750000', N'1265476890672672808', N'1308407851600982018', NULL, N'DeleteGroupLink', N'null_|_assignee', NULL)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308407866788556802', N'event', N'2020-09-22 22:08:39.0810000', N'1265476890672672808', N'1308407851600982018', NULL, N'AddUserLink', N'1280709549107552257_|_assignee', NULL)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308583546591637506', N'comment', N'2020-09-23 09:46:44.4110000', N'1275735541155614721', N'1308583539075444738', N'1308583522503749633', N'AddComment', N'与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308586708929044481', N'comment', N'2020-09-23 09:59:18.3740000', N'1275735541155614721', N'1308586702457233410', N'1308586685709377538', N'AddComment', N'与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308587571659628545', N'comment', N'2020-09-23 10:02:44.0620000', N'1280700700074041345', N'1308587565158457345', N'1308587550507753474', N'AddComment', N'与上一步处理人相同，系统自动完成;', 0xE4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B)
GO

INSERT INTO [dbo].[act_hi_comment]  VALUES (N'1308591513432973314', N'comment', N'2020-09-23 10:18:23.8570000', N'1280700700074041345', N'1308590503566204930', N'1308590488798060546', N'AddComment', N'老俞退回任务到【填写申请单】，退回原因：跳什么舞，回家睡觉;', 0xE586AFE7A195E6A5A0E98080E59B9EE4BBBBE58AA1E588B0E38090E5A1ABE58699E794B3E8AFB7E58D95E38091EFBC8CE98080E59B9EE58E9FE59BA0EFBC9AE8B7B3E4BB80E4B988E8889EEFBC8CE59B9EE5AEB6E79DA1E8A7893B)
GO


-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_detail]
GO

CREATE TABLE [dbo].[act_hi_detail] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VAR_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REV_] int  NULL,
  [TIME_] datetime2(7)  NOT NULL,
  [BYTEARRAY_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DOUBLE_] float(53)  NULL,
  [LONG_] bigint  NULL,
  [TEXT_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEXT2_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------
INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308406301990203394', N'FormProperty', N'1308406300706746370', N'1308406301486886914', NULL, N'1308406301734350850', N'formData', NULL, NULL, N'2020-09-22 22:02:26.0050000', NULL, NULL, NULL, N'{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308406614306467841', N'FormProperty', N'1308406613064953858', N'1308406613807345665', NULL, N'1308406614050615297', N'formData', NULL, NULL, N'2020-09-22 22:03:40.4680000', NULL, NULL, NULL, N'{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308406819877695490', N'FormProperty', N'1308406818585849858', N'1308406819361796097', NULL, N'1308406819621842946', N'formData', NULL, NULL, N'2020-09-22 22:04:29.4780000', NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308407847201157122', N'FormProperty', N'1308406300706746370', N'1308406301486886914', N'1308406317274247169', N'1308406316791902210', N'formData', NULL, NULL, N'2020-09-22 22:08:34.3480000', NULL, NULL, NULL, N'{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308583523824955393', N'FormProperty', N'1308583522503749633', N'1308583523304861698', NULL, N'1308583523564908545', N'formData', NULL, NULL, N'2020-09-23 09:46:38.9810000', NULL, NULL, NULL, N'{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308586277687484418', N'FormProperty', N'1308586276353695745', N'1308586277171585026', NULL, N'1308586277431631873', N'formData', NULL, NULL, N'2020-09-23 09:57:35.5540000', NULL, NULL, NULL, N'{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308586686925725698', N'FormProperty', N'1308586685709377538', N'1308586686443380737', NULL, N'1308586686682456065', N'formData', NULL, NULL, N'2020-09-23 09:59:13.1270000', NULL, NULL, NULL, N'{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308587453116014594', N'FormProperty', N'1308587451853529089', N'1308587452633669633', NULL, N'1308587452872744962', N'formData', NULL, NULL, N'2020-09-23 10:02:15.8010000', NULL, NULL, NULL, N'{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308587551795404802', N'FormProperty', N'1308587550507753474', N'1308587551300476930', NULL, N'1308587551543746561', N'formData', NULL, NULL, N'2020-09-23 10:02:39.3280000', NULL, NULL, NULL, N'{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308587714240798722', N'FormProperty', N'1308587712978313218', N'1308587713737482242', NULL, N'1308587713993334785', N'formData', NULL, NULL, N'2020-09-23 10:03:18.0570000', NULL, NULL, NULL, N'{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308588719665799169', N'FormProperty', N'1308588718357176322', N'1308588719162482690', NULL, N'1308588719409946626', N'formData', NULL, NULL, N'2020-09-23 10:07:17.7670000', NULL, NULL, NULL, N'{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308588942920212481', N'FormProperty', N'1308588941628366850', N'1308588942400118785', NULL, N'1308588942660165634', N'formData', NULL, NULL, N'2020-09-23 10:08:10.9950000', NULL, NULL, NULL, N'{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308589269304172545', N'FormProperty', N'1308589267949412354', N'1308589268750524417', NULL, N'1308589269002182657', N'formData', NULL, NULL, N'2020-09-23 10:09:28.8020000', NULL, NULL, NULL, N'{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1308590490060546049', N'FormProperty', N'1308590488798060546', N'1308590489553035265', NULL, N'1308590489804693505', N'formData', NULL, NULL, N'2020-09-23 10:14:19.8620000', NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL)
GO

INSERT INTO [dbo].[act_hi_detail]  VALUES (N'1354463470446481409', N'FormProperty', N'1354463463303581698', N'1354463467527245825', NULL, N'1354463469016223745', N'formData', NULL, NULL, N'2021-01-28 00:17:10.3840000', NULL, NULL, NULL, N'{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL)
GO


-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_entitylink]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_entitylink]
GO

CREATE TABLE [dbo].[act_hi_entitylink] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LINK_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HIERARCHY_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_entitylink] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_identitylink]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_identitylink]
GO

CREATE TABLE [dbo].[act_hi_identitylink] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [GROUP_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_identitylink] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406301226840066', NULL, N'starter', N'1265476890672672808', NULL, N'2020-09-22 22:02:25.8830000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406304850718721', NULL, N'assignee', N'1265476890672672808', N'1308406304594866177', N'2020-09-22 22:02:26.6880000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406305358229505', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:02:26.8680000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406313876860930', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:02:28.8990000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406317517516801', NULL, N'assignee', N'1275735541155614721', N'1308406317274247169', N'2020-09-22 22:02:29.7100000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406318016638977', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-22 22:02:29.8860000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406613555687426', NULL, N'starter', N'1265476890672672808', NULL, N'2020-09-22 22:03:40.3490000', N'1308406613064953858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406620316905474', NULL, N'assignee', N'1265476890672672808', N'1308406620056858626', N'2020-09-22 22:03:41.8990000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406620824416257', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:03:42.0820000', N'1308406613064953858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406629749895170', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:03:44.2090000', N'1308406613064953858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406633407328257', NULL, N'assignee', N'1275735541155614721', N'1308406633172447233', N'2020-09-22 22:03:45.0250000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406633906450433', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-22 22:03:45.2000000', N'1308406613064953858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406819105943553', NULL, N'starter', N'1265476890672672808', NULL, N'2020-09-22 22:04:29.3560000', N'1308406818585849858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406822872428545', NULL, N'assignee', N'1265476890672672808', N'1308406822629158913', N'2020-09-22 22:04:30.1950000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406823371550722', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:04:30.3720000', N'1308406818585849858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406831776935937', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:04:32.3760000', N'1308406818585849858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406835497283586', NULL, N'assignee', N'1280700700074041345', N'1308406835233042433', N'2020-09-22 22:04:33.2000000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308406836000600066', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-22 22:04:33.3830000', N'1308406818585849858', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308407848664969218', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-22 22:08:34.8210000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308407851844251650', NULL, N'assignee', N'1280709549107552257', N'1308407851600982018', N'2020-09-22 22:08:35.5220000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308407852334985218', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-22 22:08:35.6970000', N'1308406300706746370', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308407861465985026', NULL, N'assignee', NULL, N'1308407851600982018', N'2020-09-22 22:08:37.8140000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308407866041970690', NULL, N'assignee', N'1280709549107552257', N'1308407851600982018', N'2020-09-22 22:08:38.9060000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583523040620545', NULL, N'starter', N'1275735541155614721', NULL, N'2020-09-23 09:46:38.8570000', N'1308583522503749633', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583526576418817', NULL, N'assignee', N'1275735541155614721', N'1308583526312177666', N'2020-09-23 09:46:39.6410000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583527075540994', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:46:39.8180000', N'1308583522503749633', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583535636115457', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:46:41.8600000', N'1308583522503749633', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583539327102977', NULL, N'assignee', N'1275735541155614721', N'1308583539075444738', N'2020-09-23 09:46:42.6810000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583548533600258', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:46:44.9340000', N'1308583522503749633', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583552174256129', NULL, N'assignee', N'1280709549107552257', N'1308583551935180802', N'2020-09-23 09:46:45.7460000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308583552690155522', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 09:46:45.9250000', N'1308583522503749633', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586276898955265', NULL, N'starter', N'1275735541155614721', NULL, N'2020-09-23 09:57:35.4290000', N'1308586276353695745', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586281382666242', NULL, N'assignee', N'1275735541155614721', N'1308586281105842178', N'2020-09-23 09:57:36.4340000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586281839845377', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:57:36.6060000', N'1308586276353695745', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586289326678017', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:57:38.3900000', N'1308586276353695745', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586292665344001', NULL, N'assignee', N'1280700700074041345', N'1308586292422074369', N'2020-09-23 09:57:39.1290000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586293126717442', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 09:57:39.2960000', N'1308586276353695745', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586686191722498', NULL, N'starter', N'1275735541155614721', NULL, N'2020-09-23 09:59:13.0110000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586691203915778', NULL, N'assignee', N'1275735541155614721', N'1308586690956451842', N'2020-09-23 09:59:14.1470000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586691669483521', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:59:14.3160000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586699412168705', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:59:16.1630000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586702696308737', NULL, N'assignee', N'1275735541155614721', N'1308586702457233410', N'2020-09-23 09:59:16.8890000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586710615154689', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 09:59:18.8330000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586717011468290', NULL, N'assignee', N'1275735541155614721', N'1308586716768198657', N'2020-09-23 09:59:20.3000000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586718399782914', NULL, N'assignee', N'1280700700074041345', N'1308586718148124673', N'2020-09-23 09:59:20.6290000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586718647246849', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 09:59:20.7490000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586719632908289', NULL, N'assignee', N'1280709549107552257', N'1308586719393832961', N'2020-09-23 09:59:20.9270000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308586719880372226', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 09:59:21.0430000', N'1308586685709377538', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587452382011393', NULL, N'starter', N'1280700700074041345', NULL, N'2020-09-23 10:02:15.6840000', N'1308587451853529089', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587457251598337', NULL, N'assignee', N'1280700700074041345', N'1308587457004134402', N'2020-09-23 10:02:16.7870000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587457721360385', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:02:16.9580000', N'1308587451853529089', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587465472434177', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:02:18.8060000', N'1308587451853529089', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587468764962817', NULL, N'assignee', N'1275735541155614721', N'1308587468509110274', N'2020-09-23 10:02:19.5310000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587469213753345', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 10:02:19.6980000', N'1308587451853529089', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587551040430081', NULL, N'starter', N'1280700700074041345', NULL, N'2020-09-23 10:02:39.2070000', N'1308587550507753474', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587554412650498', NULL, N'assignee', N'1280700700074041345', N'1308587554144215042', N'2020-09-23 10:02:39.9460000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587554878218241', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:02:40.1210000', N'1308587550507753474', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587562130169857', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:02:41.8500000', N'1308587550507753474', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587565401726978', NULL, N'assignee', N'1280700700074041345', N'1308587565158457345', N'2020-09-23 10:02:42.5740000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587573337350145', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:02:44.5220000', N'1308587550507753474', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587576667627521', NULL, N'assignee', N'1275735541155614721', N'1308587576432746498', N'2020-09-23 10:02:45.2600000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587577120612354', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 10:02:45.4250000', N'1308587550507753474', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587713485824002', NULL, N'starter', N'1280700700074041345', NULL, N'2020-09-23 10:03:17.9380000', N'1308587712978313218', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587716581220354', NULL, N'assignee', N'1280700700074041345', N'1308587716329562114', N'2020-09-23 10:03:18.6150000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587717034205185', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:03:18.7830000', N'1308587712978313218', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587724307128321', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:03:20.5170000', N'1308587712978313218', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587727629017090', NULL, N'assignee', N'1275735541155614721', N'1308587727377358849', N'2020-09-23 10:03:21.2480000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308587728090390529', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 10:03:21.4200000', N'1308587712978313218', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588718894047233', NULL, N'starter', N'1280709549107552257', NULL, N'2020-09-23 10:07:17.6450000', N'1308588718357176322', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588722522120193', NULL, N'assignee', N'1280709549107552257', N'1308588722266267649', N'2020-09-23 10:07:18.4490000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588723096739842', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:07:18.6480000', N'1308588718357176322', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588731435016194', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:07:20.6360000', N'1308588718357176322', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588735113420801', NULL, N'assignee', N'1280700700074041345', N'1308588734824013825', N'2020-09-23 10:07:21.4430000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588735608348674', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:07:21.6300000', N'1308588718357176322', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588942156849153', NULL, N'starter', N'1280709549107552257', NULL, N'2020-09-23 10:08:10.8740000', N'1308588941628366850', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588945663287298', NULL, N'assignee', N'1280709549107552257', N'1308588945399046146', N'2020-09-23 10:08:11.6480000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588946162409474', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:08:11.8290000', N'1308588941628366850', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588954462937089', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:08:13.8100000', N'1308588941628366850', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588958086815745', NULL, N'assignee', N'1275735541155614721', N'1308588957851934722', N'2020-09-23 10:08:14.6160000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308588958577549314', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 10:08:14.7900000', N'1308588941628366850', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589268490477570', NULL, N'starter', N'1280709549107552257', NULL, N'2020-09-23 10:09:28.6780000', N'1308589267949412354', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589273775300610', NULL, N'assignee', N'1280709549107552257', N'1308589273519448066', N'2020-09-23 10:09:29.8780000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589274274422785', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:09:30.0570000', N'1308589267949412354', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589283048906753', NULL, N'participant', N'1280709549107552257', NULL, N'2020-09-23 10:09:32.1490000', N'1308589267949412354', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589286731505665', NULL, N'assignee', N'1275735541155614721', N'1308589286484041730', N'2020-09-23 10:09:32.9690000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308589287243210754', NULL, N'participant', N'1275735541155614721', NULL, N'2020-09-23 10:09:33.1490000', N'1308589267949412354', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590489305571329', NULL, N'starter', N'1265476890672672808', NULL, N'2020-09-23 10:14:19.7430000', N'1308590488798060546', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590492744900609', NULL, N'assignee', N'1265476890672672808', N'1308590492497436673', N'2020-09-23 10:14:20.5050000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590493223051265', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-23 10:14:20.6770000', N'1308590488798060546', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590500516945922', NULL, N'participant', N'1265476890672672808', NULL, N'2020-09-23 10:14:22.4170000', N'1308590488798060546', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590503809474562', NULL, N'assignee', N'1280700700074041345', N'1308590503566204930', N'2020-09-23 10:14:23.1430000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308590504275042305', NULL, N'participant', N'1280700700074041345', NULL, N'2020-09-23 10:14:23.3120000', N'1308590488798060546', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1308591518612938753', NULL, N'assignee', N'1265476890672672808', N'1308591518118010881', N'2020-09-23 10:18:25.0900000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463466017296385', NULL, N'starter', N'1265476890672672808', NULL, N'2021-01-28 00:17:09.6690000', N'1354463463303581698', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463477811679234', NULL, N'assignee', N'1265476890672672808', N'1354463476456919042', N'2021-01-28 00:17:12.1640000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463479166439425', NULL, N'participant', N'1265476890672672808', NULL, N'2021-01-28 00:17:12.8050000', N'1354463463303581698', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463481066459137', NULL, N'participant', N'1265476890672672808', NULL, N'2021-01-28 00:17:13.2580000', N'1354463463303581698', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463487110451201', NULL, N'assignee', N'1275735541155614721', N'1354463485835382785', N'2021-01-28 00:17:14.3960000', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_identitylink]  VALUES (N'1354463488700092417', NULL, N'participant', N'1275735541155614721', NULL, N'2021-01-28 00:17:15.0780000', N'1354463463303581698', NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_procinst]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_procinst]
GO

CREATE TABLE [dbo].[act_hi_procinst] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [BUSINESS_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [START_TIME_] datetime2(7)  NOT NULL,
  [END_TIME_] datetime2(7)  NULL,
  [DURATION_] bigint  NULL,
  [START_USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [END_ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUPER_PROCESS_INSTANCE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DELETE_REASON_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CALLBACK_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CALLBACK_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REFERENCE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REFERENCE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_procinst] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308406300706746370', N'2', N'1308406300706746370', NULL, N'formal:1:1295553082574471169', N'2020-09-22 22:02:25.6980000', NULL, NULL, N'1265476890672672808', N'startEvent1', NULL, NULL, NULL, N'', N'超级管理员在2020-09-22 22:02:28发起了转正流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308406613064953858', N'2', N'1308406613064953858', NULL, N'travel:1:1304341427379126274', N'2020-09-22 22:03:40.1720000', NULL, NULL, N'1265476890672672808', N'startEvent1', NULL, NULL, NULL, N'', N'超级管理员在2020-09-22 22:03:43发起了出差流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308406818585849858', N'2', N'1308406818585849858', NULL, N'leave:1:1294922085572947969', N'2020-09-22 22:04:29.1650000', NULL, NULL, N'1265476890672672808', N'startEvent1', NULL, NULL, NULL, N'', N'超级管理员在2020-09-22 22:04:31发起了请假流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308583522503749633', N'2', N'1308583522503749633', NULL, N'formal:1:1295553082574471169', N'2020-09-23 09:46:38.6680000', NULL, NULL, N'1275735541155614721', N'startEvent1', NULL, NULL, NULL, N'', N'俞宝山在2020-09-23 09:46:41发起了转正流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308586276353695745', N'2', N'1308586276353695745', NULL, N'leave:1:1294922085572947969', N'2020-09-23 09:57:35.2350000', NULL, NULL, N'1275735541155614721', N'startEvent1', NULL, NULL, NULL, N'', N'俞宝山在2020-09-23 09:57:37发起了请假流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308586685709377538', N'2', N'1308586685709377538', NULL, N'travel:1:1304341427379126274', N'2020-09-23 09:59:12.8340000', NULL, NULL, N'1275735541155614721', N'startEvent1', NULL, NULL, NULL, N'', N'俞宝山在2020-09-23 09:59:15发起了出差流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308587451853529089', N'2', N'1308587451853529089', NULL, N'travel:1:1304341427379126274', N'2020-09-23 10:02:15.4950000', NULL, NULL, N'1280700700074041345', N'startEvent1', NULL, NULL, NULL, N'', N'老俞在2020-09-23 10:02:18发起了出差流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308587550507753474', N'2', N'1308587550507753474', NULL, N'leave:1:1294922085572947969', N'2020-09-23 10:02:39.0110000', NULL, NULL, N'1280700700074041345', N'startEvent1', NULL, NULL, NULL, N'', N'老俞在2020-09-23 10:02:41发起了请假流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308587712978313218', N'2', N'1308587712978313218', NULL, N'formal:1:1295553082574471169', N'2020-09-23 10:03:17.7540000', NULL, NULL, N'1280700700074041345', N'startEvent1', NULL, NULL, NULL, N'', N'老俞在2020-09-23 10:03:20发起了转正流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308588718357176322', N'2', N'1308588718357176322', NULL, N'leave:1:1294922085572947969', N'2020-09-23 10:07:17.4460000', NULL, NULL, N'1280709549107552257', N'startEvent1', NULL, NULL, NULL, N'', N'徐玉祥在2020-09-23 10:07:20发起了请假流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308588941628366850', N'2', N'1308588941628366850', NULL, N'formal:1:1295553082574471169', N'2020-09-23 10:08:10.6790000', NULL, NULL, N'1280709549107552257', N'startEvent1', NULL, NULL, NULL, N'', N'徐玉祥在2020-09-23 10:08:13发起了转正流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308589267949412354', N'2', N'1308589267949412354', NULL, N'travel:1:1304341427379126274', N'2020-09-23 10:09:28.4810000', NULL, NULL, N'1280709549107552257', N'startEvent1', NULL, NULL, NULL, N'', N'徐玉祥在2020-09-23 10:09:31发起了出差流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1308590488798060546', N'2', N'1308590488798060546', NULL, N'leave:1:1294922085572947969', N'2020-09-23 10:14:19.5590000', NULL, NULL, N'1265476890672672808', N'startEvent1', NULL, NULL, NULL, N'', N'超级管理员在2020-09-23 10:14:21发起了请假流程', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_hi_procinst]  VALUES (N'1354463463303581698', N'2', N'1354463463303581698', NULL, N'car_model:1:1354458538414739458', N'2021-01-28 00:17:08.6520000', NULL, NULL, N'1265476890672672808', N'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, N'', N'超级管理员在2021-01-28 00:17:12发起了用车申请', NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_taskinst]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_taskinst]
GO

CREATE TABLE [dbo].[act_hi_taskinst] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_DEF_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROPAGATED_STAGE_INST_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENT_TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ASSIGNEE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_TIME_] datetime2(7)  NOT NULL,
  [CLAIM_TIME_] datetime2(7)  NULL,
  [END_TIME_] datetime2(7)  NULL,
  [DURATION_] bigint  NULL,
  [DELETE_REASON_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIORITY_] int  NULL,
  [DUE_DATE_] datetime2(7)  NULL,
  [FORM_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LAST_UPDATED_TIME_] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[act_hi_taskinst] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406304594866177', N'2', N'formal:1:1295553082574471169', NULL, N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308406300706746370', N'1308406301486886914', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2020-09-22 22:02:26.6160000', NULL, N'2020-09-22 22:02:29.0740000', N'2458', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:02:29.0740000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406317274247169', N'2', N'formal:1:1295553082574471169', NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308406300706746370', N'1308406301486886914', NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-22 22:02:29.6530000', NULL, N'2020-09-22 22:08:34.9380000', N'365285', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:08:34.9380000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406620056858626', N'2', N'travel:1:1304341427379126274', NULL, N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308406613064953858', N'1308406613807345665', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2020-09-22 22:03:41.8390000', NULL, N'2020-09-22 22:03:44.3820000', N'2543', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:03:44.3820000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406633172447233', N'1', N'travel:1:1304341427379126274', NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308406613064953858', N'1308406613807345665', NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-22 22:03:44.9660000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:03:45.0250000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406822629158913', N'2', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308406818585849858', N'1308406819361796097', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2020-09-22 22:04:30.1360000', NULL, N'2020-09-22 22:04:32.5490000', N'2413', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:04:32.5490000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308406835233042433', N'1', N'leave:1:1294922085572947969', NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308406818585849858', N'1308406819361796097', NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-22 22:04:33.1400000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-22 22:04:33.2000000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308407851600982018', N'4', N'formal:1:1295553082574471169', NULL, N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308406300706746370', N'1308406301486886914', NULL, NULL, NULL, NULL, NULL, N'主管审批', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-22 22:08:35.4630000', NULL, NULL, NULL, NULL, N'50', N'2020-09-24 00:00:00.0000000', NULL, NULL, N'', N'2020-09-22 22:08:39.9410000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308583526312177666', N'2', N'formal:1:1295553082574471169', NULL, N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308583522503749633', N'1308583523304861698', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:46:39.5550000', NULL, N'2020-09-23 09:46:42.0360000', N'2481', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:46:42.0360000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308583539075444738', N'2', N'formal:1:1295553082574471169', NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308583522503749633', N'1308583523304861698', NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:46:42.6220000', NULL, N'2020-09-23 09:46:45.1080000', N'2486', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:46:45.1080000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308583551935180802', N'1', N'formal:1:1295553082574471169', NULL, N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308583522503749633', N'1308583523304861698', NULL, NULL, NULL, NULL, NULL, N'主管审批', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-23 09:46:45.6880000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:46:45.7460000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586281105842178', N'2', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308586276353695745', N'1308586277171585026', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:57:36.3470000', NULL, N'2020-09-23 09:57:38.5390000', N'2192', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:57:38.5390000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586292422074369', N'1', N'leave:1:1294922085572947969', NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308586276353695745', N'1308586277171585026', NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 09:57:39.0700000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:57:39.1290000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586690956451842', N'2', N'travel:1:1304341427379126274', NULL, N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308586685709377538', N'1308586686443380737', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:59:14.0850000', NULL, N'2020-09-23 09:59:16.3130000', N'2228', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:59:16.3130000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586702457233410', N'2', N'travel:1:1304341427379126274', NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308586685709377538', N'1308586686443380737', NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:59:16.8310000', NULL, N'2020-09-23 09:59:18.9820000', N'2151', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:59:18.9820000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586716768198657', N'1', N'travel:1:1304341427379126274', NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586685709377538', N'1308586714415194113', NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 09:59:20.2440000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:59:20.3000000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586718148124673', N'1', N'travel:1:1304341427379126274', NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586685709377538', N'1308586714654269441', NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 09:59:20.5720000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:59:20.6290000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308586719393832961', N'1', N'travel:1:1304341427379126274', NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586685709377538', N'1308586714893344770', NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-23 09:59:20.8670000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 09:59:20.9270000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587457004134402', N'2', N'travel:1:1304341427379126274', NULL, N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308587451853529089', N'1308587452633669633', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:02:16.7280000', NULL, N'2020-09-23 10:02:18.9560000', N'2228', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:02:18.9560000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587468509110274', N'1', N'travel:1:1304341427379126274', NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308587451853529089', N'1308587452633669633', NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 10:02:19.4710000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:02:19.5310000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587554144215042', N'2', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308587550507753474', N'1308587551300476930', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:02:39.8810000', NULL, N'2020-09-23 10:02:41.9990000', N'2118', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:02:41.9990000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587565158457345', N'2', N'leave:1:1294922085572947969', NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308587550507753474', N'1308587551300476930', NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:02:42.5150000', NULL, N'2020-09-23 10:02:44.6850000', N'2170', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:02:44.6850000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587576432746498', N'1', N'leave:1:1294922085572947969', NULL, N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', N'1308587550507753474', N'1308587551300476930', NULL, NULL, NULL, NULL, NULL, N'宝山审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 10:02:45.2020000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:02:45.2600000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587716329562114', N'2', N'formal:1:1295553082574471169', NULL, N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308587712978313218', N'1308587713737482242', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:03:18.5550000', NULL, N'2020-09-23 10:03:20.6670000', N'2112', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:03:20.6670000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308587727377358849', N'1', N'formal:1:1295553082574471169', NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308587712978313218', N'1308587713737482242', NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 10:03:21.1900000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:03:21.2480000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308588722266267649', N'2', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308588718357176322', N'1308588719162482690', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-23 10:07:18.3860000', NULL, N'2020-09-23 10:07:20.8070000', N'2421', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:07:20.8070000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308588734824013825', N'1', N'leave:1:1294922085572947969', NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308588718357176322', N'1308588719162482690', NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:07:21.3830000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:07:21.4430000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308588945399046146', N'2', N'formal:1:1295553082574471169', NULL, N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308588941628366850', N'1308588942400118785', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-23 10:08:11.5860000', NULL, N'2020-09-23 10:08:13.9830000', N'2397', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:08:13.9830000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308588957851934722', N'1', N'formal:1:1295553082574471169', NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308588941628366850', N'1308588942400118785', NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 10:08:14.5580000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:08:14.6160000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308589273519448066', N'2', N'travel:1:1304341427379126274', NULL, N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308589267949412354', N'1308589268750524417', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1280709549107552257', N'2020-09-23 10:09:29.8170000', NULL, N'2020-09-23 10:09:32.3210000', N'2504', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:09:32.3210000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308589286484041730', N'1', N'travel:1:1304341427379126274', NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308589267949412354', N'1308589268750524417', NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, NULL, N'1275735541155614721', N'2020-09-23 10:09:32.8970000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:09:32.9690000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308590492497436673', N'2', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308590488798060546', N'1308590489553035265', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2020-09-23 10:14:20.4440000', NULL, N'2020-09-23 10:14:22.5670000', N'2123', NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:14:22.5670000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308590503566204930', N'2', N'leave:1:1294922085572947969', NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308590488798060546', N'1308590489553035265', NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, NULL, N'1280700700074041345', N'2020-09-23 10:14:23.0830000', NULL, N'2020-09-23 10:18:24.6040000', N'241521', N'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:18:24.6040000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1308591518118010881', N'1', N'leave:1:1294922085572947969', NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308590488798060546', N'1308591517363036162', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2020-09-23 10:18:24.9720000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2020-09-23 10:18:25.0900000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1354463476456919042', N'2', N'car_model:1:1354458538414739458', NULL, N'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', N'1354463463303581698', N'1354463467527245825', NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, NULL, N'1265476890672672808', N'2021-01-28 00:17:11.7710000', NULL, N'2021-01-28 00:17:13.2620000', N'1491', NULL, N'50', NULL, NULL, NULL, N'', N'2021-01-28 00:17:13.2620000')
GO

INSERT INTO [dbo].[act_hi_taskinst]  VALUES (N'1354463485835382785', N'1', N'car_model:1:1354458538414739458', NULL, N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'1354463463303581698', N'1354463467527245825', NULL, NULL, NULL, NULL, NULL, N'领导审批', NULL, NULL, NULL, N'1275735541155614721', N'2021-01-28 00:17:14.0730000', NULL, NULL, NULL, NULL, N'50', NULL, NULL, NULL, N'', N'2021-01-28 00:17:14.3960000')
GO


-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_tsk_log]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_tsk_log]
GO

CREATE TABLE [dbo].[act_hi_tsk_log] (
  [ID_] bigint  NOT NULL,
  [TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TIME_STAMP_] datetime2(7)  NOT NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_hi_tsk_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_hi_varinst]') AND type IN ('U'))
	DROP TABLE [dbo].[act_hi_varinst]
GO

CREATE TABLE [dbo].[act_hi_varinst] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VAR_TYPE_] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BYTEARRAY_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DOUBLE_] float(53)  NULL,
  [LONG_] bigint  NULL,
  [TEXT_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEXT2_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [LAST_UPDATED_TIME_] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[act_hi_varinst] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406300954210305', N'0', N'1308406300706746370', N'1308406300706746370', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL, N'2020-09-22 22:02:25.8220000', N'2020-09-22 22:02:25.8220000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406302497714177', N'1', N'1308406300706746370', N'1308406300706746370', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL, N'2020-09-22 22:02:26.1860000', N'2020-09-22 22:08:34.7040000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406613316612097', N'0', N'1308406613064953858', N'1308406613064953858', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL, N'2020-09-22 22:03:40.2910000', N'2020-09-22 22:03:40.2910000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406614793007106', N'0', N'1308406613064953858', N'1308406613064953858', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL, N'2020-09-22 22:03:40.6450000', N'2020-09-22 22:03:40.6450000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406617540276225', N'0', N'1308406613064953858', N'1308406613064953858', NULL, N'pers', N'serializable', NULL, NULL, NULL, N'1308406617791934466', NULL, NULL, NULL, NULL, N'2020-09-22 22:03:41.3000000', N'2020-09-22 22:03:41.3000000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406618278473729', N'0', N'1308406613064953858', N'1308406613064953858', NULL, N'num', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-22 22:03:41.4760000', N'2020-09-22 22:03:41.4760000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406818841702402', N'0', N'1308406818585849858', N'1308406818585849858', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL, N'2020-09-22 22:04:29.2940000', N'2020-09-22 22:04:29.2940000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308406820372623362', N'0', N'1308406818585849858', N'1308406818585849858', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL, N'2020-09-22 22:04:29.6580000', N'2020-09-22 22:04:29.6580000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308583522767990785', N'0', N'1308583522503749633', N'1308583522503749633', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL, N'2020-09-23 09:46:38.7930000', N'2020-09-23 09:46:38.7930000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308583524093390850', N'0', N'1308583522503749633', N'1308583522503749633', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL, N'2020-09-23 09:46:39.1080000', N'2020-09-23 09:46:39.1080000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586276622131202', N'0', N'1308586276353695745', N'1308586276353695745', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL, N'2020-09-23 09:57:35.3650000', N'2020-09-23 09:57:35.3650000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586277955919874', N'0', N'1308586276353695745', N'1308586276353695745', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL, N'2020-09-23 09:57:35.6790000', N'2020-09-23 09:57:35.6790000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586685948452865', N'0', N'1308586685709377538', N'1308586685709377538', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL, N'2020-09-23 09:59:12.9520000', N'2020-09-23 09:59:12.9520000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586687177383938', N'0', N'1308586685709377538', N'1308586685709377538', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL, N'2020-09-23 09:59:13.2460000', N'2020-09-23 09:59:13.2460000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586688616030209', N'0', N'1308586685709377538', N'1308586685709377538', NULL, N'pers', N'serializable', NULL, NULL, NULL, N'1308586688863494145', NULL, NULL, NULL, NULL, N'2020-09-23 09:59:13.5890000', N'2020-09-23 09:59:13.5890000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586689337450497', N'0', N'1308586685709377538', N'1308586685709377538', NULL, N'num', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-23 09:59:13.7600000', N'2020-09-23 09:59:13.7600000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586713685385218', N'0', N'1308586685709377538', N'1308586713228206081', NULL, N'nrOfInstances', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-23 09:59:19.5660000', N'2020-09-23 09:59:19.5660000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586713928654849', N'0', N'1308586685709377538', N'1308586713228206081', NULL, N'nrOfCompletedInstances', N'integer', NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, N'2020-09-23 09:59:19.6240000', N'2020-09-23 09:59:19.6240000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586714167730178', N'0', N'1308586685709377538', N'1308586713228206081', NULL, N'nrOfActiveInstances', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-23 09:59:19.6800000', N'2020-09-23 09:59:19.6800000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586715350523905', N'0', N'1308586685709377538', N'1308586714415194113', NULL, N'per', N'long', NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', N'1275735541155614721', NULL, N'2020-09-23 09:59:19.9630000', N'2020-09-23 09:59:19.9630000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586715593793538', N'0', N'1308586685709377538', N'1308586714654269441', NULL, N'per', N'long', NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', N'1280700700074041345', NULL, N'2020-09-23 09:59:20.0210000', N'2020-09-23 09:59:20.0210000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586715832868865', N'0', N'1308586685709377538', N'1308586714893344770', NULL, N'per', N'long', NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', N'1280709549107552257', NULL, N'2020-09-23 09:59:20.0780000', N'2020-09-23 09:59:20.0780000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586716080332801', N'0', N'1308586685709377538', N'1308586714415194113', NULL, N'loopCounter', N'integer', NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL, N'2020-09-23 09:59:20.1360000', N'2020-09-23 09:59:20.1360000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586717665779713', N'0', N'1308586685709377538', N'1308586714654269441', NULL, N'loopCounter', N'integer', NULL, NULL, NULL, NULL, NULL, N'1', N'1', NULL, N'2020-09-23 09:59:20.5150000', N'2020-09-23 09:59:20.5150000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308586718903099393', N'0', N'1308586685709377538', N'1308586714893344770', NULL, N'loopCounter', N'integer', NULL, NULL, NULL, NULL, NULL, N'2', N'2', NULL, N'2020-09-23 09:59:20.8090000', N'2020-09-23 09:59:20.8090000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587452117770241', N'0', N'1308587451853529089', N'1308587451853529089', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL, N'2020-09-23 10:02:15.6220000', N'2020-09-23 10:02:15.6220000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587453568999425', N'0', N'1308587451853529089', N'1308587451853529089', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL, N'2020-09-23 10:02:15.9670000', N'2020-09-23 10:02:15.9670000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587454676295682', N'0', N'1308587451853529089', N'1308587451853529089', NULL, N'pers', N'serializable', NULL, NULL, NULL, N'1308587454923759618', NULL, NULL, NULL, NULL, N'2020-09-23 10:02:16.2320000', N'2020-09-23 10:02:16.2320000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587455368355841', N'0', N'1308587451853529089', N'1308587451853529089', NULL, N'num', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-23 10:02:16.3980000', N'2020-09-23 10:02:16.3980000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587550784577538', N'0', N'1308587550507753474', N'1308587550507753474', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL, N'2020-09-23 10:02:39.1450000', N'2020-09-23 10:02:39.1450000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587552252583938', N'0', N'1308587550507753474', N'1308587550507753474', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL, N'2020-09-23 10:02:39.4950000', N'2020-09-23 10:02:39.4950000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587713229971458', N'0', N'1308587712978313218', N'1308587712978313218', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL, N'2020-09-23 10:03:17.8770000', N'2020-09-23 10:03:17.8770000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308587714496651266', N'0', N'1308587712978313218', N'1308587712978313218', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL, N'2020-09-23 10:03:18.1790000', N'2020-09-23 10:03:18.1790000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308588718629806082', N'0', N'1308588718357176322', N'1308588718357176322', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL, N'2020-09-23 10:07:17.5820000', N'2020-09-23 10:07:17.5820000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308588720164921345', N'0', N'1308588718357176322', N'1308588718357176322', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL, N'2020-09-23 10:07:17.9470000', N'2020-09-23 10:07:17.9470000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308588941900996610', N'0', N'1308588941628366850', N'1308588941628366850', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL, N'2020-09-23 10:08:10.8140000', N'2020-09-23 10:08:10.8140000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308588943423528961', N'0', N'1308588941628366850', N'1308588941628366850', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL, N'2020-09-23 10:08:11.1760000', N'2020-09-23 10:08:11.1760000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308589268226236418', N'0', N'1308589267949412354', N'1308589267949412354', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL, N'2020-09-23 10:09:28.6150000', N'2020-09-23 10:09:28.6150000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308589269815877633', N'0', N'1308589267949412354', N'1308589267949412354', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL, N'2020-09-23 10:09:28.9950000', N'2020-09-23 10:09:28.9950000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308589271011254273', N'0', N'1308589267949412354', N'1308589267949412354', NULL, N'pers', N'serializable', NULL, NULL, NULL, N'1308589271267106818', NULL, NULL, NULL, NULL, N'2020-09-23 10:09:29.2790000', N'2020-09-23 10:09:29.2790000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308589271770423297', N'0', N'1308589267949412354', N'1308589267949412354', NULL, N'num', N'integer', NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL, N'2020-09-23 10:09:29.4610000', N'2020-09-23 10:09:29.4610000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308590489049718785', N'0', N'1308590488798060546', N'1308590488798060546', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL, N'2020-09-23 10:14:19.6830000', N'2020-09-23 10:14:19.6830000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1308590490513530881', N'0', N'1308590488798060546', N'1308590488798060546', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL, N'2020-09-23 10:14:20.0310000', N'2020-09-23 10:14:20.0310000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1354463464687702018', N'0', N'1354463463303581698', N'1354463463303581698', NULL, N'INITIATOR', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL, N'2021-01-28 00:17:09.3540000', N'2021-01-28 00:17:09.3540000')
GO

INSERT INTO [dbo].[act_hi_varinst]  VALUES (N'1354463471910293506', N'0', N'1354463463303581698', N'1354463463303581698', NULL, N'formData', N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL, N'2021-01-28 00:17:11.0880000', N'2021-01-28 00:17:11.0880000')
GO


-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_bytearray]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_bytearray]
GO

CREATE TABLE [dbo].[act_id_bytearray] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BYTES_] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[act_id_bytearray] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_group]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_group]
GO

CREATE TABLE [dbo].[act_id_group] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_id_group] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_info]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_info]
GO

CREATE TABLE [dbo].[act_id_info] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [USER_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [VALUE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PASSWORD_] varbinary(max)  NULL,
  [PARENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_id_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_membership]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_membership]
GO

CREATE TABLE [dbo].[act_id_membership] (
  [USER_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [GROUP_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[act_id_membership] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_priv]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_priv]
GO

CREATE TABLE [dbo].[act_id_priv] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[act_id_priv] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_priv_mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_priv_mapping]
GO

CREATE TABLE [dbo].[act_id_priv_mapping] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PRIV_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [GROUP_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_id_priv_mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_property]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_property]
GO

CREATE TABLE [dbo].[act_id_property] (
  [NAME_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VALUE_] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [REV_] int  NULL
)
GO

ALTER TABLE [dbo].[act_id_property] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO [dbo].[act_id_property]  VALUES (N'schema.version', N'6.5.0.6', N'1')
GO


-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_token]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_token]
GO

CREATE TABLE [dbo].[act_id_token] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TOKEN_VALUE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TOKEN_DATE_] datetime2(7)  NOT NULL,
  [IP_ADDRESS_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_AGENT_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TOKEN_DATA_] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_id_token] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_id_user]') AND type IN ('U'))
	DROP TABLE [dbo].[act_id_user]
GO

CREATE TABLE [dbo].[act_id_user] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [FIRST_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LAST_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DISPLAY_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EMAIL_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PWD_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PICTURE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_id_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_procdef_info]') AND type IN ('U'))
	DROP TABLE [dbo].[act_procdef_info]
GO

CREATE TABLE [dbo].[act_procdef_info] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [INFO_JSON_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_procdef_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_re_deployment]') AND type IN ('U'))
	DROP TABLE [dbo].[act_re_deployment]
GO

CREATE TABLE [dbo].[act_re_deployment] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOY_TIME_] datetime2(7)  NULL,
  [DERIVED_FROM_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DERIVED_FROM_ROOT_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENT_DEPLOYMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ENGINE_VERSION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_re_deployment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO [dbo].[act_re_deployment]  VALUES (N'1294922083219943426', N'请假流程', N'kaoqin', NULL, N'', N'2020-08-16 17:00:57.6780000', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_re_deployment]  VALUES (N'1295553080485707777', N'转正流程', N'xingzheng', NULL, N'', N'2020-08-18 10:48:19.1520000', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_re_deployment]  VALUES (N'1304341425068064769', N'出差流程', N'travel', NULL, N'', N'2020-09-11 16:50:03.8230000', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_re_deployment]  VALUES (N'1354458533096361986', N'用车申请', N'approval', NULL, N'', N'2021-01-27 23:57:33.2100000', NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_re_model]') AND type IN ('U'))
	DROP TABLE [dbo].[act_re_model]
GO

CREATE TABLE [dbo].[act_re_model] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [LAST_UPDATE_TIME_] datetime2(7)  NULL,
  [VERSION_] int  NULL,
  [META_INFO_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDITOR_SOURCE_VALUE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDITOR_SOURCE_EXTRA_VALUE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_re_model] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_re_procdef]') AND type IN ('U'))
	DROP TABLE [dbo].[act_re_procdef]
GO

CREATE TABLE [dbo].[act_re_procdef] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VERSION_] int  NOT NULL,
  [DEPLOYMENT_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESOURCE_NAME_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DGRM_RESOURCE_NAME_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [HAS_START_FORM_KEY_] tinyint  NULL,
  [HAS_GRAPHICAL_NOTATION_] tinyint  NULL,
  [SUSPENSION_STATE_] int  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ENGINE_VERSION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DERIVED_FROM_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DERIVED_FROM_ROOT_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DERIVED_VERSION_] int  NOT NULL
)
GO

ALTER TABLE [dbo].[act_re_procdef] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO [dbo].[act_re_procdef]  VALUES (N'car_model:1:1354458538414739458', N'2', N'approval', N'用车申请', N'car_model', N'1', N'1354458533096361986', N'用车申请.bpmn20.xml', N'用车申请.car_model.png', N'用车申请', N'0', N'1', N'1', N'', NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[act_re_procdef]  VALUES (N'formal:1:1295553082574471169', N'2', N'xingzheng', N'转正流程', N'formal', N'1', N'1295553080485707777', N'转正流程.bpmn20.xml', N'转正流程.formal.png', N'转正流程', N'0', N'1', N'1', N'', NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[act_re_procdef]  VALUES (N'leave:1:1294922085572947969', N'4', N'kaoqin', N'请假流程', N'leave', N'1', N'1294922083219943426', N'请假流程.bpmn20.xml', N'请假流程.leave.png', N'请假流程', N'0', N'1', N'1', N'', NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[act_re_procdef]  VALUES (N'travel:1:1304341427379126274', N'2', N'travel', N'出差流程', N'travel', N'1', N'1304341425068064769', N'出差流程.bpmn20.xml', N'出差流程.travel.png', N'出差流程', N'0', N'1', N'1', N'', NULL, NULL, NULL, N'0')
GO


-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_actinst]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_actinst]
GO

CREATE TABLE [dbo].[act_ru_actinst] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CALL_PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ASSIGNEE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_TIME_] datetime2(7)  NOT NULL,
  [END_TIME_] datetime2(7)  NULL,
  [DURATION_] bigint  NULL,
  [DELETE_REASON_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_actinst] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------
INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406301734350850', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:02:26.0050000', N'2020-09-22 22:02:26.3180000', N'313', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406303806337026', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:02:26.4990000', N'2020-09-22 22:02:26.4990000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406304053800962', N'2', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308406304594866177', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:02:26.5580000', N'2020-09-22 22:02:29.2470000', N'2689', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406316305362945', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:02:29.4780000', N'2020-09-22 22:02:29.4780000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406316791902210', N'2', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308406317274247169', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-22 22:02:29.5950000', N'2020-09-22 22:08:35.0520000', N'365457', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406614050615297', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:03:40.4670000', N'2020-09-22 22:03:41.5350000', N'1068', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406619301883906', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:03:41.7190000', N'2020-09-22 22:03:41.7190000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406619561930754', N'2', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308406620056858626', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:03:41.7800000', N'2020-09-22 22:03:44.5540000', N'2774', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406632182591490', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:03:44.7890000', N'2020-09-22 22:03:44.7890000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406632677519362', N'1', N'travel:1:1304341427379126274', N'1308406613064953858', N'1308406613807345665', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308406633172447233', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-22 22:03:44.9070000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406819621842946', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-22 22:04:29.4780000', N'2020-09-22 22:04:29.8270000', N'349', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406821853212673', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:04:30.0100000', N'2020-09-22 22:04:30.0100000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406822138425345', N'2', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308406822629158913', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-22 22:04:30.0780000', N'2020-09-22 22:04:32.7210000', N'2643', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406834209632258', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:04:32.9560000', N'2020-09-22 22:04:32.9560000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308406834738114561', N'1', N'leave:1:1294922085572947969', N'1308406818585849858', N'1308406819361796097', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308406835233042433', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-22 22:04:33.0820000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308407850615320578', N'1', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-22 22:08:35.2860000', N'2020-09-22 22:08:35.2860000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308407851106054145', N'3', N'formal:1:1295553082574471169', N'1308406300706746370', N'1308406301486886914', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308407851600982018', NULL, N'主管审批', N'userTask', N'1280709549107552257', N'2020-09-22 22:08:35.4040000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583523564908545', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:46:38.9810000', N'2020-09-23 09:46:39.2480000', N'267', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583525452345345', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:39.4320000', N'2020-09-23 09:46:39.4320000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583525724975106', N'2', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308583526312177666', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:46:39.4960000', N'2020-09-23 09:46:42.2100000', N'2714', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583538093977602', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:42.4450000', N'2020-09-23 09:46:42.4450000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583538588905473', N'2', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308583539075444738', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 09:46:42.5640000', N'2020-09-23 09:46:45.2800000', N'2716', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583550957907969', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:46:45.5130000', N'2020-09-23 09:46:45.5130000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308583551444447233', N'1', N'formal:1:1295553082574471169', N'1308583522503749633', N'1308583523304861698', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1308583551935180802', NULL, N'主管审批', N'userTask', N'1280709549107552257', N'2020-09-23 09:46:45.6290000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586277431631873', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:57:35.5540000', N'2020-09-23 09:57:36.0670000', N'513', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586280283758593', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:57:36.2340000', N'2020-09-23 09:57:36.2340000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586280539611138', N'2', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308586281105842178', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:57:36.2960000', N'2020-09-23 09:57:38.7010000', N'2405', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586291503521794', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:57:38.9100000', N'2020-09-23 09:57:38.9100000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586291956506625', N'1', N'leave:1:1294922085572947969', N'1308586276353695745', N'1308586277171585026', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308586292422074369', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 09:57:39.0180000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586686682456065', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 09:59:13.1270000', N'2020-09-23 09:59:13.8100000', N'683', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586690235031554', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:13.9750000', N'2020-09-23 09:59:13.9750000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586690486689794', N'2', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308586690956451842', NULL, N'填写申请单', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:14.0340000', N'2020-09-23 09:59:16.4610000', N'2427', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586701551263745', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:16.6730000', N'2020-09-23 09:59:16.6730000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586702000054273', N'2', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308586702457233410', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:16.7800000', N'2020-09-23 09:59:19.1340000', N'2354', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586712754249730', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586686443380737', N'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 09:59:19.3440000', N'2020-09-23 09:59:19.3440000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586716319408130', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714415194113', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586716768198657', NULL, N'领导会签', N'userTask', N'1275735541155614721', N'2020-09-23 09:59:20.1940000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586717904855041', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714654269441', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586718148124673', NULL, N'领导会签', N'userTask', N'1280700700074041345', N'2020-09-23 09:59:20.5710000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308586719137980418', N'1', N'travel:1:1304341427379126274', N'1308586685709377538', N'1308586714893344770', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1308586719393832961', NULL, N'领导会签', N'userTask', N'1280709549107552257', N'2020-09-23 09:59:20.8660000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587452872744962', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:02:15.8010000', N'2020-09-23 10:02:16.4490000', N'648', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587456282714114', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:16.6140000', N'2020-09-23 10:02:16.6140000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587456551149569', N'2', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308587457004134402', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:16.6780000', N'2020-09-23 10:02:19.1040000', N'2426', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587467590557698', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:19.3110000', N'2020-09-23 10:02:19.3110000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587468056125441', N'1', N'travel:1:1304341427379126274', N'1308587451853529089', N'1308587452633669633', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308587468509110274', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:02:19.4210000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587551543746561', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:02:39.3280000', N'2020-09-23 10:02:39.6120000', N'284', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587553410211842', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:39.7710000', N'2020-09-23 10:02:39.7710000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587553657675778', N'2', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308587554144215042', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:39.8300000', N'2020-09-23 10:02:42.1480000', N'2318', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587564248293378', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:42.3560000', N'2020-09-23 10:02:42.3560000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587564709666818', N'2', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308587565158457345', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:02:42.4650000', N'2020-09-23 10:02:44.8350000', N'2370', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587575518388225', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:02:45.0430000', N'2020-09-23 10:02:45.0430000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587575975567361', N'1', N'leave:1:1294922085572947969', N'1308587550507753474', N'1308587551300476930', N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', N'1308587576432746498', NULL, N'宝山审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:02:45.1510000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587713993334785', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:03:18.0570000', N'2020-09-23 10:03:18.2790000', N'222', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587715612336130', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:03:18.4430000', N'2020-09-23 10:03:18.4430000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587715863994370', N'2', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308587716329562114', NULL, N'填写申请单', N'userTask', N'1280700700074041345', N'2020-09-23 10:03:18.5040000', N'2020-09-23 10:03:20.8150000', N'2311', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587726433640449', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:03:21.0240000', N'2020-09-23 10:03:21.0240000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308587726920179714', N'1', N'formal:1:1295553082574471169', N'1308587712978313218', N'1308587713737482242', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308587727377358849', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:03:21.1400000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588719409946626', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:07:17.7670000', N'2020-09-23 10:07:18.0830000', N'316', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588721486127106', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:07:18.2620000', N'2020-09-23 10:07:18.2620000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588721754562561', N'2', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308588722266267649', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:07:18.3270000', N'2020-09-23 10:07:20.9780000', N'2651', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588733838352385', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:07:21.2080000', N'2020-09-23 10:07:21.2080000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588734329085953', N'1', N'leave:1:1294922085572947969', N'1308588718357176322', N'1308588719162482690', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308588734824013825', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:07:21.3250000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588942660165634', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:08:10.9950000', N'2020-09-23 10:08:11.2920000', N'297', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588944648265730', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:08:11.4680000', N'2020-09-23 10:08:11.4680000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588944899923970', N'2', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'1308588945399046146', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:08:11.5290000', N'2020-09-23 10:08:14.1540000', N'2625', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588956883050497', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:08:14.3860000', N'2020-09-23 10:08:14.3860000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308588957361201153', N'1', N'formal:1:1295553082574471169', N'1308588941628366850', N'1308588942400118785', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1308588957851934722', NULL, N'部门经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:08:14.5000000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308589269002182657', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:09:28.8010000', N'2020-09-23 10:09:29.5180000', N'717', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308589272768667649', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:09:29.6980000', N'2020-09-23 10:09:29.6980000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308589273020325890', N'2', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'1308589273519448066', NULL, N'填写申请单', N'userTask', N'1280709549107552257', N'2020-09-23 10:09:29.7590000', N'2020-09-23 10:09:32.4910000', N'2732', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308589285452242945', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:09:32.7220000', N'2020-09-23 10:09:32.7220000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308589285938782210', N'1', N'travel:1:1304341427379126274', N'1308589267949412354', N'1308589268750524417', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1308589286484041730', NULL, N'经理审批', N'userTask', N'1275735541155614721', N'2020-09-23 10:09:32.8390000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308590489804693505', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'startEvent1', NULL, NULL, N'开始', N'startEvent', NULL, N'2020-09-23 10:14:19.8620000', N'2020-09-23 10:14:20.1660000', N'304', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308590491771822082', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:14:20.3310000', N'2020-09-23 10:14:20.3310000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308590492027674626', N'2', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308590492497436673', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-23 10:14:20.3930000', N'2020-09-23 10:14:22.7150000', N'2322', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308590502639263745', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2020-09-23 10:14:22.9240000', N'2020-09-23 10:14:22.9240000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308590503100637186', N'2', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308590489553035265', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1308590503566204930', NULL, N'老俞审批', N'userTask', N'1280700700074041345', N'2020-09-23 10:14:23.0330000', N'2020-09-23 10:18:24.4900000', N'241457', N'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1308591517623083009', N'1', N'leave:1:1294922085572947969', N'1308590488798060546', N'1308591517363036162', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1308591518118010881', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2020-09-23 10:18:24.9140000', NULL, NULL, NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1354463469016223745', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, N'startEvent', NULL, N'2021-01-28 00:17:10.3840000', N'2021-01-28 00:17:11.1080000', N'724', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1354463473504129025', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2021-01-28 00:17:11.4600000', N'2021-01-28 00:17:11.4600000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1354463474770808834', N'2', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', N'1354463476456919042', NULL, N'填写申请单', N'userTask', N'1265476890672672808', N'2021-01-28 00:17:11.7690000', N'2021-01-28 00:17:13.3060000', N'1537', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1354463482802900993', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, N'sequenceFlow', NULL, N'2021-01-28 00:17:13.6710000', N'2021-01-28 00:17:13.6710000', N'0', NULL, N'')
GO

INSERT INTO [dbo].[act_ru_actinst]  VALUES (N'1354463484451262466', N'1', N'car_model:1:1354458538414739458', N'1354463463303581698', N'1354463467527245825', N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'1354463485835382785', NULL, N'领导审批', N'userTask', N'1275735541155614721', N'2021-01-28 00:17:14.0700000', NULL, NULL, NULL, N'')
GO


-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_deadletter_job]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_deadletter_job]
GO

CREATE TABLE [dbo].[act_ru_deadletter_job] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXCLUSIVE_] tinyint  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROCESS_INSTANCE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_STACK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_MSG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DUEDATE_] datetime2(7)  NULL,
  [REPEAT_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_CFG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CUSTOM_VALUES_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_deadletter_job] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_entitylink]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_entitylink]
GO

CREATE TABLE [dbo].[act_ru_entitylink] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [LINK_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REF_SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HIERARCHY_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_entitylink] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_event_subscr]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_event_subscr]
GO

CREATE TABLE [dbo].[act_ru_event_subscr] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [EVENT_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EVENT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACTIVITY_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONFIGURATION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATED_] datetime2(7)  NOT NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_event_subscr] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_execution]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_execution]
GO

CREATE TABLE [dbo].[act_ru_execution] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [BUSINESS_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENT_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUPER_EXEC_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ROOT_PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [IS_ACTIVE_] tinyint  NULL,
  [IS_CONCURRENT_] tinyint  NULL,
  [IS_SCOPE_] tinyint  NULL,
  [IS_EVENT_SCOPE_] tinyint  NULL,
  [IS_MI_ROOT_] tinyint  NULL,
  [SUSPENSION_STATE_] int  NULL,
  [CACHED_ENT_STATE_] int  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_ACT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [START_TIME_] datetime2(7)  NULL,
  [START_USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOCK_TIME_] datetime2(7)  NULL,
  [IS_COUNT_ENABLED_] tinyint  NULL,
  [EVT_SUBSCR_COUNT_] int  NULL,
  [TASK_COUNT_] int  NULL,
  [JOB_COUNT_] int  NULL,
  [TIMER_JOB_COUNT_] int  NULL,
  [SUSP_JOB_COUNT_] int  NULL,
  [DEADLETTER_JOB_COUNT_] int  NULL,
  [VAR_COUNT_] int  NULL,
  [ID_LINK_COUNT_] int  NULL,
  [CALLBACK_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CALLBACK_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REFERENCE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [REFERENCE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROPAGATED_STAGE_INST_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_execution] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406300706746370', N'2', N'1308406300706746370', NULL, NULL, N'formal:1:1295553082574471169', NULL, N'1308406300706746370', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'超级管理员在2020-09-22 22:02:28发起了转正流程', N'startEvent1', N'2020-09-22 22:02:25.6980000', N'1265476890672672808', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406301486886914', N'3', N'1308406300706746370', NULL, N'1308406300706746370', N'formal:1:1295553082574471169', NULL, N'1308406300706746370', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-22 22:02:25.8860000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406613064953858', N'2', N'1308406613064953858', NULL, NULL, N'travel:1:1304341427379126274', NULL, N'1308406613064953858', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'超级管理员在2020-09-22 22:03:43发起了出差流程', N'startEvent1', N'2020-09-22 22:03:40.1720000', N'1265476890672672808', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406613807345665', N'2', N'1308406613064953858', NULL, N'1308406613064953858', N'travel:1:1304341427379126274', NULL, N'1308406613064953858', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-22 22:03:40.3490000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406818585849858', N'2', N'1308406818585849858', NULL, NULL, N'leave:1:1294922085572947969', NULL, N'1308406818585849858', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'超级管理员在2020-09-22 22:04:31发起了请假流程', N'startEvent1', N'2020-09-22 22:04:29.1650000', N'1265476890672672808', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308406819361796097', N'2', N'1308406818585849858', NULL, N'1308406818585849858', N'leave:1:1294922085572947969', NULL, N'1308406818585849858', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-22 22:04:29.3560000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308583522503749633', N'2', N'1308583522503749633', NULL, NULL, N'formal:1:1295553082574471169', NULL, N'1308583522503749633', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'俞宝山在2020-09-23 09:46:41发起了转正流程', N'startEvent1', N'2020-09-23 09:46:38.6680000', N'1275735541155614721', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308583523304861698', N'3', N'1308583522503749633', NULL, N'1308583522503749633', N'formal:1:1295553082574471169', NULL, N'1308583522503749633', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:46:38.8580000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586276353695745', N'2', N'1308586276353695745', NULL, NULL, N'leave:1:1294922085572947969', NULL, N'1308586276353695745', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'俞宝山在2020-09-23 09:57:37发起了请假流程', N'startEvent1', N'2020-09-23 09:57:35.2350000', N'1275735541155614721', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586277171585026', N'2', N'1308586276353695745', NULL, N'1308586276353695745', N'leave:1:1294922085572947969', NULL, N'1308586276353695745', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:57:35.4300000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586685709377538', N'2', N'1308586685709377538', NULL, NULL, N'travel:1:1304341427379126274', NULL, N'1308586685709377538', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'俞宝山在2020-09-23 09:59:15发起了出差流程', N'startEvent1', N'2020-09-23 09:59:12.8340000', N'1275735541155614721', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586713228206081', N'1', N'1308586685709377538', NULL, N'1308586685709377538', N'travel:1:1304341427379126274', NULL, N'1308586685709377538', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'0', N'0', N'0', N'0', N'1', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:59:19.3450000', NULL, NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'3', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586714415194113', N'1', N'1308586685709377538', NULL, N'1308586713228206081', N'travel:1:1304341427379126274', NULL, N'1308586685709377538', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:59:19.6800000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'2', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586714654269441', N'1', N'1308586685709377538', NULL, N'1308586713228206081', N'travel:1:1304341427379126274', NULL, N'1308586685709377538', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:59:19.7390000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'2', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308586714893344770', N'1', N'1308586685709377538', NULL, N'1308586713228206081', N'travel:1:1304341427379126274', NULL, N'1308586685709377538', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 09:59:19.7960000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'2', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587451853529089', N'2', N'1308587451853529089', NULL, NULL, N'travel:1:1304341427379126274', NULL, N'1308587451853529089', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'老俞在2020-09-23 10:02:18发起了出差流程', N'startEvent1', N'2020-09-23 10:02:15.4950000', N'1280700700074041345', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587452633669633', N'2', N'1308587451853529089', NULL, N'1308587451853529089', N'travel:1:1304341427379126274', NULL, N'1308587451853529089', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:02:15.6840000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587550507753474', N'2', N'1308587550507753474', NULL, NULL, N'leave:1:1294922085572947969', NULL, N'1308587550507753474', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'老俞在2020-09-23 10:02:41发起了请假流程', N'startEvent1', N'2020-09-23 10:02:39.0110000', N'1280700700074041345', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587551300476930', N'3', N'1308587550507753474', NULL, N'1308587550507753474', N'leave:1:1294922085572947969', NULL, N'1308587550507753474', N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:02:39.2070000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587712978313218', N'2', N'1308587712978313218', NULL, NULL, N'formal:1:1295553082574471169', NULL, N'1308587712978313218', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'老俞在2020-09-23 10:03:20发起了转正流程', N'startEvent1', N'2020-09-23 10:03:17.7540000', N'1280700700074041345', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308587713737482242', N'2', N'1308587712978313218', NULL, N'1308587712978313218', N'formal:1:1295553082574471169', NULL, N'1308587712978313218', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:03:17.9380000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308588718357176322', N'2', N'1308588718357176322', NULL, NULL, N'leave:1:1294922085572947969', NULL, N'1308588718357176322', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'徐玉祥在2020-09-23 10:07:20发起了请假流程', N'startEvent1', N'2020-09-23 10:07:17.4460000', N'1280709549107552257', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308588719162482690', N'2', N'1308588718357176322', NULL, N'1308588718357176322', N'leave:1:1294922085572947969', NULL, N'1308588718357176322', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:07:17.6450000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308588941628366850', N'2', N'1308588941628366850', NULL, NULL, N'formal:1:1295553082574471169', NULL, N'1308588941628366850', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'徐玉祥在2020-09-23 10:08:13发起了转正流程', N'startEvent1', N'2020-09-23 10:08:10.6790000', N'1280709549107552257', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308588942400118785', N'2', N'1308588941628366850', NULL, N'1308588941628366850', N'formal:1:1295553082574471169', NULL, N'1308588941628366850', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:08:10.8740000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308589267949412354', N'2', N'1308589267949412354', NULL, NULL, N'travel:1:1304341427379126274', NULL, N'1308589267949412354', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'徐玉祥在2020-09-23 10:09:31发起了出差流程', N'startEvent1', N'2020-09-23 10:09:28.4810000', N'1280709549107552257', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308589268750524417', N'2', N'1308589267949412354', NULL, N'1308589267949412354', N'travel:1:1304341427379126274', NULL, N'1308589267949412354', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:09:28.6790000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308590488798060546', N'2', N'1308590488798060546', NULL, NULL, N'leave:1:1294922085572947969', NULL, N'1308590488798060546', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'超级管理员在2020-09-23 10:14:21发起了请假流程', N'startEvent1', N'2020-09-23 10:14:19.5590000', N'1265476890672672808', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1308591517363036162', N'1', N'1308590488798060546', NULL, N'1308590488798060546', N'leave:1:1294922085572947969', NULL, N'1308590488798060546', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2020-09-23 10:18:24.7210000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1354463463303581698', N'2', N'1354463463303581698', NULL, NULL, N'car_model:1:1354458538414739458', NULL, N'1354463463303581698', NULL, N'1', N'0', N'1', N'0', N'0', N'1', NULL, N'', N'超级管理员在2021-01-28 00:17:12发起了用车申请', N'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', N'2021-01-28 00:17:08.6520000', N'1265476890672672808', NULL, N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_execution]  VALUES (N'1354463467527245825', N'2', N'1354463463303581698', NULL, N'1354463463303581698', N'car_model:1:1354458538414739458', NULL, N'1354463463303581698', N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'1', N'0', N'0', N'0', N'0', N'1', NULL, N'', NULL, NULL, N'2021-01-28 00:17:09.6700000', NULL, NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_history_job]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_history_job]
GO

CREATE TABLE [dbo].[act_ru_history_job] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [LOCK_EXP_TIME_] datetime2(7)  NULL,
  [LOCK_OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RETRIES_] int  NULL,
  [EXCEPTION_STACK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_MSG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_CFG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CUSTOM_VALUES_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ADV_HANDLER_CFG_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_history_job] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_identitylink]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_identitylink]
GO

CREATE TABLE [dbo].[act_ru_identitylink] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [GROUP_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_identitylink] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406301226840066', N'1', NULL, N'starter', N'1265476890672672808', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406305358229505', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406313876860930', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406318016638977', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406613555687426', N'1', NULL, N'starter', N'1265476890672672808', NULL, N'1308406613064953858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406620824416257', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406613064953858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406629749895170', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406613064953858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406633906450433', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308406613064953858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406819105943553', N'1', NULL, N'starter', N'1265476890672672808', NULL, N'1308406818585849858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406823371550722', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406818585849858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406831776935937', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406818585849858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308406836000600066', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308406818585849858', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308407848664969218', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308407852334985218', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308406300706746370', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308583523040620545', N'1', NULL, N'starter', N'1275735541155614721', NULL, N'1308583522503749633', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308583527075540994', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308583522503749633', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308583535636115457', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308583522503749633', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308583548533600258', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308583522503749633', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308583552690155522', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308583522503749633', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586276898955265', N'1', NULL, N'starter', N'1275735541155614721', NULL, N'1308586276353695745', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586281839845377', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308586276353695745', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586289326678017', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308586276353695745', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586293126717442', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308586276353695745', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586686191722498', N'1', NULL, N'starter', N'1275735541155614721', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586691669483521', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586699412168705', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586710615154689', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586718647246849', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308586719880372226', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308586685709377538', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587452382011393', N'1', NULL, N'starter', N'1280700700074041345', NULL, N'1308587451853529089', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587457721360385', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587451853529089', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587465472434177', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587451853529089', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587469213753345', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308587451853529089', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587551040430081', N'1', NULL, N'starter', N'1280700700074041345', NULL, N'1308587550507753474', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587554878218241', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587550507753474', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587562130169857', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587550507753474', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587573337350145', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587550507753474', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587577120612354', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308587550507753474', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587713485824002', N'1', NULL, N'starter', N'1280700700074041345', NULL, N'1308587712978313218', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587717034205185', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587712978313218', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587724307128321', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308587712978313218', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308587728090390529', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308587712978313218', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588718894047233', N'1', NULL, N'starter', N'1280709549107552257', NULL, N'1308588718357176322', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588723096739842', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308588718357176322', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588731435016194', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308588718357176322', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588735608348674', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308588718357176322', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588942156849153', N'1', NULL, N'starter', N'1280709549107552257', NULL, N'1308588941628366850', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588946162409474', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308588941628366850', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588954462937089', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308588941628366850', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308588958577549314', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308588941628366850', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308589268490477570', N'1', NULL, N'starter', N'1280709549107552257', NULL, N'1308589267949412354', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308589274274422785', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308589267949412354', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308589283048906753', N'1', NULL, N'participant', N'1280709549107552257', NULL, N'1308589267949412354', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308589287243210754', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1308589267949412354', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308590489305571329', N'1', NULL, N'starter', N'1265476890672672808', NULL, N'1308590488798060546', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308590493223051265', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308590488798060546', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308590500516945922', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1308590488798060546', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1308590504275042305', N'1', NULL, N'participant', N'1280700700074041345', NULL, N'1308590488798060546', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1354463466017296385', N'1', NULL, N'starter', N'1265476890672672808', NULL, N'1354463463303581698', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1354463479166439425', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1354463463303581698', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1354463481066459137', N'1', NULL, N'participant', N'1265476890672672808', NULL, N'1354463463303581698', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_identitylink]  VALUES (N'1354463488700092417', N'1', NULL, N'participant', N'1275735541155614721', NULL, N'1354463463303581698', NULL, NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_job]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_job]
GO

CREATE TABLE [dbo].[act_ru_job] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LOCK_EXP_TIME_] datetime2(7)  NULL,
  [LOCK_OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCLUSIVE_] tinyint  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROCESS_INSTANCE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RETRIES_] int  NULL,
  [EXCEPTION_STACK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_MSG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DUEDATE_] datetime2(7)  NULL,
  [REPEAT_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_CFG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CUSTOM_VALUES_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_job] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_suspended_job]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_suspended_job]
GO

CREATE TABLE [dbo].[act_ru_suspended_job] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXCLUSIVE_] tinyint  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROCESS_INSTANCE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RETRIES_] int  NULL,
  [EXCEPTION_STACK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_MSG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DUEDATE_] datetime2(7)  NULL,
  [REPEAT_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_CFG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CUSTOM_VALUES_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_suspended_job] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_task]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_task]
GO

CREATE TABLE [dbo].[act_ru_task] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROPAGATED_STAGE_INST_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENT_TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_DEF_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ASSIGNEE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DELEGATION_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIORITY_] int  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [DUE_DATE_] datetime2(7)  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUSPENSION_STATE_] int  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FORM_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CLAIM_TIME_] datetime2(7)  NULL,
  [IS_COUNT_ENABLED_] tinyint  NULL,
  [VAR_COUNT_] int  NULL,
  [ID_LINK_COUNT_] int  NULL,
  [SUB_TASK_COUNT_] int  NULL
)
GO

ALTER TABLE [dbo].[act_ru_task] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308406633172447233', N'1', N'1308406613807345665', N'1308406613064953858', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-22 22:03:44.9660000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308406835233042433', N'1', N'1308406819361796097', N'1308406818585849858', N'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, N'1280700700074041345', NULL, N'50', N'2020-09-22 22:04:33.1400000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308407851600982018', N'4', N'1308406301486886914', N'1308406300706746370', N'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, N'主管审批', NULL, NULL, N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, N'1280709549107552257', NULL, N'50', N'2020-09-22 22:08:35.4630000', N'2020-09-24 00:00:00.0000000', NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308583551935180802', N'1', N'1308583523304861698', N'1308583522503749633', N'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, N'主管审批', NULL, NULL, N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, N'1280709549107552257', NULL, N'50', N'2020-09-23 09:46:45.6880000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308586292422074369', N'1', N'1308586277171585026', N'1308586276353695745', N'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, N'1280700700074041345', NULL, N'50', N'2020-09-23 09:57:39.0700000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308586716768198657', N'1', N'1308586714415194113', N'1308586685709377538', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 09:59:20.2440000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308586718148124673', N'1', N'1308586714654269441', N'1308586685709377538', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, N'1280700700074041345', NULL, N'50', N'2020-09-23 09:59:20.5720000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308586719393832961', N'1', N'1308586714893344770', N'1308586685709377538', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'领导会签', NULL, NULL, N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, N'1280709549107552257', NULL, N'50', N'2020-09-23 09:59:20.8670000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308587468509110274', N'1', N'1308587452633669633', N'1308587451853529089', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 10:02:19.4710000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308587576432746498', N'1', N'1308587551300476930', N'1308587550507753474', N'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, N'宝山审批', NULL, NULL, N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 10:02:45.2020000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308587727377358849', N'1', N'1308587713737482242', N'1308587712978313218', N'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 10:03:21.1900000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308588734824013825', N'1', N'1308588719162482690', N'1308588718357176322', N'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, N'老俞审批', NULL, NULL, N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, N'1280700700074041345', NULL, N'50', N'2020-09-23 10:07:21.3830000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308588957851934722', N'1', N'1308588942400118785', N'1308588941628366850', N'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, N'部门经理审批', NULL, NULL, N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 10:08:14.5580000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308589286484041730', N'1', N'1308589268750524417', N'1308589267949412354', N'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, N'经理审批', NULL, NULL, N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, N'1275735541155614721', NULL, N'50', N'2020-09-23 10:09:32.8970000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1308591518118010881', N'1', N'1308591517363036162', N'1308590488798060546', N'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, N'填写申请单', NULL, NULL, N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', NULL, N'1265476890672672808', NULL, N'50', N'2020-09-23 10:18:24.9720000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO

INSERT INTO [dbo].[act_ru_task]  VALUES (N'1354463485835382785', N'1', N'1354463467527245825', N'1354463463303581698', N'car_model:1:1354458538414739458', NULL, NULL, NULL, NULL, NULL, NULL, N'领导审批', NULL, NULL, N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', NULL, N'1275735541155614721', NULL, N'50', N'2021-01-28 00:17:14.0730000', NULL, NULL, N'1', N'', NULL, NULL, N'1', N'0', N'0', N'0')
GO


-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_timer_job]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_timer_job]
GO

CREATE TABLE [dbo].[act_ru_timer_job] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LOCK_EXP_TIME_] datetime2(7)  NULL,
  [LOCK_OWNER_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCLUSIVE_] tinyint  NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROCESS_INSTANCE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_DEF_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ELEMENT_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_DEFINITION_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RETRIES_] int  NULL,
  [EXCEPTION_STACK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXCEPTION_MSG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DUEDATE_] datetime2(7)  NULL,
  [REPEAT_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [HANDLER_CFG_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CUSTOM_VALUES_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_timer_job] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[act_ru_variable]') AND type IN ('U'))
	DROP TABLE [dbo].[act_ru_variable]
GO

CREATE TABLE [dbo].[act_ru_variable] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EXECUTION_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_INST_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TASK_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BYTEARRAY_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [DOUBLE_] float(53)  NULL,
  [LONG_] bigint  NULL,
  [TEXT_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEXT2_] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[act_ru_variable] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406300954210305', N'1', N'string', N'INITIATOR', N'1308406300706746370', N'1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406302497714177', N'1', N'string', N'formData', N'1308406300706746370', N'1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406613316612097', N'1', N'string', N'INITIATOR', N'1308406613064953858', N'1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406614793007106', N'1', N'string', N'formData', N'1308406613064953858', N'1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406617540276225', N'1', N'serializable', N'pers', N'1308406613064953858', N'1308406613064953858', NULL, NULL, NULL, NULL, N'1308406617288617986', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406618278473729', N'1', N'integer', N'num', N'1308406613064953858', N'1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406818841702402', N'1', N'string', N'INITIATOR', N'1308406818585849858', N'1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308406820372623362', N'1', N'string', N'formData', N'1308406818585849858', N'1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308583522767990785', N'1', N'string', N'INITIATOR', N'1308583522503749633', N'1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308583524093390850', N'1', N'string', N'formData', N'1308583522503749633', N'1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586276622131202', N'1', N'string', N'INITIATOR', N'1308586276353695745', N'1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586277955919874', N'1', N'string', N'formData', N'1308586276353695745', N'1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586685948452865', N'1', N'string', N'INITIATOR', N'1308586685709377538', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586687177383938', N'1', N'string', N'formData', N'1308586685709377538', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586688616030209', N'1', N'serializable', N'pers', N'1308586685709377538', N'1308586685709377538', NULL, NULL, NULL, NULL, N'1308586688364371969', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586689337450497', N'1', N'integer', N'num', N'1308586685709377538', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586713685385218', N'1', N'integer', N'nrOfInstances', N'1308586713228206081', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586713928654849', N'1', N'integer', N'nrOfCompletedInstances', N'1308586713228206081', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586714167730178', N'1', N'integer', N'nrOfActiveInstances', N'1308586713228206081', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586715350523905', N'1', N'long', N'per', N'1308586714415194113', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'1275735541155614721', N'1275735541155614721', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586715593793538', N'1', N'long', N'per', N'1308586714654269441', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', N'1280700700074041345', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586715832868865', N'1', N'long', N'per', N'1308586714893344770', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', N'1280709549107552257', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586716080332801', N'1', N'integer', N'loopCounter', N'1308586714415194113', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'0', N'0', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586717665779713', N'1', N'integer', N'loopCounter', N'1308586714654269441', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'1', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308586718903099393', N'1', N'integer', N'loopCounter', N'1308586714893344770', N'1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'2', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587452117770241', N'1', N'string', N'INITIATOR', N'1308587451853529089', N'1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587453568999425', N'1', N'string', N'formData', N'1308587451853529089', N'1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587454676295682', N'1', N'serializable', N'pers', N'1308587451853529089', N'1308587451853529089', NULL, NULL, NULL, NULL, N'1308587454428831745', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587455368355841', N'1', N'integer', N'num', N'1308587451853529089', N'1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587550784577538', N'1', N'string', N'INITIATOR', N'1308587550507753474', N'1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587552252583938', N'1', N'string', N'formData', N'1308587550507753474', N'1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587713229971458', N'1', N'string', N'INITIATOR', N'1308587712978313218', N'1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280700700074041345', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308587714496651266', N'1', N'string', N'formData', N'1308587712978313218', N'1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308588718629806082', N'1', N'string', N'INITIATOR', N'1308588718357176322', N'1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308588720164921345', N'1', N'string', N'formData', N'1308588718357176322', N'1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308588941900996610', N'1', N'string', N'INITIATOR', N'1308588941628366850', N'1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308588943423528961', N'1', N'string', N'formData', N'1308588941628366850', N'1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308589268226236418', N'1', N'string', N'INITIATOR', N'1308589267949412354', N'1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1280709549107552257', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308589269815877633', N'1', N'string', N'formData', N'1308589267949412354', N'1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308589271011254273', N'1', N'serializable', N'pers', N'1308589267949412354', N'1308589267949412354', NULL, NULL, NULL, NULL, N'1308589270763790337', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308589271770423297', N'1', N'integer', N'num', N'1308589267949412354', N'1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'3', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308590489049718785', N'1', N'string', N'INITIATOR', N'1308590488798060546', N'1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1308590490513530881', N'1', N'string', N'formData', N'1308590488798060546', N'1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1354463464687702018', N'1', N'string', N'INITIATOR', N'1354463463303581698', N'1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1265476890672672808', NULL)
GO

INSERT INTO [dbo].[act_ru_variable]  VALUES (N'1354463471910293506', N'1', N'string', N'formData', N'1354463463303581698', N'1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL)
GO


-- ----------------------------
-- Table structure for flw_button
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_button]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_button]
GO

CREATE TABLE [dbo].[flw_button] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [act_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [act_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [submit] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [save] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [back] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [turn] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [next] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [entrust] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [end] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [trace] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [suspend] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [jump] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [add_sign] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [delete_sign] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_button] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程实例id',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'act_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'act_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'提交（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'submit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保存（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'save'
GO

EXEC sp_addextendedproperty
'MS_Description', N'退回（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'back'
GO

EXEC sp_addextendedproperty
'MS_Description', N'转办（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'turn'
GO

EXEC sp_addextendedproperty
'MS_Description', N'指定（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'next'
GO

EXEC sp_addextendedproperty
'MS_Description', N'委托（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'entrust'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终止（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'end'
GO

EXEC sp_addextendedproperty
'MS_Description', N'追踪（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'trace'
GO

EXEC sp_addextendedproperty
'MS_Description', N'挂起（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'suspend'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跳转（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'jump'
GO

EXEC sp_addextendedproperty
'MS_Description', N'加签（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'add_sign'
GO

EXEC sp_addextendedproperty
'MS_Description', N'减签（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'delete_sign'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_button',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程节点按钮表',
'SCHEMA', N'dbo',
'TABLE', N'flw_button'
GO


-- ----------------------------
-- Records of flw_button
-- ----------------------------
INSERT INTO [dbo].[flw_button]  VALUES (N'1294925235696578561', N'leave:1:1294922085572947969', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'老俞审批', N'Y', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', NULL, N'2020-08-16 17:13:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1294925267078361090', N'leave:1:1294922085572947969', N'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', N'宝山审批', N'Y', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', NULL, N'2020-08-16 17:13:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1295542179338616834', N'leave:1:1294922085572947969', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'填写申请单', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'Y', N'N', N'N', N'N', N'N', NULL, N'2020-08-18 10:05:00.0000000', N'1265476890672672808', N'2020-09-09 20:14:49.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1295542245906415618', N'formal:1:1295553082574471169', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'填写申请单', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'Y', N'N', N'N', N'N', N'N', NULL, N'2020-08-18 10:05:16.0000000', N'1265476890672672808', N'2020-09-22 21:17:56.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1295542270900273153', N'formal:1:1295553082574471169', N'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', N'部门经理审批', N'Y', N'Y', N'Y', N'N', N'Y', N'N', N'N', N'Y', N'N', N'N', N'N', N'N', NULL, N'2020-08-18 10:05:22.0000000', N'1265476890672672808', N'2020-08-18 10:06:41.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1295542365045620738', N'formal:1:1295553082574471169', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'主管审批', N'Y', N'Y', N'Y', N'Y', N'N', N'Y', N'N', N'Y', N'Y', N'N', N'N', N'N', NULL, N'2020-08-18 10:05:44.0000000', N'1265476890672672808', N'2020-08-18 10:06:52.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1295542516766179329', N'formal:1:1295553082574471169', N'sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431', N'总经理审批', N'Y', N'Y', N'Y', N'Y', N'N', N'N', N'Y', N'Y', N'Y', N'N', N'N', N'N', NULL, N'2020-08-18 10:06:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1304341611609735169', N'travel:1:1304341427379126274', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'填写申请单', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'Y', N'N', N'N', N'N', N'N', NULL, N'2020-09-11 16:50:48.0000000', N'1265476890672672808', N'2020-09-22 21:18:55.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1304341640323940353', N'travel:1:1304341427379126274', N'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', N'经理审批', N'Y', N'Y', N'Y', N'N', N'N', N'N', N'N', N'Y', N'N', N'N', N'N', N'N', NULL, N'2020-09-11 16:50:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1304341958755500033', N'travel:1:1304341427379126274', N'sid-64A789A3-6EDA-4C69-836E-C233B7269859', N'领导会签', N'Y', N'Y', N'Y', N'N', N'N', N'N', N'N', N'Y', N'N', N'N', N'Y', N'Y', NULL, N'2020-09-11 16:52:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1304342034198446081', N'travel:1:1304341427379126274', N'sid-6D4A69E7-A765-49EC-94C6-C238AF325027', N'总经理审批', N'Y', N'Y', N'Y', N'Y', N'N', N'N', N'Y', N'Y', N'Y', N'Y', N'N', N'N', NULL, N'2020-09-11 16:52:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1354458652785020929', N'car_model:1:1354458538414739458', N'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', N'填写申请单', N'Y', N'Y', N'Y', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', NULL, N'2021-01-27 23:58:02.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_button]  VALUES (N'1354458710733524994', N'car_model:1:1354458538414739458', N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'领导审批', N'Y', N'N', N'Y', N'Y', N'Y', N'N', N'Y', N'N', N'Y', N'N', N'N', N'N', NULL, N'2021-01-27 23:58:16.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_category]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_category]
GO

CREATE TABLE [dbo].[flw_category] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_category] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_category',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程分类表',
'SCHEMA', N'dbo',
'TABLE', N'flw_category'
GO


-- ----------------------------
-- Records of flw_category
-- ----------------------------
INSERT INTO [dbo].[flw_category]  VALUES (N'1290140237082759170', N'考勤类', N'kaoqin', N'100', N'考勤类', N'0', N'2020-08-03 12:19:37.0000000', N'1265476890672672808', N'2020-08-06 16:18:18.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_category]  VALUES (N'1290670559956320258', N'行政类', N'xingzheng', N'100', N'行政类', N'0', N'2020-08-04 23:26:56.0000000', N'1265476890672672808', N'2020-08-06 16:13:59.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_category]  VALUES (N'1308401074679459841', N'差旅类', N'travel', N'100', N'差旅类', N'0', N'2020-09-22 21:41:40.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_category]  VALUES (N'1354458450737008641', N'审批类', N'approval', N'100', N'审批类', N'0', N'2021-01-27 23:57:14.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_channel_definition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_channel_definition]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_channel_definition]
GO

CREATE TABLE [dbo].[flw_channel_definition] (
  [ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [VERSION_] int  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESOURCE_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_channel_definition] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_draft
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_draft]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_draft]
GO

CREATE TABLE [dbo].[flw_draft] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [form_json] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [form_data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [process_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_draft] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单布局数据',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'form_json'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单填写数据',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'form_data'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'process_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类编码',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'category_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请草稿表',
'SCHEMA', N'dbo',
'TABLE', N'flw_draft'
GO


-- ----------------------------
-- Records of flw_draft
-- ----------------------------
INSERT INTO [dbo].[flw_draft]  VALUES (N'1308407141660504066', N'travel:1:1304341427379126274', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-10","2020-09-19"],"trafficList":[{"startPlace":"俄罗斯","endPlace":"纽约","traffic":"飞机","money":3200,"key":1600783500495},{"startPlace":"纽约","endPlace":"北京","traffic":"飞机","money":1800,"key":1600783512343},{"startPlace":"北京","endPlace":"东京","traffic":"飞机","money":1500,"key":1600783521559},{"startPlace":"东京","endPlace":"大阪","traffic":"火车","money":400,"key":1600783534784}]}', N'出差申请', N'travel', N'差旅类', N'2020-09-22 22:05:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308407262112526337', N'leave:1:1294922085572947969', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"超级管理员","deptName":"总公司","time":["2020-09-30","2020-10-01"],"type":"1","remark":"放假了，请求回家吃烤肉"}', N'请假申请', N'kaoqin', N'考勤类', N'2020-09-22 22:06:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308407362373169154', N'formal:1:1295553082574471169', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"applyUserName":"超级管理员","appyDate":"2020-09-23","applyDept":"总公司","applyPosition":"老大","entryDate":"2020-09-08","formalDate":"2020-09-30"}', N'转正申请', N'xingzheng', N'行政类', N'2020-09-22 22:06:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308586063039782913', N'formal:1:1295553082574471169', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', N'转正申请', N'xingzheng', N'行政类', N'2020-09-23 09:56:44.0000000', N'1275735541155614721', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308586445610639361', N'leave:1:1294922085572947969', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"俞宝山","deptName":"研发部","time":["2020-09-24","2020-09-25"],"type":"1","remark":"一天跳舞没跳够，再来一天"}', N'请假申请', N'kaoqin', N'考勤类', N'2020-09-23 09:58:16.0000000', N'1275735541155614721', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308586966652248065', N'travel:1:1304341427379126274', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"俞宝山","dept":"研发部","travelDate":["2020-10-21","2020-10-29"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"新加坡","traffic":"飞机","money":1440,"key":1600826393108},{"startPlace":"新加坡","endPlace":"乌鲁木齐","traffic":"飞机","money":1440,"key":1600826411250}]}', N'出差申请', N'travel', N'差旅类', N'2020-09-23 10:00:20.0000000', N'1275735541155614721', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308587986744729601', N'travel:1:1304341427379126274', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"老俞","dept":"研发部","travelDate":["2020-09-30","2020-10-11"],"trafficList":[{"startPlace":"北京","endPlace":"青岛","traffic":"飞机","money":1200,"key":1600826633299},{"startPlace":"青岛","endPlace":"南通","traffic":"火车","money":640,"key":1600826646459},{"startPlace":"南通","endPlace":"北京","traffic":"飞机","money":1600,"key":1600826655203}]}', N'出差申请', N'travel', N'差旅类', N'2020-09-23 10:04:23.0000000', N'1280700700074041345', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308588109390372865', N'leave:1:1294922085572947969', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"项目上线，需庆祝"}', N'请假申请', N'kaoqin', N'考勤类', N'2020-09-23 10:04:52.0000000', N'1280700700074041345', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308588188574638082', N'formal:1:1295553082574471169', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-23"}', N'转正申请', N'xingzheng', N'行政类', N'2020-09-23 10:05:11.0000000', N'1280700700074041345', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308588839165714434', N'leave:1:1294922085572947969', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"徐玉祥","deptName":"研发部","time":["2020-09-27","2020-10-20"],"type":"3","remark":"回家结婚"}', N'请假申请', N'kaoqin', N'考勤类', N'2020-09-23 10:07:46.0000000', N'1280709549107552257', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308589063913299970', N'formal:1:1295553082574471169', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', N'转正申请', N'xingzheng', N'行政类', N'2020-09-23 10:08:40.0000000', N'1280709549107552257', NULL, NULL)
GO

INSERT INTO [dbo].[flw_draft]  VALUES (N'1308589423692308482', N'travel:1:1304341427379126274', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', N'{"name":"徐玉祥","dept":"研发部","travelDate":["2020-10-01","2020-10-23"],"trafficList":[{"startPlace":"成都","endPlace":"绵阳","traffic":"火车","money":250,"key":1600826986325},{"startPlace":"绵阳","endPlace":"成都","traffic":"火车","money":250,"key":1600826996492}]}', N'出差申请', N'travel', N'差旅类', N'2020-09-23 10:10:06.0000000', N'1280709549107552257', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_ev_databasechangelog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_ev_databasechangelog]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_ev_databasechangelog]
GO

CREATE TABLE [dbo].[flw_ev_databasechangelog] (
  [ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AUTHOR] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FILENAME] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DATEEXECUTED] datetime2(7)  NOT NULL,
  [ORDEREXECUTED] int  NOT NULL,
  [EXECTYPE] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MD5SUM] nvarchar(35) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [COMMENTS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TAG] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LIQUIBASE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTEXTS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LABELS] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_ev_databasechangelog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_ev_databasechangeloglock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_ev_databasechangeloglock]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_ev_databasechangeloglock]
GO

CREATE TABLE [dbo].[flw_ev_databasechangeloglock] (
  [ID] int  NOT NULL,
  [LOCKED] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LOCKGRANTED] datetime2(7)  NULL,
  [LOCKEDBY] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_ev_databasechangeloglock] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_event
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_event]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_event]
GO

CREATE TABLE [dbo].[flw_event] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [act_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [act_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [node_type] tinyint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [script] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [exec_sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_event] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'act_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'act_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'事件节点类型（字典 1全局 2节点）',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'node_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型（字典 见事件类型字典）',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'script'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行顺序',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'exec_sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_event',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程事件配置表',
'SCHEMA', N'dbo',
'TABLE', N'flw_event'
GO


-- ----------------------------
-- Records of flw_event
-- ----------------------------
INSERT INTO [dbo].[flw_event]  VALUES (N'1294925374511263745', N'leave:1:1294922085572947969', N'', N'', N'1', N'启动时打印一句话', N'PROCESS_STARTED', N'System.out.println("这是打印的内容");', N'100', N'启动时打印一句话', N'2020-08-16 17:14:02.0000000', N'1265476890672672808', N'2020-08-24 09:51:09.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_event]  VALUES (N'1295536105399222273', N'leave:1:1294922085572947969', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'老俞审批', N'2', N'任务完成时打印一句话', N'TASK_COMPLETED', N'System.out.println("这是打印的内容");', N'100', N'任务完成时打印一句话', N'2020-08-18 09:40:52.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_event]  VALUES (N'1304342885814124545', N'travel:1:1304341427379126274', N'', N'', N'1', N'流程启动时设置会签人员参数', N'PROCESS_STARTED', N'import cn.hutool.core.collection.CollectionUtil;
import com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', N'100', N'流程启动时设置会签人员参数', N'2020-09-11 16:55:52.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_event_definition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_event_definition]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_event_definition]
GO

CREATE TABLE [dbo].[flw_event_definition] (
  [ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [VERSION_] int  NULL,
  [KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESOURCE_NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DESCRIPTION_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_event_definition] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_event_deployment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_event_deployment]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_event_deployment]
GO

CREATE TABLE [dbo].[flw_event_deployment] (
  [ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATEGORY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOY_TIME_] datetime2(7)  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENT_DEPLOYMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_event_deployment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_event_resource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_event_resource]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_event_resource]
GO

CREATE TABLE [dbo].[flw_event_resource] (
  [ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEPLOYMENT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESOURCE_BYTES_] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[flw_event_resource] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_form
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_form]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_form]
GO

CREATE TABLE [dbo].[flw_form] (
  [id] bigint  NOT NULL,
  [form_id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [act_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [act_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [node_type] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_form] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单id',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'form_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点id',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'act_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'活动节点名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'act_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单节点类型（字典 1全局 2节点）',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'node_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_form',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程表单配置表',
'SCHEMA', N'dbo',
'TABLE', N'flw_form'
GO


-- ----------------------------
-- Records of flw_form
-- ----------------------------
INSERT INTO [dbo].[flw_form]  VALUES (N'1289833421153099778', N'1294922455393120258', N'leave:1:1294922085572947969', N'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', N'老俞审批', N'3', N'2020-08-16 17:43:20.0000000', N'1265476890672672808', N'2020-08-17 20:29:58.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1295301986463330305', N'1294922365303664641', N'leave:1:1294922085572947969', N'', N'', N'1', N'2020-08-17 18:10:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1295387809110192130', N'1294922455393120258', N'leave:1:1294922085572947969', N'', N'', N'2', N'2020-08-17 23:51:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1295553303433936897', N'1295542814805032961', N'formal:1:1295553082574471169', N'', N'', N'1', N'2020-08-18 10:49:12.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1295553341874733058', N'1295542814805032961', N'formal:1:1295553082574471169', N'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', N'填写申请单', N'3', N'2020-08-18 10:49:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1295553371952087042', N'1295542994690342913', N'formal:1:1295553082574471169', N'', N'', N'2', N'2020-08-18 10:49:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1296623909172662273', N'1295542814805032962', N'formal:1:1295553082574471169', N'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', N'主管审批', N'3', N'2020-08-21 09:43:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1304342082042871810', N'1304313274803888130', N'travel:1:1304341427379126274', N'', N'', N'1', N'2020-09-11 16:52:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1304342120999567362', N'1304313274803888130', N'travel:1:1304341427379126274', N'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', N'填写申请单', N'3', N'2020-09-11 16:52:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1304342154944069633', N'1304317596870582274', N'travel:1:1304341427379126274', N'', N'', N'2', N'2020-09-11 16:52:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1308592009845628929', N'1294922365303664641', N'leave:1:1294922085572947969', N'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', N'填写申请单', N'3', N'2020-09-23 10:20:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1354458802618142721', N'1354453645117394946', N'car_model:1:1354458538414739458', N'', N'', N'1', N'2021-01-27 23:58:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_form]  VALUES (N'1354468741201842177', N'1354468627381014530', N'car_model:1:1354458538414739458', N'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', N'领导审批', N'3', N'2021-01-28 00:38:07.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_form_resource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_form_resource]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_form_resource]
GO

CREATE TABLE [dbo].[flw_form_resource] (
  [id] bigint  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] tinyint  NULL,
  [category] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [form_json] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [form_url] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_form_url] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_form_resource] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单编码',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单类型（字典 1自行开发 2在线设计）',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单分类',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'PC端表单数据，适用于在线设计表单',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'form_json'
GO

EXEC sp_addextendedproperty
'MS_Description', N'PC端表单URL。适用于自行开发的表单',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'form_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'移动端表单URL',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'app_form_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程脚本表',
'SCHEMA', N'dbo',
'TABLE', N'flw_form_resource'
GO


-- ----------------------------
-- Records of flw_form_resource
-- ----------------------------
INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1294922365303664641', N'leaveFormWrite', N'请假填写单', N'2', N'kaoqin', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'请假填写单', N'0', N'2020-08-16 17:02:05.0000000', N'1265476890672672808', N'2020-08-18 09:42:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1294922455393120258', N'leaveFormRead', N'请假只读单', N'2', N'kaoqin', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680134338"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1597568614214","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"deptName","key":"input_1597568763728","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":true,"hidden":false,"defaultValue":"","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569102078","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":true,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'请假只读单', N'0', N'2020-08-16 17:02:27.0000000', N'1265476890672672808', N'2020-08-18 10:41:24.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1295542814805032961', N'formalFormWrite', N'转正填写单', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正填写单', N'0', N'2020-08-18 10:07:32.0000000', N'1265476890672672808', N'2020-08-23 10:06:06.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1295542814805032962', N'formalFormWriteWithAssess', N'转正填写单_主管填写', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":true,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正填写单_主管填写', N'0', N'2020-08-18 10:07:32.0000000', N'1265476890672672808', N'2020-08-24 09:35:18.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1295542994690342913', N'formalFormRead', N'转正只读单', N'2', N'xingzheng', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'转正只读单', N'0', N'2020-08-18 10:08:15.0000000', N'1265476890672672808', N'2020-08-24 09:35:51.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1304313274803888130', N'travelWrite', N'出差填写单', N'2', N'travel', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'出差填写单', N'0', N'2020-09-11 14:58:12.0000000', N'1265476890672672808', N'2020-09-11 15:14:56.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1304317596870582274', N'travelRead', N'出差只读单', N'2', N'travel', N'{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1599807772599","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"dept","key":"input_1599807774961","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":true,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, N'出差只读单', N'0', N'2020-09-11 15:15:23.0000000', N'1265476890672672808', N'2020-09-11 15:16:17.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1354453645117394946', N'tests_codes', N'用车申请单', N'1', N'approval', NULL, N'carApplyForm', NULL, N'用车申请单', N'0', N'2021-01-27 23:38:08.0000000', N'1265476890672672808', N'2021-01-28 00:36:55.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_form_resource]  VALUES (N'1354468627381014530', N'tests_codes_readonly', N'用车审批单', N'1', N'approval', NULL, N'carApplyFormReadOnly', NULL, N'用车审批单', N'0', N'2021-01-28 00:37:40.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_option
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_option]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_option]
GO

CREATE TABLE [dbo].[flw_option] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [jump_first] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [smart_complete] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [version] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_option] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题规则',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自动完成第一个任务（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'jump_first'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跳过相同处理人（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'smart_complete'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_option',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程选项配置表',
'SCHEMA', N'dbo',
'TABLE', N'flw_option'
GO


-- ----------------------------
-- Records of flw_option
-- ----------------------------
INSERT INTO [dbo].[flw_option]  VALUES (N'1294922087854649346', N'leave:1:1294922085572947969', N'user在time发起了title', N'Y', N'Y', NULL, N'2020-08-16 17:00:59.0000000', N'1265476890672672808', N'2020-08-18 00:05:38.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_option]  VALUES (N'1295553085309157378', N'formal:1:1295553082574471169', N'user在time发起了title', N'Y', N'Y', NULL, N'2020-08-18 10:48:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_option]  VALUES (N'1304341429899902977', N'travel:1:1304341427379126274', NULL, N'Y', N'Y', NULL, N'2020-09-11 16:50:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_option]  VALUES (N'1354458538599288833', N'car_model:1:1354458538414739458', NULL, N'Y', N'Y', NULL, N'2021-01-27 23:57:35.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for flw_ru_batch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_ru_batch]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_ru_batch]
GO

CREATE TABLE [dbo].[flw_ru_batch] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SEARCH_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEARCH_KEY2_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NOT NULL,
  [COMPLETE_TIME_] datetime2(7)  NULL,
  [STATUS_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [BATCH_DOC_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_ru_batch] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_ru_batch_part
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_ru_batch_part]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_ru_batch_part]
GO

CREATE TABLE [dbo].[flw_ru_batch_part] (
  [ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [REV_] int  NULL,
  [BATCH_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SCOPE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUB_SCOPE_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SCOPE_TYPE_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEARCH_KEY_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEARCH_KEY2_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_TIME_] datetime2(7)  NOT NULL,
  [COMPLETE_TIME_] datetime2(7)  NULL,
  [STATUS_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RESULT_DOC_ID_] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TENANT_ID_] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flw_ru_batch_part] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for flw_script
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_script]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_script]
GO

CREATE TABLE [dbo].[flw_script] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] tinyint  NOT NULL,
  [lang] tinyint  NOT NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_script] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本类别（字典 1流程脚本 2系统脚本）',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本语言（字典1 groovy)',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'lang'
GO

EXEC sp_addextendedproperty
'MS_Description', N'脚本内容',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'flw_script',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程脚本表',
'SCHEMA', N'dbo',
'TABLE', N'flw_script'
GO


-- ----------------------------
-- Records of flw_script
-- ----------------------------
INSERT INTO [dbo].[flw_script]  VALUES (N'1294898800718163970', N'打印内容', N'1', N'1', N'System.out.println("这是打印的内容");', N'打印内容', N'0', N'2020-08-16 15:28:27.0000000', N'1265476890672672808', N'2020-08-16 18:23:26.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[flw_script]  VALUES (N'1304322960072609794', N'设置会签人员', N'1', N'1', N'import cn.hutool.core.collection.CollectionUtil;
import com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', N'流程启动时给流程实例设置会签人员', N'0', N'2020-09-11 15:36:41.0000000', N'1265476890672672808', N'2020-09-11 16:55:02.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for flw_shortcut
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flw_shortcut]') AND type IN ('U'))
	DROP TABLE [dbo].[flw_shortcut]
GO

CREATE TABLE [dbo].[flw_shortcut] (
  [id] bigint  NOT NULL,
  [process_definition_id] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [category_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] tinyint  NOT NULL,
  [icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[flw_shortcut] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程定义id',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'process_definition_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'category_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定义版本',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程申请入口表',
'SCHEMA', N'dbo',
'TABLE', N'flw_shortcut'
GO


-- ----------------------------
-- Records of flw_shortcut
-- ----------------------------
INSERT INTO [dbo].[flw_shortcut]  VALUES (N'1295307482717040642', N'leave:1:1294922085572947969', N'请假申请', N'kaoqin', N'考勤类', N'请假申请', N'1', N'profile', N'100', N'0', N'2020-08-17 18:32:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_shortcut]  VALUES (N'1295934105837555714', N'formal:1:1295553082574471169', N'转正申请', N'xingzheng', N'行政类', N'转正申请', N'1', N'block', N'100', N'0', N'2020-08-19 12:02:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_shortcut]  VALUES (N'1304343307362648066', N'travel:1:1304341427379126274', N'出差申请', N'travel', N'差旅类', N'出差申请', N'1', N'thunderbolt', N'100', N'0', N'2020-09-11 16:57:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[flw_shortcut]  VALUES (N'1354458994553688065', N'car_model:1:1354458538414739458', N'用车申请', N'approval', N'审批类', N'用车申请', N'1', N'car', N'100', N'0', N'2021-01-27 23:59:24.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for pay_ali_trade_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[pay_ali_trade_history]') AND type IN ('U'))
	DROP TABLE [dbo].[pay_ali_trade_history]
GO

CREATE TABLE [dbo].[pay_ali_trade_history] (
  [id] bigint  NOT NULL,
  [out_trade_no] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trade_no] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [bill_date] datetime2(7)  NOT NULL,
  [amount] decimal(10,2)  NOT NULL,
  [subject] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [body] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[pay_ali_trade_history] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商家订单号',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'out_trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付宝订单号',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'trade_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易时间',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'bill_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'交易金额',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'amount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'subject'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品描述',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'body'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'pay_ali_trade_history',
'COLUMN', N'update_user'
GO


-- ----------------------------
-- Records of pay_ali_trade_history
-- ----------------------------
INSERT INTO [dbo].[pay_ali_trade_history]  VALUES (N'1308743504209526785', N'1308743503441969153', N'2020092322001400230504748834', N'2020-09-23 20:22:21.0000000', N'1.00', N'XiaoNuo快速开发平台PC支付测试商品', N'XiaoNuo快速开发平台PC支付测试商品', N'1', N'2020-09-23 20:22:21.0000000', N'-1', NULL, NULL)
GO

INSERT INTO [dbo].[pay_ali_trade_history]  VALUES (N'1308752588191268865', N'1308752588027691009', NULL, N'2020-09-23 20:58:27.0000000', N'1.00', N'XiaoNuo快速开发平台WAP支付测试商品', N'XiaoNuo快速开发平台WAP支付测试商品', N'0', N'2020-09-23 20:58:27.0000000', N'-1', NULL, NULL)
GO

INSERT INTO [dbo].[pay_ali_trade_history]  VALUES (N'1308754130948579329', N'1308754130894053377', NULL, N'2020-09-23 21:04:35.0000000', N'1.00', N'XiaoNuo快速开发平台扫码支付测试商品', N'XiaoNuo快速开发平台扫码支付测试商品', N'1', N'2020-09-23 21:04:35.0000000', N'-1', NULL, NULL)
GO

INSERT INTO [dbo].[pay_ali_trade_history]  VALUES (N'1308759207155326978', N'1308759206559735810', NULL, N'2020-09-23 21:24:45.0000000', N'1.00', N'XiaoNuo快速开发平台PC支付测试商品', N'XiaoNuo快速开发平台PC支付测试商品', N'0', N'2020-09-23 21:24:45.0000000', N'-1', NULL, NULL)
GO

INSERT INTO [dbo].[pay_ali_trade_history]  VALUES (N'1308760139100315649', N'1308760138500530177', N'2020092322001400230504749933', N'2020-09-23 21:28:27.0000000', N'1.00', N'XiaoNuo快速开发平台PC支付测试商品', N'XiaoNuo快速开发平台PC支付测试商品', N'1', N'2020-09-23 21:28:27.0000000', N'-1', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_app]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_app]
GO

CREATE TABLE [dbo].[sys_app] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [active] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_app] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否默认激活（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'active'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_app',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统应用表',
'SCHEMA', N'dbo',
'TABLE', N'sys_app'
GO


-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO [dbo].[sys_app]  VALUES (N'1265476890672672821', N'系统应用', N'system', N'Y', N'0', N'2020-03-25 19:07:00.0000000', N'1265476890672672808', N'2020-08-15 15:23:05.0000000', N'1280709549107552257')
GO

INSERT INTO [dbo].[sys_app]  VALUES (N'1265476890672672822', N'业务应用', N'business', N'N', N'2', N'2020-03-26 08:40:33.0000000', N'1265476890672672808', N'2020-09-23 22:00:01.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_app]  VALUES (N'1265476890672672823', N'在线办公', N'office', N'N', N'0', N'2020-04-02 15:48:43.0000000', N'1265476890672672808', N'2020-09-23 22:00:15.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_app]  VALUES (N'1290262474351808514', N'高级体验', N'experience', N'N', N'0', N'2020-08-03 20:25:20.0000000', N'1265476890672672808', N'2020-08-15 15:46:12.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_app]  VALUES (N'1342451550318694401', N'系统工具', N'system_tool', N'N', N'0', N'2020-12-25 20:46:06.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_area]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_area]
GO

CREATE TABLE [dbo].[sys_area] (
  [id] bigint  NOT NULL,
  [level] tinyint  NOT NULL,
  [parent_code] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [area_code] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [zip_code] nvarchar(6) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [city_code] nvarchar(6) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [short_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [merger_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [pinyin] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [lng] decimal(10,6)  NOT NULL,
  [lat] decimal(10,6)  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_area] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'层级',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级行政代码',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'parent_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'行政代码',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'area_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮政编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'zip_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'区号',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'city_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简称',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'short_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组合名',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'merger_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拼音',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'pinyin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'经度',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'lng'
GO

EXEC sp_addextendedproperty
'MS_Description', N'纬度',
'SCHEMA', N'dbo',
'TABLE', N'sys_area',
'COLUMN', N'lat'
GO

EXEC sp_addextendedproperty
'MS_Description', N'中国行政地区表',
'SCHEMA', N'dbo',
'TABLE', N'sys_area'
GO


-- ----------------------------
-- Table structure for sys_code_generate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_code_generate]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_code_generate]
GO

CREATE TABLE [dbo].[sys_code_generate] (
  [id] bigint  NOT NULL,
  [author_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [class_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [table_prefix] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [generate_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [table_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [package_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [bus_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [table_comment] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_user] bigint  NULL,
  [create_time] datetime2(7)  NULL,
  [update_user] bigint  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_code_generate] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'作者姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'author_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否移除表前缀',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'table_prefix'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成位置类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'generate_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库表名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'包名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'package_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'bus_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'table_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成基础配置',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate'
GO


-- ----------------------------
-- Records of sys_code_generate
-- ----------------------------
INSERT INTO [dbo].[sys_code_generate]  VALUES (N'1362310959781744641', N'yubaoshan、xuyuxiang、dongxiayu', N'CodeGenTest', N'Y', N'2', N'xn_code_gen_test', N'com.cn.xiaonuo', N'codegentest', N'测试', N'1265476890672672808', N'2021-02-18 16:00:18.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_code_generate_config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_code_generate_config]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_code_generate_config]
GO

CREATE TABLE [dbo].[sys_code_generate_config] (
  [id] bigint  NOT NULL,
  [code_gen_id] bigint  NULL,
  [column_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [java_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [data_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [column_comment] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [java_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [effect_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_type_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [whether_table] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [whether_add_update] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [whether_retract] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [whether_required] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [query_whether] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [query_type] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [column_key] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [column_key_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [whether_common] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_code_generate_config] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成主表ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'code_gen_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库字段名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'column_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类字段名',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'java_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物理类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'data_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'column_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'java类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'java_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'作用类型（字典）',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'effect_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典code',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'dict_type_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表展示',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'whether_table'
GO

EXEC sp_addextendedproperty
'MS_Description', N'增改',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'whether_add_update'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表是否缩进（字典）',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'whether_retract'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否必填（字典）',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'whether_required'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是查询条件',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'query_whether'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'query_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'column_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主外键名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'column_key_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是通用字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'whether_common'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成详细配置',
'SCHEMA', N'dbo',
'TABLE', N'sys_code_generate_config'
GO


-- ----------------------------
-- Records of sys_code_generate_config
-- ----------------------------
INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310959903379458', N'1362310959781744641', N'id', N'id', N'bigint', N'主键', N'Long', N'input', NULL, N'N', N'N', N'N', N'N', N'N', N'eq', N'PRI', N'Id', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310959941128193', N'1362310959781744641', N'name', N'name', N'varchar', N'姓名', N'String', N'input', NULL, N'Y', N'Y', N'N', N'Y', N'Y', N'like', N'', N'Name', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310959978876929', N'1362310959781744641', N'age', N'age', N'int', N'年龄', N'Integer', N'input', NULL, N'Y', N'Y', N'N', N'Y', N'Y', N'eq', N'', N'Age', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960008237058', N'1362310959781744641', N'interest', N'interest', N'varchar', N'兴趣', N'String', N'checkbox', N'sex', N'Y', N'Y', N'N', N'Y', N'N', N'eq', N'', N'Interest', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960033402881', N'1362310959781744641', N'switchTest', N'switchtest', N'varchar', N'开关', N'String', N'radio', N'yes_or_no', N'Y', N'Y', N'N', N'Y', N'Y', N'eq', N'', N'Switchtest', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960062763009', N'1362310959781744641', N'birthday', N'birthday', N'date', N'日期', N'Date', N'datepicker', NULL, N'Y', N'Y', N'N', N'Y', N'Y', N'eq', N'', N'Birthday', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960096317442', N'1362310959781744641', N'whether', N'whether', N'varchar', N'是否已婚', N'String', N'select', N'yes_or_no', N'Y', N'Y', N'N', N'Y', N'Y', N'eq', N'', N'Whether', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960121483266', N'1362310959781744641', N'explainTest', N'explaintest', N'varchar', N'简介', N'String', N'textarea', NULL, N'N', N'Y', N'N', N'Y', N'Y', N'eq', N'', N'Explaintest', N'N', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960150843393', N'1362310959781744641', N'create_time', N'createTime', N'datetime', N'创建时间', N'Date', N'datepicker', NULL, N'N', N'N', N'N', N'N', N'N', N'eq', N'', N'CreateTime', N'Y', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960176009218', N'1362310959781744641', N'create_user', N'createUser', N'bigint', N'', N'Long', N'input', NULL, N'N', N'N', N'N', N'N', N'N', N'eq', N'', N'CreateUser', N'Y', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960201175041', N'1362310959781744641', N'update_time', N'updateTime', N'datetime', N'', N'Date', N'datepicker', NULL, N'N', N'N', N'N', N'N', N'N', N'eq', N'', N'UpdateTime', N'Y', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_code_generate_config]  VALUES (N'1362310960234729473', N'1362310959781744641', N'update_user', N'updateUser', N'bigint', N'', N'Long', N'input', NULL, N'N', N'N', N'N', N'N', N'N', N'eq', N'', N'UpdateUser', N'Y', N'2021-02-18 16:00:18.0000000', N'1265476890672672808', N'2021-02-18 16:02:31.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_config]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_config]
GO

CREATE TABLE [dbo].[sys_config] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [value] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sys_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [group_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_config] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是系统参数（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'sys_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'常量所属分类的编码，来自于“常量的分类”字典',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'group_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_config',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统参数配置表',
'SCHEMA', N'dbo',
'TABLE', N'sys_config'
GO


-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853504', N'验证码开关', N'XIAONUO_CAPTCHA_OPEN', N'true', N'Y', N'登录验证码开关 false关闭 true打开', N'0', N'DEFAULT', N'2020-04-14 23:30:14.0000000', N'1265476890672672808', N'2021-02-18 16:19:01.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853506', N'jwt密钥', N'XIAONUO_JWT_SECRET', N'xiaonuo', N'Y', N'（重要）jwt密钥，默认为空，自行设置', N'0', N'DEFAULT', N'2020-05-26 06:35:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853507', N'默认密码', N'XIAONUO_DEFAULT_PASSWORD', N'123456', N'Y', N'默认密码', N'0', N'DEFAULT', N'2020-05-26 06:37:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853508', N'token过期时间', N'XIAONUO_TOKEN_EXPIRE', N'86400', N'Y', N'token过期时间（单位：秒）', N'0', N'DEFAULT', N'2020-05-27 11:54:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853509', N'session会话过期时间', N'XIAONUO_SESSION_EXPIRE', N'7200', N'Y', N'session会话过期时间（单位：秒）', N'0', N'DEFAULT', N'2020-05-27 11:54:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1265117443880853519', N'阿里云短信keyId', N'XIAONUO_ALIYUN_SMS_ACCESSKEY_ID', N'你的keyId', N'Y', N'阿里云短信keyId', N'0', N'ALIYUN_SMS', N'2020-06-07 16:27:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269547042242371585', N'阿里云短信secret', N'XIAONUO_ALIYUN_SMS_ACCESSKEY_SECRET', N'你的secret', N'Y', N'阿里云短信secret', N'0', N'ALIYUN_SMS', N'2020-06-07 16:29:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269547130041737217', N'阿里云短信签名', N'XIAONUO_ALIYUN_SMS_SIGN_NAME', N'XiaoNuo快速开发平台', N'Y', N'阿里云短信签名', N'0', N'ALIYUN_SMS', N'2020-06-07 16:29:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269547279530926081', N'阿里云短信-登录模板号', N'XIAONUO_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', N'SMS_1877123456', N'Y', N'阿里云短信-登录模板号', N'0', N'ALIYUN_SMS', N'2020-06-07 16:30:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269547410879750145', N'阿里云短信默认失效时间', N'XIAONUO_ALIYUN_SMS_INVALIDATE_MINUTES', N'5', N'Y', N'阿里云短信默认失效时间（单位：分钟）', N'0', N'ALIYUN_SMS', N'2020-06-07 16:31:04.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269575927357071361', N'腾讯云短信secretId', N'XIAONUO_TENCENT_SMS_SECRET_ID', N'你的secretId', N'Y', N'腾讯云短信secretId', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269575991693500418', N'腾讯云短信secretKey', N'XIAONUO_TENCENT_SMS_SECRET_KEY', N'你的secretkey', N'Y', N'腾讯云短信secretKey', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269576044084551682', N'腾讯云短信sdkAppId', N'XIAONUO_TENCENT_SMS_SDK_APP_ID', N'1400375123', N'Y', N'腾讯云短信sdkAppId', N'0', N'TENCENT_SMS', N'2020-06-07 18:24:51.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1269576089294954497', N'腾讯云短信签名', N'XIAONUO_TENCENT_SMS_SIGN', N'XiaoNuo快速开发平台', N'Y', N'腾讯云短信签名', N'0', N'TENCENT_SMS', N'2020-06-07 18:25:02.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270378172860403713', N'邮箱host', N'XIAONUO_EMAIL_HOST', N'smtp.126.com', N'Y', N'邮箱host', N'0', N'EMAIL', N'2020-06-09 23:32:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270378295543795714', N'邮箱用户名', N'XIAONUO_EMAIL_USERNAME', N'test@126.com', N'Y', N'邮箱用户名', N'0', N'EMAIL', N'2020-06-09 23:32:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270378340510928897', N'邮箱密码', N'XIAONUO_EMAIL_PASSWORD', N'你的邮箱密码', N'Y', N'邮箱密码', N'0', N'EMAIL', N'2020-06-09 23:32:54.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270378527358783489', N'邮箱端口', N'XIAONUO_EMAIL_PORT', N'465', N'Y', N'邮箱端口', N'0', N'EMAIL', N'2020-06-09 23:33:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270378790035460097', N'邮箱是否开启ssl', N'XIAONUO_EMAIL_SSL', N'true', N'Y', N'邮箱是否开启ssl', N'0', N'EMAIL', N'2020-06-09 23:34:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649972737', N'邮箱发件人', N'XIAONUO_EMAIL_FROM', N'test@126.com', N'Y', N'邮箱发件人', N'0', N'EMAIL', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649972738', N'win本地上传文件路径', N'XIAONUO_FILE_UPLOAD_PATH_FOR_WINDOWS', N'd:/tmp', N'Y', N'win本地上传文件路径', N'0', N'FILE_PATH', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649972739', N'linux/mac本地上传文件路径', N'XIAONUO_FILE_UPLOAD_PATH_FOR_LINUX', N'/tmp', N'Y', N'linux/mac本地上传文件路径', N'0', N'FILE_PATH', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649982740', N'XiaoNuo演示环境', N'XIAONUO_DEMO_ENV_FLAG', N'false', N'Y', N'XiaoNuo演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', N'0', N'DEFAULT', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', N'2020-09-03 14:38:17.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649982741', N'XiaoNuo放开XSS过滤的接口', N'XIAONUO_UN_XSS_FILTER_URL', N'/demo/xssfilter,/demo/unxss', N'Y', N'多个url可以用英文逗号隔开', N'0', N'DEFAULT', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1270380786649982742', N'单用户登陆的开关', N'XIAONUO_ENABLE_SINGLE_LOGIN', N'false', N'Y', N'单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', N'0', N'DEFAULT', N'2020-06-09 23:42:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1280694183769792514', N'druid监控登录账号', N'XIAONUO_DRUID_USERNAME', N'superAdmin', N'Y', N'druid监控登录账号', N'0', N'DEFAULT', N'2020-07-08 10:44:22.0000000', N'1265476890672672808', N'2021-02-18 16:18:30.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1280694281648070658', N'druid监控界面登录密码', N'XIAONUO_DRUID_PASSWORD', N'123456', N'Y', N'druid监控登录密码', N'0', N'DEFAULT', N'2020-07-08 10:44:46.0000000', N'1265476890672672808', N'2021-02-18 16:18:36.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1280694281648070659', N'阿里云定位api接口地址', N'XIAONUO_IP_GEO_API', N'http://api01.aliyun.venuscn.com/ip?ip=%s', N'Y', N'阿里云定位api接口地址', N'0', N'DEFAULT', N'2020-07-20 10:44:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1280694281648070660', N'阿里云定位appCode', N'XIAONUO_IP_GEO_APP_CODE', N'461535aabeae4f34861884d392f5d452', N'Y', N'阿里云定位appCode', N'0', N'DEFAULT', N'2020-07-20 10:44:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288309751255412737', N'Oauth用户登录的开关', N'XIAONUO_ENABLE_OAUTH_LOGIN', N'true', N'Y', N'Oauth用户登录的开关', N'0', N'OAUTH', N'2020-07-29 11:05:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288310043346743297', N'Oauth码云登录ClientId', N'XIAONUO_OAUTH_GITEE_CLIENT_ID', N'你的clientId', N'Y', N'Oauth码云登录ClientId', N'0', N'OAUTH', N'2020-07-29 11:07:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288310157876408321', N'Oauth码云登录ClientSecret', N'XIAONUO_OAUTH_GITEE_CLIENT_SECRET', N'你的clientSecret', N'Y', N'Oauth码云登录ClientSecret', N'0', N'OAUTH', N'2020-07-29 11:07:32.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288310280056483841', N'Oauth码云登录回调地址', N'XIAONUO_OAUTH_GITEE_REDIRECT_URI', N'http://127.0.0.1:82/oauth/callback/gitee', N'Y', N'Oauth码云登录回调地址', N'0', N'OAUTH', N'2020-07-29 11:08:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288358228593221633', N'前端项目地址', N'XIAONUO_WEB_URL', N'http://localhost:8080', N'Y', N'前端项目地址', N'0', N'DEFAULT', N'2020-07-29 14:18:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288358228593221634', N'支付宝支付跳转地址', N'XIAONUO_ALIPAY_RETURN_URL', N'http://localhost:8080/pay/index', N'Y', N'支付宝支付跳转地址', N'0', N'DEFAULT', N'2020-07-29 14:18:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1288358228593221635', N'是否开启多租户', N'XIAONUO_TENANT_OPEN', N'true', N'Y', N'是否开启多租户', N'0', N'DEFAULT', N'2020-09-03 17:45:58.0000000', N'1265476890672672808', N'2021-02-16 00:09:24.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_database_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_database_info]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_database_info]
GO

CREATE TABLE [dbo].[sys_database_info] (
  [id] bigint  NOT NULL,
  [db_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jdbc_driver] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jdbc_url] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_database_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库名称（英文名称）',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'db_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'jdbc的驱动类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'jdbc_driver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库连接的账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库连接密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'jdbc的url',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'jdbc_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注，摘要',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'remarks'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库信息表',
'SCHEMA', N'dbo',
'TABLE', N'sys_database_info'
GO


-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO [dbo].[sys_database_info]  VALUES (N'1380424104192102401', N'master', N'com.mysql.cj.jdbc.Driver', N'root', N'123456', N'jdbc:mysql://localhost:3306/xiaonuo-vue?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', N'主数据源，项目启动数据源！', N'2021-04-09 15:35:28.0000000')
GO


-- ----------------------------
-- Table structure for sys_demo_leave
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_demo_leave]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_demo_leave]
GO

CREATE TABLE [dbo].[sys_demo_leave] (
  [id] bigint  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [org_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] tinyint  NOT NULL,
  [begin_time] datetime2(7)  NOT NULL,
  [end_time] datetime2(7)  NOT NULL,
  [days] tinyint  NOT NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL,
  [flw_process_status] tinyint  NULL,
  [flw_start_user_id] bigint  NULL,
  [flw_start_user_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [flw_start_org_id] bigint  NULL,
  [flw_start_org_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_demo_leave] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门名',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'org_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假类型（字典 1事假 2病假 3婚假 4丧假 5产假 6其他）',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假开始时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'begin_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假结束时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假天数',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'days'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程状态（字典 0草稿 1审核中 2已退回 3已完成）',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'flw_process_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人id',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'flw_start_user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'flw_start_user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人所属机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'flw_start_org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人所属机构名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_demo_leave',
'COLUMN', N'flw_start_org_name'
GO


-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_data]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_data]
GO

CREATE TABLE [dbo].[sys_dict_data] (
  [id] bigint  NOT NULL,
  [type_id] bigint  NOT NULL,
  [value] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_data] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典类型id',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'type_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统字典值表',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_data'
GO


-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087357', N'1265216211667636234', N'男', N'1', N'100', N'男性', N'0', N'2020-04-01 10:23:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087358', N'1265216211667636234', N'女', N'2', N'100', N'女性', N'0', N'2020-04-01 10:23:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087359', N'1265216211667636234', N'未知', N'3', N'100', N'未知性别', N'0', N'2020-04-01 10:24:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087361', N'1265216211667636235', N'默认常量', N'DEFAULT', N'100', N'默认常量，都以XIAONUO_开头的', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087363', N'1265216211667636235', N'阿里云短信', N'ALIYUN_SMS', N'100', N'阿里云短信配置', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087364', N'1265216211667636235', N'腾讯云短信', N'TENCENT_SMS', N'100', N'腾讯云短信', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087365', N'1265216211667636235', N'邮件配置', N'EMAIL', N'100', N'邮箱配置', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087366', N'1265216211667636235', N'文件上传路径', N'FILE_PATH', N'100', N'文件上传路径', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216536659087367', N'1265216211667636235', N'Oauth配置', N'OAUTH', N'100', N'Oauth配置', N'0', N'2020-04-14 23:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216617500102656', N'1265216211667636226', N'正常', N'0', N'100', N'正常', N'0', N'2020-05-26 17:41:44.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216617500102657', N'1265216211667636226', N'停用', N'1', N'100', N'停用', N'0', N'2020-05-26 17:42:03.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265216938389524482', N'1265216211667636226', N'删除', N'2', N'100', N'删除', N'0', N'2020-05-26 17:43:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265217669028892673', N'1265217074079453185', N'否', N'N', N'100', N'否', N'0', N'2020-05-26 17:46:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265217706584690689', N'1265217074079453185', N'是', N'Y', N'100', N'是', N'0', N'2020-05-26 17:46:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265220776437731330', N'1265217846770913282', N'登录', N'1', N'100', N'登录', N'0', N'2020-05-26 17:58:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265220806070489090', N'1265217846770913282', N'登出', N'2', N'100', N'登出', N'0', N'2020-05-26 17:58:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265221129564573697', N'1265221049302372354', N'目录', N'0', N'100', N'目录', N'0', N'2020-05-26 17:59:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265221163119005697', N'1265221049302372354', N'菜单', N'1', N'100', N'菜单', N'0', N'2020-05-26 18:00:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265221188091891713', N'1265221049302372354', N'按钮', N'2', N'100', N'按钮', N'0', N'2020-05-26 18:00:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466389204967426', N'1265466149622128641', N'未发送', N'0', N'100', N'未发送', N'0', N'2020-05-27 10:14:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466432670539778', N'1265466149622128641', N'发送成功', N'1', N'100', N'发送成功', N'0', N'2020-05-27 10:14:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466486097584130', N'1265466149622128641', N'发送失败', N'2', N'100', N'发送失败', N'0', N'2020-05-27 10:14:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466530477514754', N'1265466149622128641', N'失效', N'3', N'100', N'失效', N'0', N'2020-05-27 10:15:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466835009150978', N'1265466752209395713', N'无', N'0', N'100', N'无', N'0', N'2020-05-27 10:16:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466874758569986', N'1265466752209395713', N'组件', N'1', N'100', N'组件', N'0', N'2020-05-27 10:16:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466925476093953', N'1265466752209395713', N'内链', N'2', N'100', N'内链', N'0', N'2020-05-27 10:16:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265466962209808385', N'1265466752209395713', N'外链', N'3', N'100', N'外链', N'0', N'2020-05-27 10:16:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467428423475202', N'1265467337566461954', N'系统权重', N'1', N'100', N'系统权重', N'0', N'2020-05-27 10:18:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467503090475009', N'1265467337566461954', N'业务权重', N'2', N'100', N'业务权重', N'0', N'2020-05-27 10:18:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467709110493186', N'1265467629167058946', N'事假', N'1', N'100', N'事假', N'0', N'2020-05-27 10:19:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467745013735426', N'1265467629167058946', N'病假', N'2', N'100', N'病假', N'0', N'2020-05-27 10:19:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467785253888001', N'1265467629167058946', N'婚假', N'3', N'100', N'婚假', N'0', N'2020-05-27 10:20:06.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467823426248706', N'1265467629167058946', N'丧假', N'4', N'100', N'丧假', N'0', N'2020-05-27 10:20:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467855781109762', N'1265467629167058946', N'产假', N'5', N'100', N'产假', N'0', N'2020-05-27 10:20:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265467895782187010', N'1265467629167058946', N'其他', N'6', N'100', N'其他', N'0', N'2020-05-27 10:20:32.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468138431062018', N'1265468028632571905', N'全部数据', N'1', N'100', N'全部数据', N'0', N'2020-05-27 10:21:30.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468194928336897', N'1265468028632571905', N'本部门及以下数据', N'2', N'100', N'本部门及以下数据', N'0', N'2020-05-27 10:21:44.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468241992622082', N'1265468028632571905', N'本部门数据', N'3', N'100', N'本部门数据', N'0', N'2020-05-27 10:21:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468273634451457', N'1265468028632571905', N'仅本人数据', N'4', N'100', N'仅本人数据', N'0', N'2020-05-27 10:22:02.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468302046666753', N'1265468028632571905', N'自定义数据', N'5', N'100', N'自定义数据', N'0', N'2020-05-27 10:22:09.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468508100239362', N'1265468437904367618', N'app', N'1', N'100', N'app', N'0', N'2020-05-27 10:22:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468543433056258', N'1265468437904367618', N'pc', N'2', N'100', N'pc', N'0', N'2020-05-27 10:23:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468576874242050', N'1265468437904367618', N'其他', N'3', N'100', N'其他', N'0', N'2020-05-27 10:23:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468839764828161', N'1265468761230680066', N'Integer', N'1', N'100', N'Integer', N'0', N'2020-05-27 10:24:17.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468871641538562', N'1265468761230680066', N'String', N'2', N'100', N'String', N'0', N'2020-05-27 10:24:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468898896125954', N'1265468761230680066', N'Long', N'3', N'100', N'Long', N'0', N'2020-05-27 10:24:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468922275176450', N'1265468761230680066', N'Double', N'4', N'100', N'Double', N'0', N'2020-05-27 10:24:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468946648276993', N'1265468761230680066', N'Boolean', N'5', N'100', N'Boolean', N'0', N'2020-05-27 10:24:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468970450952193', N'1265468761230680066', N'Date', N'6', N'100', N'Date', N'0', N'2020-05-27 10:24:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265468970450952194', N'1265468761230680066', N'List', N'7', N'100', N'List', N'0', N'2020-05-27 10:24:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469305756196865', N'1265469198583341057', N'流程脚本', N'1', N'100', N'流程脚本', N'0', N'2020-05-27 10:26:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469330859106306', N'1265469198583341057', N'系统脚本', N'2', N'100', N'系统脚本', N'0', N'2020-05-27 10:26:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469526330449922', N'1265469441454514178', N'groovy', N'1', N'100', N'groovy', N'0', N'2020-05-27 10:27:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469753078718464', N'1265469702042427393', N'启动', N'1', N'100', N'启动', N'0', N'2020-05-27 10:30:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469753078718465', N'1265469702042427393', N'全局', N'2', N'100', N'全局', N'0', N'2020-05-27 10:27:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265469779460890626', N'1265469702042427393', N'节点', N'3', N'100', N'节点', N'0', N'2020-05-27 10:28:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470046877130753', N'1265469962873610241', N'流程启动', N'PROCESS_STARTED', N'100', N'流程启动', N'0', N'2020-05-27 10:29:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470074517594113', N'1265469962873610241', N'流程完成', N'PROCESS_COMPLETED', N'100', N'流程完成', N'0', N'2020-05-27 10:29:12.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470103152107521', N'1265469962873610241', N'流程取消', N'PROCESS_CANCELLED', N'100', N'流程取消', N'0', N'2020-05-27 10:29:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470125725851649', N'1265469962873610241', N'活动开始', N'ACTIVITY_STARTED', N'100', N'活动开始', N'0', N'2020-05-27 10:29:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470153416646657', N'1265469962873610241', N'活动完成', N'ACTIVITY_COMPLETED', N'100', N'活动完成', N'0', N'2020-05-27 10:29:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470179165478913', N'1265469962873610241', N'活动取消', N'ACTIVITY_CANCELLED', N'100', N'活动取消', N'0', N'2020-05-27 10:29:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470207363784705', N'1265469962873610241', N'任务分配', N'TASK_ASSIGNED', N'100', N'任务分配', N'0', N'2020-05-27 10:29:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470236853936130', N'1265469962873610241', N'任务创建', N'TASK_CREATED', N'100', N'任务创建', N'0', N'2020-05-27 10:29:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470266780295170', N'1265469962873610241', N'任务完成', N'TASK_COMPLETED', N'100', N'任务完成', N'0', N'2020-05-27 10:29:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470296446607361', N'1265469962873610241', N'连接线', N'SEQUENCEFLOW_TAKEN', N'100', N'连接线', N'0', N'2020-05-27 10:30:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470296446607362', N'1265469962873610242', N'全局', N'1', N'100', N'全局', N'0', N'2020-05-27 10:30:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470296446607363', N'1265469962873610242', N'节点', N'2', N'100', N'节点', N'0', N'2020-05-27 10:30:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470526197997569', N'1265470456631271426', N'草稿', N'0', N'100', N'草稿', N'0', N'2020-05-27 10:30:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470552823439361', N'1265470456631271426', N'审核中', N'1', N'100', N'审核中', N'0', N'2020-05-27 10:31:06.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470575615287297', N'1265470456631271426', N'已退回', N'2', N'100', N'已退回', N'0', N'2020-05-27 10:31:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1265470607588466690', N'1265470456631271426', N'已完成', N'3', N'100', N'已完成', N'0', N'2020-05-27 10:31:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617233011335170', N'1275617093517172738', N'其它', N'0', N'100', N'其它', N'0', N'2020-06-24 10:30:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617295355469826', N'1275617093517172738', N'增加', N'1', N'100', N'增加', N'0', N'2020-06-24 10:30:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617348610547714', N'1275617093517172738', N'删除', N'2', N'100', N'删除', N'0', N'2020-06-24 10:30:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617395515449346', N'1275617093517172738', N'编辑', N'3', N'100', N'编辑', N'0', N'2020-06-24 10:31:02.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617433612312577', N'1275617093517172738', N'更新', N'4', N'100', N'更新', N'0', N'2020-06-24 10:31:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617472707420161', N'1275617093517172738', N'查询', N'5', N'100', N'查询', N'0', N'2020-06-24 10:31:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617502973517826', N'1275617093517172738', N'详情', N'6', N'100', N'详情', N'0', N'2020-06-24 10:31:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617536959963137', N'1275617093517172738', N'树', N'7', N'100', N'树', N'0', N'2020-06-24 10:31:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617619524837377', N'1275617093517172738', N'导入', N'8', N'100', N'导入', N'0', N'2020-06-24 10:31:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617651816783873', N'1275617093517172738', N'导出', N'9', N'100', N'导出', N'0', N'2020-06-24 10:32:03.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617683475390465', N'1275617093517172738', N'授权', N'10', N'100', N'授权', N'0', N'2020-06-24 10:32:10.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617709928865793', N'1275617093517172738', N'强退', N'11', N'100', N'强退', N'0', N'2020-06-24 10:32:17.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617739091861505', N'1275617093517172738', N'清空', N'12', N'100', N'清空', N'0', N'2020-06-24 10:32:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1275617788601425921', N'1275617093517172738', N'修改状态', N'13', N'100', N'修改状态', N'0', N'2020-06-24 10:32:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1277774590944317441', N'1277774529430654977', N'阿里云', N'1', N'100', N'阿里云', N'0', N'2020-06-30 09:22:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1277774666055913474', N'1277774529430654977', N'腾讯云', N'2', N'100', N'腾讯云', N'0', N'2020-06-30 09:23:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1277774695168577538', N'1277774529430654977', N'minio', N'3', N'100', N'minio', N'0', N'2020-06-30 09:23:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1277774726835572737', N'1277774529430654977', N'本地', N'4', N'100', N'本地', N'0', N'2020-06-30 09:23:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278607123583868929', N'1278606951432855553', N'运行', N'1', N'100', N'运行', N'0', N'2020-07-02 16:31:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278607162943217666', N'1278606951432855553', N'停止', N'2', N'100', N'停止', N'0', N'2020-07-02 16:31:18.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939265862004738', N'1278911800547147777', N'通知', N'1', N'100', N'通知', N'0', N'2020-07-03 14:30:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939319922388994', N'1278911800547147777', N'公告', N'2', N'100', N'公告', N'0', N'2020-07-03 14:31:10.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939399001796609', N'1278911952657776642', N'草稿', N'0', N'100', N'草稿', N'0', N'2020-07-03 14:31:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939432686252034', N'1278911952657776642', N'发布', N'1', N'100', N'发布', N'0', N'2020-07-03 14:31:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939458804183041', N'1278911952657776642', N'撤回', N'2', N'100', N'撤回', N'0', N'2020-07-03 14:31:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278939485878415362', N'1278911952657776642', N'删除', N'3', N'100', N'删除', N'0', N'2020-07-03 14:31:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278992343223025665', N'1278992276965605377', N'委托中', N'0', N'90', N'委托中', N'0', N'2020-07-03 18:01:52.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278992370066571266', N'1278992276965605377', N'委托结束', N'1', N'100', N'委托结束', N'0', N'2020-07-03 18:01:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1278992396788482050', N'1278992276965605377', N'未委托', N'2', N'100', N'未委托', N'0', N'2020-07-03 18:02:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291390260160299009', N'1291390159941599233', N'是', N'true', N'100', N'是', N'2', N'2020-08-06 23:06:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291390315437031426', N'1291390159941599233', N'否', N'false', N'100', N'否', N'2', N'2020-08-06 23:06:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291391148769738754', N'1291391077990858754', N'是', N'true', N'100', N'是', N'0', N'2020-08-06 23:10:17.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291391205719998465', N'1291391077990858754', N'否', N'false', N'100', N'否', N'0', N'2020-08-06 23:10:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291393684314587138', N'1291393441594408961', N'是', N'true', N'100', N'已结束', N'0', N'2020-08-06 23:20:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1291393766048989186', N'1291393441594408961', N'否', N'false', N'100', N'未结束', N'0', N'2020-08-06 23:20:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300767954291433474', N'1300767512828354562', N'Mysql', N'com.mysql.cj.jdbc.Driver', N'100', N'Mysql数据库驱动', N'0', N'2020-09-01 20:10:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768214854180866', N'1300767512828354562', N'Oracle', N'oracle.jdbc.OracleDriver', N'100', N'Oracle数据库驱动', N'0', N'2020-09-01 20:11:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196417', N'1300767512828354562', N'Sqlserver', N'com.microsoft.jdbc.sqlserver.SQLServerDriver', N'100', N'Sqlserver数据库', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196418', N'1300767512828354563', N'未支付', N'0', N'100', N'未支付', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196419', N'1300767512828354563', N'已支付', N'1', N'100', N'已支付', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196420', N'1300767512828354563', N'已退款', N'2', N'100', N'已退款', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196421', N'1300767512828354563', N'已关闭', N'3', N'100', N'已关闭', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1300768392747196422', N'1300767512828354563', N'已关闭有退款', N'4', N'100', N'已关闭有退款', N'0', N'2020-09-01 20:12:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1342451445578534913', N'1342451383595110402', N'下载压缩包', N'1', N'100', N'下载压缩包', N'0', N'2020-12-25 20:45:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1342451490893795329', N'1342451383595110402', N'生成到本项目', N'2', N'100', N'生成到本项目', N'0', N'2020-12-25 20:45:52.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1354106182690942978', N'1354106042974482433', N'自行开发', N'1', N'100', N'自行开发', N'0', N'2021-01-27 00:37:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1354106244473040897', N'1354106042974482433', N'在线设计', N'2', N'100', N'在线设计', N'0', N'2021-01-27 00:37:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358094655567454210', N'1358094419419750401', N'输入框', N'input', N'100', N'输入框', N'0', N'2021-02-07 00:46:13.0000000', N'1265476890672672808', N'2021-02-08 01:01:28.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358094740510498817', N'1358094419419750401', N'时间选择', N'datepicker', N'100', N'时间选择', N'0', N'2021-02-07 00:46:33.0000000', N'1265476890672672808', N'2021-02-08 01:04:07.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358094793149014017', N'1358094419419750401', N'下拉框', N'select', N'100', N'下拉框', N'0', N'2021-02-07 00:46:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358095496009506817', N'1358094419419750401', N'单选框', N'radio', N'100', N'单选框', N'0', N'2021-02-07 00:49:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358095673084633090', N'1358094419419750401', N'开关', N'switch', N'100', N'开关', N'2', N'2021-02-07 00:50:15.0000000', N'1265476890672672808', N'2021-02-11 19:07:18.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358458689433190402', N'1358457818733428737', N'等于', N'eq', N'1', N'等于', N'0', N'2021-02-08 00:52:45.0000000', N'1265476890672672808', N'2021-02-13 23:35:36.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358458785168179202', N'1358457818733428737', N'模糊', N'like', N'2', N'模糊', N'0', N'2021-02-08 00:53:08.0000000', N'1265476890672672808', N'2021-02-13 23:35:46.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358460475682406401', N'1358094419419750401', N'多选框', N'checkbox', N'100', N'多选框', N'0', N'2021-02-08 00:59:51.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358460819019743233', N'1358094419419750401', N'数字输入框', N'inputnumber', N'100', N'数字输入框', N'0', N'2021-02-08 01:01:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358470210267725826', N'1358470065111252994', N'Long', N'Long', N'100', N'Long', N'0', N'2021-02-08 01:38:32.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358470239351029762', N'1358470065111252994', N'String', N'String', N'100', N'String', N'0', N'2021-02-08 01:38:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358470265640927233', N'1358470065111252994', N'Date', N'Date', N'100', N'Date', N'0', N'2021-02-08 01:38:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358470300168437761', N'1358470065111252994', N'Integer', N'Integer', N'100', N'Integer', N'0', N'2021-02-08 01:38:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358470697377415169', N'1358470065111252994', N'boolean', N'boolean', N'100', N'boolean', N'0', N'2021-02-08 01:40:28.0000000', N'1265476890672672808', N'2021-02-08 01:40:47.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358471133434036226', N'1358470065111252994', N'int', N'int', N'100', N'int', N'0', N'2021-02-08 01:42:12.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358471188291338241', N'1358470065111252994', N'double', N'double', N'100', N'double', N'0', N'2021-02-08 01:42:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358756511688761346', N'1358457818733428737', N'大于', N'gt', N'3', N'大于', N'0', N'2021-02-08 20:36:12.0000000', N'1265476890672672808', N'2021-02-13 23:45:24.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358756547159990274', N'1358457818733428737', N'小于', N'lt', N'4', N'大于', N'0', N'2021-02-08 20:36:20.0000000', N'1265476890672672808', N'2021-02-13 23:45:29.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358756609990664193', N'1358457818733428737', N'不等于', N'ne', N'7', N'不等于', N'0', N'2021-02-08 20:36:35.0000000', N'1265476890672672808', N'2021-02-13 23:45:46.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358756685030957057', N'1358457818733428737', N'大于等于', N'ge', N'5', N'大于等于', N'0', N'2021-02-08 20:36:53.0000000', N'1265476890672672808', N'2021-02-13 23:45:35.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1358756800525312001', N'1358457818733428737', N'小于等于', N'le', N'6', N'小于等于', N'0', N'2021-02-08 20:37:20.0000000', N'1265476890672672808', N'2021-02-13 23:45:40.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1360529773814083586', N'1358094419419750401', N'文本域', N'textarea', N'100', N'文本域', N'0', N'2021-02-13 18:02:30.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_data]  VALUES (N'1360606105914732545', N'1358457818733428737', N'不为空', N'isNotNull', N'8', N'不为空', N'0', N'2021-02-13 23:05:49.0000000', N'1265476890672672808', N'2021-02-13 23:45:50.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_type]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_type]
GO

CREATE TABLE [dbo].[sys_dict_type] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_type] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统字典类型表',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_type'
GO


-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265216211667636226', N'通用状态', N'common_status', N'100', N'通用状态', N'0', N'2020-05-26 17:40:26.0000000', N'1265476890672672808', N'2020-06-08 11:31:47.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265216211667636234', N'性别', N'sex', N'100', N'性别字典', N'0', N'2020-04-01 10:12:30.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265216211667636235', N'常量的分类', N'consts_type', N'100', N'常量的分类，用于区别一组配置', N'0', N'2020-04-14 23:24:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265217074079453185', N'是否', N'yes_or_no', N'100', N'是否', N'0', N'2020-05-26 17:43:52.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265217846770913282', N'访问类型', N'vis_type', N'100', N'访问类型', N'0', N'2020-05-26 17:46:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265221049302372354', N'菜单类型', N'menu_type', N'100', N'菜单类型', N'0', N'2020-05-26 17:59:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265466149622128641', N'发送类型', N'send_type', N'100', N'发送类型', N'0', N'2020-05-27 10:13:36.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265466752209395713', N'打开方式', N'open_type', N'100', N'打开方式', N'0', N'2020-05-27 10:16:00.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265467337566461954', N'菜单权重', N'menu_weight', N'100', N'菜单权重', N'0', N'2020-05-27 10:18:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265467629167058946', N'请假类型', N'leave_type', N'100', N'请假类型', N'0', N'2020-05-27 10:19:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265468028632571905', N'数据范围类型', N'data_scope_type', N'100', N'数据范围类型', N'0', N'2020-05-27 10:21:04.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265468437904367618', N'短信发送来源', N'sms_send_source', N'100', N'短信发送来源', N'0', N'2020-05-27 10:22:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265468761230680066', N'字段类型', N'filed_type', N'100', N'字段类型', N'0', N'2020-05-27 10:23:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265469198583341057', N'脚本类型', N'script_type', N'100', N'脚本类型', N'0', N'2020-05-27 10:25:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265469441454514178', N'脚本语言类型', N'script_language_type', N'100', N'脚本语言类型', N'0', N'2020-05-27 10:26:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265469702042427393', N'表单类型', N'form_type', N'100', N'表单类型', N'0', N'2020-05-27 10:27:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265469962873610241', N'事件类型', N'event_type', N'100', N'事件类型', N'0', N'2020-05-27 10:28:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265469962873610242', N'事件节点类型', N'event_node_type', N'100', N'事件节点类型', N'0', N'2020-05-27 10:28:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1265470456631271426', N'流程状态', N'process_status', N'100', N'流程状态', N'0', N'2020-05-27 10:30:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1275617093517172738', N'操作类型', N'op_type', N'100', N'操作类型', N'0', N'2020-06-24 10:29:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1277774529430654977', N'文件存储位置', N'file_storage_location', N'100', N'文件存储位置', N'0', N'2020-06-30 09:22:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1278606951432855553', N'运行状态', N'run_status', N'100', N'定时任务运行状态', N'0', N'2020-07-02 16:30:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1278911800547147777', N'通知公告类型', N'notice_type', N'100', N'通知公告类型', N'0', N'2020-07-03 12:41:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1278911952657776642', N'通知公告状态', N'notice_status', N'100', N'通知公告状态', N'0', N'2020-07-03 12:42:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1278992276965605377', N'委托状态', N'delegate_status', N'100', N'委托状态', N'0', N'2020-07-03 18:01:36.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1291390159941599233', N'是否boolean', N'yes_true_false', N'100', N'是否boolean', N'2', N'2020-08-06 23:06:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1291391077990858754', N'流程是否挂起', N'suspended_status', N'100', N'流程是否挂起', N'0', N'2020-08-06 23:10:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1291393441594408961', N'是否结束', N'ended_status', N'100', N'是否结束', N'0', N'2020-08-06 23:19:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1300767512828354562', N'JDBC驱动类型', N'jdbc_driver', N'100', N'JDBC驱动类型', N'0', N'2020-09-01 20:08:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1300767512828354563', N'支付宝交易状态', N'alipay_trade_status', N'100', N'支付宝交易状态', N'0', N'2020-09-23 10:36:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1342451383595110402', N'代码生成方式', N'code_gen_create_type', N'100', N'代码生成方式', N'0', N'2020-12-25 20:45:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1354106042974482433', N'流程表单类型', N'form_resource_type', N'100', N'流程表单类型', N'0', N'2021-01-27 00:36:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1358094419419750401', N'代码生成作用类型', N'code_gen_effect_type', N'100', N'代码生成作用类型', N'0', N'2021-02-07 00:45:16.0000000', N'1265476890672672808', N'2021-02-08 00:47:48.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1358457818733428737', N'代码生成查询类型', N'code_gen_query_type', N'100', N'代码生成查询类型', N'0', N'2021-02-08 00:49:18.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1358470065111252994', N'代码生成java类型', N'code_gen_java_type', N'100', N'代码生成java类型', N'0', N'2021-02-08 01:37:57.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_emp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_emp]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_emp]
GO

CREATE TABLE [dbo].[sys_emp] (
  [id] bigint  NOT NULL,
  [job_num] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [org_id] bigint  NOT NULL,
  [org_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_emp] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工号',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp',
'COLUMN', N'job_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp',
'COLUMN', N'org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属机构名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp',
'COLUMN', N'org_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工表',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp'
GO


-- ----------------------------
-- Records of sys_emp
-- ----------------------------
INSERT INTO [dbo].[sys_emp]  VALUES (N'1275735541155614721', N'102', N'1265476890672672769', N'华夏集团北京分公司')
GO

INSERT INTO [dbo].[sys_emp]  VALUES (N'1280700700074041345', N'110', N'1265476890672672771', N'研发部')
GO

INSERT INTO [dbo].[sys_emp]  VALUES (N'1280709549107552257', N'100', N'1265476890672672770', N'华夏集团成都分公司')
GO


-- ----------------------------
-- Table structure for sys_emp_ext_org_pos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_emp_ext_org_pos]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_emp_ext_org_pos]
GO

CREATE TABLE [dbo].[sys_emp_ext_org_pos] (
  [id] bigint  NOT NULL,
  [emp_id] bigint  NOT NULL,
  [org_id] bigint  NOT NULL,
  [pos_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_emp_ext_org_pos] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_ext_org_pos',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_ext_org_pos',
'COLUMN', N'emp_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_ext_org_pos',
'COLUMN', N'org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_ext_org_pos',
'COLUMN', N'pos_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工附属机构岗位表',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_ext_org_pos'
GO


-- ----------------------------
-- Table structure for sys_emp_pos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_emp_pos]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_emp_pos]
GO

CREATE TABLE [dbo].[sys_emp_pos] (
  [id] bigint  NOT NULL,
  [emp_id] bigint  NOT NULL,
  [pos_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_emp_pos] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_pos',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_pos',
'COLUMN', N'emp_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职位id',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_pos',
'COLUMN', N'pos_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工职位关联表',
'SCHEMA', N'dbo',
'TABLE', N'sys_emp_pos'
GO


-- ----------------------------
-- Records of sys_emp_pos
-- ----------------------------
INSERT INTO [dbo].[sys_emp_pos]  VALUES (N'1280710811995709441', N'1275735541155614721', N'1265476890672672787')
GO

INSERT INTO [dbo].[sys_emp_pos]  VALUES (N'1280710828479324161', N'1280700700074041345', N'1265476890672672790')
GO

INSERT INTO [dbo].[sys_emp_pos]  VALUES (N'1281042262003867649', N'1280709549107552257', N'1265476890672672787')
GO


-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_file_info]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_file_info]
GO

CREATE TABLE [dbo].[sys_file_info] (
  [id] bigint  NOT NULL,
  [file_location] tinyint  NOT NULL,
  [file_bucket] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_origin_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_suffix] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_size_kb] bigint  NULL,
  [file_size_info] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_object_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_path] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_file_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件仓库',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_bucket'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名称（上传时候的文件名）',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_origin_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件后缀',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_suffix'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小kb',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_size_kb'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小信息，计算后的',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_size_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存储到bucket的名称（文件唯一标识id）',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_object_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'存储路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'file_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件信息表',
'SCHEMA', N'dbo',
'TABLE', N'sys_file_info'
GO


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [id] bigint  NOT NULL,
  [pid] bigint  NOT NULL,
  [pids] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] tinyint  NOT NULL,
  [icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [router] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [component] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [permission] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [application] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [open_type] tinyint  NOT NULL,
  [visible] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [link] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [redirect] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [weight] tinyint  NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'pid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ids',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'pids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型（字典 0目录 1菜单 2按钮）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路由地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'router'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'component'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'permission'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用分类（应用编码）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'application'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打开方式（字典 0无 1组件 2内链 3外链）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'open_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可见（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'visible'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'link'
GO

EXEC sp_addextendedproperty
'MS_Description', N'重定向地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'redirect'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权重（字典 1系统权重 2业务权重）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'weight'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统菜单表',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu'
GO


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255311', N'0', N'[0],', N'主控面板', N'system_index', N'0', N'home', N'/', N'RouteView', NULL, N'system', N'0', N'Y', NULL, N'/analysis', N'1', N'1', NULL, N'0', N'2020-05-25 02:19:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255321', N'1264622039642255311', N'[0],[1264622039642255311],', N'分析页', N'system_index_dashboard', N'1', NULL, N'analysis', N'system/dashboard/Analysis', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-25 02:21:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255331', N'1264622039642255311', N'[0],[1264622039642255311],', N'工作台', N'system_index_workplace', N'1', NULL, N'workplace', N'system/dashboard/Workplace', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-05-25 02:23:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255341', N'0', N'[0],', N'组织架构', N'sys_mgr', N'0', N'team', N'/sys', N'PageView', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-03-27 15:58:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255351', N'1264622039642255341', N'[0],[1264622039642255341],', N'用户管理', N'sys_user_mgr', N'1', NULL, N'/mgr_user', N'system/user/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'3', NULL, N'0', N'2020-03-27 16:10:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255361', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户查询', N'sys_user_mgr_page', N'2', NULL, NULL, NULL, N'sysUser:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:36:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255371', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户编辑', N'sys_user_mgr_edit', N'2', NULL, NULL, NULL, N'sysUser:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:20:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255381', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户增加', N'sys_user_mgr_add', N'2', NULL, NULL, NULL, N'sysUser:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:37:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255391', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户删除', N'sys_user_mgr_delete', N'2', NULL, NULL, NULL, N'sysUser:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:37:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255401', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户详情', N'sys_user_mgr_detail', N'2', NULL, NULL, NULL, N'sysUser:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:38:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255411', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户导出', N'sys_user_mgr_export', N'2', NULL, NULL, NULL, N'sysUser:export', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:21:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255421', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户选择器', N'sys_user_mgr_selector', N'2', NULL, NULL, NULL, N'sysUser:selector', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-03 13:30:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255431', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户授权角色', N'sys_user_mgr_grant_role', N'2', NULL, NULL, NULL, N'sysUser:grantRole', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:22:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255441', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户拥有角色', N'sys_user_mgr_own_role', N'2', NULL, NULL, NULL, N'sysUser:ownRole', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:27:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255451', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户授权数据', N'sys_user_mgr_grant_data', N'2', NULL, NULL, NULL, N'sysUser:grantData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:22:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255461', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户拥有数据', N'sys_user_mgr_own_data', N'2', NULL, NULL, NULL, N'sysUser:ownData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:27:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255471', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户更新信息', N'sys_user_mgr_update_info', N'2', NULL, NULL, NULL, N'sysUser:updateInfo', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 16:19:32.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255481', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改密码', N'sys_user_mgr_update_pwd', N'2', NULL, NULL, NULL, N'sysUser:updatePwd', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 16:20:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255491', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改状态', N'sys_user_mgr_change_status', N'2', NULL, NULL, NULL, N'sysUser:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:13:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255501', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户修改头像', N'sys_user_mgr_update_avatar', N'2', NULL, NULL, NULL, N'sysUser:updateAvatar', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:21:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255511', N'1264622039642255351', N'[0],[1264622039642255341],[1264622039642255351],', N'用户重置密码', N'sys_user_mgr_reset_pwd', N'2', NULL, NULL, NULL, N'sysUser:resetPwd', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:01:51.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255521', N'1264622039642255341', N'[0],[1264622039642255341],', N'机构管理', N'sys_org_mgr', N'1', NULL, N'/org', N'system/org/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'4', NULL, N'0', N'2020-03-27 17:15:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255531', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构查询', N'sys_org_mgr_page', N'2', NULL, NULL, NULL, N'sysOrg:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:17:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255541', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构列表', N'sys_org_mgr_list', N'2', NULL, NULL, NULL, N'sysOrg:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:54:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255551', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构增加', N'sys_org_mgr_add', N'2', NULL, NULL, NULL, N'sysOrg:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:19:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255561', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构编辑', N'sys_org_mgr_edit', N'2', NULL, NULL, NULL, N'sysOrg:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:54:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255571', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构删除', N'sys_org_mgr_delete', N'2', NULL, NULL, NULL, N'sysOrg:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:20:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255581', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构详情', N'sys_org_mgr_detail', N'2', NULL, NULL, NULL, N'sysOrg:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:21:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255591', N'1264622039642255521', N'[0],[1264622039642255341],[1264622039642255521]', N'机构树', N'sys_org_mgr_tree', N'2', NULL, NULL, NULL, N'sysOrg:tree', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:21:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255601', N'1264622039642255341', N'[0],[1264622039642255341],', N'职位管理', N'sys_pos_mgr', N'1', NULL, N'/pos', N'system/pos/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'5', NULL, N'0', N'2020-03-27 18:38:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255611', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位查询', N'sys_pos_mgr_page', N'2', NULL, NULL, NULL, N'sysPos:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:41:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255621', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位列表', N'sys_pos_mgr_list', N'2', NULL, NULL, NULL, N'sysPos:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:55:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255631', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位增加', N'sys_pos_mgr_add', N'2', NULL, NULL, NULL, N'sysPos:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:42:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255641', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位编辑', N'sys_pos_mgr_edit', N'2', NULL, NULL, NULL, N'sysPos:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:56:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255651', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位删除', N'sys_pos_mgr_delete', N'2', NULL, NULL, NULL, N'sysPos:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:42:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255661', N'1264622039642255601', N'[0],[1264622039642255341],[1264622039642255601],', N'职位详情', N'sys_pos_mgr_detail', N'2', NULL, NULL, NULL, N'sysPos:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:43:00.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255671', N'0', N'[0],', N'权限管理', N'auth_manager', N'0', N'safety-certificate', N'/auth', N'PageView', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'3', NULL, N'0', N'2020-07-15 15:51:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255681', N'1264622039642255671', N'[0],[1264622039642255671],', N'应用管理', N'sys_app_mgr', N'1', NULL, N'/app', N'system/app/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'6', NULL, N'0', N'2020-03-27 16:40:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255691', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用查询', N'sys_app_mgr_page', N'2', NULL, NULL, NULL, N'sysApp:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:41:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255701', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用列表', N'sys_app_mgr_list', N'2', NULL, NULL, NULL, N'sysApp:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 10:04:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255711', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用增加', N'sys_app_mgr_add', N'2', NULL, NULL, NULL, N'sysApp:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 16:44:10.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255721', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用编辑', N'sys_app_mgr_edit', N'2', NULL, NULL, NULL, N'sysApp:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 10:04:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255731', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用删除', N'sys_app_mgr_delete', N'2', NULL, NULL, NULL, N'sysApp:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255741', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'应用详情', N'sys_app_mgr_detail', N'2', NULL, NULL, NULL, N'sysApp:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255751', N'1264622039642255681', N'[0],[1264622039642255671],[1264622039642255681],', N'设为默认应用', N'sys_app_mgr_set_as_default', N'2', NULL, NULL, NULL, N'sysApp:setAsDefault', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 17:14:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255761', N'1264622039642255671', N'[0],[1264622039642255671],', N'菜单管理', N'sys_menu_mgr', N'1', NULL, N'/menu', N'system/menu/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'7', NULL, N'0', N'2020-03-27 18:44:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255771', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单列表', N'sys_menu_mgr_list', N'2', NULL, NULL, NULL, N'sysMenu:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:45:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255781', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单增加', N'sys_menu_mgr_add', N'2', NULL, NULL, NULL, N'sysMenu:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:45:37.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255791', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单编辑', N'sys_menu_mgr_edit', N'2', NULL, NULL, NULL, N'sysMenu:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:52:00.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255801', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单删除', N'sys_menu_mgr_delete', N'2', NULL, NULL, NULL, N'sysMenu:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:46:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255811', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单详情', N'sys_menu_mgr_detail', N'2', NULL, NULL, NULL, N'sysMenu:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:46:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255821', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单授权树', N'sys_menu_mgr_grant_tree', N'2', NULL, NULL, NULL, N'sysMenu:treeForGrant', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-03 09:50:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255831', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单树', N'sys_menu_mgr_tree', N'2', NULL, NULL, NULL, N'sysMenu:tree', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-27 18:47:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255841', N'1264622039642255761', N'[0],[1264622039642255671],[1264622039642255761],', N'菜单切换', N'sys_menu_mgr_change', N'2', NULL, NULL, NULL, N'sysMenu:change', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-03 09:51:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255851', N'1264622039642255671', N'[0],[1264622039642255671],', N'角色管理', N'sys_role_mgr', N'1', NULL, N'/role', N'system/role/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'8', NULL, N'0', N'2020-03-28 16:01:09.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255861', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色查询', N'sys_role_mgr_page', N'2', NULL, NULL, NULL, N'sysRole:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:09.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255871', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色增加', N'sys_role_mgr_add', N'2', NULL, NULL, NULL, N'sysRole:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255881', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色编辑', N'sys_role_mgr_edit', N'2', NULL, NULL, NULL, N'sysRole:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:57:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255891', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色删除', N'sys_role_mgr_delete', N'2', NULL, NULL, NULL, N'sysRole:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:02:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255901', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色详情', N'sys_role_mgr_detail', N'2', NULL, NULL, NULL, N'sysRole:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-03-28 16:03:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255911', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色下拉', N'sys_role_mgr_drop_down', N'2', NULL, NULL, NULL, N'sysRole:dropDown', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:45:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255921', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色授权菜单', N'sys_role_mgr_grant_menu', N'2', NULL, NULL, NULL, N'sysRole:grantMenu', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:16:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255931', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色拥有菜单', N'sys_role_mgr_own_menu', N'2', NULL, NULL, NULL, N'sysRole:ownMenu', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:21:54.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255941', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色授权数据', N'sys_role_mgr_grant_data', N'2', NULL, NULL, NULL, N'sysRole:grantData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 09:16:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255951', N'1264622039642255851', N'[0],[1264622039642255671],[1264622039642255851],', N'角色拥有数据', N'sys_role_mgr_own_data', N'2', NULL, NULL, NULL, N'sysRole:ownData', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 14:23:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255961', N'0', N'[0],', N'开发管理', N'system_tools', N'0', N'euro', N'/tools', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'4', NULL, N'0', N'2020-05-25 02:10:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255971', N'1264622039642255961', N'[0],[1264622039642255961],', N'系统配置', N'system_tools_config', N'1', NULL, N'/config', N'system/config/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'9', NULL, N'0', N'2020-05-25 02:12:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255981', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置查询', N'system_tools_config_page', N'2', NULL, NULL, NULL, N'sysConfig:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642255991', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置列表', N'system_tools_config_list', N'2', NULL, NULL, NULL, N'sysConfig:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256001', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置增加', N'system_tools_config_add', N'2', NULL, NULL, NULL, N'sysConfig:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256011', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置编辑', N'system_tools_config_edit', N'2', NULL, NULL, NULL, N'sysConfig:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256021', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置删除', N'system_tools_config_delete', N'2', NULL, NULL, NULL, N'sysConfig:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:03:44.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256031', N'1264622039642255971', N'[0],[1264622039642255961],[1264622039642255971],', N'配置详情', N'system_tools_config_detail', N'2', NULL, NULL, NULL, N'sysConfig:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 17:02:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256041', N'1264622039642255961', N'[0],[1264622039642255961],', N'邮件发送', N'sys_email_mgr', N'1', NULL, N'/email', N'system/email/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'10', NULL, N'0', N'2020-07-02 11:44:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256051', N'1264622039642256041', N'[0],[1264622039642255961],[1264622039642256041],', N'发送文本邮件', N'sys_email_mgr_send_email', N'2', NULL, NULL, NULL, N'email:sendEmail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:45:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256061', N'1264622039642256041', N'[0],[1264622039642255961],[1264622039642256041],', N'发送html邮件', N'sys_email_mgr_send_email_html', N'2', NULL, NULL, NULL, N'email:sendEmailHtml', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 11:45:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256071', N'1264622039642255961', N'[0],[1264622039642255961],', N'短信管理', N'sys_sms_mgr', N'1', NULL, N'/sms', N'system/sms/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'11', NULL, N'0', N'2020-07-02 12:00:12.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256081', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'短信发送查询', N'sys_sms_mgr_page', N'2', NULL, NULL, NULL, N'sms:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:16:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256091', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'发送验证码短信', N'sys_sms_mgr_send_login_message', N'2', NULL, NULL, NULL, N'sms:sendLoginMessage', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:02:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256101', N'1264622039642256071', N'[0],[1264622039642255961],[1264622039642256071],', N'验证短信验证码', N'sys_sms_mgr_validate_message', N'2', NULL, NULL, NULL, N'sms:validateMessage', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 12:02:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256111', N'1264622039642255961', N'[0],[1264622039642255961],', N'字典管理', N'sys_dict_mgr', N'1', NULL, N'/dict', N'system/dict/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'12', NULL, N'0', N'2020-04-01 11:17:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256121', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型查询', N'sys_dict_mgr_dict_type_page', N'2', NULL, NULL, NULL, N'sysDictType:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:20:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256131', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型列表', N'sys_dict_mgr_dict_type_list', N'2', NULL, NULL, NULL, N'sysDictType:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-29 15:12:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256141', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型增加', N'sys_dict_mgr_dict_type_add', N'2', NULL, NULL, NULL, N'sysDictType:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:19:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256151', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型删除', N'sys_dict_mgr_dict_type_delete', N'2', NULL, NULL, NULL, N'sysDictType:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:21:30.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256161', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型编辑', N'sys_dict_mgr_dict_type_edit', N'2', NULL, NULL, NULL, N'sysDictType:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:21:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256171', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型详情', N'sys_dict_mgr_dict_type_detail', N'2', NULL, NULL, NULL, N'sysDictType:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:06.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256181', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型下拉', N'sys_dict_mgr_dict_type_drop_down', N'2', NULL, NULL, NULL, N'sysDictType:dropDown', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256191', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典类型修改状态', N'sys_dict_mgr_dict_type_change_status', N'2', NULL, NULL, NULL, N'sysDictType:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:15:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256201', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值查询', N'sys_dict_mgr_dict_page', N'2', NULL, NULL, NULL, N'sysDictData:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:23:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256211', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值列表', N'sys_dict_mgr_dict_list', N'2', NULL, NULL, NULL, N'sysDictData:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256221', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值增加', N'sys_dict_mgr_dict_add', N'2', NULL, NULL, NULL, N'sysDictData:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:22:51.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256231', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值删除', N'sys_dict_mgr_dict_delete', N'2', NULL, NULL, NULL, N'sysDictData:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:23:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256241', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值编辑', N'sys_dict_mgr_dict_edit', N'2', NULL, NULL, NULL, N'sysDictData:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256251', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值详情', N'sys_dict_mgr_dict_detail', N'2', NULL, NULL, NULL, N'sysDictData:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-04-01 11:24:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256261', N'1264622039642256111', N'[0],[1264622039642255961],[1264622039642256111],', N'字典值修改状态', N'sys_dict_mgr_dict_change_status', N'2', NULL, NULL, NULL, N'sysDictData:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-23 11:17:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256271', N'1264622039642255961', N'[0],[1264622039642255961],', N'接口文档', N'sys_swagger_mgr', N'1', NULL, N'/swagger', N'Iframe', NULL, N'system', N'2', N'Y', N'http://localhost:82/doc.html', NULL, N'1', N'13', NULL, N'0', N'2020-07-02 12:16:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256281', N'0', N'[0],', N'日志管理', N'sys_log_mgr', N'0', N'read', N'/log', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'5', NULL, N'0', N'2020-04-01 09:25:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256291', N'1264622039642256281', N'[0],[1264622039642256281],', N'访问日志', N'sys_log_mgr_vis_log', N'1', NULL, N'/vislog', N'system/log/vislog/index', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'14', NULL, N'0', N'2020-04-01 09:26:40.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256301', N'1264622039642256291', N'[0],[1264622039642256281],[1264622039642256291],', N'访问日志查询', N'sys_log_mgr_vis_log_page', N'2', NULL, NULL, NULL, N'sysVisLog:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:55:51.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256311', N'1264622039642256291', N'[0],[1264622039642256281],[1264622039642256291],', N'访问日志清空', N'sys_log_mgr_vis_log_delete', N'2', NULL, NULL, NULL, N'sysVisLog:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:56:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256321', N'1264622039642256281', N'[0],[1264622039642256281],', N'操作日志', N'sys_log_mgr_op_log', N'1', NULL, N'/oplog', N'system/log/oplog/index', NULL, N'system', N'0', N'Y', NULL, NULL, N'1', N'15', NULL, N'0', N'2020-04-01 09:26:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256331', N'1264622039642256321', N'[0],[1264622039642256281],[1264622039642256321],', N'操作日志查询', N'sys_log_mgr_op_log_page', N'2', NULL, NULL, NULL, N'sysOpLog:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:57:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256341', N'1264622039642256321', N'[0],[1264622039642256281],[1264622039642256321],', N'操作日志清空', N'sys_log_mgr_op_log_delete', N'2', NULL, NULL, NULL, N'sysOpLog:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 09:58:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256351', N'0', N'[0],', N'系统监控', N'sys_monitor_mgr', N'0', N'deployment-unit', N'/monitor', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'6', NULL, N'0', N'2020-06-05 16:00:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256361', N'1264622039642256351', N'[0],[1264622039642256351],', N'服务监控', N'sys_monitor_mgr_machine_monitor', N'1', NULL, N'/machine', N'system/machine/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'16', NULL, N'0', N'2020-06-05 16:02:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256371', N'1264622039642256361', N'[0],[1264622039642256351],[1264622039642256361],', N'服务监控查询', N'sys_monitor_mgr_machine_monitor_query', N'2', NULL, NULL, NULL, N'sysMachine:query', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:05:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256381', N'1264622039642256351', N'[0],[1264622039642256351],', N'在线用户', N'sys_monitor_mgr_online_user', N'1', NULL, N'/onlineUser', N'system/onlineUser/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'17', NULL, N'0', N'2020-06-05 16:01:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256391', N'1264622039642256381', N'[0],[1264622039642256351],[1264622039642256381],', N'在线用户列表', N'sys_monitor_mgr_online_user_list', N'2', NULL, NULL, NULL, N'sysOnlineUser:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:03:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256401', N'1264622039642256381', N'[0],[1264622039642256351],[1264622039642256381],', N'在线用户强退', N'sys_monitor_mgr_online_user_force_exist', N'2', NULL, NULL, NULL, N'sysOnlineUser:forceExist', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-05 16:04:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256411', N'1264622039642256351', N'[0],[1264622039642256351],', N'数据监控', N'sys_monitor_mgr_druid', N'1', NULL, N'/druid', N'Iframe', NULL, N'system', N'2', N'Y', N'http://localhost:82/druid/login.html', NULL, N'1', N'18', NULL, N'0', N'2020-06-28 16:15:07.0000000', N'1265476890672672808', N'2020-09-13 09:39:10.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256421', N'0', N'[0],', N'通知公告', N'sys_notice', N'0', N'sound', N'/notice', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'7', NULL, N'0', N'2020-06-29 15:41:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256431', N'1264622039642256421', N'[0],[1264622039642256421],', N'公告管理', N'sys_notice_mgr', N'1', NULL, N'/notice', N'system/notice/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'19', NULL, N'0', N'2020-06-29 15:44:24.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256441', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告查询', N'sys_notice_mgr_page', N'2', NULL, NULL, NULL, N'sysNotice:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:45:30.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256451', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告增加', N'sys_notice_mgr_add', N'2', NULL, NULL, NULL, N'sysNotice:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:45:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256461', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告编辑', N'sys_notice_mgr_edit', N'2', NULL, NULL, NULL, N'sysNotice:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256471', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告删除', N'sys_notice_mgr_delete', N'2', NULL, NULL, NULL, N'sysNotice:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256481', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告查看', N'sys_notice_mgr_detail', N'2', NULL, NULL, NULL, N'sysNotice:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256491', N'1264622039642256431', N'[0],[1264622039642256421],[1264622039642256431],', N'公告修改状态', N'sys_notice_mgr_changeStatus', N'2', NULL, NULL, NULL, N'sysNotice:changeStatus', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 15:46:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256501', N'1264622039642256421', N'[0],[1264622039642256421],', N'已收公告', N'sys_notice_mgr_received', N'1', NULL, N'/noticeReceived', N'system/noticeReceived/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'20', NULL, N'0', N'2020-06-29 16:32:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256511', N'1264622039642256501', N'[0],[1264622039642256421],[1264622039642256501],', N'已收公告查询', N'sys_notice_mgr_received_page', N'2', NULL, NULL, NULL, N'sysNotice:received', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-29 16:33:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256521', N'0', N'[0],', N'文件管理', N'sys_file_mgr', N'0', N'file', N'/file', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'8', NULL, N'0', N'2020-06-24 17:31:10.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256531', N'1264622039642256521', N'[0],[1264622039642256521],', N'系统文件', N'sys_file_mgr_sys_file', N'1', NULL, N'/file', N'system/file/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'21', NULL, N'0', N'2020-06-24 17:32:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256541', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件查询', N'sys_file_mgr_sys_file_page', N'2', NULL, NULL, NULL, N'sysFileInfo:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256551', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件列表', N'sys_file_mgr_sys_file_list', N'2', NULL, NULL, NULL, N'sysFileInfo:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256561', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件删除', N'sys_file_mgr_sys_file_delete', N'2', NULL, NULL, NULL, N'sysFileInfo:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:36:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256571', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件详情', N'sys_file_mgr_sys_file_detail', N'2', NULL, NULL, NULL, N'sysFileInfo:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:36:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256581', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件上传', N'sys_file_mgr_sys_file_upload', N'2', NULL, NULL, NULL, N'sysFileInfo:upload', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:34:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256591', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'文件下载', N'sys_file_mgr_sys_file_download', N'2', NULL, NULL, NULL, N'sysFileInfo:download', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:34:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256601', N'1264622039642256531', N'[0],[1264622039642256521],[1264622039642256531],', N'图片预览', N'sys_file_mgr_sys_file_preview', N'2', NULL, NULL, NULL, N'sysFileInfo:preview', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-06-24 17:35:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256611', N'0', N'[0],', N'定时任务', N'sys_timers', N'0', N'dashboard', N'/timers', N'PageView', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:17:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256621', N'1264622039642256611', N'[0],[1264622039642256611],', N'任务管理', N'sys_timers_mgr', N'1', NULL, N'/timers', N'system/timers/index', NULL, N'system', N'1', N'Y', NULL, NULL, N'1', N'22', NULL, N'0', N'2020-07-01 17:18:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256631', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务查询', N'sys_timers_mgr_page', N'2', NULL, NULL, NULL, N'sysTimers:page', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:19:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256641', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务列表', N'sys_timers_mgr_list', N'2', NULL, NULL, NULL, N'sysTimers:list', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:19:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256651', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务详情', N'sys_timers_mgr_detail', N'2', NULL, NULL, NULL, N'sysTimers:detail', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:10.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256661', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务增加', N'sys_timers_mgr_add', N'2', NULL, NULL, NULL, N'sysTimers:add', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256671', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务删除', N'sys_timers_mgr_delete', N'2', NULL, NULL, NULL, N'sysTimers:delete', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:33.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256681', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务编辑', N'sys_timers_mgr_edit', N'2', NULL, NULL, NULL, N'sysTimers:edit', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:20:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256691', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务可执行列表', N'sys_timers_mgr_get_action_classes', N'2', NULL, NULL, NULL, N'sysTimers:getActionClasses', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256701', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务启动', N'sys_timers_mgr_start', N'2', NULL, NULL, NULL, N'sysTimers:start', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:32.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256711', N'1264622039642256621', N'[0],[1264622039642256611],[1264622039642256621],', N'定时任务关闭', N'sys_timers_mgr_stop', N'2', NULL, NULL, NULL, N'sysTimers:stop', N'system', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:22:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256721', N'0', N'[0],', N'业务流程', N'sys_flw_mgr', N'0', N'cluster', N'/flw', N'PageView', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'9', NULL, N'0', N'2020-05-27 15:04:59.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256731', N'1264622039642256721', N'[0],[1264622039642256721],', N'模型设计', N'sys_flw_model_designer', N'1', NULL, N'/designer', N'Iframe', NULL, N'office', N'2', N'Y', N'http://localhost:82/designer/index.html?token=', NULL, N'0', N'23', NULL, N'2', N'2020-05-27 15:08:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256732', N'1264622039642256721', N'[0],[1264622039642256721],', N'模型管理', N'sys_flw_model_mgr', N'1', NULL, N'/model', N'flowable/model/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'24', NULL, N'0', N'2020-05-27 15:21:16.0000000', N'1265476890672672808', N'2020-08-17 21:32:34.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256733', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型列表', N'sys_flw_model_mgr_model_list', N'2', NULL, NULL, NULL, N'flowableModel:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256734', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型增加', N'sys_flw_model_mgr_model_add', N'2', NULL, NULL, NULL, N'flowableModel:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256735', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型删除', N'sys_flw_model_mgr_model_delete', N'2', NULL, NULL, NULL, N'flowableModel:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256736', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型编辑', N'sys_flw_model_mgr_model_edit', N'2', NULL, NULL, NULL, N'flowableModel:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256737', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型预览', N'sys_flw_model_mgr_model_preview', N'2', NULL, NULL, NULL, N'flowableModel:preview', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256738', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型版本', N'sys_flw_model_mgr_model_version', N'2', NULL, NULL, NULL, N'flowableModel:version', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256739', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型设为新版本', N'sys_flw_model_mgr_model_set_as_new', N'2', NULL, NULL, NULL, N'flowableModel:setAsNew', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256740', N'1264622039642256732', N'[0],[1264622039642256721],[1264622039642256732],', N'模型导入', N'sys_flw_model_mgr_model_import_model', N'2', NULL, NULL, NULL, N'flowableModel:importModel', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256741', N'1264622039642256721', N'[0],[1264622039642256721],', N'定义管理', N'sys_flw_definition_mgr', N'1', NULL, N'/defenition', N'flowable/defenition/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'24', NULL, N'0', N'2020-05-27 15:21:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256751', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义查询', N'sys_flw_definition_mgr_page', N'2', NULL, NULL, NULL, N'flowableDefinition:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:22:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256761', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义部署', N'sys_flw_definition_mgr_deploy', N'2', NULL, NULL, NULL, N'flowableDefinition:deploy', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:22:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256771', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义删除', N'sys_flw_definition_mgr_delete', N'2', NULL, NULL, NULL, N'flowableDefinition:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:06.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256781', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义导出', N'sys_flw_definition_mgr_export', N'2', NULL, NULL, NULL, N'flowableDefinition:export', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:21.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256791', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义映射', N'sys_flw_definition_mgr_mapping', N'2', NULL, NULL, NULL, N'flowableDefinition:mapping', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:40.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256801', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义挂起', N'sys_flw_definition_mgr_suspend', N'2', NULL, NULL, NULL, N'flowableDefinition:suspend', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:23:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256811', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义激活', N'sys_flw_definition_mgr_active', N'2', NULL, NULL, NULL, N'flowableDefinition:active', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:24:09.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256821', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'定义追踪', N'sys_flw_definition_mgr_trace', N'2', NULL, NULL, NULL, N'flowableDefinition:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:24:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256831', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'任务节点', N'sys_flw_definition_mgr_userTasks', N'2', NULL, NULL, NULL, N'flowableDefinition:userTasks', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:25:04.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256841', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项编辑', N'sys_flw_definition_mgr_option_edit', N'2', NULL, NULL, NULL, N'flowableOption:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:26:39.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256851', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项查看', N'sys_flw_definition_mgr_option_detail', N'2', NULL, NULL, NULL, N'flowableOption:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:26:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256861', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'选项列表', N'sys_flw_definition_mgr_option_list', N'2', NULL, NULL, NULL, N'flowableOption:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:27:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256871', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮增加', N'sys_flw_definition_mgr_button_add', N'2', NULL, NULL, NULL, N'flowableButton:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:05:54.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256881', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮删除', N'sys_flw_definition_mgr_button_delete', N'2', NULL, NULL, NULL, N'flowableButton:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256891', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮编辑', N'sys_flw_definition_mgr_button_edit', N'2', NULL, NULL, NULL, N'flowableButton:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:20.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256901', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮查看', N'sys_flw_definition_mgr_button_detail', N'2', NULL, NULL, NULL, N'flowableButton:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256911', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮列表', N'sys_flw_definition_mgr_button_list', N'2', NULL, NULL, NULL, N'flowableButton:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256912', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'按钮追踪', N'sys_flw_definition_mgr_button_trace', N'2', NULL, NULL, NULL, N'flowableButton:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:06:47.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256921', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件增加', N'sys_flw_definition_mgr_event_add', N'2', NULL, NULL, NULL, N'flowableEvent:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256931', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件删除', N'sys_flw_definition_mgr_event_delete', N'2', NULL, NULL, NULL, N'flowableEvent:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256941', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件编辑', N'sys_flw_definition_mgr_event_edit', N'2', NULL, NULL, NULL, N'flowableEvent:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:07:50.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256951', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件查看', N'sys_flw_definition_mgr_event_detail', N'2', NULL, NULL, NULL, N'flowableEvent:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:14.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256961', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'事件列表', N'sys_flw_definition_mgr_event_list', N'2', NULL, NULL, NULL, N'flowableEvent:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256971', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'表单列表', N'sys_flw_definition_mgr_form_list', N'2', NULL, NULL, NULL, N'flowableForm:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256981', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单增加', N'sys_flw_definition_mgr_form_add', N'2', NULL, NULL, NULL, N'flowableForm:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642256991', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单删除', N'sys_flw_definition_mgr_form_delete', N'2', NULL, NULL, NULL, N'flowableForm:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257001', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单编辑', N'sys_flw_definition_mgr_form_edit', N'2', NULL, NULL, NULL, N'flowableForm:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257011', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程表单查看', N'sys_flw_definition_mgr_form_detail', N'2', NULL, NULL, NULL, N'flowableForm:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257021', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程启动表单', N'sys_flw_definition_mgr_form_start_form_data', N'2', NULL, NULL, NULL, N'flowableForm:startFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257022', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程全局表单', N'sys_flw_definition_mgr_form_global_form_data', N'2', NULL, NULL, NULL, N'flowableForm:globalFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257031', N'1264622039642256741', N'[0],[1264622039642256721],[1264622039642256741],', N'流程任务表单', N'sys_flw_definition_mgr_form_task_form_data', N'2', NULL, NULL, NULL, N'flowableForm:taskFormData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257041', N'1264622039642256721', N'[0],[1264622039642256721],', N'分类管理', N'sys_flw_category_mgr', N'1', NULL, N'/category', N'flowable/category/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'25', NULL, N'0', N'2020-05-27 15:10:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257051', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类查询', N'sys_flw_category_mgr_page', N'2', NULL, NULL, NULL, N'flowableCategory:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 12:24:58.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257061', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类列表', N'sys_flw_category_mgr_list', N'2', NULL, NULL, NULL, N'flowableCategory:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:13:47.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257071', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类增加', N'sys_flw_category_mgr_add', N'2', NULL, NULL, NULL, N'flowableCategory:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:14:18.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257081', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类删除', N'sys_flw_category_mgr_delete', N'2', NULL, NULL, NULL, N'flowableCategory:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:16:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257091', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类编辑', N'sys_flw_category_mgr_edit', N'2', NULL, NULL, NULL, N'flowableCategory:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:17:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257101', N'1264622039642257041', N'[0],[1264622039642256721],[1264622039642257041],', N'分类详情', N'sys_flw_category_mgr_detail', N'2', NULL, NULL, NULL, N'flowableCategory:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 15:17:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257111', N'1264622039642256721', N'[0],[1264622039642256721],', N'表单管理', N'sys_flw_form_resource_mgr', N'1', NULL, N'/form', N'flowable/form/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'26', NULL, N'0', N'2020-05-27 16:43:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257121', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单查询', N'sys_flw_form_resource_mgr_form_page', N'2', NULL, NULL, NULL, N'flowableFormResource:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257131', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单增加', N'sys_flw_form_resource_mgr_form_add', N'2', NULL, NULL, NULL, N'flowableFormResource:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257141', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单删除', N'sys_flw_form_resource_mgr_form_delete', N'2', NULL, NULL, NULL, N'flowableFormResource:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257151', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单编辑', N'sys_flw_form_resource_mgr_form_edit', N'2', NULL, NULL, NULL, N'flowableFormResource:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257161', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单查看', N'sys_flw_form_resource_mgr_form_detail', N'2', NULL, NULL, NULL, N'flowableFormResource:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257162', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单设计', N'sys_flw_form_resource_mgr_form_design', N'2', NULL, NULL, NULL, N'flowableFormResource:design', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257163', N'1264622039642257111', N'[0],[1264622039642256721],[1264622039642257111],', N'表单列表', N'sys_flw_form_resource_mgr_form_list', N'2', NULL, NULL, NULL, N'flowableFormResource:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:08:27.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257171', N'1264622039642256721', N'[0],[1264622039642256721],', N'脚本管理', N'sys_flw_script_mgr', N'1', NULL, N'/script', N'flowable/script/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'27', NULL, N'0', N'2020-05-27 16:43:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257181', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本查询', N'sys_flw_script_mgr_page', N'2', NULL, NULL, NULL, N'flowableScript:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257191', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本列表', N'sys_flw_script_mgr_list', N'2', NULL, NULL, NULL, N'flowableScript:list', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:25.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257201', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本增加', N'sys_flw_script_mgr_add', N'2', NULL, NULL, NULL, N'flowableScript:add', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:43.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257211', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本删除', N'sys_flw_script_mgr_delete', N'2', NULL, NULL, NULL, N'flowableScript:delete', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:45:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257221', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本编辑', N'sys_flw_script_mgr_edit', N'2', NULL, NULL, NULL, N'flowableScript:edit', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:46:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257231', N'1264622039642257171', N'[0],[1264622039642256721],[1264622039642257171],', N'脚本查看', N'sys_flw_script_mgr_detail', N'2', NULL, NULL, NULL, N'flowableScript:detail', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:46:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257232', N'1264622039642256721', N'[0],[1264622039642256721],', N'入口管理', N'sys_flw_shortcut_mgr', N'1', NULL, N'/shortcut', N'flowable/shortcut/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'28', NULL, N'0', N'2020-05-27 16:46:26.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257233', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口查询', N'sys_flw_shortcut_mgr_page', N'2', NULL, NULL, NULL, N'flowableShortcut:page', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:05.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257234', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口增加', N'sys_flw_shortcut_mgr_add', N'2', NULL, NULL, NULL, N'flowableShortcut:add', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257235', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口删除', N'sys_flw_shortcut_mgr_delete', N'2', NULL, NULL, NULL, N'flowableShortcut:delete', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:45.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257236', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口编辑', N'sys_flw_shortcut_mgr_edit', N'2', NULL, NULL, NULL, N'flowableShortcut:edit', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257237', N'1264622039642257232', N'[0],[1264622039642256721],[1264622039642257232]', N'入口详情', N'sys_flw_shortcut_mgr_detail', N'2', NULL, NULL, NULL, N'flowableShortcut:detail', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:26:09.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257241', N'1264622039642256721', N'[0],[1264622039642256721],', N'实例管理', N'sys_flw_instance_mgr', N'1', NULL, N'/instance', N'flowable/instance/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'0', N'29', NULL, N'0', N'2020-05-27 16:10:07.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257251', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例查询', N'sys_flw_instance_mgr_page', N'2', NULL, NULL, NULL, N'flowableInstance:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:10:55.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257261', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例历史用户任务节点', N'sys_flw_instance_mgr_his_user_tasks', N'2', NULL, NULL, NULL, N'flowableInstance:hisUserTasks', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:12.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257271', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例追踪', N'sys_flw_instance_mgr_trace', N'2', NULL, NULL, NULL, N'flowableInstance:trace', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:31.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257281', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例挂起', N'sys_flw_instance_mgr_suspend', N'2', NULL, NULL, NULL, N'flowableInstance:suspend', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:11:48.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257291', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例激活', N'sys_flw_instance_mgr_active', N'2', NULL, NULL, NULL, N'flowableInstance:active', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:12:00.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257301', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例历史审批记录', N'sys_flw_instance_mgr_comment_history', N'2', NULL, NULL, NULL, N'flowableInstance:commentHistory', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:12:13.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257311', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例任务查询', N'sys_flw_instance_mgr_task_page', N'2', NULL, NULL, NULL, N'flowableInstanceTask:page', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257312', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'实例表单数据', N'sys_flw_instance_mgr_form_data', N'2', NULL, NULL, NULL, N'flowableInstance:formData', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257313', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'加签用户选择器', N'sys_flw_instance_mgr_add_sign_user_selector', N'2', NULL, NULL, NULL, N'flowableInstance:addSignUserSelector', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257314', N'1264622039642257241', N'[0],[1264622039642256721],[1264622039642257241],', N'减签用户选择器', N'sys_flw_instance_mgr_delete_sign_user_selector', N'2', NULL, NULL, NULL, N'flowableInstance:deleteSignUserSelector', N'office', N'0', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-05-27 16:13:41.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257321', N'0', N'[0],', N'在线办公', N'sys_flw_office', N'0', N'laptop', N'/handle', N'PageView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'10', NULL, N'0', N'2020-05-27 16:55:15.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257331', N'1264622039642257321', N'[0],[1264622039642257321],', N'我的任务', N'sys_flw_task_mgr', N'0', NULL, N'/task', N'RouteView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'30', NULL, N'0', N'2020-05-27 16:16:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257341', N'1264622039642257331', N'[0],[1264622039642257321],[1264622039642257331],', N'待办任务', N'sys_flw_task_mgr_todo_task', N'1', NULL, N'/todoTask', N'flowable/task/todoTask/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'1', NULL, N'0', N'2020-05-27 16:18:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257351', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务查询', N'sys_flw_task_mgr_todo_task_page', N'2', NULL, NULL, NULL, N'flowableTodoTask:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:19:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257361', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'流程发起', N'sys_flw_task_mgr_todo_task_start', N'2', NULL, NULL, NULL, N'flowableHandleTask:start', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257371', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务提交', N'sys_flw_task_mgr_todo_task_submit', N'2', NULL, NULL, NULL, N'flowableHandleTask:submit', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257381', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务保存', N'sys_flw_task_mgr_todo_task_save', N'2', NULL, NULL, NULL, N'flowableHandleTask:save', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257391', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务退回', N'sys_flw_task_mgr_todo_task_back', N'2', NULL, NULL, NULL, N'flowableHandleTask:back', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257401', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务转办', N'sys_flw_task_mgr_todo_task_turn', N'2', NULL, NULL, NULL, N'flowableHandleTask:turn', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:39:46.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257411', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务委托', N'sys_flw_task_mgr_todo_task_entrust', N'2', NULL, NULL, NULL, N'flowableHandleTask:entrust', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:03.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257421', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务终止', N'sys_flw_task_mgr_todo_task_end', N'2', NULL, NULL, NULL, N'flowableHandleTask:end', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257431', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务挂起', N'sys_flw_task_mgr_todo_task_suspend', N'2', NULL, NULL, NULL, N'flowableHandleTask:suspend', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:40.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257441', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务跳转', N'sys_flw_task_mgr_todo_task_jump', N'2', NULL, NULL, NULL, N'flowableHandleTask:jump', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:40:52.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257451', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务加签', N'sys_flw_task_mgr_todo_task_add_sign', N'2', NULL, NULL, NULL, N'flowableHandleTask:addSign', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:03.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257461', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务减签', N'sys_flw_task_mgr_todo_task_delete_sign', N'2', NULL, NULL, NULL, N'flowableHandleTask:deleteSign', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257462', N'1264622039642257341', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', N'任务数据', N'sys_flw_task_mgr_todo_task_task_data', N'2', NULL, NULL, NULL, N'flowableHandleTask:taskData', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:41:16.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257471', N'1264622039642257331', N'[0],[1264622039642257321],[1264622039642257331],', N'已办任务', N'sys_flw_task_mgr_done_task', N'1', NULL, N'/doneTask', N'flowable/task/doneTask/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'2', NULL, N'0', N'2020-05-27 16:19:29.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257481', N'1264622039642257471', N'[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', N'已办任务查询', N'sys_flw_task_mgr_done_task_page', N'2', NULL, NULL, NULL, N'flowableDoneTask:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257491', N'1264622039642257321', N'[0],[1264622039642257321],', N'我的申请', N'sys_flw_apply_mgr', N'0', NULL, N'/myapply', N'RouteView', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'31', NULL, N'0', N'2020-07-02 14:22:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257501', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'起草申请', N'sys_flw_apply_mgr_draft_apply_mgr', N'1', NULL, N'/drafapply', N'flowable/draftapply/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 14:24:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257511', N'1264622039642257501', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', N'起草入口列表', N'sys_flw_apply_mgr_draft_apply_mgr_list', N'2', NULL, NULL, NULL, N'flowableShortcut:list', N'office', N'1', N'Y', NULL, NULL, N'0', N'100', NULL, N'0', N'2020-07-02 14:25:19.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257521', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'起草表单填写', N'sys_flw_apply_mgr_draft_apply_mgr_apply_form', N'1', NULL, N'/draftapply/form', N'flowable/draftapply/form', NULL, N'office', N'1', N'N', NULL, NULL, N'1', N'1', NULL, N'2', N'2020-08-21 22:33:38.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257522', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'申请草稿', N'sys_flw_mgr_draft_mgr', N'1', NULL, N'/draft', N'flowable/draft/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-09 15:32:40.0000000', N'1265476890672672808', N'2020-09-09 23:47:48.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257523', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿查询', N'sys_flw_mgr_draft_mgr_page', N'2', NULL, NULL, NULL, N'flowableDraft:page', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257524', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿添加或编辑', N'sys_flw_mgr_draft_mgr_add_or_update', N'2', NULL, NULL, NULL, N'flowableDraft:addOrUpdate', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257525', N'1264622039642257522', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', N'申请草稿删除', N'sys_flw_mgr_draft_mgr_delete', N'2', NULL, NULL, NULL, N'flowableDraft:delete', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257531', N'1264622039642257491', N'[0],[1264622039642257321],[1264622039642257491],', N'已发申请', N'sys_flw_apply_mgr_applyed_mgr', N'1', NULL, N'/applyed', N'flowable/applyed/index', NULL, N'office', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-02 14:24:22.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257532', N'1264622039642257531', N'[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', N'已发申请查询', N'sys_flw_apply_mgr_applyed_mgr_page', N'2', NULL, NULL, NULL, N'flowableInstance:my', N'office', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257641', N'0', N'[0],', N'多数据源', N'dbs_databaseInfo', N'0', N'sliders', N'/database', N'PageView', NULL, N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-26 00:53:28.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257642', N'1264622039642257641', N'[0],[1264622039642257641],', N'数据源管理', N'dbs_databaseInfo_mgr', N'1', NULL, N'/databaseInfo', N'dbs/databaseInfo/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-07-01 17:18:53.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257643', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源查询', N'dbs_databaseInfo_mgr_page', N'2', NULL, NULL, NULL, N'databaseInfo:page', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257644', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源增加', N'dbs_databaseInfo_mgr_add', N'2', NULL, NULL, NULL, N'databaseInfo:add', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257645', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源编辑', N'dbs_databaseInfo_mgr_edit', N'2', NULL, NULL, NULL, N'databaseInfo:edit', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257646', N'1264622039642257642', N'[0],[1264622039642257641],[1264622039642257642],', N'数据源删除', N'dbs_databaseInfo_mgr_delete', N'2', NULL, NULL, NULL, N'databaseInfo:delete', N'experience', N'0', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-05-27 16:20:01.0000000', N'1265476890672672808', N'2020-09-23 22:00:32.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257671', N'0', N'[0],', N'支付管理', N'pay_manage', N'0', N'strikethrough', N'/paymanage', N'PageView', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-03 00:35:34.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257681', N'1264622039642257671', N'[0],[1264622039642257671],', N'支付体验', N'pay_manage_index', N'1', N'', N'/pay/index', N'pay/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-26 14:55:08.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257691', N'1264622039642257671', N'[0],[1264622039642257671],', N'支付订单', N'pay_manage_order', N'1', NULL, N'/pay/alipay/index', N'pay/alipay/index', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-09-03 00:39:56.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1264622039642257701', N'0', N'[0],', N'设计表单', N'form_design', N'1', N'pic-left', N'/formdesign', N'formDesign', NULL, N'experience', N'1', N'Y', NULL, NULL, N'1', N'100', NULL, N'0', N'2020-08-15 15:48:23.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1342451789402411009', N'0', N'[0],', N'代码生成', N'code_gen', N'1', N'thunderbolt', N'/codeGenerate/index', N'gen/codeGenerate/index', N'', N'system_tool', N'1', N'Y', NULL, N'', N'1', N'100', N'代码生成', N'0', N'2020-12-25 20:47:03.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1359406155611545602', N'0', N'[0],', N'测试菜单', N'tests_gen_codes', N'1', N'play-circle', N'/codegentest', N'main/codegentest/index', N'', N'system_tool', N'1', N'Y', NULL, N'', N'1', N'100', NULL, N'0', N'2021-02-10 15:37:39.0000000', N'1265476890672672808', N'2021-02-18 16:04:22.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_notice]
GO

CREATE TABLE [dbo].[sys_notice] (
  [id] bigint  NOT NULL,
  [title] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] tinyint  NOT NULL,
  [public_user_id] bigint  NOT NULL,
  [public_user_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [public_org_id] bigint  NULL,
  [public_org_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [public_time] datetime2(7)  NULL,
  [cancel_time] datetime2(7)  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_notice] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型（字典 1通知 2公告）',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布人id',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'public_user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布人姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'public_user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'public_org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布机构名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'public_org_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'public_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'撤回时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'cancel_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0草稿 1发布 2撤回 3删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通知表',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice'
GO


-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO [dbo].[sys_notice]  VALUES (N'1304960081456066561', N'qqqq', N'qqqqqq<p></p>', N'1', N'1265476890672672808', N'超级管理员', NULL, NULL, N'2020-09-13 09:48:23.0000000', N'2020-09-13 09:52:26.0000000', N'3', N'2020-09-13 09:48:23.0000000', N'1265476890672672808', N'2020-09-13 09:52:27.0000000', N'1280700700074041345')
GO

INSERT INTO [dbo].[sys_notice]  VALUES (N'1304960124862918657', N'123123123', N'<p>23123123123123</p>', N'2', N'1265476890672672808', N'超级管理员', NULL, NULL, N'2020-09-13 09:48:33.0000000', N'2020-09-13 09:52:28.0000000', N'3', N'2020-09-13 09:48:33.0000000', N'1265476890672672808', N'2020-09-13 09:52:40.0000000', N'1280700700074041345')
GO

INSERT INTO [dbo].[sys_notice]  VALUES (N'1304961721068220417', N'北京的秋天', N'<p><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972071688&amp;di=9d692807717018e9f36dc209b8f2a290&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></p>', N'1', N'1280700700074041345', N'老俞', N'1265476890672672771', N'研发部', N'2020-09-13 09:54:54.0000000', NULL, N'1', N'2020-09-13 09:54:54.0000000', N'1280700700074041345', NULL, NULL)
GO

INSERT INTO [dbo].[sys_notice]  VALUES (N'1304964964817104898', N'北京的秋天', N'<div style="text-align: center;"><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972936240&amp;di=0c65610a70a7f8de26e84f51da77604f&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></div><p></p>', N'1', N'1265476890672672808', N'超级管理员', NULL, NULL, N'2020-09-13 10:07:47.0000000', NULL, N'1', N'2020-09-13 10:07:47.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_notice_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_notice_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_notice_user]
GO

CREATE TABLE [dbo].[sys_notice_user] (
  [id] bigint  NOT NULL,
  [notice_id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [status] tinyint  NOT NULL,
  [read_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_notice_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通知公告id',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user',
'COLUMN', N'notice_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0未读 1已读）',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user',
'COLUMN', N'read_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'sys_notice_user'
GO


-- ----------------------------
-- Records of sys_notice_user
-- ----------------------------
INSERT INTO [dbo].[sys_notice_user]  VALUES (N'1304960081539952642', N'1304960081456066561', N'1280700700074041345', N'0', NULL)
GO

INSERT INTO [dbo].[sys_notice_user]  VALUES (N'1304960124934221825', N'1304960124862918657', N'1280700700074041345', N'1', N'2020-09-13 09:49:02.0000000')
GO

INSERT INTO [dbo].[sys_notice_user]  VALUES (N'1304961721131134977', N'1304961721068220417', N'1280700700074041345', N'1', N'2020-09-13 09:54:56.0000000')
GO

INSERT INTO [dbo].[sys_notice_user]  VALUES (N'1304964964875825153', N'1304964964817104898', N'1280700700074041345', N'0', NULL)
GO


-- ----------------------------
-- Table structure for sys_oauth_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_oauth_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_oauth_user]
GO

CREATE TABLE [dbo].[sys_oauth_user] (
  [id] bigint  NOT NULL,
  [uuid] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [access_token] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [nick_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [blog] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [company] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [gender] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [source] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_oauth_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方平台的用户唯一id',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'uuid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户授权的token',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'access_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'nick_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户网址',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'blog'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所在公司',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'company'
GO

EXEC sp_addextendedproperty
'MS_Description', N'位置',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'gender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户来源',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户备注（各平台中的用户个人介绍）',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新用户',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第三方认证用户信息表',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_user'
GO


-- ----------------------------
-- Table structure for sys_op_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_op_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_op_log]
GO

CREATE TABLE [dbo].[sys_op_log] (
  [id] bigint  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [op_type] tinyint  NULL,
  [success] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [browser] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [os] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [class_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [req_method] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [param] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [result] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [op_time] datetime2(7)  NULL,
  [account] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_op_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'op_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否执行成功（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'success'
GO

EXEC sp_addextendedproperty
'MS_Description', N'具体消息',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'browser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'os'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'方法名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方式（GET POST PUT DELETE)',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'req_method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'param'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回结果',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'op_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log',
'COLUMN', N'account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统操作日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_op_log'
GO


-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_org]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_org]
GO

CREATE TABLE [dbo].[sys_org] (
  [id] bigint  NOT NULL,
  [pid] bigint  NOT NULL,
  [pids] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_org] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'pid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ids',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'pids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_org',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统组织机构表',
'SCHEMA', N'dbo',
'TABLE', N'sys_org'
GO


-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890651701250', N'0', N'[0],', N'华夏集团', N'hxjt', N'100', N'华夏集团总公司', N'0', N'2020-03-26 16:50:53.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672769', N'1265476890651701250', N'[0],[1265476890651701250],', N'华夏集团北京分公司', N'hxjt_bj', N'100', N'华夏集团北京分公司', N'0', N'2020-03-26 16:55:42.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672770', N'1265476890651701250', N'[0],[1265476890651701250],', N'华夏集团成都分公司', N'hxjt_cd', N'100', N'华夏集团成都分公司', N'0', N'2020-03-26 16:56:02.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672771', N'1265476890672672769', N'[0],[1265476890651701250],[1265476890672672769],', N'研发部', N'hxjt_bj_yfb', N'100', N'华夏集团北京分公司研发部', N'0', N'2020-03-26 16:56:36.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672772', N'1265476890672672769', N'[0],[1265476890651701250],[1265476890672672769],', N'企划部', N'hxjt_bj_qhb', N'100', N'华夏集团北京分公司企划部', N'0', N'2020-03-26 16:57:06.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672773', N'1265476890672672770', N'[0],[1265476890651701250],[1265476890672672770],', N'市场部', N'hxjt_cd_scb', N'100', N'华夏集团成都分公司市场部', N'0', N'2020-03-26 16:57:35.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672774', N'1265476890672672770', N'[0],[1265476890651701250],[1265476890672672770],', N'财务部', N'hxjt_cd_cwb', N'100', N'华夏集团成都分公司财务部', N'0', N'2020-03-26 16:58:01.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_org]  VALUES (N'1265476890672672775', N'1265476890672672773', N'[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', N'市场部二部', N'hxjt_cd_scb_2b', N'100', N'华夏集团成都分公司市场部二部', N'0', N'2020-04-06 15:36:50.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_pos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_pos]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_pos]
GO

CREATE TABLE [dbo].[sys_pos] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_pos] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统职位表',
'SCHEMA', N'dbo',
'TABLE', N'sys_pos'
GO


-- ----------------------------
-- Records of sys_pos
-- ----------------------------
INSERT INTO [dbo].[sys_pos]  VALUES (N'1265476890672672787', N'总经理', N'zjl', N'100', N'总经理职位', N'0', N'2020-03-26 19:28:54.0000000', N'1265476890672672808', N'2020-06-02 21:01:04.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_pos]  VALUES (N'1265476890672672788', N'副总经理', N'fzjl', N'100', N'副总经理职位', N'0', N'2020-03-26 19:29:57.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_pos]  VALUES (N'1265476890672672789', N'部门经理', N'bmjl', N'100', N'部门经理职位', N'0', N'2020-03-26 19:31:49.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[sys_pos]  VALUES (N'1265476890672672790', N'工作人员', N'gzry', N'100', N'工作人员职位', N'0', N'2020-05-27 11:32:00.0000000', N'1265476890672672808', N'2020-06-01 10:51:35.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [id] bigint  NOT NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [sort] int  NOT NULL,
  [data_scope_type] tinyint  NOT NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'序号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'data_scope_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1停用 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role]  VALUES (N'1265476890672672817', N'组织架构管理员', N'ent_manager_role', N'100', N'1', N'组织架构管理员', N'0', N'2020-04-02 19:27:26.0000000', N'1265476890672672808', N'2020-09-12 15:54:07.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'1265476890672672818', N'权限管理员', N'auth_role', N'101', N'5', N'权限管理员', N'0', N'2020-04-02 19:28:40.0000000', N'1265476890672672808', N'2020-07-16 10:52:21.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'1265476890672672819', N'公告发布员', N'notice_produce_role', N'102', N'5', N'公告发布员', N'0', N'2020-05-29 15:48:11.0000000', N'1265476890672672808', N'2020-08-08 19:28:34.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_role_data_scope
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_data_scope]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_data_scope]
GO

CREATE TABLE [dbo].[sys_role_data_scope] (
  [id] bigint  NOT NULL,
  [role_id] bigint  NOT NULL,
  [org_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_role_data_scope] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_scope',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_scope',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_scope',
'COLUMN', N'org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_data_scope'
GO


-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435908822102018', N'1265476890672672818', N'1265476890651701250')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435909635796993', N'1265476890672672818', N'1265476890672672769')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435910432714754', N'1265476890672672818', N'1265476890672672771')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435911233826818', N'1265476890672672818', N'1265476890672672772')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435912018161666', N'1265476890672672818', N'1265476890672672770')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435912810885122', N'1265476890672672818', N'1265476890672672773')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435913595219970', N'1265476890672672818', N'1265476890672672775')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1277435914392137730', N'1265476890672672818', N'1265476890672672774')
GO

INSERT INTO [dbo].[sys_role_data_scope]  VALUES (N'1292060127645429762', N'1265476890672672819', N'1265476890672672774')
GO


-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_menu]
GO

CREATE TABLE [dbo].[sys_role_menu] (
  [id] bigint  NOT NULL,
  [role_id] bigint  NOT NULL,
  [menu_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_role_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色菜单表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu'
GO


-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366872187256834', N'1265476890672672818', N'1264622039642255671')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366872602492929', N'1265476890672672818', N'1264622039642255681')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366873026117634', N'1265476890672672818', N'1264622039642255761')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366873449742337', N'1265476890672672818', N'1264622039642255851')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366873864978433', N'1265476890672672818', N'1264622039642255691')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366874284408834', N'1265476890672672818', N'1264622039642255701')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366874703839233', N'1265476890672672818', N'1264622039642255711')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366875119075330', N'1265476890672672818', N'1264622039642255721')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366875538505730', N'1265476890672672818', N'1264622039642255731')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366875962130433', N'1265476890672672818', N'1264622039642255741')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366876377366529', N'1265476890672672818', N'1264622039642255751')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366876800991233', N'1265476890672672818', N'1264622039642255771')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366877216227330', N'1265476890672672818', N'1264622039642255781')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366877639852033', N'1265476890672672818', N'1264622039642255791')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366878067671041', N'1265476890672672818', N'1264622039642255801')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366878487101441', N'1265476890672672818', N'1264622039642255811')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366878898143233', N'1265476890672672818', N'1264622039642255821')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366879325962242', N'1265476890672672818', N'1264622039642255831')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366879745392641', N'1265476890672672818', N'1264622039642255841')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366880160628738', N'1265476890672672818', N'1264622039642255881')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366880580059138', N'1265476890672672818', N'1264622039642255891')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366880999489537', N'1265476890672672818', N'1264622039642255901')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366881423114242', N'1265476890672672818', N'1264622039642255911')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366881838350338', N'1265476890672672818', N'1264622039642255921')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366882261975042', N'1265476890672672818', N'1264622039642255931')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366882685599745', N'1265476890672672818', N'1264622039642255941')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366883100835842', N'1265476890672672818', N'1264622039642255951')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366883520266242', N'1265476890672672818', N'1264622039642255861')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366883939696642', N'1265476890672672818', N'1264622039642255871')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366884363321346', N'1265476890672672818', N'1264622039642257021')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366884782751746', N'1265476890672672818', N'1264622039642257031')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366885197987842', N'1265476890672672818', N'1264622039642256831')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366885617418242', N'1265476890672672818', N'1264622039642257261')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366886045237250', N'1265476890672672818', N'1264622039642257271')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366886473056258', N'1265476890672672818', N'1264622039642257301')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366886884098050', N'1265476890672672818', N'1264622039642257321')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366887307722754', N'1265476890672672818', N'1264622039642257331')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366887722958850', N'1265476890672672818', N'1264622039642257471')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366888142389250', N'1265476890672672818', N'1264622039642257481')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366888566013954', N'1265476890672672818', N'1264622039642257341')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366888981250049', N'1265476890672672818', N'1264622039642257411')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366889404874754', N'1265476890672672818', N'1264622039642257421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366889820110850', N'1265476890672672818', N'1264622039642257431')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366890235346946', N'1265476890672672818', N'1264622039642257441')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366890663165954', N'1265476890672672818', N'1264622039642257451')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366891082596354', N'1265476890672672818', N'1264622039642257461')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366891506221057', N'1265476890672672818', N'1264622039642257351')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366891925651458', N'1265476890672672818', N'1264622039642257361')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366892345081858', N'1265476890672672818', N'1264622039642257371')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366892764512258', N'1265476890672672818', N'1264622039642257381')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366893183942658', N'1265476890672672818', N'1264622039642257391')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366893607567361', N'1265476890672672818', N'1264622039642257401')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366894031192065', N'1265476890672672818', N'1264622039642257491')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366894446428162', N'1265476890672672818', N'1264622039642257501')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366894865858562', N'1265476890672672818', N'1264622039642257511')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366895285288961', N'1265476890672672818', N'1264622039642255591')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366895708913665', N'1265476890672672818', N'1264622039642257061')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366896132538369', N'1265476890672672818', N'1264622039642257462')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366896556163074', N'1265476890672672818', N'1264622039642256912')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366896979787777', N'1265476890672672818', N'1264622039642255421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366897399218178', N'1265476890672672818', N'1264622039642257022')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366897827037185', N'1265476890672672818', N'1264622039642256821')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366898242273282', N'1265476890672672818', N'1264622039642257311')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366898670092290', N'1265476890672672818', N'1264622039642257312')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366899089522690', N'1265476890672672818', N'1264622039642257313')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366899508953089', N'1265476890672672818', N'1264622039642257314')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366899932577793', N'1265476890672672818', N'1264622039642257522')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366900352008193', N'1265476890672672818', N'1264622039642257523')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366900771438594', N'1265476890672672818', N'1264622039642257524')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366901190868994', N'1265476890672672818', N'1264622039642257525')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366901610299394', N'1265476890672672818', N'1264622039642257531')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1304366902033924097', N'1265476890672672818', N'1264622039642257532')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864773769273346', N'1265476890672672819', N'1264622039642256431')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864774197092353', N'1265476890672672819', N'1264622039642256421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864774624911362', N'1265476890672672819', N'1264622039642256441')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864775048536065', N'1265476890672672819', N'1264622039642256451')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864775467966465', N'1265476890672672819', N'1264622039642256461')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864775887396866', N'1265476890672672819', N'1264622039642256471')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864776311021570', N'1265476890672672819', N'1264622039642256481')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864776730451969', N'1265476890672672819', N'1264622039642256491')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864777154076673', N'1265476890672672819', N'1264622039642256501')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864777573507074', N'1265476890672672819', N'1264622039642256511')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864778005520386', N'1265476890672672819', N'1264622039642255421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864778424950785', N'1265476890672672819', N'1264622039642257321')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864778840186881', N'1265476890672672819', N'1264622039642257331')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864779263811585', N'1265476890672672819', N'1264622039642257021')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864779683241986', N'1265476890672672819', N'1264622039642257011')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864780106866689', N'1265476890672672819', N'1264622039642256831')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864780530491393', N'1265476890672672819', N'1264622039642257061')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864780945727489', N'1265476890672672819', N'1264622039642257501')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864781369352193', N'1265476890672672819', N'1264622039642257491')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864781792976897', N'1265476890672672819', N'1264622039642257511')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864782216601602', N'1265476890672672819', N'1264622039642257271')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864782631837697', N'1265476890672672819', N'1264622039642257261')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864783063851009', N'1265476890672672819', N'1264622039642257301')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864783483281410', N'1265476890672672819', N'1264622039642257471')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864783902711809', N'1265476890672672819', N'1264622039642257341')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864784322142210', N'1265476890672672819', N'1264622039642257481')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864784745766913', N'1265476890672672819', N'1264622039642257411')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864785169391618', N'1265476890672672819', N'1264622039642257431')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864785588822018', N'1265476890672672819', N'1264622039642257421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864786012446722', N'1265476890672672819', N'1264622039642257441')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864786436071426', N'1265476890672672819', N'1264622039642257451')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864786859696130', N'1265476890672672819', N'1264622039642257461')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864787274932225', N'1265476890672672819', N'1264622039642257351')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864787702751233', N'1265476890672672819', N'1264622039642257361')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864788113793026', N'1265476890672672819', N'1264622039642257371')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864788541612034', N'1265476890672672819', N'1264622039642257381')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864788961042433', N'1265476890672672819', N'1264622039642257391')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864789384667138', N'1265476890672672819', N'1264622039642257401')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864789808291841', N'1265476890672672819', N'1264622039642257462')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864790227722241', N'1265476890672672819', N'1264622039642257031')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864790659735554', N'1265476890672672819', N'1264622039642256912')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864791079165953', N'1265476890672672819', N'1264622039642257022')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864791494402050', N'1265476890672672819', N'1264622039642257311')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864791913832450', N'1265476890672672819', N'1264622039642257312')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864792345845762', N'1265476890672672819', N'1264622039642257313')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864792769470465', N'1265476890672672819', N'1264622039642257314')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864793193095169', N'1265476890672672819', N'1264622039642257522')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864793612525570', N'1265476890672672819', N'1264622039642257523')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864794027761665', N'1265476890672672819', N'1264622039642257524')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864794459774978', N'1265476890672672819', N'1264622039642257525')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864794875011073', N'1265476890672672819', N'1264622039642257532')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864795307024385', N'1265476890672672819', N'1264622039642257531')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864795722260482', N'1265476890672672819', N'1264622039642256821')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864929906434049', N'1265476890672672817', N'1264622039642255311')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864930338447362', N'1265476890672672817', N'1264622039642255331')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864930753683457', N'1265476890672672817', N'1264622039642255321')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864931181502465', N'1265476890672672817', N'1264622039642255341')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864931596738561', N'1265476890672672817', N'1264622039642255351')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864932020363266', N'1265476890672672817', N'1264622039642255361')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864932439793666', N'1265476890672672817', N'1264622039642255371')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864932863418369', N'1265476890672672817', N'1264622039642255381')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864933287043073', N'1265476890672672817', N'1264622039642255391')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864933706473474', N'1265476890672672817', N'1264622039642255401')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864934130098177', N'1265476890672672817', N'1264622039642255411')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864934553722881', N'1265476890672672817', N'1264622039642255421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864934973153281', N'1265476890672672817', N'1264622039642255431')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864935392583681', N'1265476890672672817', N'1264622039642255441')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864935820402689', N'1265476890672672817', N'1264622039642255451')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864936239833090', N'1265476890672672817', N'1264622039642255461')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864936663457793', N'1265476890672672817', N'1264622039642255471')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864937087082498', N'1265476890672672817', N'1264622039642255481')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864937506512898', N'1265476890672672817', N'1264622039642255491')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864937938526210', N'1265476890672672817', N'1264622039642255501')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864938357956610', N'1265476890672672817', N'1264622039642255511')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864938777387010', N'1265476890672672817', N'1264622039642255521')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864939201011713', N'1265476890672672817', N'1264622039642255531')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864939624636418', N'1265476890672672817', N'1264622039642255541')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864940044066817', N'1265476890672672817', N'1264622039642255551')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864940467691522', N'1265476890672672817', N'1264622039642255561')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864940933259265', N'1265476890672672817', N'1264622039642255571')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864941356883970', N'1265476890672672817', N'1264622039642255581')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864941776314369', N'1265476890672672817', N'1264622039642255591')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864942195744769', N'1265476890672672817', N'1264622039642255601')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864942619369473', N'1265476890672672817', N'1264622039642255621')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864943042994178', N'1265476890672672817', N'1264622039642255631')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864943462424577', N'1265476890672672817', N'1264622039642255641')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864943886049282', N'1265476890672672817', N'1264622039642255651')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864944309673986', N'1265476890672672817', N'1264622039642255661')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864944733298690', N'1265476890672672817', N'1264622039642255611')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864945156923393', N'1265476890672672817', N'1264622039642257321')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864945576353793', N'1265476890672672817', N'1264622039642257331')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864945999978497', N'1265476890672672817', N'1264622039642257471')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864946423603201', N'1265476890672672817', N'1264622039642257481')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864946847227905', N'1265476890672672817', N'1264622039642257341')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864947266658305', N'1265476890672672817', N'1264622039642257411')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864947681894402', N'1265476890672672817', N'1264622039642257421')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864948109713409', N'1265476890672672817', N'1264622039642257431')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864948529143810', N'1265476890672672817', N'1264622039642257441')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864948952768513', N'1265476890672672817', N'1264622039642257451')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864949380587522', N'1265476890672672817', N'1264622039642257461')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864949804212225', N'1265476890672672817', N'1264622039642257351')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864950223642626', N'1265476890672672817', N'1264622039642257361')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864950638878721', N'1265476890672672817', N'1264622039642257371')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864951066697729', N'1265476890672672817', N'1264622039642257381')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864951490322433', N'1265476890672672817', N'1264622039642257391')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864951913947137', N'1265476890672672817', N'1264622039642257401')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864952329183233', N'1265476890672672817', N'1264622039642257491')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864952757002241', N'1265476890672672817', N'1264622039642257501')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864953176432642', N'1265476890672672817', N'1264622039642257511')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864953600057346', N'1265476890672672817', N'1264622039642256831')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864954019487746', N'1265476890672672817', N'1264622039642257031')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864954447306754', N'1265476890672672817', N'1264622039642257021')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864954870931458', N'1265476890672672817', N'1264622039642257061')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864955290361857', N'1265476890672672817', N'1264622039642257261')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864955709792258', N'1265476890672672817', N'1264622039642257301')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864956133416962', N'1265476890672672817', N'1264622039642257271')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864956557041665', N'1265476890672672817', N'1264622039642257462')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864956976472066', N'1265476890672672817', N'1264622039642256912')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864957400096770', N'1265476890672672817', N'1264622039642255911')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864957861470210', N'1265476890672672817', N'1264622039642257522')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864958280900610', N'1265476890672672817', N'1264622039642257523')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864958704525314', N'1265476890672672817', N'1264622039642257524')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864959132344321', N'1265476890672672817', N'1264622039642257525')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864959555969026', N'1265476890672672817', N'1264622039642257532')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864959975399425', N'1265476890672672817', N'1264622039642257531')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864960399024129', N'1265476890672672817', N'1264622039642257311')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864960822648833', N'1265476890672672817', N'1264622039642257312')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864961242079233', N'1265476890672672817', N'1264622039642257313')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864961657315330', N'1265476890672672817', N'1264622039642257314')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864962085134337', N'1265476890672672817', N'1264622039642256821')
GO

INSERT INTO [dbo].[sys_role_menu]  VALUES (N'1307864962504564737', N'1265476890672672817', N'1264622039642257022')
GO


-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_sms]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_sms]
GO

CREATE TABLE [dbo].[sys_sms] (
  [id] bigint  NOT NULL,
  [phone_numbers] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [validate_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [template_code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [biz_id] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] tinyint  NOT NULL,
  [source] tinyint  NOT NULL,
  [invalid_time] datetime2(7)  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_sms] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机号',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'phone_numbers'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信验证码',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'validate_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信模板ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'template_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'回执id，可根据该id查询具体的发送状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'biz_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'来源（字典 1 app， 2 pc， 3 其他）',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'失效时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'invalid_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'短信信息发送表',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms'
GO


-- ----------------------------
-- Table structure for sys_tenant_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_tenant_info]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_tenant_info]
GO

CREATE TABLE [dbo].[sys_tenant_info] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [db_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_tenant_info] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户的编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关联的数据库名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'db_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_info'
GO


-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------
INSERT INTO [dbo].[sys_tenant_info]  VALUES (N'1301724123547000811', N'总公司（管理单位）', N'default', N'master', N'2020-09-04 11:29:51.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_timers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_timers]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_timers]
GO

CREATE TABLE [dbo].[sys_timers] (
  [id] bigint  NOT NULL,
  [timer_name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [action_class] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cron] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_status] tinyint  NULL,
  [remark] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_timers] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时器id',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'timer_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'action_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'cron'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 1运行  2停止）',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'job_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务',
'SCHEMA', N'dbo',
'TABLE', N'sys_timers'
GO


-- ----------------------------
-- Records of sys_timers
-- ----------------------------
INSERT INTO [dbo].[sys_timers]  VALUES (N'1288760324837851137', N'定时同步缓存常量', N'com.cn.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', N'0 0/1 * * * ?', N'1', N'定时同步sys_config表的数据到缓存常量中', N'2020-07-30 16:56:20.0000000', N'1265476890672672808', N'2020-07-30 16:58:52.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[sys_timers]  VALUES (N'1304971718170832898', N'定时打印一句话', N'com.cn.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', N'0 0 * * * ? *', N'2', N'定时打印一句话', N'2020-09-13 10:34:37.0000000', N'1265476890672672808', N'2020-09-23 20:37:48.0000000', N'1265476890672672808')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [id] bigint  NOT NULL,
  [account] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [nick_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [avatar] bigint  NULL,
  [birthday] date  NULL,
  [sex] tinyint  NOT NULL,
  [email] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [tel] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [last_login_ip] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [last_login_time] datetime2(7)  NULL,
  [admin_type] tinyint  NOT NULL,
  [status] tinyint  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'昵称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'nick_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别(字典 1男 2女 3未知)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'tel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后登陆IP',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'last_login_ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后登陆时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'last_login_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'管理员类型（0超级管理员 1非管理员）',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'admin_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（字典 0正常 1冻结 2删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user]  VALUES (N'1265476890672672808', N'superAdmin', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'超级管理员', N'超级管理员', NULL, N'2020-03-18', N'1', N'superAdmin@qq.com', N'15228937093', N'1234567890', N'127.0.0.1', N'2021-01-28 00:42:28.0000000', N'1', N'0', N'2020-05-29 16:39:28.0000000', N'-1', N'2021-01-28 00:42:28.0000000', N'-1')
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'1275735541155614721', N'yubaoshan', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'俞宝山', N'俞宝山', NULL, N'1992-10-03', N'1', N'await183@qq.com', N'18200001102', N'', N'127.0.0.1', N'2021-01-28 00:38:34.0000000', N'2', N'0', N'2020-06-24 18:20:30.0000000', N'1265476890672672808', N'2021-01-28 00:38:34.0000000', N'-1')
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'1280700700074041345', N'laoyu', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'laoyu', N'老俞', NULL, N'2020-07-01', N'1', NULL, N'18200001103', NULL, N'127.0.0.1', N'2020-09-23 10:17:27.0000000', N'2', N'0', N'2020-07-08 11:10:16.0000000', N'1265476890672672808', N'2020-09-23 10:17:27.0000000', N'-1')
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'1280709549107552257', N'xuyuxiang', N'$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', N'就是那个锅', N'徐玉祥', NULL, N'2020-07-01', N'1', NULL, N'18200001100', NULL, N'127.0.0.1', N'2020-09-23 10:16:54.0000000', N'2', N'0', N'2020-07-08 11:45:26.0000000', N'1265476890672672808', N'2020-09-23 10:16:54.0000000', N'-1')
GO


-- ----------------------------
-- Table structure for sys_user_data_scope
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_data_scope]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_data_scope]
GO

CREATE TABLE [dbo].[sys_user_data_scope] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [org_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_data_scope] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_data_scope',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_data_scope',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_data_scope',
'COLUMN', N'org_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户数据范围表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_data_scope'
GO


-- ----------------------------
-- Records of sys_user_data_scope
-- ----------------------------
INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1277459951742840834', N'1266277099455635457', N'1265476890672672770')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1277459952577507330', N'1266277099455635457', N'1265476890672672773')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1277459953424756737', N'1266277099455635457', N'1265476890672672775')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1277459954267811841', N'1266277099455635457', N'1265476890672672774')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043527249922', N'1265476890672672809', N'1265476890651701250')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043535638529', N'1265476890672672809', N'1265476890672672769')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043535638530', N'1265476890672672809', N'1265476890672672771')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043535638531', N'1265476890672672809', N'1265476890672672772')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043544027137', N'1265476890672672809', N'1265476890672672770')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043544027138', N'1265476890672672809', N'1265476890672672773')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043552415746', N'1265476890672672809', N'1265476890672672775')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712043552415747', N'1265476890672672809', N'1265476890672672774')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712071570366466', N'1275735541155614721', N'1265476890672672769')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712071570366467', N'1275735541155614721', N'1265476890672672771')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1280712071578755074', N'1275735541155614721', N'1265476890672672772')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1285129189085609986', N'1280700700074041345', N'1265476890672672770')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1285129189093998594', N'1280700700074041345', N'1265476890672672773')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1285129189102387201', N'1280700700074041345', N'1265476890672672775')
GO

INSERT INTO [dbo].[sys_user_data_scope]  VALUES (N'1285129189106581505', N'1280700700074041345', N'1265476890672672774')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [role_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统用户角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role'
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role]  VALUES (N'1283596900713574402', N'1275735541155614721', N'1265476890672672817')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'1283596920384860162', N'1280700700074041345', N'1265476890672672819')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'1283596949627547649', N'1280709549107552257', N'1265476890672672818')
GO


-- ----------------------------
-- Table structure for sys_vis_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_vis_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_vis_log]
GO

CREATE TABLE [dbo].[sys_vis_log] (
  [id] bigint  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [success] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [ip] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [browser] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [os] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [vis_type] tinyint  NOT NULL,
  [vis_time] datetime2(7)  NULL,
  [account] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_vis_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否执行成功（Y-是，N-否）',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'success'
GO

EXEC sp_addextendedproperty
'MS_Description', N'具体消息',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'location'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'browser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'os'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型（字典 1登入 2登出）',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'vis_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'vis_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'访问账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log',
'COLUMN', N'account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统访问日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_vis_log'
GO


-- ----------------------------
-- Table structure for xn_code_gen_test
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[xn_code_gen_test]') AND type IN ('U'))
	DROP TABLE [dbo].[xn_code_gen_test]
GO

CREATE TABLE [dbo].[xn_code_gen_test] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [age] int  NULL,
  [interest] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [switchTest] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [birthday] date  NULL,
  [whether] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [explain_test] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime2(7)  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[xn_code_gen_test] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'年龄',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'age'
GO

EXEC sp_addextendedproperty
'MS_Description', N'兴趣',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'interest'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开关',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'switchTest'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日期',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否已婚',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'whether'
GO

EXEC sp_addextendedproperty
'MS_Description', N'简介',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'explain_test'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'测试',
'SCHEMA', N'dbo',
'TABLE', N'xn_code_gen_test'
GO


-- ----------------------------
-- Records of xn_code_gen_test
-- ----------------------------
INSERT INTO [dbo].[xn_code_gen_test]  VALUES (N'1362314704808611841', N'俞宝山', N'28', N'["2","3","1"]', N'Y', N'2021-02-18', N'Y', N'测试简介', N'2021-02-18 16:15:11.0000000', N'1265476890672672808', NULL, NULL)
GO

INSERT INTO [dbo].[xn_code_gen_test]  VALUES (N'1362314845863055361', N'徐玉祥', N'26', N'["3","2"]', N'Y', N'2021-02-18', N'Y', N'玉祥也测试', N'2021-02-18 16:15:44.0000000', N'1265476890672672808', N'2021-02-18 16:16:24.0000000', N'1265476890672672808')
GO

INSERT INTO [dbo].[xn_code_gen_test]  VALUES (N'1362314976637259777', N'董夏雨', N'27', N'["3"]', N'N', N'2021-02-18', N'Y', N'都测试', N'2021-02-18 16:16:16.0000000', N'1265476890672672808', NULL, NULL)
GO


-- ----------------------------
-- Primary Key structure for table act_de_databasechangeloglock
-- ----------------------------
ALTER TABLE [dbo].[act_de_databasechangeloglock] ADD CONSTRAINT [PK__act_de_d__3214EC27A30D5C6B] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_de_model
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_proc_mod_created]
ON [dbo].[act_de_model] (
  [created_by] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_de_model
-- ----------------------------
ALTER TABLE [dbo].[act_de_model] ADD CONSTRAINT [PK__act_de_m__3213E83F9CD6A04D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_de_model_history
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_proc_mod_history_proc]
ON [dbo].[act_de_model_history] (
  [model_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_de_model_history
-- ----------------------------
ALTER TABLE [dbo].[act_de_model_history] ADD CONSTRAINT [PK__act_de_m__3213E83FA6CD6683] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_de_model_relation
-- ----------------------------
CREATE NONCLUSTERED INDEX [fk_relation_parent]
ON [dbo].[act_de_model_relation] (
  [parent_model_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [fk_relation_child]
ON [dbo].[act_de_model_relation] (
  [model_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE [dbo].[act_de_model_relation] ADD CONSTRAINT [PK__act_de_m__3213E83F86816E2E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_evt_log
-- ----------------------------
ALTER TABLE [dbo].[act_evt_log] ADD CONSTRAINT [PK__act_evt___DE8852D811D5E193] PRIMARY KEY CLUSTERED ([LOG_NR_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ge_bytearray
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_FK_BYTEARR_DEPL]
ON [dbo].[act_ge_bytearray] (
  [DEPLOYMENT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE [dbo].[act_ge_bytearray] ADD CONSTRAINT [PK__act_ge_b__C4971C0F49E2EDCE] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_ge_property
-- ----------------------------
ALTER TABLE [dbo].[act_ge_property] ADD CONSTRAINT [PK__act_ge_p__A7BE44DE1798FB93] PRIMARY KEY CLUSTERED ([NAME_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_actinst
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ACT_INST_START]
ON [dbo].[act_hi_actinst] (
  [START_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ACT_INST_END]
ON [dbo].[act_hi_actinst] (
  [END_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ACT_INST_PROCINST]
ON [dbo].[act_hi_actinst] (
  [PROC_INST_ID_] ASC,
  [ACT_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ACT_INST_EXEC]
ON [dbo].[act_hi_actinst] (
  [EXECUTION_ID_] ASC,
  [ACT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_actinst
-- ----------------------------
ALTER TABLE [dbo].[act_hi_actinst] ADD CONSTRAINT [PK__act_hi_a__C4971C0F9DA26080] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_hi_attachment
-- ----------------------------
ALTER TABLE [dbo].[act_hi_attachment] ADD CONSTRAINT [PK__act_hi_a__C4971C0F00786647] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_hi_comment
-- ----------------------------
ALTER TABLE [dbo].[act_hi_comment] ADD CONSTRAINT [PK__act_hi_c__C4971C0F598E82DD] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_detail
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_DETAIL_PROC_INST]
ON [dbo].[act_hi_detail] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_DETAIL_ACT_INST]
ON [dbo].[act_hi_detail] (
  [ACT_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_DETAIL_TIME]
ON [dbo].[act_hi_detail] (
  [TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_DETAIL_NAME]
ON [dbo].[act_hi_detail] (
  [NAME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_DETAIL_TASK_ID]
ON [dbo].[act_hi_detail] (
  [TASK_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_detail
-- ----------------------------
ALTER TABLE [dbo].[act_hi_detail] ADD CONSTRAINT [PK__act_hi_d__C4971C0F8805BCFE] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_entitylink
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ENT_LNK_SCOPE]
ON [dbo].[act_hi_entitylink] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC,
  [LINK_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_ENT_LNK_SCOPE_DEF]
ON [dbo].[act_hi_entitylink] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC,
  [LINK_TYPE_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_entitylink
-- ----------------------------
ALTER TABLE [dbo].[act_hi_entitylink] ADD CONSTRAINT [PK__act_hi_e__C4971C0FC13C0B09] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_identitylink
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_USER]
ON [dbo].[act_hi_identitylink] (
  [USER_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_SCOPE]
ON [dbo].[act_hi_identitylink] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_SUB_SCOPE]
ON [dbo].[act_hi_identitylink] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_SCOPE_DEF]
ON [dbo].[act_hi_identitylink] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_TASK]
ON [dbo].[act_hi_identitylink] (
  [TASK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_IDENT_LNK_PROCINST]
ON [dbo].[act_hi_identitylink] (
  [PROC_INST_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_identitylink
-- ----------------------------
ALTER TABLE [dbo].[act_hi_identitylink] ADD CONSTRAINT [PK__act_hi_i__C4971C0FAC3C5C89] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_procinst
-- ----------------------------
CREATE NONCLUSTERED INDEX [PROC_INST_ID_]
ON [dbo].[act_hi_procinst] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PRO_INST_END]
ON [dbo].[act_hi_procinst] (
  [END_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PRO_I_BUSKEY]
ON [dbo].[act_hi_procinst] (
  [BUSINESS_KEY_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_procinst
-- ----------------------------
ALTER TABLE [dbo].[act_hi_procinst] ADD CONSTRAINT [PK__act_hi_p__C4971C0F4A74BB6E] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_taskinst
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_TASK_SCOPE]
ON [dbo].[act_hi_taskinst] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_TASK_SUB_SCOPE]
ON [dbo].[act_hi_taskinst] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_TASK_SCOPE_DEF]
ON [dbo].[act_hi_taskinst] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_TASK_INST_PROCINST]
ON [dbo].[act_hi_taskinst] (
  [PROC_INST_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_taskinst
-- ----------------------------
ALTER TABLE [dbo].[act_hi_taskinst] ADD CONSTRAINT [PK__act_hi_t__C4971C0F4B954A24] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_hi_tsk_log
-- ----------------------------
ALTER TABLE [dbo].[act_hi_tsk_log] ADD CONSTRAINT [PK__act_hi_t__C4971C0F7415D26B] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_hi_varinst
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PROCVAR_NAME_TYPE]
ON [dbo].[act_hi_varinst] (
  [NAME_] ASC,
  [VAR_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_VAR_SCOPE_ID_TYPE]
ON [dbo].[act_hi_varinst] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_VAR_SUB_ID_TYPE]
ON [dbo].[act_hi_varinst] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PROCVAR_PROC_INST]
ON [dbo].[act_hi_varinst] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PROCVAR_TASK_ID]
ON [dbo].[act_hi_varinst] (
  [TASK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_HI_PROCVAR_EXE]
ON [dbo].[act_hi_varinst] (
  [EXECUTION_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_hi_varinst
-- ----------------------------
ALTER TABLE [dbo].[act_hi_varinst] ADD CONSTRAINT [PK__act_hi_v__C4971C0FEF68DD63] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_bytearray
-- ----------------------------
ALTER TABLE [dbo].[act_id_bytearray] ADD CONSTRAINT [PK__act_id_b__C4971C0F3B95C66D] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_group
-- ----------------------------
ALTER TABLE [dbo].[act_id_group] ADD CONSTRAINT [PK__act_id_g__C4971C0F85F1DCC0] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_info
-- ----------------------------
ALTER TABLE [dbo].[act_id_info] ADD CONSTRAINT [PK__act_id_i__C4971C0FEC0FE04B] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_id_membership
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_FK_MEMB_GROUP]
ON [dbo].[act_id_membership] (
  [GROUP_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_id_membership
-- ----------------------------
ALTER TABLE [dbo].[act_id_membership] ADD CONSTRAINT [PK__act_id_m__C2371B0F776D01A7] PRIMARY KEY CLUSTERED ([USER_ID_], [GROUP_ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_id_priv
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_UNIQ_PRIV_NAME]
ON [dbo].[act_id_priv] (
  [NAME_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_id_priv
-- ----------------------------
ALTER TABLE [dbo].[act_id_priv] ADD CONSTRAINT [PK__act_id_p__C4971C0FD2FA5669] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_id_priv_mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_FK_PRIV_MAPPING]
ON [dbo].[act_id_priv_mapping] (
  [PRIV_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_PRIV_USER]
ON [dbo].[act_id_priv_mapping] (
  [USER_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_PRIV_GROUP]
ON [dbo].[act_id_priv_mapping] (
  [GROUP_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE [dbo].[act_id_priv_mapping] ADD CONSTRAINT [PK__act_id_p__C4971C0F822AF20D] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_property
-- ----------------------------
ALTER TABLE [dbo].[act_id_property] ADD CONSTRAINT [PK__act_id_p__A7BE44DEA19023B8] PRIMARY KEY CLUSTERED ([NAME_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_token
-- ----------------------------
ALTER TABLE [dbo].[act_id_token] ADD CONSTRAINT [PK__act_id_t__C4971C0F96E963A2] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_id_user
-- ----------------------------
ALTER TABLE [dbo].[act_id_user] ADD CONSTRAINT [PK__act_id_u__C4971C0F5FFF9E1B] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_procdef_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_UNIQ_INFO_PROCDEF]
ON [dbo].[act_procdef_info] (
  [PROC_DEF_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_INFO_PROCDEF]
ON [dbo].[act_procdef_info] (
  [PROC_DEF_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_INFO_JSON_BA]
ON [dbo].[act_procdef_info] (
  [INFO_JSON_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_procdef_info
-- ----------------------------
ALTER TABLE [dbo].[act_procdef_info] ADD CONSTRAINT [PK__act_proc__C4971C0F26F46AA4] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_re_deployment
-- ----------------------------
ALTER TABLE [dbo].[act_re_deployment] ADD CONSTRAINT [PK__act_re_d__C4971C0F176238E3] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_re_model
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_FK_MODEL_SOURCE]
ON [dbo].[act_re_model] (
  [EDITOR_SOURCE_VALUE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_MODEL_SOURCE_EXTRA]
ON [dbo].[act_re_model] (
  [EDITOR_SOURCE_EXTRA_VALUE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_MODEL_DEPLOYMENT]
ON [dbo].[act_re_model] (
  [DEPLOYMENT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_re_model
-- ----------------------------
ALTER TABLE [dbo].[act_re_model] ADD CONSTRAINT [PK__act_re_m__C4971C0FF792B376] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_re_procdef
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_UNIQ_PROCDEF]
ON [dbo].[act_re_procdef] (
  [KEY_] ASC,
  [VERSION_] ASC,
  [DERIVED_VERSION_] ASC,
  [TENANT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_re_procdef
-- ----------------------------
ALTER TABLE [dbo].[act_re_procdef] ADD CONSTRAINT [PK__act_re_p__C4971C0FDA2B6EA8] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_actinst
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_START]
ON [dbo].[act_ru_actinst] (
  [START_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_END]
ON [dbo].[act_ru_actinst] (
  [END_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_PROC]
ON [dbo].[act_ru_actinst] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_PROC_ACT]
ON [dbo].[act_ru_actinst] (
  [PROC_INST_ID_] ASC,
  [ACT_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_EXEC]
ON [dbo].[act_ru_actinst] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_ACTI_EXEC_ACT]
ON [dbo].[act_ru_actinst] (
  [EXECUTION_ID_] ASC,
  [ACT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_actinst
-- ----------------------------
ALTER TABLE [dbo].[act_ru_actinst] ADD CONSTRAINT [PK__act_ru_a__C4971C0F97489BF6] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_deadletter_job
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID]
ON [dbo].[act_ru_deadletter_job] (
  [EXCEPTION_STACK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID]
ON [dbo].[act_ru_deadletter_job] (
  [CUSTOM_VALUES_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_DJOB_SCOPE]
ON [dbo].[act_ru_deadletter_job] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_DJOB_SUB_SCOPE]
ON [dbo].[act_ru_deadletter_job] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_DJOB_SCOPE_DEF]
ON [dbo].[act_ru_deadletter_job] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_DEADLETTER_JOB_EXECUTION]
ON [dbo].[act_ru_deadletter_job] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE]
ON [dbo].[act_ru_deadletter_job] (
  [PROCESS_INSTANCE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_DEADLETTER_JOB_PROC_DEF]
ON [dbo].[act_ru_deadletter_job] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [PK__act_ru_d__C4971C0F54B650DF] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_entitylink
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_ENT_LNK_SCOPE]
ON [dbo].[act_ru_entitylink] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC,
  [LINK_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_ENT_LNK_SCOPE_DEF]
ON [dbo].[act_ru_entitylink] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC,
  [LINK_TYPE_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_entitylink
-- ----------------------------
ALTER TABLE [dbo].[act_ru_entitylink] ADD CONSTRAINT [PK__act_ru_e__C4971C0F3BF78303] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_event_subscr
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_EVENT_SUBSCR_CONFIG_]
ON [dbo].[act_ru_event_subscr] (
  [CONFIGURATION_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_EVENT_EXEC]
ON [dbo].[act_ru_event_subscr] (
  [EXECUTION_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE [dbo].[act_ru_event_subscr] ADD CONSTRAINT [PK__act_ru_e__C4971C0FB9F5B80E] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_execution
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_EXEC_BUSKEY]
ON [dbo].[act_ru_execution] (
  [BUSINESS_KEY_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDC_EXEC_ROOT]
ON [dbo].[act_ru_execution] (
  [ROOT_PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_EXE_PROCINST]
ON [dbo].[act_ru_execution] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_EXE_PARENT]
ON [dbo].[act_ru_execution] (
  [PARENT_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_EXE_SUPER]
ON [dbo].[act_ru_execution] (
  [SUPER_EXEC_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_EXE_PROCDEF]
ON [dbo].[act_ru_execution] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_execution
-- ----------------------------
ALTER TABLE [dbo].[act_ru_execution] ADD CONSTRAINT [PK__act_ru_e__C4971C0F9E08C66C] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table act_ru_history_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_history_job] ADD CONSTRAINT [PK__act_ru_h__C4971C0F621CE6F3] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_identitylink
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_IDENT_LNK_USER]
ON [dbo].[act_ru_identitylink] (
  [USER_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_IDENT_LNK_GROUP]
ON [dbo].[act_ru_identitylink] (
  [GROUP_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_IDENT_LNK_SCOPE]
ON [dbo].[act_ru_identitylink] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_IDENT_LNK_SUB_SCOPE]
ON [dbo].[act_ru_identitylink] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_IDENT_LNK_SCOPE_DEF]
ON [dbo].[act_ru_identitylink] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_ATHRZ_PROCEDEF]
ON [dbo].[act_ru_identitylink] (
  [PROC_DEF_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TSKASS_TASK]
ON [dbo].[act_ru_identitylink] (
  [TASK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_IDL_PROCINST]
ON [dbo].[act_ru_identitylink] (
  [PROC_INST_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE [dbo].[act_ru_identitylink] ADD CONSTRAINT [PK__act_ru_i__C4971C0F3311726B] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_job
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_JOB_EXCEPTION_STACK_ID]
ON [dbo].[act_ru_job] (
  [EXCEPTION_STACK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_JOB_CUSTOM_VALUES_ID]
ON [dbo].[act_ru_job] (
  [CUSTOM_VALUES_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_JOB_SCOPE]
ON [dbo].[act_ru_job] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_JOB_SUB_SCOPE]
ON [dbo].[act_ru_job] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_JOB_SCOPE_DEF]
ON [dbo].[act_ru_job] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_JOB_EXECUTION]
ON [dbo].[act_ru_job] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_JOB_PROCESS_INSTANCE]
ON [dbo].[act_ru_job] (
  [PROCESS_INSTANCE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_JOB_PROC_DEF]
ON [dbo].[act_ru_job] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [PK__act_ru_j__C4971C0FF97A5B53] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_suspended_job
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID]
ON [dbo].[act_ru_suspended_job] (
  [EXCEPTION_STACK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID]
ON [dbo].[act_ru_suspended_job] (
  [CUSTOM_VALUES_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_SJOB_SCOPE]
ON [dbo].[act_ru_suspended_job] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_SJOB_SUB_SCOPE]
ON [dbo].[act_ru_suspended_job] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_SJOB_SCOPE_DEF]
ON [dbo].[act_ru_suspended_job] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_SUSPENDED_JOB_EXECUTION]
ON [dbo].[act_ru_suspended_job] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE]
ON [dbo].[act_ru_suspended_job] (
  [PROCESS_INSTANCE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_SUSPENDED_JOB_PROC_DEF]
ON [dbo].[act_ru_suspended_job] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [PK__act_ru_s__C4971C0F685B3239] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_task
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_TASK_CREATE]
ON [dbo].[act_ru_task] (
  [CREATE_TIME_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TASK_SCOPE]
ON [dbo].[act_ru_task] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TASK_SUB_SCOPE]
ON [dbo].[act_ru_task] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TASK_SCOPE_DEF]
ON [dbo].[act_ru_task] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TASK_EXE]
ON [dbo].[act_ru_task] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TASK_PROCINST]
ON [dbo].[act_ru_task] (
  [PROC_INST_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TASK_PROCDEF]
ON [dbo].[act_ru_task] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_task
-- ----------------------------
ALTER TABLE [dbo].[act_ru_task] ADD CONSTRAINT [PK__act_ru_t__C4971C0FA44353CC] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_timer_job
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID]
ON [dbo].[act_ru_timer_job] (
  [EXCEPTION_STACK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID]
ON [dbo].[act_ru_timer_job] (
  [CUSTOM_VALUES_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TJOB_SCOPE]
ON [dbo].[act_ru_timer_job] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TJOB_SUB_SCOPE]
ON [dbo].[act_ru_timer_job] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_TJOB_SCOPE_DEF]
ON [dbo].[act_ru_timer_job] (
  [SCOPE_DEFINITION_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TIMER_JOB_EXECUTION]
ON [dbo].[act_ru_timer_job] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TIMER_JOB_PROCESS_INSTANCE]
ON [dbo].[act_ru_timer_job] (
  [PROCESS_INSTANCE_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_TIMER_JOB_PROC_DEF]
ON [dbo].[act_ru_timer_job] (
  [PROC_DEF_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [PK__act_ru_t__C4971C0FCDC69363] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table act_ru_variable
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_RU_VAR_SCOPE_ID_TYPE]
ON [dbo].[act_ru_variable] (
  [SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_RU_VAR_SUB_ID_TYPE]
ON [dbo].[act_ru_variable] (
  [SUB_SCOPE_ID_] ASC,
  [SCOPE_TYPE_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_VAR_BYTEARRAY]
ON [dbo].[act_ru_variable] (
  [BYTEARRAY_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_IDX_VARIABLE_TASK_ID]
ON [dbo].[act_ru_variable] (
  [TASK_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_VAR_EXE]
ON [dbo].[act_ru_variable] (
  [EXECUTION_ID_] ASC
)
GO

CREATE NONCLUSTERED INDEX [ACT_FK_VAR_PROCINST]
ON [dbo].[act_ru_variable] (
  [PROC_INST_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table act_ru_variable
-- ----------------------------
ALTER TABLE [dbo].[act_ru_variable] ADD CONSTRAINT [PK__act_ru_v__C4971C0FA64ABACE] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_button
-- ----------------------------
ALTER TABLE [dbo].[flw_button] ADD CONSTRAINT [PK__flw_butt__3213E83F99306F65] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_category
-- ----------------------------
ALTER TABLE [dbo].[flw_category] ADD CONSTRAINT [PK__flw_cate__3213E83FC14DE679] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table flw_channel_definition
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_CHANNEL_DEF_UNIQ]
ON [dbo].[flw_channel_definition] (
  [KEY_] ASC,
  [VERSION_] ASC,
  [TENANT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table flw_channel_definition
-- ----------------------------
ALTER TABLE [dbo].[flw_channel_definition] ADD CONSTRAINT [PK__flw_chan__C4971C0FFFE164FE] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_draft
-- ----------------------------
ALTER TABLE [dbo].[flw_draft] ADD CONSTRAINT [PK__flw_draf__3213E83F83B1CCBA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_ev_databasechangeloglock
-- ----------------------------
ALTER TABLE [dbo].[flw_ev_databasechangeloglock] ADD CONSTRAINT [PK__flw_ev_d__3214EC27D1278F45] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_event
-- ----------------------------
ALTER TABLE [dbo].[flw_event] ADD CONSTRAINT [PK__flw_even__3213E83F0FF3708C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table flw_event_definition
-- ----------------------------
CREATE NONCLUSTERED INDEX [ACT_IDX_EVENT_DEF_UNIQ]
ON [dbo].[flw_event_definition] (
  [KEY_] ASC,
  [VERSION_] ASC,
  [TENANT_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table flw_event_definition
-- ----------------------------
ALTER TABLE [dbo].[flw_event_definition] ADD CONSTRAINT [PK__flw_even__C4971C0F707BB965] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_event_deployment
-- ----------------------------
ALTER TABLE [dbo].[flw_event_deployment] ADD CONSTRAINT [PK__flw_even__C4971C0FDCF7D59C] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_event_resource
-- ----------------------------
ALTER TABLE [dbo].[flw_event_resource] ADD CONSTRAINT [PK__flw_even__C4971C0F7C216D35] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_form
-- ----------------------------
ALTER TABLE [dbo].[flw_form] ADD CONSTRAINT [PK__flw_form__3213E83F2EA7BDF0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_form_resource
-- ----------------------------
ALTER TABLE [dbo].[flw_form_resource] ADD CONSTRAINT [PK__flw_form__3213E83FF98FE8F8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_option
-- ----------------------------
ALTER TABLE [dbo].[flw_option] ADD CONSTRAINT [PK__flw_opti__3213E83F0A86E89E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_ru_batch
-- ----------------------------
ALTER TABLE [dbo].[flw_ru_batch] ADD CONSTRAINT [PK__flw_ru_b__C4971C0F32AF460A] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table flw_ru_batch_part
-- ----------------------------
CREATE NONCLUSTERED INDEX [FLW_IDX_BATCH_PART]
ON [dbo].[flw_ru_batch_part] (
  [BATCH_ID_] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE [dbo].[flw_ru_batch_part] ADD CONSTRAINT [PK__flw_ru_b__C4971C0F29B2FFE7] PRIMARY KEY CLUSTERED ([ID_])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_script
-- ----------------------------
ALTER TABLE [dbo].[flw_script] ADD CONSTRAINT [PK__flw_scri__3213E83F8F973160] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flw_shortcut
-- ----------------------------
ALTER TABLE [dbo].[flw_shortcut] ADD CONSTRAINT [PK__flw_shor__3213E83F2225BB9D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table pay_ali_trade_history
-- ----------------------------
ALTER TABLE [dbo].[pay_ali_trade_history] ADD CONSTRAINT [PK__pay_ali___3213E83FB903E05A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_app
-- ----------------------------
ALTER TABLE [dbo].[sys_app] ADD CONSTRAINT [PK__sys_app__3213E83FF02E3A0C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_area
-- ----------------------------
CREATE NONCLUSTERED INDEX [uk_code]
ON [dbo].[sys_area] (
  [area_code] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_parent_code]
ON [dbo].[sys_area] (
  [parent_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_area
-- ----------------------------
ALTER TABLE [dbo].[sys_area] ADD CONSTRAINT [PK__sys_area__3213E83F888DC46A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_code_generate
-- ----------------------------
ALTER TABLE [dbo].[sys_code_generate] ADD CONSTRAINT [PK__sys_code__3213E83F4430677B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_code_generate_config
-- ----------------------------
ALTER TABLE [dbo].[sys_code_generate_config] ADD CONSTRAINT [PK__sys_code__3213E83F98F75E49] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD CONSTRAINT [PK__sys_conf__3213E83FED26D2DC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_database_info
-- ----------------------------
CREATE NONCLUSTERED INDEX [NAME_UNIQUE]
ON [dbo].[sys_database_info] (
  [db_name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_database_info
-- ----------------------------
ALTER TABLE [dbo].[sys_database_info] ADD CONSTRAINT [PK__sys_data__3213E83FC983245D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_demo_leave
-- ----------------------------
ALTER TABLE [dbo].[sys_demo_leave] ADD CONSTRAINT [PK__sys_demo__3213E83FDFA3CEFD] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_data] ADD CONSTRAINT [PK__sys_dict__3213E83FA5D693F6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_type] ADD CONSTRAINT [PK__sys_dict__3213E83F81D152EA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_emp
-- ----------------------------
ALTER TABLE [dbo].[sys_emp] ADD CONSTRAINT [PK__sys_emp__3213E83FC21B47DB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_emp_ext_org_pos
-- ----------------------------
ALTER TABLE [dbo].[sys_emp_ext_org_pos] ADD CONSTRAINT [PK__sys_emp___3213E83F4AA5F704] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_emp_pos
-- ----------------------------
ALTER TABLE [dbo].[sys_emp_pos] ADD CONSTRAINT [PK__sys_emp___3213E83F5F9F42D6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_file_info
-- ----------------------------
ALTER TABLE [dbo].[sys_file_info] ADD CONSTRAINT [PK__sys_file__3213E83FF1894B5F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK__sys_menu__3213E83F48B27FA1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE [dbo].[sys_notice] ADD CONSTRAINT [PK__sys_noti__3213E83F53351893] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_notice_user
-- ----------------------------
ALTER TABLE [dbo].[sys_notice_user] ADD CONSTRAINT [PK__sys_noti__3213E83F0EF2A902] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_oauth_user
-- ----------------------------
ALTER TABLE [dbo].[sys_oauth_user] ADD CONSTRAINT [PK__sys_oaut__3213E83FF847571D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_op_log
-- ----------------------------
ALTER TABLE [dbo].[sys_op_log] ADD CONSTRAINT [PK__sys_op_l__3213E83FAFF3BD01] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_org
-- ----------------------------
ALTER TABLE [dbo].[sys_org] ADD CONSTRAINT [PK__sys_org__3213E83FDA567FC2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_pos
-- ----------------------------
CREATE NONCLUSTERED INDEX [CODE_UNI]
ON [dbo].[sys_pos] (
  [code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_pos
-- ----------------------------
ALTER TABLE [dbo].[sys_pos] ADD CONSTRAINT [PK__sys_pos__3213E83F6ED76B33] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__3213E83F24DB5FDA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_data_scope
-- ----------------------------
ALTER TABLE [dbo].[sys_role_data_scope] ADD CONSTRAINT [PK__sys_role__3213E83F0F69DE97] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD CONSTRAINT [PK__sys_role__3213E83FB0D80F14] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_sms
-- ----------------------------
ALTER TABLE [dbo].[sys_sms] ADD CONSTRAINT [PK__sys_sms__3213E83F1A703710] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_tenant_info
-- ----------------------------
ALTER TABLE [dbo].[sys_tenant_info] ADD CONSTRAINT [PK__sys_tena__3213E83F989C4B74] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_timers
-- ----------------------------
ALTER TABLE [dbo].[sys_timers] ADD CONSTRAINT [PK__sys_time__3213E83FC0D76B31] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__3213E83F2398B762] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_data_scope
-- ----------------------------
ALTER TABLE [dbo].[sys_user_data_scope] ADD CONSTRAINT [PK__sys_user__3213E83F780048BB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [PK__sys_user__3213E83F9E6E5370] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_vis_log
-- ----------------------------
ALTER TABLE [dbo].[sys_vis_log] ADD CONSTRAINT [PK__sys_vis___3213E83F2334260E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table xn_code_gen_test
-- ----------------------------
ALTER TABLE [dbo].[xn_code_gen_test] ADD CONSTRAINT [PK__xn_code___3213E83F06AB1B0A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE [dbo].[act_de_model_relation] ADD CONSTRAINT [act_de_model_relation_ibfk_1] FOREIGN KEY ([model_id]) REFERENCES [dbo].[act_de_model] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_de_model_relation] ADD CONSTRAINT [act_de_model_relation_ibfk_2] FOREIGN KEY ([parent_model_id]) REFERENCES [dbo].[act_de_model] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE [dbo].[act_ge_bytearray] ADD CONSTRAINT [ACT_FK_BYTEARR_DEPL] FOREIGN KEY ([DEPLOYMENT_ID_]) REFERENCES [dbo].[act_re_deployment] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_id_membership
-- ----------------------------
ALTER TABLE [dbo].[act_id_membership] ADD CONSTRAINT [ACT_FK_MEMB_GROUP] FOREIGN KEY ([GROUP_ID_]) REFERENCES [dbo].[act_id_group] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_id_membership] ADD CONSTRAINT [ACT_FK_MEMB_USER] FOREIGN KEY ([USER_ID_]) REFERENCES [dbo].[act_id_user] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE [dbo].[act_id_priv_mapping] ADD CONSTRAINT [ACT_FK_PRIV_MAPPING] FOREIGN KEY ([PRIV_ID_]) REFERENCES [dbo].[act_id_priv] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_procdef_info
-- ----------------------------
ALTER TABLE [dbo].[act_procdef_info] ADD CONSTRAINT [ACT_FK_INFO_JSON_BA] FOREIGN KEY ([INFO_JSON_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_procdef_info] ADD CONSTRAINT [ACT_FK_INFO_PROCDEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_re_model
-- ----------------------------
ALTER TABLE [dbo].[act_re_model] ADD CONSTRAINT [ACT_FK_MODEL_DEPLOYMENT] FOREIGN KEY ([DEPLOYMENT_ID_]) REFERENCES [dbo].[act_re_deployment] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_re_model] ADD CONSTRAINT [ACT_FK_MODEL_SOURCE] FOREIGN KEY ([EDITOR_SOURCE_VALUE_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_re_model] ADD CONSTRAINT [ACT_FK_MODEL_SOURCE_EXTRA] FOREIGN KEY ([EDITOR_SOURCE_EXTRA_VALUE_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES] FOREIGN KEY ([CUSTOM_VALUES_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [ACT_FK_DEADLETTER_JOB_EXCEPTION] FOREIGN KEY ([EXCEPTION_STACK_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [ACT_FK_DEADLETTER_JOB_EXECUTION] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE] FOREIGN KEY ([PROCESS_INSTANCE_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_deadletter_job] ADD CONSTRAINT [ACT_FK_DEADLETTER_JOB_PROC_DEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE [dbo].[act_ru_event_subscr] ADD CONSTRAINT [ACT_FK_EVENT_EXEC] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_execution
-- ----------------------------
ALTER TABLE [dbo].[act_ru_execution] ADD CONSTRAINT [ACT_FK_EXE_PARENT] FOREIGN KEY ([PARENT_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_execution] ADD CONSTRAINT [ACT_FK_EXE_PROCDEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_execution] ADD CONSTRAINT [ACT_FK_EXE_PROCINST] FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_execution] ADD CONSTRAINT [ACT_FK_EXE_SUPER] FOREIGN KEY ([SUPER_EXEC_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE [dbo].[act_ru_identitylink] ADD CONSTRAINT [ACT_FK_ATHRZ_PROCEDEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_identitylink] ADD CONSTRAINT [ACT_FK_IDL_PROCINST] FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_identitylink] ADD CONSTRAINT [ACT_FK_TSKASS_TASK] FOREIGN KEY ([TASK_ID_]) REFERENCES [dbo].[act_ru_task] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [ACT_FK_JOB_CUSTOM_VALUES] FOREIGN KEY ([CUSTOM_VALUES_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [ACT_FK_JOB_EXCEPTION] FOREIGN KEY ([EXCEPTION_STACK_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [ACT_FK_JOB_EXECUTION] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [ACT_FK_JOB_PROCESS_INSTANCE] FOREIGN KEY ([PROCESS_INSTANCE_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_job] ADD CONSTRAINT [ACT_FK_JOB_PROC_DEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES] FOREIGN KEY ([CUSTOM_VALUES_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [ACT_FK_SUSPENDED_JOB_EXCEPTION] FOREIGN KEY ([EXCEPTION_STACK_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [ACT_FK_SUSPENDED_JOB_EXECUTION] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE] FOREIGN KEY ([PROCESS_INSTANCE_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_suspended_job] ADD CONSTRAINT [ACT_FK_SUSPENDED_JOB_PROC_DEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_task
-- ----------------------------
ALTER TABLE [dbo].[act_ru_task] ADD CONSTRAINT [ACT_FK_TASK_EXE] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_task] ADD CONSTRAINT [ACT_FK_TASK_PROCDEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_task] ADD CONSTRAINT [ACT_FK_TASK_PROCINST] FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [ACT_FK_TIMER_JOB_CUSTOM_VALUES] FOREIGN KEY ([CUSTOM_VALUES_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [ACT_FK_TIMER_JOB_EXCEPTION] FOREIGN KEY ([EXCEPTION_STACK_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [ACT_FK_TIMER_JOB_EXECUTION] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [ACT_FK_TIMER_JOB_PROCESS_INSTANCE] FOREIGN KEY ([PROCESS_INSTANCE_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_timer_job] ADD CONSTRAINT [ACT_FK_TIMER_JOB_PROC_DEF] FOREIGN KEY ([PROC_DEF_ID_]) REFERENCES [dbo].[act_re_procdef] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table act_ru_variable
-- ----------------------------
ALTER TABLE [dbo].[act_ru_variable] ADD CONSTRAINT [ACT_FK_VAR_BYTEARRAY] FOREIGN KEY ([BYTEARRAY_ID_]) REFERENCES [dbo].[act_ge_bytearray] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_variable] ADD CONSTRAINT [ACT_FK_VAR_EXE] FOREIGN KEY ([EXECUTION_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[act_ru_variable] ADD CONSTRAINT [ACT_FK_VAR_PROCINST] FOREIGN KEY ([PROC_INST_ID_]) REFERENCES [dbo].[act_ru_execution] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE [dbo].[flw_ru_batch_part] ADD CONSTRAINT [FLW_FK_BATCH_PART_PARENT] FOREIGN KEY ([BATCH_ID_]) REFERENCES [dbo].[flw_ru_batch] ([ID_]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

