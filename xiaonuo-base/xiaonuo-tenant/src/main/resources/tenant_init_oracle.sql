/*
 Navicat Premium Data Transfer

 Source Server         : 本机Mysql
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : xiaonuo-vue-tenant

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 09/04/2021 19:58:08
*/


-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
CREATE TABLE "ACT_DE_DATABASECHANGELOG" (
  "ID" NVARCHAR2(255) NOT NULL ,
  "AUTHOR" NVARCHAR2(255) NOT NULL ,
  "FILENAME" NVARCHAR2(255) NOT NULL ,
  "DATEEXECUTED" DATE NOT NULL ,
  "ORDEREXECUTED" NUMBER(11) NOT NULL ,
  "EXECTYPE" NVARCHAR2(10) NOT NULL ,
  "MD5SUM" NVARCHAR2(35) ,
  "DESCRIPTION" NVARCHAR2(255) ,
  "COMMENTS" NVARCHAR2(255) ,
  "TAG" NVARCHAR2(255) ,
  "LIQUIBASE" NVARCHAR2(20) ,
  "CONTEXTS" NVARCHAR2(255) ,
  "LABELS" NVARCHAR2(255) ,
  "DEPLOYMENT_ID" NVARCHAR2(10) 
)
;

-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
CREATE TABLE "ACT_DE_DATABASECHANGELOGLOCK" (
  "ID" NUMBER(11) NOT NULL ,
  "LOCKED" NCHAR(1) NOT NULL ,
  "LOCKGRANTED" DATE ,
  "LOCKEDBY" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
CREATE TABLE "ACT_DE_MODEL" (
  "ID" NVARCHAR2(255) NOT NULL ,
  "NAME" NVARCHAR2(400) NOT NULL ,
  "MODEL_KEY" NVARCHAR2(400) NOT NULL ,
  "DESCRIPTION" NCLOB ,
  "MODEL_COMMENT" NCLOB ,
  "CREATED" DATE ,
  "CREATED_BY" NVARCHAR2(255) ,
  "LAST_UPDATED" DATE ,
  "LAST_UPDATED_BY" NVARCHAR2(255) ,
  "VERSION" NUMBER(11) ,
  "MODEL_EDITOR_JSON" NCLOB ,
  "THUMBNAIL" BLOB ,
  "MODEL_TYPE" NUMBER(11) ,
  "TENANT_ID" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO "ACT_DE_MODEL" VALUES ('4bd58cbc-60b7-11eb-a285-5405dbb6a472', '用车申请', 'car_model', '用车申请', NULL, TO_DATE('2021-01-27 23:49:52.991000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', TO_DATE('2021-01-27 23:56:03.811000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', '1', '{"modelId":"4bd58cbc-60b7-11eb-a285-5405dbb6a472","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"car_model","name":"用车申请","documentation":"用车申请","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737"}],"bounds":{"lowerRight":{"x":140,"y":207},"upperLeft":{"x":110,"y":177}},"dockers":[]},{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A"}],"bounds":{"lowerRight":{"x":285,"y":232},"upperLeft":{"x":185,"y":152}},"dockers":[]},{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}],"bounds":{"lowerRight":{"x":184.15625,"y":192},"upperLeft":{"x":140.609375,"y":192}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}},{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330","properties":{"overrideid":"","name":"领导审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4940"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D"}],"bounds":{"lowerRight":{"x":430,"y":232},"upperLeft":{"x":330,"y":152}},"dockers":[]},{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}],"bounds":{"lowerRight":{"x":329.15625,"y":192},"upperLeft":{"x":285.84375,"y":192}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}},{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","asynchronousdefinition":"false"},"stencil":{"id":"ThrowNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":488,"y":207},"upperLeft":{"x":458,"y":177}},"dockers":[{"x":473,"y":192}]},{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}],"bounds":{"lowerRight":{"x":457.46875,"y":192},"upperLeft":{"x":430.40625,"y":192}},"dockers":[{"x":50,"y":40},{"x":15,"y":15}],"target":{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', HEXTORAW('89504E470D0A1A0A0000000D49484452000000F80000004008060000003748BA13000006634944415478DAED9C4B48A35718865DCCA20B51114541172EBAA8D2D9B9A892459682055D78371A2F056F2BA5052DA24337222236B5DEE8A274512814B5341405E3258956AD68A7D8348EE3AD6888C6611CCDD49851E7F4FBE2A56A8DA3F9138DBFEF03874C9824EA9BF7C939FFF9930404000000000000000000000000C0094288474B4B4B3F4E4C4C1C0E0E0E8A818101590E9D4E270C06C30B1A2A642CBF8C811BB87846A351D86C36E1743A653D363737855EAFDFA622A6216379650CDCC0B3CA4328DE99023A69B631236379650CDCC04BC6CB9EA4A5A96F8549F785EB526E05A4F2ED236379650CDCC0C74E179F9C55D3CFE28F5F3E3B1D6B26ADDCCA2790B1BC32063728DF9F034FCE958FAFA37CC81882CB44705E369E2D1F5F47F99031049789E0CFC7BE3E573EBE8EF22163082E13C1799C2D9F0C3780043286E00F56F0F9B1D673E5E3EB281F3286E0F75C70FB96E55CE92E0EFE7F940F1943F07B2AF855C593D352F22E0547C6C02F8EC1E53CFCE5181C1903940F82236380F24170087EEBA4A7A7076665657D4AA38FC61E0D919D9DED54A954A3F4EF27B9B9B9D1101C822363EF78453E196ECD2BFA81E4B16AADAEAECEACD7EBFF2104E37038C4F4F4B4E8E8E8D8292C2CB41714147C45E33D080EC191F1F5BCCAC8C8B02A95CA178F1F3F7E1B1C1CCC3F470406068AB8B838919494E420C9ED7979792D3EF32A3333B3A5A4A4C4BABCBC7C64B51B76767644535393A3A8A868855E95DE87E0101C19BB27272747A35028ECE1E1E122353555F4F6F60ABBDDEE72892FFBFAFA04CFE6111111223939798F045FF4BA572477755555959567EAEB3232327248B3F9DA5D488EF221E3FB9031C9FD79424282232A2A4A8C8F8F5FE9D3ECECAC888E8E166AB59ABD5AF59A5724F787F480DB3C33DF14925CD07D97F9F802E583E0C8F8BC578989897B2C37AD8AAFE513DF2E262646545454BCCDCFCF7FEE15AF48D01983C1F04678487373F36BFA65BE44F9203832FE0F72C21C1A1AFACE99DBDD4C5E5B5BBB452B8066A907FF8ACACACA970707079EFAED3A26A765C5F66DEEAEA37CC8D89F3366AF08674A4A8A474EF131794D4D8DA017892D495ED1037CDFDDDD7D2824D2DEDEBEC15BFDBE281A3DEE300D25CAE73BC191B1E7195F965D6969E94FB1B1B142ABD57AE4136FBCC5C7C70B8D46B32CC9ABE2E262D3E2E2A254BFC5D4D4948396137A1F954F1C8FD320513E64EC4782FF2F3B127C212828E874B7FCA6F0FDF814DAE4E4E44B7E5C29BB7C6F6EB273EE0E7E0C3E79EFE3F29D0689F221633F14FC343BF2EA20C0F5D5F29EC3F73FF6CA21E989F51697FCA13E1B0FB57CC8F8FE641C12122279063FF14ACA6680D34B33F86B49AF34583E62892EA3253AAF8C131313251F83EFEEEEAE4BF24AA5524DCCCDCD1D4815DC68342E493A56C0061036D964B4C9C6A79EABAAAA5CEF5CF374355C5F5F2F8687879F4AF28AEEDCDAD9D9F94CAAE0757575467AAC5A9CC2C16932647CE415B1111919C91BD01E9D07B75AADA2BABA7A409257B444FF8066718B43C23A7D6161C142BFC41A3D5618CA07C191F191576AB57A5DA3D11CB2AC377D275B4B4B8B989F9F379157AB92BDCACCCCFCA6A9A949EFE9EE39BF55957E894F503E088E8CCF7B45B3F8535E6AB3E4EF9AC979E666B9F9F6E4D53EBF55D52B5E1D7F4E7555ABD54EDE54EE8A8A8A395E8EE0C326101C195FEAD55A7F7FFFB38E8E0E11161626D2D2D25C1B6F173F4D46AB68D78B004DB42EAFCACACA4C5EF58A97142C796363E3D07596EBA3A3A35B7979799BFC2E1BA552F90882437064ECDE2B5A724FACAFAFEF373434088542E13A851670FC7970DE2DE7599B8FB90D068395BCB2F9C42B7EC5E165057FE1435B5BDB8CD96CDE3D719D2F575656F8B3AC3B346B5BE8365374DB8F02EE08940F19DF978CCF7865E9EAEAFA8BBC725EF4AAA7A7E7557979F95A6E6EEE6F3EF7EAF855A7952EC7CE7EB58C5AADFE3D2727E73B3E257017B336CA07C1EF73C6275E9143BF9EF58A8EB567FCC52BBF01E543C6F8D245088EF22163080EC1513E640CC121380447C600E583E0C818A07C101C1903940F824370088EF22163080EC1513E640CC12138CA878C010487E0C818F888C1C1C187563E07956F1F19CB2B63E006FE589DCD667B30E5B3582C3F50F9CCC8585E1903370C0D0DA58C8C8CBCDAD8D8D895FBACC2C5D3E9747FD34843C6F2CA185C013D191FD32BEE142FABF8D849A683FF36F35D150F1903000000000000000000000000000000000000000000BCCABF3C976DD714CC53BE0000000049454E44AE426082'), '0', NULL);
INSERT INTO "ACT_DE_MODEL" VALUES ('674afd8b-f3fb-11ea-abe7-e0d55e485056', '出差流程', 'travel', '出差流程', NULL, TO_DATE('2020-09-11 14:52:48.062000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', TO_DATE('2020-09-11 14:55:52.718000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', '1', '{"modelId":"674afd8b-f3fb-11ea-abe7-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"travel","name":"出差流程","documentation":"出差流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}},{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13","properties":{"overrideid":"","name":"经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4446"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}},{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859","properties":{"overrideid":"","name":"领导会签","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"Parallel","multiinstance_cardinality":"${num}","multiinstance_collection":"pers","multiinstance_variable":"per","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"static","assignee":"${per}"}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}},{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:5494"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}],"bounds":{"lowerRight":{"x":609.15625,"y":178},"upperLeft":{"x":565.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}},{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":778,"y":192},"upperLeft":{"x":750,"y":164}},"dockers":[]},{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}],"bounds":{"lowerRight":{"x":750,"y":178},"upperLeft":{"x":710.5625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', HEXTORAW('89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004454944415478DAED9DCF4B1B6918C73D78EC718F7BE8A1873DEC61FF803DE40F28ECA5E28F248A1861BD958078F0520B22EB1E16A9ACA5D893071591AE86D205A3D54841105996DD453660D8EE1245ADF547ED6A6AC2DBE7918988A66D9A8C99C9EBE7032F8176E8F49367DE6F9E796786A9A90100000000000000000000508C31B5A9546A62696929373B3B6B6666663C1BF178DC241289573242F8E1771DFCAC440BB6B8B868B6B6B64C2693F17C6C6F6F9B8585857D29E01DFCF0B3DDCF4AF417E07CC17E7FDA793ADEECA6BD2C5C467E1956F1C3CF763F2BD196F2FC17962FDAEAF31F3CFD4590A29DE0879FED7E56A2E78A858AF657FCBED74533F8E167BBDFB50A15AFCF5DAFFAA0C40F3F42A502A1A2E7A9F9A2255F3CB0EEA0C40F3F42A582A1922FD6C561CB41891F7E848A47A73F7E1957D53EE387DFB50D95C6C6C66F1B1A1A26E4332D9F46C65E7D7DFD13F90C102AF8E1674FA8C81CFF4A4644E6F63DF9BCDBD4D4F48DEB8122FFF88FA150687F6C6C2CB5BEBE7E6C849D9D9D939191913F648707F2F70F0281402D45C30FBFEAF5ABABABBB2573F9B90449D6691CCE86CCF397F2E72157E6B9064A341ADDD8DDDD358538383838EEE8E8F84DB61BA268F8E1579D7E1A28121AFF6880B4B7B79BC1C141333E3E6E8687874D6767E759B8E8D949D9A73C2D2D2D6F3F1428E783453B16DD9EA2E1875FF5F96987A2A1D1DBDBABF3F9D21C5F595931914824E704CB4F25EF480225363535756C8A607474F4CFB2538C83123FFC2AEEE7ACA164B54329142879D6D6D64C381C7E27C172120C06BF2C3554F6F4398762D035165DBCA568F8E1575D7E326FBFD70E646868E893F3BCBFBFFF50B7D505DC5277663E07DDBEC4FDACEA4AB3743A5F5B5A34FCF0F39D5FDE4BC6CF3A77750DE553E836CEFACABD523B95FDCFE854CCC515E352869F8B861F7E36FB15D3A90C0C0C64CAEA542291C8AFD3D3D3B96242657272F25FD654F0C3AFFAFCB403D3A08846A3269BCD7E708EEB059B6030787AB959AF169573F5E75D11577F7467876EDC08C741891F7E95F793B9FEB786C5F2F272C139AE61D3D3D39373BA9A58595F625B5BDBA3EEEEEEA38FDCA762BABABAD2F29F7A4CD1F0C3AF6A2F29DFD1C0686D6DCD2593C94B1DCAB940F94FC6CDB2BF48D9D1C3E6E6E68C5E5ECEAFB1E81A4A2C163B0C87C3471A28D20EDDA068F8E157BD7EFA188E73F76CAEAFAFEF501765750D257FCAE3044AA0C62DF4544802E41719AF9D1DBF098542CF78F6073FFCECF1D31BDB644E1F1558C88DB9D2A1780107257EF879FE40E117CEBD2BA70F1496BC284BA87050E2879F957050E2871FA142A8E0871FA142A87050E287DF35E1E27B557C328EAEEABD31F8E1E7273F2B4924121B7E79A5647EA4D3E931B7DE00871F7E7EF6B392B9B9B9EFE6E7E7F7363737FFF7C32F80162C1E8FBF74EB5DB5F8E1E7673F6B912FE8B624EFB2B6741F7BEB7D0586EE7FD5ED82E1879F9FFD000000000000000000000000000000000000000000C00DDE030876FE6DA03BCB1F0000000049454E44AE426082'), '0', NULL);
INSERT INTO "ACT_DE_MODEL" VALUES ('6faec554-df94-11ea-aecf-fa1265c5e47d', '请假流程', 'leave', '请假流程', '', TO_DATE('2020-08-16 15:45:20.900000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', TO_DATE('2020-09-22 21:34:05.404000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', '2', '{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', HEXTORAW('89504E470D0A1A0A0000000D494844520000010C0000003408060000007FD206E7000005194944415478DAED9B3B4C5B571C873364E890A163870ED9DAA1432B75E8D08121438748ED0018300F2359022C2C8B4755816A29E221401D22218C1706D82A3142540AB6034642A6292A559212350969070B613A508A1B830DA7E71FD9AA318FF875B1AFFC7DD29165FB5E1DFCD3FF7CF79C732F376E00000000000000000000C0F5A194BAB9BDBD3D1B0A854EFC7EBF5A5A5A2ADBE6F3F9543018FC4BB746F2303E0FB280734841ACAEAEAA4824A28E8E8ECABEEDEDEDA9959595BF7581549387B17990059C43AE1EE905F1E447B7FAF5C1D76F5ECBB8308EF455658B3C8CCD23330B33E461646D8046A69AE9814B31A45A395F4D7451C4C9C3D83C32B3304B1E46D5066864FD67D201A2C8C3D83C32B330913014231B61200C848130CA4D18CFD7BC6F8A415E114665E7719130CC9007C2B80E61C462EAF142FF992B88BC97CF2B5218E471561826CA03615C8330D20B21B355A230C8E3AC30CC9407C2B8C6258959DA752D492A390FB2008A823CC802280AF24018A514464343C3C7757575BDBADD93578BC5F299211D555555DD9C9898F856F3474B4BCBA9EE4CD96C36E576BBF7A6A7A7A73C1ECF2D8481301046790A438FD72A2D875F64DC5ED09ECBF745EB6C6C6CEC0397CBB5333C3C7CBAB1B1A10E0E0E94108D46D5E6E6A61A191951FAFBE8DCDCDCE7080361208CF212467D7DFD886E099183C3E1505EAF57CDCECEAAA9A929E5743AD3C5F15DC19D59ADD6F77527D1858505954824D465040201D5D3D3131F1F1FFF84018230104679084364911282BEA09F1BC3F25E3ED7E3BC7069C832A4BDBDFD85C8221B441A9D9D9DFB353535B7280A8481304A2B0C5966E81617118442A12BC7AE7C9F92466D6DED9D7CEDF4D5C0C040ECAA994526B23C191C1CFC86A2401808A3E4C2789C9A5964831C97DAD390C942CE1DDAEDF665D9B3C805D9D3E8EAEA7A56A41FFC30B51953E945919E0579501B6FCB45B74F65F07774749C647BC197E31C0EC7B19C97D7DD133D45799DDAE0CC16D9086D6A6A3A2ED28F4F19EF2103E4FF2CA420C883DA784B2E2FE45536387341364293E7F7E6D5793E5C72EBA6A066E6A2200F63F330BB308CA88F5493BB21B920C727CFBD97CF431ED17C66188D8D8D31A69D2C495892947449220F67298FC7739CCBF89D9C9CDC2F648631B7BEBEBE97EB1E86DD6E5F63638B4D4F363D4BB7E969B1583E9281DFDADA1A938B78B6177B7DFCA19C274F84E67597C4E9743ECD45186EB73BACFFD83A8A0261208C92DF255995C13F343474727C7CF54443BE1F1D1D8D2767178FF27E0E434ED6EB9A67D9C862717171DF6AB5FEC673180803619485306EEBB62312E8EDED3D0D87C3178E5BF9BCAFAFEF24290B39FE76414F7AEAE9C9CB99999995442211BF4C16F3F3F32F9B9B9B7F2FA8338A823CC8A2D84F7A7EA8C7E4ABD426687777F79947C3FBFBFBD39FF27C25C717E5F1709969B4B5B5FDAC7FA4EFF0F07037B9E689ADADADFDE472B99EEA8E9E18250B8A823CC8227F6C36DBBB168BE5BE1E9FFF5C7237453EF7EA95C17B45EB34B93CA9968DD0B48EE5F5072D8B46239621140579904551C5F18E1EAB5F64FC7BFB5DA3C76E49A028C8832C80A2200FB2000608C24018080361200C8481301006C24018080361200C848130100645411E640157E2F7FBCD5814AF7551C4C9C3D83CC802CE110C0677229188A98A221C0E7FAF8B628B3C8CCD832CE01C8140E0CBE5E5E5FDDDDDDD7FCD70F59082F0F97C7FEA564D1EC6E6411670213AE0BBDACA8F642A27EBBF326EF2F76D195D10E441160000000000000000000000000000000000005021FC0713D4C1C9B74304720000000049454E44AE426082'), '0', NULL);
INSERT INTO "ACT_DE_MODEL" VALUES ('82114da5-e0f6-11ea-9096-e0d55e485056', '转正流程', 'formal', '转正流程', NULL, TO_DATE('2020-08-18 09:59:53.388000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', TO_DATE('2020-08-31 09:55:35.221000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', '1', '{"modelId":"82114da5-e0f6-11ea-9096-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"formal","name":"转正模型","documentation":"转正模型","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8"}],"bounds":{"lowerRight":{"x":274.4890581296828,"y":217.09854567332218},"upperLeft":{"x":174.48905812968277,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}],"bounds":{"lowerRight":{"x":173.87686255641609,"y":177.8720425939571},"upperLeft":{"x":130.54148164110265,"y":177.51525016837908}},"dockers":[{"x":15,"y":15},{"x":50.000000000000014,"y":40}],"target":{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}},{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2","properties":{"overrideid":"","name":"部门经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4403"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}],"bounds":{"lowerRight":{"x":319.54903503781736,"y":177.68745140354622},"upperLeft":{"x":274.94002309186544,"y":177.41109426977596}},"dockers":[{"x":50.000000000000014,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}},{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D","properties":{"overrideid":"","name":"主管审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280709549107552257","firstName":"徐玉祥[xuyuxiang]","$$hashKey":"object:4601"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A"}],"bounds":{"lowerRight":{"x":561.1496536284474,"y":217.09854567332218},"upperLeft":{"x":461.1496536284473,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}],"bounds":{"lowerRight":{"x":460.526748917857,"y":177.67669607889732},"upperLeft":{"x":420.6229047105904,"y":177.42184959442486}},"dockers":[{"x":50,"y":40},{"x":50.000000000000036,"y":40}],"target":{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}},{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]","$$hashKey":"object:4796"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}],"bounds":{"lowerRight":{"x":609.5770517690605,"y":177.6946329924341},"upperLeft":{"x":561.5726018593869,"y":177.40391268088808}},"dockers":[{"x":50.000000000000036,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}},{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":783,"y":192},"upperLeft":{"x":755,"y":164}},"dockers":[]},{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}],"bounds":{"lowerRight":{"x":754.375,"y":178},"upperLeft":{"x":710.390625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', HEXTORAW('89504E470D0A1A0A0000000D49484452000001150000002E080600000006248D38000004794944415478DAED9DBD4B5B5118C61D1C3A74ECD0A143870E0E1DFA0774089D0B2E86F8118C62C410901421200EA2810C1141B4828B8B54AAB6A50EA1935163A454080E2D84D880429110346D6353A3A4269EBE6FC805B586D87C98DC739E1F1C12E3C5C39387F3DCF79C7BAEB7A10100000000000000000000000000104234EEEDEDBDDDDADACAAEAEAE8A9595959A359FCF270281C0776A66E853DB3755344A099BB6B9B9290E0F0F453A9DAE798BC7E3626363E31799D8027DEAFAA68A4629E1B3C045D33E7F70E6DAEF44B496E6A5E9EC10863E757D5345A394705979F14BD38C0BAF7B6A7A5620E3CEA04F5DDF54D128253C5FBCCEB890CF556BE304F4A9EB9B2A1A950A955ACF5FAB1D2A7AD727BB6FAA68943E5478AEAA1917F9F852BA5091499FECBEA9A251EA50D10CBBDA640915D9F4C9EE9B2A1A9598FED44BABD6F447167DB2FBA68A46840A4205A18250A94AA8B4B5B5DDA3666D6D6D1DA1D71746A3F15155063CFDF1A776BBDDDFDDDD7D449D898E8E8EE3F6F6F6457AFF10C62154102A72848AC9649AA0317DCA63FC62A3CF9769CC3FA85847838383EFAC566BD6EBF58A582C2618DE08343F3F7F62369B53D4A901C62154102AFAD648E3F8150708150BE71E8F27BBB0B020A6A7A7733FE7C3659FDE3F29BBA3A1A1A1E5E1E1E1F3442221AE83B72EF7F4F4FCA412E92E8C43A82054F4A99102A38583836622E79148E4D218E7B1EF72B9B4AA65BFACD989CD667BC6154AA140D1989C9CCCD0B16E18875041A8E853235520110E8D603078ED18CF64321783C55B72470E87E3134F798AB1B3B323060606BEC238840A42457F1A4D26D3630E0B1AC3B9F02804171766B339CBC796BC784BA5D031AF9D1423994C0A8BC5F2A78CD22BCC2BCDB21A27AB3ED97D935DA3A68D9A8B83626666A6E8589F9A9A3AE363F9AA50A99D8A9B7275B5B89456CFC6419FBABEA9A2716969A9E838E763F2C78F94142A5D5D5DC968345AB4232E8B3A3B3BD3283131FDC1F44797D598EDA6958AC7E3499655A9F4F5F5BD9F9B9B2BDA112FEED86CB6208C43A82054F4A79102A2895AA6B7B737B7945188DDDD5D5E534953A89C95BC67C56834DEA76AE5942F1B178217761C0E478A2A956618875041A8E8F692F23A57206EB75BA452A97FC6F9F6F6366F1DC9E437C24D94D5195F56B6DBEDC7E3E3E322140A09EDF232BF7285C28162B158DEC038840A4245BF1AB95AA1C088736870C5C253215E3F999D9D154EA7F3D2CE5A83C1D058768754ADDC191B1B7B3D3A3AFA83A644B9DD75F459A6BFBFFF4B252A14840A4205A1527B8DF960592FB090BB4FBF375724506E13840A4205A15217371436E5176F733714F26D385C5834E811840A4205A1827F7D8050813E840A4205A1825041A840234205A1825041A82054FE9FABCF56A993765AADE7FEC8A24F76DF54D12825814020562F8F95D45A341A5DACD453E064D527BB6FAA689492B5B5B566BFDF7F74707070520F670136CDE7F37DABD4F36A65D527BB6FAA689416FA929E53FA06B9AC2BF4D4FB5B6ADC7FB8D2A6C9AA4F76DF54D1080000000000000000000000000000000000000000000000000000A8147F01C3C9C852339444A40000000049454E44AE426082'), '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
CREATE TABLE "ACT_DE_MODEL_HISTORY" (
  "ID" NVARCHAR2(255) NOT NULL ,
  "NAME" NVARCHAR2(400) NOT NULL ,
  "MODEL_KEY" NVARCHAR2(400) NOT NULL ,
  "DESCRIPTION" NCLOB ,
  "MODEL_COMMENT" NCLOB ,
  "CREATED" DATE ,
  "CREATED_BY" NVARCHAR2(255) ,
  "LAST_UPDATED" DATE ,
  "LAST_UPDATED_BY" NVARCHAR2(255) ,
  "REMOVAL_DATE" DATE ,
  "VERSION" NUMBER(11) ,
  "MODEL_EDITOR_JSON" NCLOB ,
  "MODEL_ID" NVARCHAR2(255) NOT NULL ,
  "MODEL_TYPE" NUMBER(11) ,
  "TENANT_ID" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_de_model_history
-- ----------------------------
INSERT INTO "ACT_DE_MODEL_HISTORY" VALUES ('48ce341d-fcd8-11ea-a4d5-e0d55e485056', '请假流程', 'leave', '请假流程', NULL, TO_DATE('2020-08-16 15:45:20.900000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', TO_DATE('2020-08-16 17:00:51.219000', 'SYYYY-MM-DD HH24:MI:SS'), 'superAdmin', NULL, '1', '{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', '6faec554-df94-11ea-aecf-fa1265c5e47d', '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
CREATE TABLE "ACT_DE_MODEL_RELATION" (
  "ID" NVARCHAR2(255) NOT NULL ,
  "PARENT_MODEL_ID" NVARCHAR2(255) ,
  "MODEL_ID" NVARCHAR2(255) ,
  "RELATION_TYPE" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
CREATE TABLE "ACT_EVT_LOG" (
  "LOG_NR_" NUMBER(20) NOT NULL ,
  "TYPE_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "TIME_STAMP_" DATE NOT NULL ,
  "USER_ID_" NVARCHAR2(255) ,
  "DATA_" BLOB ,
  "LOCK_OWNER_" NVARCHAR2(255) ,
  "LOCK_TIME_" DATE ,
  "IS_PROCESSED_" NUMBER(4) 
)
;

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
CREATE TABLE "ACT_GE_BYTEARRAY" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "NAME_" NVARCHAR2(255) ,
  "DEPLOYMENT_ID_" NVARCHAR2(64) ,
  "BYTES_" BLOB ,
  "GENERATED_" NUMBER(4) 
)
;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1294922083660345346', '1', '请假流程.bpmn20.xml', '1294922083219943426', HEXTORAW('3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E58187E6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8AFB7E58187E6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D36324539353337382D443641412D343243442D383346382D3933303138413644304144382220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422206E616D653D22E88081E586AFE5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41393945354431432D323130412D343234422D424339382D4645313837383043393933462220736F757263655265663D227369642D35343537324230432D323036452D343233422D414134412D31373045413235343743324622207461726765745265663D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522206E616D653D22E5AE9DE5B1B1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D38353436363339352D394437362D343539442D384130372D4532333544413536344230442220736F757263655265663D227369642D41324436413243432D463539362D343731442D394343312D46434636373439314141423422207461726765745265663D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E3C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D227369642D36393145443245412D343935362D343733442D423932452D3736463045434139383930452220736F757263655265663D227369642D31354333394631362D334439382D344438352D394136322D44363644433735354646343522207461726765745265663D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D41323146463443422D464442462D343033412D393036352D39424135314233413038304222206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246222069643D2242504D4E53686170655F7369642D35343537324230432D323036452D343233422D414134412D313730454132353437433246223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234222069643D2242504D4E53686170655F7369642D41324436413243432D463539362D343731442D394343312D464346363734393141414234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435222069643D2242504D4E53686170655F7369642D31354333394631362D334439382D344438352D394136322D443636444337353546463435223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042222069643D2242504D4E53686170655F7369642D41323146463443422D464442462D343033412D393036352D394241353142334130383042223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223631352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045222069643D2242504D4E456467655F7369642D36393145443245412D343935362D343733442D423932452D373646304543413938393045223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E3934393939393939393939362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223631352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044222069643D2242504D4E456467655F7369642D38353436363339352D394437362D343539442D384130372D453233354441353634423044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438222069643D2242504D4E456467655F7369642D36324539353337382D443641412D343243442D383346382D393330313841364430414438223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346222069643D2242504D4E456467655F7369642D41393945354431432D323130412D343234422D424339382D464531383738304339393346223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E'), '0');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1294922084922830850', '1', '请假流程.leave.png', '1294922083219943426', HEXTORAW('89504E470D0A1A0A0000000D494844520000028D000000E40806000000FDC91EF600000CD34944415478DAEDDDEF6F55F51D07701FF8C03F620F4CB664FE097BB007FE0126F381A4D87B95A692561C201649C89494A044D01812B7643121311A16961883AC6352FAC3F2533226814E42563644A1B65EC62A22F75A8B9C7DBF5DAF3B160A17686FCFB9F7F54A3E017ACB8F94773FDFCFF99E73CFB9EF3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080059524C9FD67CF9E7DF7E8D1A3DF0F0C0C247D7D7DAACED5DFDF9F1C3870E0DFA18A32A46448866408C8A4D8A80F1E3C98944AA5647272522D525DBC7831D9BF7FFFE5D0B81F932125434A8680CC8947F61A75661AF66438E23F2D434A86940C0199134F056994D9A9D0ACA76448C99092212073E2B52C9A64A69A7522434A86940C01B96DD6DF7C35969C3DF65672AA7FD374C59FC78F69B09AB50CC9900CC91060689CAE2B13A3C927BD1B92937BD6FDA8E2C7E26B9AAC055F866448866408303426E74FFDE986465DAD0BA77A34590BBE0CC9900CC91060689C4C4E7FB875CE661D5FD3642DF832244332244380A131F9A46FE39CCD3ABEA6C95AF06548866448860043A366AD59CB900CC9900C0186C6DB37EBF82EC5B99A757C4D93B5E0CB900CC9900C0186C6E4CCE1DFCDD9ACE36B9AAC055F866448866408303426974687934FF675DF784A287C2CBEA6C95AF06548866448860043E3747DFAB7776E68D6F1631AAC662D433224433204181AFF57DF7E9B9C39F2FB1B4F09858FC5D734590BBE0CC9900CC910D0E443637CD2C2C8E1DFCE792D517CCDD3182CF832244332244340B30E8DE1C87DECCC60F2F7BDBF99B351572B7E4EFC5C47FB167C199221199221A08986C6DB1DD53BDAD7AC6548866448860043634D47F5B73ADAD7742DF832244332244340130C8D77DBA8ABA5E95AF06548866448868026181A95662D433224433204A0596BD632244332A40C8D8066AD59CB900CC9903234029AB5662D434A86940C41FD2449F2C0F0F070E7DB6FBFBD7FCB962D9757AF5E3DD5D6D6962C5DBA3429168BD757AC5831F9C20B2F9CDDBA75EB8E503F37342ACD5A8664488664A8B1140A859FB4B4B4AC0C6BFFBBA1CE84BA12E7805095509F86D776851F9F8F9F67726AD261F1BDF7DE7BE7A5975E9A5AB3664DF2E69B6F26478F1E4D464747934AA59244F1C752A9947CFCF1C749182A93679F7DF6FA73CF3D77AEA3A363B9A15169D6322443322443F9F6F8E38F3F1AAA2FD4E4CC90584B7D183EBF68926A1261386C7FF9E597BF5DB76EDDF44078EDDAB5A456274E9C48D6AF5F7FADB3B3F3F492254B7E6668549AB50CC9900CC950BE84C1EFC130F8EDBD8341F16675B091E6006EDC5DBC7FF7EEDD834F3FFD74D2D3D37347C3E26C7BF7EE4DDADBDBCB8DB2EBA8596BD632244332A49A61686C696959DADADAFA9FF40058281492575E7925191C1C4C3EFFFCF3E4EBAFBF9E5EEBAF5EBD3A7D06F2F0E1C3C9B66DDB92279E7862F6E078C5AE63830E8C4343437F5DB56A5532323292CC8773E7CE2561002D2F5FBEFCD7864665C1972119922119CAFCC0F84818F2AEA587C51D3B764C5F8A568B898989E9CF8FBF2F3D3C863F73B949AB81C41DC63830D61A8C5AC53FAFA3A323F7471A9AB5662D43322443AA9187C6B8C3981E18BBBABAA67715EF46FC7DF112B75983A31DC74610AF618CA7A4E76B87F1663B8E4F3EF9E44408CC43864665C15732244332942DF11AC6F429E9EEEEEE1F4E41DFAD78EA7AF3E6CDB34F553F64EACAF769E907366DDA3419AF615C487BF6EC29170A858F0C8DCA82AF64488664285BC2C0D89FDE61BCD781313D38CEDA713C68F2CAB15DBB76FD21FE877EF7DD77C9427BE69967C6F3BA3DAD596BD632244332A41A71688CB7D5495FC378B7A7A46F75AA3A7D8DA3D3D439DE658CF7618CB7D5A98793274F4EE675B751B3D6AC654886644835E8D0D8571DE8E29B5816C2CE9D3BED36E65D7CD24B7CF3CBBDDC5AE74EB5B7B78FC76B27B2F4CD12EA979AB5662D43322443AA9186C65A72159FE0527DF34BDC0DBC74E9D282ACFDF15DD5B36EC7F3A0292C67E2A301B76FDF9ED4D3B66DDB4EC4470D65E56B90DA2EEF6B6969F98566AD59CB900CC9906A84A1B1965CCD3C1A70FAF35E7DF5D5855EFFD343E3F3A6B09C89CF928E8F06ACA723478E9C0B61E9C9DA3755AA3EB8D9919966AD59CB900CC990CAE3D078AB5CCD3C4B7AFAF5A1A1A1055DFFE30DC053FF961E5358CEAC5EBD7A6A6C6CACAE43E3F8F8782984E57C86BFA97E38324B7F7369D69AB50CC9900CA99C0F8D37E42AFCFA4CF5E3F3FD0698D9E2936352FF8EF3A6B09C696B6B4B2A954A5D87C6F8F785B054B2FE4D953E328BDBFA9AB5662D43322443AA1186C674AE4295ABBF9EAFDBECDCEAF63BA9BFBB620ACB99F81FB718EEF101E88B529A75B64A86940C29199ADFAAF7FA6F0ACB9965CB965DAFF74E63B95C1ECFC94EE3B1F80CCE871F7EF87EA7851CE1CB900CC9906AA09DC61F72159FD262A7919AAC5AB56AB2DED7347EF1C517FFC8F8358D3F6AD259B99628FC136E5A5979DD829FFD0C652D53167C1992A1C5CF956B1AA9D9860D1BCED4FBDDD3BDBDBD7FC9E8BBA73F8A77C59FDDA4B33434DEEA638BFDBA053FFB19CA5AA62CF83224438B9F2BEF9EA666AFBDF6DAF67ADFA7B1BBBB7B4FC6EED378D3237A43A3A1B1D13264C19721196ABAA1F1B6B9729F466AF6E28B2FFE74E5CA95DFD7F1893095D6D6D67FE5F14EF086464363DE3364C197211992A1D9E21361C29A3C558F27C2148BC5EB9E0893735D5D5DFFACD7B3A77B7B7B77E4F59993864643A305DF822F4332E4D9D39E3DDDD49E7AEAA9256BD7AE9DAAC36EE3446B6BEBF110CEA2A1D1D068C1B7E05BF06548863233343E5A1DE8E26EE37CBF2126FE7961FDBF9EBAB978D1F495639D9D9DC33D3D3D0B3A31C6EB27E3D1C5EDAED9D1AC0D8D167C0BBE0CC9900CD557589F3FAC0E755D5D5DF376FB9D789B9DB56BD75E4BEF32E6750EE0FF6179B0BDBDBD3C3232B22003E3F0F0F0EEF0778C85A38B87F2FA3572CB1DB7DC69C405FF3EB74B9121193234CECC01A12E5687BBEEEEEE7B1E1CE3C0B879F3E6F4758C57F23C0790522C160B9D9D9D574BA5D2BC0E8C172E5C38D4DADAFA59DEB7A3DD54D74D75654886644835EAD018B5B4B42CADBE29A6BAE378B7A7AAE3EF9BB5C3E8B474A329140AED1D1D1D57E66BC731EE30C6813104717DDEBF369AB5662D43322443AA9187C6991DC7B6F4E018AF718C6F8E89EF7EAEF55DD2F14D2FE96B186335C21CC01C471AC562F1F2FBEFBFFFCD3DBC3966E2F5D75F7F2B9E928E016C84AF8B66AD59CB900CC9906AF4A1B13A07849A480F7D71788CF7718C37008FBB88D553D7F114747CD24BBC71F71B6FBC912C5BB6ECFB594FA1B9D2287300B7B8B6211C250C7476768E1F3F7EBC7C27F761DCB76FDFCE30741E8B17BB36D2B50B9AB5662D43322443AA1986C6EA1C90BE15CF5DD641D73036D7F0F8581C1EDBDADA4A5BB66C3975E8D0A1CFC211C558A552999E10CBE5F2787C96747F7FFF9F376EDCF8413812391B43128F2A1AEDDD519AB5662D43322443AA5986C6F41C30333C4EDDC9B0D8887300358A778C0FA15933F38CCA4F43556682117F3C1F9F21191F09D4C87778D7AC356B1992211952CD36349A0340B3D6AC6548866448191A01CD5AB3962125434A8600CD5A59F0950C291902346B65C1573224433204181A95055FC9900CC9106068549AB50CC9900CC9106068549AB50CC9900C294323A0596BD632244332A40C8D8066AD59CB909221656804346BCD5A86940C291902346B65C15732A46408D0AC95055FC9900CC910606854167CFF773224433204181A95662D433224433204181A3549CD5A8664488694A111D0AC356B1992211952864640B3D6AC6548C9903234029AB5662D434A86940C019AB5B2E02B1992211902346B65C1573224433204181A95662D43322443320434838181014D323B5509CD7A4A86940C29190232E7C0810363A55249A3CC408D8E8EFE3134EBD332A46448C9109039838383BF1A1A1AFAEACB2FBF2C6B988B77641F1B757F7FFF67A11E932125434A86804C0A0DE2917064792C9E9288D7B2A8BA57FCBA9FCE73A396211992211902000000000000000000000000000000000000000000009857FF05C5C0144B0D1FC0580000000049454E44AE426082'), '1');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1295553080900943873', '1', '转正流程.bpmn20.xml', '1295553080485707777', HEXTORAW('3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D22666F726D616C22206E616D653D22E8BDACE6ADA3E6A8A1E59E8B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8BDACE6ADA3E6A8A1E59E8B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D34353434363337322D394245362D344142392D424236442D4436384537434539303934462220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222206E616D653D22E983A8E997A8E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373132333745412D324542462D343042352D393046422D4231343532413130423541382220736F757263655265663D227369642D31323344344434342D343742462D344633352D413033422D36453938434134383036423422207461726765745265663D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422206E616D653D22E4B8BBE7AEA1E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730393534393130373535323235372220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE5BE90E78E89E7A5A55B787579757869616E675D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D32453436433039322D354142312D343635302D384133412D4638454145424543333438332220736F757263655265663D227369642D38393231374244412D464438462D343743382D413441392D31453444314437314634413222207461726765745265663D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33394535383643422D383143462D344242352D413433462D3334464633453032343338412220736F757263655265663D227369642D42314646464244372D353741452D343337312D424337462D38413043324639393733334422207461726765745265663D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D43424133303830432D454431352D343341432D383341302D35343634354143334543413622206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39383238353041372D353939422D343934342D423430412D3538443045353834453630442220736F757263655265663D227369642D39453638313439462D443141302D344133412D413434372D36334342444446383934333122207461726765745265663D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F666F726D616C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D22666F726D616C222069643D2242504D4E506C616E655F666F726D616C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234222069643D2242504D4E53686170655F7369642D31323344344434342D343742462D344633352D413033422D364539384341343830364234223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132222069643D2242504D4E53686170655F7369642D38393231374244412D464438462D343743382D413441392D314534443144373146344132223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344222069643D2242504D4E53686170655F7369642D42314646464244372D353741452D343337312D424337462D384130433246393937333344223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331222069643D2242504D4E53686170655F7369642D39453638313439462D443141302D344133412D413434372D363343424444463839343331223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136222069643D2242504D4E53686170655F7369642D43424133303830432D454431352D343341432D383341302D353436343541433345434136223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735352E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446222069643D2242504D4E456467655F7369642D34353434363337322D394245362D344142392D424236442D443638453743453930393446223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044222069643D2242504D4E456467655F7369642D39383238353041372D353939422D343934342D423430412D353844304535383445363044223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393939392220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735352E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138222069643D2242504D4E456467655F7369642D31373132333745412D324542462D343042352D393046422D423134353241313042354138223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833222069643D2242504D4E456467655F7369642D32453436433039322D354142312D343635302D384133412D463845414542454333343833223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841222069643D2242504D4E456467655F7369642D33394535383643422D383143462D344242352D413433462D333446463345303234333841223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E'), '0');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1295553081920159745', '1', '转正流程.formal.png', '1295553080485707777', HEXTORAW('89504E470D0A1A0A0000000D4948445200000319000000E40806000000F407E9A500000E2E4944415478DAEDDDEF6F55F51D07701EF8607FC41E906CC9FC13F6600FFC034CE603C985F62A4D25AD3A402C929029294189456348DC92C584C460BA740931C83A26D01F160AD88C41A09310CB862894D6CB5845A4975AE4ECFBAD5CBDF407DE0BEDED3DB7AF57F20EDAF22BF0E673CEA7E7DC7B962D0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000968824491EB970E1C29E818181EF7A7A7A92AEAE2EA970BABBBB9323478EFC3724AB43A2433AA4433AA44340EAC5A1DCDFDF9FE472B964626242162957AF5E4D0E1F3E7C3D0CE92775487448744887740848B5F8551F43B96A86F3445757D7391D121D121DD2211D02522D5E563614AB2761304FEA90E890E8900EE910906AF13E4A03B1AA0673A243A243A2433AA443C0925832BEF96A24B970E2DDE46CF7B6A9C4FF8E1F334C0D661DD2211DD2211D124B0650F660BE31369C7C72704B7266FFA67B123F163F67A03AB8EB900EE9900EE990583280B206F3A5B37F9D31940BB97CB6D3407570D7211DD2211DD221B16400E50DE6731FED987330C7CF19A80EEE3AA4433AA4433A24960CA0ACC1FC49D7D6390773FC9C81EAE0AE433AA4433AA44362C9000C66835987744887448774488780C51BCCF11D38E61ACCF17306AA83BB0EE9900EE9900E892503286B309F3FF6C7390773FC9C81EAE0AE433AA4433AA44362C900CA1ACCD78607934F0EB5CEBCBC1C3E163F67A03AB8EB900EE9900EE990583280B20673CC67FF7C6FC6608E1F334C0D661DD2211DD2211D124B0650FE60BE752B397FFC4F332F2F878FC5CF19A80EEE3AA4433AA4433A24960CA0E4C11C9F823A74EC0F73DEC71A3FE749A90EEE3AA4433AA4433A24960CE0A707F3AD5BC9C8F9DEE45F077E3FE7502E247E9FF87D7D25C8C15D87744887744887C49201CC3A987FEA2B3EBE126430EB900EE9900EE990583280B20673295FF1B9DF57820C5807771DD2211DD2211DD221C092714F1E74281762C03AB8EB900EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE91060308B83BBE8900EE9900EE91060C910835987744887744887C49201254992E467838383CDBB77EF3EDCD6D6767DFDFAF5930D0D0DC9CA952B936C367BE7B9E79E9B78F9E5972FECD8B1A33DE457960C3198754887744887744896EE92515F5FFFF34C26B3369C2BEE09391F72239E3786E4433E0B9FDB1BBE7D297E3F67DA4B74B978FFFDF7DF7BF5D55727376CD890BCF3CE3BC9C0C040323C3C9CE4F3F9248ADFE672B9E4E4C99349584292175E78E1CE8B2FBE78B1A9A9698D25430C661DD2211DD2211D92A5B364AC5AB5EA8990AE9089BB4B4529F9287CFFAC33EF25222C138DAFBDF6DAAD4D9B364D2D10B76FDF4E4A75FAF4E964F3E6CDB79B9B9BCFAD58B1E297960C319875488774488774486A77C9088BC2F2B0281C2863B1982DFDB574DEC8CCAB178FECDBB7AFF7D9679F4D3A3B3BCB5A2EA63B70E040D2D8D8385E2B57350C668359877448874487C49271AF4C26B3B2AEAEEE7FC50B437D7D7DF2FAEBAF27BDBDBDC9175F7C917CFDF5D753E786376FDE9CBA23E6D8B163C9CE9D3B93A79E7A6AFAA271C3558D1A5D30FAFAFAFEB16EDDBA64686828990F172F5E4CC2C232BE66CD9ADF5932C4C15D87744887744887A476968CB0603C1E9682DBC5CB457B7BFBD4ADF4A5181B1B9BFAFEF1C7152F1BE1E7ACB9DBEE97B47805232E18A516A354F1E76B6A6A4AFD666A301BCC3AA4433A243A24968C1FAF60142F182D2D2D53572D1E44FC71F116FD698B862B1AB520BE0623DE22355F573066BBA2F1F4D34F8F85C23C6AC9100777D1211DD2211D92F42E19F13518C5B748B5B6B6FE704BD4838AB7526DDFBE7DFAAD53A93D6FE4FBDBA47EB66DDBB689F81A8C85B47FFFFEF1FAFAFA8F2D19E2E02E3AA4433AA44392DE25232C18DDC557301E76C1285E34A65DD1E877A69E627BF7EEFD73FC0BFDF6DB6F9385F6FCF3CF8FA6F5F297C16C30EB900EE990E8902CF50EC5B7A92D7E0DC683DE2275BF5BA78A5FA3E1B6A9145FC588CFC1886F535B0967CE9C9948EBD50C83D960D6211DD221D121B164ACEA2A2C00F145DB0BA1A3A3C3D58CB48B4FF28E2FF67E98B7AA2D576363E368BC97AF9AFEB184FCC66036987548877448744874686EF109DD85177BC7AB0DD7AE5D5B9073C5F8AE53D3DEDE76F932D265F7EEDD8777EDDA9554D2CE9D3B4FC747C957CB9F41D1E5B8AE4C26F36B83D960D6211DD221D121D1A199C2C7D716BEDF1B6FBCB1D0E78BC54BC64BCB4897B6B6B6EB030303155D328E1F3F7E3194A5B3DAFE5115E5C3D9367983D960D6211DD221D12159CA1D0A1FDB53F87C5F5FDF829E2FC607F615FD5E3A9DB5A7CCFAF5EB274746462ABA648C8E8EE642592E55F13FAA1F36F9E27F5C06B3C1AC433AA443A243B2943B14FEFF7CE1E3F3FD82EFE9E293C18B7E1F979CB5A74C43434392CFE72BBA64C45F2F94255FEDFFA88A37F978D9D06036987548877448744896728742C60BFF3F5F6F5B7BBFB7B32DFAB5F3CEDA5326FEC52D86128A5C753198AB2B3A243A243AA4433AB478A9F4F9A2B3F69459BD7AF59D4A5FC9181F1F1F4DC9958C13994CE6F1C71E7BEC1197987DF54787744887448764A977283E85DB950C4AB26EDDBA894ABF26E3CA952B9F56F96B32EE19C8D5721F6BF82DCC9A6AF9BCC15C7D1DAAF6CE2C76A77428FD1D7382E858E65856D90E794D0625DBB265CBF94ABFBBD4C18307FF5EA5EF2EF5717C8AE5F4815C4D83F97E1F5BECCF1BCCD5D7A16AEFCC62774A87D2DF314B8663996359653BE4DDA528D99B6FBEB9ABD2CFC9686D6DDD5F65CFC998F5AB3D06B3C19CF60E593274C892A1438E658E65F3D921CFC9A064AFBCF2CA2FD6AE5DFB5D059FF89DAFABABFB4F1A9FDC68301BCC69EB902543872C193AE458E658369FE213BFC339DC64259EF89DCD66EF78E277CAB5B4B4FCFBE4C99395BA55AA3D14A53F8D7F4E06B3C16CC9B06458322C193AE458B6D43B149F9B5138F96F6F6F5F90F3C58E8E8EE2AB18A93C6F2478E69967566CDCB871B2025733C6EAEAEA4E8572662D1906B383BBCE58322C19960CC732C7B2542E194F141680783563BE5F001E7FBE70BE78A7E86180A93C6FE4AEE6E6E6C1CECECE05DD30E2EB3FE236FA53F78B1ACC06B383BB2543872C19960CC732C7B2EA15CEE73E2A2C012D2D2DF3F676B6F16D6B376EDC78BBF82A465ACF1BF9B12CCB1B1B1BC78786861664C1181C1CDC177E8D91B08D3E9AD63F236FFBE76DFFD2B8642CF316B63AE42D6C75C8B1CCB16C01CE1B43AE169681D6D6D6875E34E282B17DFBF6E2D761DC48F3792345B2D96C7D7373F3CD5C2E37AF0BC6E5CB978FD6D5D57D9EF6CB5D1E60E401463AA4433A243A24968CEF6532999585178117AE683CE8AD53F1C74DBB82E136A95A535F5FDFD8D4D47463BEAE68C42B1871C10845DC9CF63F1B83D960D6211DD221D121B164DC7345A3A178D188AFD1882F068FEF0E55EABB48C5177917BF0623A616CE1B996333CD66B3D73FF8E0836F1EE2C5E0636FBDF5D6BBF116A958C05AF87331980D661DD2211D121D124BC6CCF3C690B1E225212E1BF1391AF1817DF12A45E156AA784B547C92777CD0DEDB6FBF9DAC5EBDFABB694F19BF512BE78DCCBD992E0F5B654F7373F3E8A953A7C6CB790EC6A143873AC2927222BE58A796EEA533980D661DD2211D121D124BC6ECE78DC56F6DFB80E9F71A8CA5B56C3C19978D8686865C5B5BDBD9A3478F7E1E36D0917C3E3FB5518C8F8F8F5EB972E5D3EEEEEEBF6DDDBAF5C3B0B95E8825895B68ADBD1B80C16C30EB900EE990E8905832EE7FDE7877D9982C67B9A8C5F3464A149FF0184AB32194604FC86721F9BBC588DF5E0AE98C8F7CAFE527321ACC06B30EE9900E890E8925C3792318CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C319875488774488774482C1980C16C30EB900EE990E890E81060308B83BBE890BF3B1DD2211D022C196230EB900EE9900EE99058320083D960D6211DD221D121D121C0603698754874487448877408B0648883BBE8900EE9900EE91060C930100D661DD2211D121D124B0660301BCC3A243A243AA4433A0418CCE2E02E3AA4433AA4433A045832C460D6211DD2211DD221B1640006B3C1AC433AA443A243A24380C12C0EEEA243A2433AA4438025430C661DD2211DD2211D124B0660301BCC3AA4433A243A243A0418CC06B30E890E890EE9900E0106B338B88B0EE9900EE9900E01960C3198754887744874482C1980C16C30EB90E890E8900EE910507D7A7A7A0CC4EA493E0CE6491D121D121DD2211D0252EDC8912323B95CCE50AC820C0F0FFF250CE6733A243A243AA4433A04A45A6F6FEF6FFBFAFABEFAF2CB2FC70DC7C5FBAA4F1CCADDDDDD9F873CA943A243A2433AA44340EA8561F0785757D789787933DE4729154FFC733F97E6A1AC433AA4433AA4433A94F60E01000000000000000000000000000000000000000000000000000000F3E0FFB1815AA5D70A02FE0000000049454E44AE426082'), '1');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1304341425315528705', '1', '出差流程.bpmn20.xml', '1304341425068064769', HEXTORAW('3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D2274726176656C22206E616D653D22E587BAE5B7AEE6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE587BAE5B7AEE6B581E7A88B3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172744576656E743122206E616D653D22E5BC80E5A78B2220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D31373043463233352D374341392D344537412D383339322D3735414131463533323631312220736F757263655265663D2273746172744576656E743122207461726765745265663D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322206E616D653D22E7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D41394546363142422D324342322D343034462D383141302D3245324636333935363532342220736F757263655265663D227369642D31344538303744372D364239462D344145432D383632352D42384536343936373945443722207461726765745265663D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922206E616D653D22E9A286E5AFBCE4BC9AE7ADBE2220666C6F7761626C653A61737369676E65653D22247B7065727D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A2020202020203C6D756C7469496E7374616E63654C6F6F7043686172616374657269737469637320697353657175656E7469616C3D2266616C73652220666C6F7761626C653A636F6C6C656374696F6E3D22706572732220666C6F7761626C653A656C656D656E745661726961626C653D22706572223E0A20202020202020203C6C6F6F7043617264696E616C6974793E247B6E756D7D3C2F6C6F6F7043617264696E616C6974793E0A2020202020203C2F6D756C7469496E7374616E63654C6F6F704368617261637465726973746963733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D42353237464544362D374544442D344438462D394543452D4541334244413338453446432220736F757263655265663D227369642D38374534433039312D424331322D344436462D413835422D46413731363441413444313322207461726765745265663D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722206E616D653D22E680BBE7BB8FE79086E5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313238303730303730303037343034313334352220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE586AFE7A195E6A5A05B66656E677368756F6E616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D33433541373042382D423030362D344130392D383243452D3231373245334644373835312220736F757263655265663D227369642D36344137383941332D364544412D344336392D383336452D43323333423732363938353922207461726765745265663D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D35353744313135382D343444302D343541302D423635302D41343535423146423043344522206E616D653D22E7BB93E69D9F223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D39424243373736362D353535432D343231392D384430422D4444373244463139384243302220736F757263655265663D227369642D36443441363945372D413736352D343945432D393443362D43323338414633323530323722207461726765745265663D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F74726176656C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D2274726176656C222069643D2242504D4E506C616E655F74726176656C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172744576656E7431222069643D2242504D4E53686170655F73746172744576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223130302E302220793D223136332E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437222069643D2242504D4E53686170655F7369642D31344538303744372D364239462D344145432D383632352D423845363439363739454437223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223137352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133222069643D2242504D4E53686170655F7369642D38374534433039312D424331322D344436462D413835422D464137313634414134443133223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223332302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539222069643D2242504D4E53686170655F7369642D36344137383941332D364544412D344336392D383336452D433233334237323639383539223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223436352E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237222069643D2242504D4E53686170655F7369642D36443441363945372D413736352D343945432D393443362D433233384146333235303237223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223631302E302220793D223133382E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445222069643D2242504D4E53686170655F7369642D35353744313135382D343444302D343541302D423635302D413435354231464230433445223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223735302E302220793D223136342E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531222069643D2242504D4E456467655F7369642D33433541373042382D423030362D344130392D383243452D323137324533464437383531223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223536342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223630392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643222069643D2242504D4E456467655F7369642D42353237464544362D374544442D344438462D394543452D454133424441333845344643223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431392E39343939393939393939393036372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223436342E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131222069643D2242504D4E456467655F7369642D31373043463233352D374341392D344537412D383339322D373541413146353332363131223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223132392E393439393938343839393537362220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223137342E393939393939393939393931372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330222069643D2242504D4E456467655F7369642D39424243373736362D353535432D343231392D384430422D444437324446313938424330223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223730392E393439393939393939393536332220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735302E302220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234222069643D2242504D4E456467655F7369642D41394546363142422D324342322D343034462D383141302D324532463633393536353234223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223237342E393439393939393939393930372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223331392E393939393939393939393830372220793D223137382E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E'), '0');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1304341426900975618', '1', '出差流程.travel.png', '1304341425068064769', HEXTORAW('89504E470D0A1A0A0000000D4948445200000314000000E4080600000001F9621500000E704944415478DAEDDDFF6FD4F51D07707EF087FD11FB81644BE69FB01FF6837F80C9FC4172D89ED254D2AA03C4220999921294583486C42D594C480CA64B971083AC6302FD62A180CD18043A08B16C8842692D6315293D6B91CFDEEF8E7367CBD5A35F8EFBDC3D1EC92BD5BB82A43E79BDDFAFFB7C5BB1020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080054892E4914B972EED1D1818F8AEA7A727E9EAEA5265AEEEEEEEE4E8D1A3FF0E959521254332244332244340AAC406DCDFDF9F8C8D8D25535353EA21D5F5EBD79323478EDC0C0DF949195232A46448866408488DF8698E065C318D78AAABABEB820C2919523224433204A4463C34AC01564E85263C2D434A86940CC9900C01A911CF7BD4FC2AAA092732A46448C9900CC91050754D78E2AB91E4D2C9F792F3DDDB672AFE737C4DE3D48465488664488664481928C040316FDD1A1F4ECE1DDA9A9C3DB0F907155F8BEF699E16721992211992211952060A305014AD2BE7FF3CA701E7EBEAF94ECDD3422E43322443322443CA4001068AE275E1E39D459B707C4FF3B490CB900CC9900CC99032508081A2689DEBDA56B409C7F7344F0BB90CC9900CC9900C290305182834614D5886644886940C290305B0F44D38DE09A358138EEF699E16721992211992211952060A305014AD8BC77F5FB409C7F7344F0BB90CC9900CC9900C29030518288AD68DE1C1E4DCE1D6B98788C36BF13DCDD3422E43322443322443CA4001068A79EBB3BFBF3FA709C7D7344E4D58866448866448869481020C14F3D737DF24174FFC61EE21E2F05A7C4FF3B490CB900CC9900CC99032508081A2E89345878EFFAEE879A7F13D4F18B590CB900CC9900CC9903250808162CE273923177B937F1CFC6DD1069CAFF83DF17B7DC26321972119922119922165A00003C58F7E92E3131E4D588664488664488694810228DA844BF92467BE4F7834530BB90CC9900CC9900CC91050C303C5421B70BE34530BB90CC9900CC9900CC91050C30385D28465488664488664481928004D5813962119922125434A86004D5813962125434A86644886004D5859C8950CC9900CC9900C41F54892E427838383CD7BF6EC39D2D6D67673C3860DD30D0D0DC9EAD5AB936C367BF7F9E79F9F7AE595572EEDDCB9B33DD42F0C144A139621199221199221551B03457D7DFD4F3399CCBAB02FDC1BEA62A85B718F182A17EAB3F0DEBEF0F5E5F87D76D5353A487CF0C107EFBFF6DA6BD31B376E4CDE7DF7DD64606020191E1E4E72B95C12C5AF636363C9A953A7923070242FBEF8E2DD975E7AE9725353D35A0385D284654886644886644855E740F1D4534F3D11AA2BD4D4BD01A294FA387C7FD62EBB4684C1A1F1F5D75FFF66F3E6CD33C3C29D3B7792529D397326D9B265CB9DE6E6E60BAB56ADFAB9814269C232244332244332A4AA2343612858198682830F3044DCAFFAAB698FC8DCA3128FECDFBFBFF7B9E79E4B3A3B3B1F689098EDE0C183496363E364B51CADD0843561199221195232A46A3943994C66755D5DDD7F0A8783FAFAFAE48D37DE487A7B7B932FBEF822F9FAEBAF67F681B76FDF9E39ABE5F8F1E3C9AE5DBB92A79F7E7AF65071CBD18A2A1D26FAFAFAFEB67EFDFA64686828590A972F5F4EC27032B976EDDADF182894855C86644886644886543A33148689C7C30070A77090686F6F9F39F5BD14E3E3E333DF1F7F5DE160117ECFAA3B4DBEA6C523137198283518A58ABF5F535353EAA7504D581396211992212543AA1633148F4C140E132D2D2D3347231622FEBA784AFDACA1C2918A6A10AF9988A7392DD59189FB1DA978E69967C643601E3550280BB992211992211952E9C850BC66A2F034A7D6D6D6EF4F6B5AA8783AD48E1D3B669FFE94DA3D22FF3BD5E927DBB76F9F8AD74C2CA703070E4CD6D7D77F62A0501672254332244332A4D291A1304C74171E9958EC30513854CC3A52D16F579E62FBF6EDFB63FC1FFAEDB7DF26CBED85175E184DEB612D4D581396211992212543AA9632146F0D5B78CDC4424F739AEFF4A7C26B2A9CFA94E2A313F13913F1D6B0E570F6ECD9A9B41EA5D0843561199221195232A46A6CA0E8CA6FF6E305D5CBA1A3A3C3518AB48B4FC08E17622FE6F6B00FAAB1B171349E8F57497F5942FD4A13D6846548866448C990AA850C959297F864EBFC85D8F128C28D1B3796655F18EFFE34EB96B22B57902E7BF6EC39B27BF7EEA49C76EDDA75263E82BD527E060587D9BA3299CC2F35614D5886644886940CA96ACE50297909AFAFCB7FDF9B6FBEB9DC7BC3C281E2653BF494696B6BBB39303050D681E2C489139743583A2BAD0917D447F79BDA35614D5886644886940CA96A1A28E6CB4B786D6FFEFDBEBEBE65DD1BC687DF15FC593AEDD05366C3860DD3232323651D28464747C74258AE547013FE7E6A2FFCCBA5096BC232244332A4644855E94031272FE1DF2FE65F5FEA8BB1678B4FD42EF8735CB1434F998686862497CB9575A088FFBD10965CA537E1C2A93D1E0ED4843561199221195232A4AA79A028CC4BA8C9FCBF2FD5AD62E7BB856CC17F3B67879E32F17FDCC35042902BAE34E1CA2A195232A464488664A83C55EEBDA11D7ACAAC59B3E66EB98F504C4E4E8EA6E408C5C94C26F3F8638F3DF688C3C43ED591211992212543AA068E507C9F97F8F46A472828C9FAF5EBA7CA7D0DC5B56BD73EADF06B287ED07C2BE5BCD3F047B86F55CAFB16F2CACF50A565CA66508664C85A662DAB9881624E5E5C4341C9B66EDD7AB1DC77793A74E8D05F2BF42E4F9FC42742CE6EBE95D484E77BED61BF6F21AFFC0C555AA66C06654886AC65D6B2873E5014CD8BBB3C51B2B7DE7A6B77B99F43D1DADA7AA0C29E4371DF4F7134614DB8DA3264332843322443D6326B59A979F11C0A4AF6EAABAFFE6CDDBA75DF95F149D9B9BABABA7FA5F129889AB0269CF60CD90CCA900CC990B5CC5A56AAF8A4ECB05F9B2EC793B2B3D9EC5D4FCA4EB99696967F9E3A75AA5CA73BB587A0F4A7F1E7A4096BC23683368332244332642DABA50CC5E752E437FAEDEDEDCBB237ECE8E8283C3A91CA3D22C1B3CF3EBB6AD3A64DD365384A315E5757773A84336BA0D0842DE436833683322443D6326B59C50F144FE437FBF128C5525F9C1D7FBFB037BC5BF060BD54EE11B9A7B9B979B0B3B37359A78978BD469C3C7FECFC4E4D5813B690DB0CCA900CC990B5CC5A5619C2DEEDE3FC86BFA5A565C96E211B6F15BB69D3A63B854727D2BA47E4FF6159D9D8D838393434B42CC3C4E0E0E0FEF0DF180993E7A369FD19B9D59E5BED55E36670855B7ECA900CC990B54C867E648F18EA7A7EE3DFDADABAE8A1220E133B76EC28BC6EE2569AF78814C866B3F5CDCDCDB7C7C6C6967498B87AF5EAB1BABABACFD37E18CBC3803C0C4886644886940CA95ACC502693599DBF403B7FA462A1A73FC55F37EBC884539DAA4D7D7D7D635353D3ADA53A52118F4CC4612204714BDA7F369AB0262C433224434A8654AD66286CFC1B0A878A784D45BC503BDEA5A9D4BB39C50BB00BAF9988550D7B448A4CA1D96CF6E6871F7E38B1880BB5C7DF7EFBEDF7E2694E3180D5F073D1843561199221195232A46A3943718F186ABC70208883457C4E457CF85D3CFA903F1D2A9ED6149F801D1F5AF7CE3BEF246BD6ACF96ED6D3B96F55CB1E91E253E8CA3041F63437378F9E3E7D7AF2419E3371F8F0E18E30909C8C17D754D3F9709AB0262C433224434A8654AD6728EE110B6F27BBC0EA77CD446D0D164FC6C1A2A1A161ACADADEDFCB163C73E0FD3E6482E979B991E26272747AF5DBBF6697777F75FB66DDBF65198522FC590C489B3DAAED4D7843561199221195232A46A3D43857BC47B83C5F4830C12D5B847A444F1698921341B4308F686FA2C54EE5E30E2D72BA13AE3A3D2ABF9E9869AB0262C433224434A869481C21E1134614D5886940C291952320468C29AB0855CC99092211992214013561672254332244332244380814269C232244332244332A40C148026AC09CB900CC990922125438026AC09CB90922125433224438026AC2CE44A86644886644886000385D28465488664488664481928C040A1F969C23224433254624D4C4C24E7CE9D9BF9BA98D765481FD287000385D2846548866A30437138087FE499AF8B795D86F4217D083050284D588664C84061A0902165A00034614D58866448860C1432A40C148026AC09CB90922103850C29190234614DD842AE64C8402143FA903E0468C2CA42AE64C84061A090217D083050284D58866448860C1432A40C148026AC09CB900CC990814286940C019AB0262C434A860C1432A40FC910A0092B0BB9922103850CE943FA1060A0509AB00CC99081C2402143CA4001060ACD4F13962119922103850C290305B0303D3D3D9A5FE5542E34E16919523264A090217D481F0252E3E8D1A3236363631A6005D4F0F0F09F4213BE20434A862AB7262626668683F87531AFCB903EA40F0155A3B7B7F7D77D7D7D5F7DF9E597931AE1C3FB342736E0EEEEEECF433D29434A86940CC9900C01A912FEE23FDED5D575321EA28CE73DAAB257FCB95F4873039621199221199221194A7B86000000000000000000000000000000000000000000000000000000E0A1FA2FE7E745A5C30319360000000049454E44AE426082'), '1');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308406617288617986', '1', 'var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308406617791934466', '1', 'hist.var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308586688364371969', '1', 'var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308586688863494145', '1', 'hist.var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308587454428831745', '1', 'var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308587454923759618', '1', 'hist.var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308589270763790337', '1', 'var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1308589271267106818', '1', 'hist.var-pers', NULL, HEXTORAW('ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787011B452B72DEBD0017371007E000211C5F6805381E0017371007E000211C5FE8CA701A00178'), NULL);
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1354458534673420289', '1', '用车申请.bpmn20.xml', '1354458533096361986', HEXTORAW('3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E666C6F7761626C652E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D226361725F6D6F64656C22206E616D653D22E794A8E8BDA6E794B3E8AFB72220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE794A8E8BDA6E794B3E8AFB73C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D227369642D45373532334444412D304243452D343730362D423334432D3143364546363930454637352220666C6F7761626C653A696E69746961746F723D22494E49544941544F522220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D42423037303532382D433345382D343233452D423430392D46364437324441334438363922206E616D653D22E5A1ABE58699E794B3E8AFB7E58D952220666C6F7761626C653A61737369676E65653D22247B494E49544941544F527D2220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D696E69746961746F7220786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D696E69746961746F723E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D37334132333336412D454630312D343545352D394538452D3942383939343031373733372220736F757263655265663D227369642D45373532334444412D304243452D343730362D423334432D31433645463639304546373522207461726765745265663D227369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D44384341444237462D314343342D343045452D394434422D39414243394331453733333022206E616D653D22E9A286E5AFBCE5AEA1E689B92220666C6F7761626C653A61737369676E65653D22313237353733353534313135353631343732312220666C6F7761626C653A666F726D4669656C6456616C69646174696F6E3D2274727565223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C6D6F64656C65723A61637469766974692D69646D2D61737369676E656520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B747275655D5D3E3C2F6D6F64656C65723A61637469766974692D69646D2D61737369676E65653E0A20202020202020203C6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D6520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415BE4BF9EE5AE9DE5B1B15B797562616F7368616E5D5D5D3E3C2F6D6F64656C65723A61737369676E65652D696E666F2D66697273746E616D653E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D42313935423539462D444341352D343432352D413836382D4441443132354144344232412220736F757263655265663D227369642D42423037303532382D433345382D343233452D423430392D46364437324441334438363922207461726765745265663D227369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330223E3C2F73657175656E6365466C6F773E0A202020203C696E7465726D6564696174655468726F774576656E742069643D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E3C2F696E7465726D6564696174655468726F774576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D41314641364630382D414531392D343344462D424533352D3743353930364431384236442220736F757263655265663D227369642D44384341444237462D314343342D343045452D394434422D39414243394331453733333022207461726765745265663D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6361725F6D6F64656C223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226361725F6D6F64656C222069643D2242504D4E506C616E655F6361725F6D6F64656C223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D45373532334444412D304243452D343730362D423334432D314336454636393045463735222069643D2242504D4E53686170655F7369642D45373532334444412D304243452D343730362D423334432D314336454636393045463735223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223131302E302220793D223137372E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639222069643D2242504D4E53686170655F7369642D42423037303532382D433345382D343233452D423430392D463644373244413344383639223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223138352E302220793D223135322E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330222069643D2242504D4E53686170655F7369642D44384341444237462D314343342D343045452D394434422D394142433943314537333330223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E302220783D223333302E302220793D223135322E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438222069643D2242504D4E53686170655F7369642D36424346433633452D444646322D343443302D384431392D453134333933303643364438223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223435382E302220793D223137372E30223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D42313935423539462D444341352D343432352D413836382D444144313235414434423241222069643D2242504D4E456467655F7369642D42313935423539462D444341352D343432352D413836382D444144313235414434423241223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223238342E393439393939393939393930372220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223332392E393939393939393939393830372220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D41314641364630382D414531392D343344462D424533352D374335393036443138423644222069643D2242504D4E456467655F7369642D41314641364630382D414531392D343344462D424533352D374335393036443138423644223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223432392E393439393939393939393735332220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435382E302220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D37334132333336412D454630312D343545352D394538452D394238393934303137373337222069643D2242504D4E456467655F7369642D37334132333336412D454630312D343545352D394538452D394238393934303137373337223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223133392E393439393938343839393537362220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223138352E302220793D223139322E30223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E'), '0');
INSERT INTO "ACT_GE_BYTEARRAY" VALUES ('1354458537030619138', '1', '用车申请.car_model.png', '1354458533096361986', HEXTORAW('89504E470D0A1A0A0000000D49484452000001F2000000F20806000000B6E6476400000B8B4944415478DAEDDDDD6FD5F51D07702EBCE0C20B2FBCDC05C948C6857FC02EB8F0820B2F48C60584421B6D2AA1EA40AB4242A6040226428CE1624B162309F161618931CA189342CB7812C998048AD8AC6C80D2270F5B0AC1152AE877BFCFC98E4179B0EDE9EFF4774E5FAFE41B4C4F0BA6E7DDF7E7F7DC59B3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F85E4AE981F3E7CFBF77FCF8F16FBBBBBBD3FEFDFBAD1AAFAEAEAE74F8F0E17F67AB4586AC999821A00A51C0478E1C49A552298D8D8D59D3B42E5FBE9C0E1D3A74352BE4C53264CDB40C015588BD28055C98221ECBF6AE7A65C89A691902AA1087421560715656C23765C89A691902AA10E7D7945FA14A38C99035D33204D4A084BFBE3294CE9FD891CE766D2AAFF8EFF898E254C232244340C14BF8DAC840FAAC737D3ABD67ED0F567C2C5E539E06B90CC91050E012BE74F64F77147065F59FDDAD3C0D72199221A0C825DCFBD7ADF72CE1784D791AE432244340814BF8B3FD1BEF59C2F19AF234C865488600256C19E496410EE451C27185F1BD4A385E539E06B90CC91050E0123EF7F1EFEE59C2F19AF234C8654886800297F07F067AD267FB36DC794834FB58BCA63C0D72199221A0C0251CEBC2DFDFBEA384E3638A5309CB900C01452FE11B37D2B963BFBFF39068F6B1784D791AE432244340414B389EBAD5F7F16FEF797E335EF3642E835C866408285A09677B4943E70EA4337B7F73CF02AEACF89CF85C7B5606B90CC910508012FEA93D287B564A588664082870098F670FEA7E7B56CAD42097211902A6B184275BC095A54C0D72199221601A4BD852C23224438012B60C724B860025AC8465C832C80125AC84654886A0B1A49466F7F4F4B4BFF5D65B87B66CD972F5D9679FBDD9DADA9A9A9A9A524B4BCB774F3FFDF4D84B2FBD747EEBD6ADEF66EB1706B9A584654886F42D0509D4FBEFBFFFF6E6CD9B6F767474A437DE78231D3F7E3C0D0C0CA4EBD7AFA7107F964AA5F4E9A79FA62C78E9B9E79EFBEEF9E79FBFB872E5CA1506B96590CB900CE95BA64916A0B6575E79E5C6DAB56BCBA1B975EB561AAF53A74EA575EBD6DD6A6F6FEF5DB264C95C83DC32C8654886C6DFB757AE5C49EFBCF34E792F7CDEBC79E9A1871E8AFFCFF4E0830FA63973E6A4C71E7B2CEDD8B1238D8C8C346CDF52DD56E103BB76ED3AF0D4534FA5DDBB774F6880FFD8DEBD7B535B5BDB68A36C2D2A61252C43329467DFF6F7F7A755AB569507760CEB37DF7C339D3973265DBE7CB9DCA931B87B7B7BD3CE9D3BD3E2C58BCB9F175F3B3434D4707D4B15A13A78F0E0DF56AF5E9DFAFAFAD254B878F162046D74C58A15BF36C82D835C8664E8EE7DBB6DDBB6F4F0C30FA7356BD6A40B172E8CAB5F6380C7E7C71EFBABAFBEDA507DCB24C59661842ACEC14CA5F8FBB2ADC46BCB962D6B31C82D83DC7B27433FECDB18C671083DF6BE2723BEEE91471E29EF9D0F0E0E3644DF32C973341182A9DA13BFDB9EF9E38F3F3E92856B9E416E19E4D64CCED0ED7D1B437CFEFCF9DF1F3E9FAC38ECBE60C182F2306F84BE65E28778666FDAB4692CCED1E469CF9E3DA3CDCDCD9F18E496416ECDD40CDDDEB771383DF6C4AB1DE2B70FF3D8338FC3ECF5DEB74CD0071F7CF087B85AF29B6FBE49797BE6996786EBF5908F1256C232244353D5B75F7EF965F99CF8640FA7DFEF307B9C338FF3E7F5DCB74C70EB30EE5B8C5B1E6AE1F4E9D363F5BA95A88495B00CC9D054F56D5C9D1E87D5F3B06EDDBAF221F67AEE5B26209E2014175C54739BD944B5B5B50D373535CD29CAF720DB62DD9FADF94A5809CB900CE5F9FE57FA36EE138F5BC72E5DBA944BC7C6DE78FCFD71C8BE687D4B0EE23180DBB76F4FB5B46DDBB65359B0D614E57B100F5D88153F8C4B972EFDA51236C8654886F278FF2B7D1B0F7B59B87061AE3D1BF799C77DE845EB5B7210CFF28DC700D6D2B163C72E66C1DA5DB412BE6D7D74B7AD6B256C90CB900C55F3FE57FA36866C3C992D4FF1D09878A84CD1FA961CC403F9E3304C2D0D0F0F97B2605D2A70097FBF757DFB0FA31236C8654886AA79FF2B7D3B77EEDC29BFC8EDC7E20970F138D7A2F52D3988DFAA5379207FADC4BF9705EB7AD14BF8F6ADEB385CA6840D721992A16ADEFF4ADFC655E55375CBD9FD6E458BF3E445EB5B722AA0E9308EE0176E29E1622D19B2EA31436156F902F6FC55FE9DF8774DBB06F6C4134F7C57EB3DF2D1D1D1E13AD9233F916D452F7CF4D1471F7058D41EB90CC950B5EF7FA56F6BB9475EB4BE2507AB57AF1EABF539F2C1C1C17F14FC1CF90F7EF88A727E33B6AEEFB68AF2BA415EFC0C152D530D3CC8EFFAFE57FAB696E7C88BD6B7E460FDFAF5E76A7DD57A6767E75F0A7AD5FA27CB962D5BF4E31FBE220DF2FB7D6CBA5F37C88B9FA1A265AA0107F97DDFFF4ADFD6F2AAF5A2F52D3978EDB5D7B6D7FA3EF20D1B36EC29D87DE477DD7A36C80DF246CB90419EDB201FD7FB5FE9DB5ADE475EB4BE25072FBFFCF2CF57AD5AF56D0D9FEC767DF9F2E5FFAAC7270D19E40679BD67C8209FDE0C55FAB6564F762B954A37EAB56F99A0175E78E19FB57AD67A6767E7BB59A88ED4E3F7C92037C80D72837CAAFAB616CF5AAFE7BE65829E7CF2C9252FBEF8E2CD1AEC958F645B8727FDF63383DC2037C867EA20AFF46D7F7F7FAEBFFD6C7070F06A3DF72D93D0DEDEDE93F7EF238FF343B175F853E79194B0416E901BE48D9CA14ADFE6F9FBC8EBBD6F99843887D2D6D636DAD7D797CB10EFE9E9D995FD1B43D9D6E1BC7AFD1EB9FDCCED678D38C867B9FD6C5AFBB6A3A323CD9F3FBFEA611E437CC1820569C58A150DD1B74C524B4B4B73B6A5F8DF52A934A543BCBFBFFFE8F2E5CBBFA8F7433C1EE6E1813032244379F46D0CF3D8339FEC61F6F8BAD8138F21FEF9E79F7FD2087D4B159A9B9BDB56AE5C796DAAF6CC63CB3042B574E9D275F5FEBD51C24A58866428AFBE8DC3EC716E3B2E801BEF43BAE2F3E2C2B6F8BACD9B373754DF52A52C044DD9D6E2D50F3FFCF0EB2A2E801B79FDF5D777C4E19D6CB536C2F745092B611992A13CFB362E808BABD967CF9E5DBECF3C1E1A137BDB95C3EE71F83C9ED8160F7B8907D0C4008FBDF0B8B0ADD1FA96293A87936DD975B7B7B70F9F3C79727422F789EFDBB76F6716CC1371A145239DA351C24A588664A8167D7BEDDAB5F2105FB46851F971AE31B0B34F2BDF1B1E8F5D8D73E1F1B0976C80DF68D4BE656A03B63802D6DADA5ADAB265CBD9A3478F7E3130303054F9452BF140FE78966F5757D79F376EDCF8517373F3F908546C1536DAD5924A5809CB900CE95BEA5616989F655B7B1D5960DECBD685F86D3AFF7FB670FC79299EE51B8F016CE427082961252C4332A46FC120B70C724B8600256C19E496410E2861252C43320418E496129621190294B065905B32042861252C4396410E2861252C43320418E496129621190294B065905B32042861252C4396410E06B9A5846548860083DC32C82D190294B0129621CB200794B012962119020C724B09CB900C014AD832C82D190294B0129621CB200794B012962119020C724B09CB900C014AD832C82D831C50C24A58862C831C66A2EEEE6EE5579C753D2BE19B3264CDB40C0155387CF8F050A954528005580303037FCC4AB85786AC999621A00A070E1CF8D5C18307AF7CF5D557A38A70FAF6A2A280BBBABABEC8D66219B2665A86802A653FF80BB3ADF81371482ECEAF59355FF17DEFADE702962119020000000000000000000000000000000080FBFA1F8AC73D68D2D1974F0000000049454E44AE426082'), '1');
COMMIT;

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
CREATE TABLE "ACT_GE_PROPERTY" (
  "NAME_" NVARCHAR2(64) NOT NULL ,
  "VALUE_" NVARCHAR2(300) ,
  "REV_" NUMBER(11) 
)
;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO "ACT_GE_PROPERTY" VALUES ('batch.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('cfg.execution-related-entities-count', 'true', '2');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('cfg.task-related-entities-count', 'true', '2');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('common.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('entitylink.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('eventsubscription.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('identitylink.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('job.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('next.dbid', '1', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('schema.history', 'create(6.5.0.6)', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('task.schema.version', '6.5.0.6', '1');
INSERT INTO "ACT_GE_PROPERTY" VALUES ('variable.schema.version', '6.5.0.6', '1');
COMMIT;

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
CREATE TABLE "ACT_HI_ACTINST" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_DEF_ID_" NVARCHAR2(64) NOT NULL ,
  "PROC_INST_ID_" NVARCHAR2(64) NOT NULL ,
  "EXECUTION_ID_" NVARCHAR2(64) NOT NULL ,
  "ACT_ID_" NVARCHAR2(255) NOT NULL ,
  "TASK_ID_" NVARCHAR2(64) ,
  "CALL_PROC_INST_ID_" NVARCHAR2(64) ,
  "ACT_NAME_" NVARCHAR2(255) ,
  "ACT_TYPE_" NVARCHAR2(255) NOT NULL ,
  "ASSIGNEE_" NVARCHAR2(255) ,
  "START_TIME_" DATE NOT NULL ,
  "END_TIME_" DATE ,
  "DURATION_" NUMBER(20) ,
  "DELETE_REASON_" NCLOB ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406301734350850', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:02:26.005', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:26.318', 'SYYYY-MM-DD HH24:MI:SS'), '313', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406303806337026', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:02:26.499', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:26.499', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406304053800962', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:02:26.558', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:29.247', 'SYYYY-MM-DD HH24:MI:SS'), '2689', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406316305362945', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:02:29.478', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:29.478', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406316791902210', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-22 22:02:29.595', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:08:35.052', 'SYYYY-MM-DD HH24:MI:SS'), '365457', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406614050615297', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:03:40.467', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.535', 'SYYYY-MM-DD HH24:MI:SS'), '1068', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406619301883906', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:03:41.719', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.719', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406619561930754', '2', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:03:41.780', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:44.554', 'SYYYY-MM-DD HH24:MI:SS'), '2774', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406632182591490', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:03:44.789', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:44.789', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406632677519362', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-22 22:03:44.907', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406819621842946', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:04:29.478', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:29.827', 'SYYYY-MM-DD HH24:MI:SS'), '349', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406821853212673', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:04:30.010', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:30.010', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406822138425345', '2', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:04:30.078', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:32.721', 'SYYYY-MM-DD HH24:MI:SS'), '2643', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406834209632258', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:04:32.956', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:32.956', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308406834738114561', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-22 22:04:33.082', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308407850615320578', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:08:35.286', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:08:35.286', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308407851106054145', '3', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', NULL, '主管审批', 'userTask', '1280709549107552257', TO_DATE('2020-09-22 22:08:35.404', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583523564908545', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:46:38.981', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:39.248', 'SYYYY-MM-DD HH24:MI:SS'), '267', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583525452345345', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:39.432', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:39.432', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583525724975106', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:46:39.496', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:42.210', 'SYYYY-MM-DD HH24:MI:SS'), '2714', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583538093977602', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:42.445', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:42.445', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583538588905473', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:46:42.564', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:45.280', 'SYYYY-MM-DD HH24:MI:SS'), '2716', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583550957907969', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:45.513', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:45.513', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308583551444447233', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', NULL, '主管审批', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 09:46:45.629', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586277431631873', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:57:35.554', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:36.067', 'SYYYY-MM-DD HH24:MI:SS'), '513', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586280283758593', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:57:36.234', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:36.234', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586280539611138', '2', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:57:36.296', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:38.701', 'SYYYY-MM-DD HH24:MI:SS'), '2405', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586291503521794', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:57:38.910', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:38.910', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586291956506625', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 09:57:39.018', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586686682456065', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:59:13.127', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.810', 'SYYYY-MM-DD HH24:MI:SS'), '683', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586690235031554', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:13.975', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.975', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586690486689794', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:14.034', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:16.461', 'SYYYY-MM-DD HH24:MI:SS'), '2427', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586701551263745', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:16.673', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:16.673', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586702000054273', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:16.780', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.134', 'SYYYY-MM-DD HH24:MI:SS'), '2354', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586712754249730', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:19.344', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.344', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586716319408130', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', NULL, '领导会签', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:20.194', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586717904855041', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', NULL, '领导会签', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 09:59:20.571', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308586719137980418', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', NULL, '领导会签', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 09:59:20.866', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587452872744962', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:02:15.801', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.449', 'SYYYY-MM-DD HH24:MI:SS'), '648', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587456282714114', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:16.614', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.614', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587456551149569', '2', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:16.678', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:19.104', 'SYYYY-MM-DD HH24:MI:SS'), '2426', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587467590557698', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:19.311', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:19.311', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587468056125441', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:02:19.421', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587551543746561', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:02:39.328', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.612', 'SYYYY-MM-DD HH24:MI:SS'), '284', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587553410211842', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:39.771', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.771', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587553657675778', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:39.830', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:42.148', 'SYYYY-MM-DD HH24:MI:SS'), '2318', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587564248293378', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:42.356', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:42.356', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587564709666818', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:42.465', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:44.835', 'SYYYY-MM-DD HH24:MI:SS'), '2370', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587575518388225', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:45.043', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:45.043', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587575975567361', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', NULL, '宝山审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:02:45.151', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587713993334785', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:03:18.057', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:18.279', 'SYYYY-MM-DD HH24:MI:SS'), '222', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587715612336130', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:03:18.443', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:18.443', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587715863994370', '2', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:03:18.504', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:20.815', 'SYYYY-MM-DD HH24:MI:SS'), '2311', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587726433640449', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:03:21.024', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:21.024', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308587726920179714', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:03:21.140', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588719409946626', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:07:17.767', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:18.083', 'SYYYY-MM-DD HH24:MI:SS'), '316', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588721486127106', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:07:18.262', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:18.262', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588721754562561', '2', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:07:18.327', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:20.978', 'SYYYY-MM-DD HH24:MI:SS'), '2651', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588733838352385', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:07:21.208', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:21.208', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588734329085953', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:07:21.325', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588942660165634', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:08:10.995', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:11.292', 'SYYYY-MM-DD HH24:MI:SS'), '297', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588944648265730', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:08:11.468', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:11.468', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588944899923970', '2', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:08:11.529', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:14.154', 'SYYYY-MM-DD HH24:MI:SS'), '2625', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588956883050497', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:08:14.386', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:14.386', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308588957361201153', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:08:14.500', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308589269002182657', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:09:28.801', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.518', 'SYYYY-MM-DD HH24:MI:SS'), '717', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308589272768667649', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:09:29.698', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.698', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308589273020325890', '2', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:09:29.759', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:32.491', 'SYYYY-MM-DD HH24:MI:SS'), '2732', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308589285452242945', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:09:32.722', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:32.722', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308589285938782210', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:09:32.839', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308590489804693505', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:14:19.862', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:20.166', 'SYYYY-MM-DD HH24:MI:SS'), '304', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308590491771822082', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:14:20.331', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:20.331', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308590492027674626', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-23 10:14:20.393', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:22.715', 'SYYYY-MM-DD HH24:MI:SS'), '2322', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308590502639263745', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:14:22.924', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:22.924', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308590503100637186', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:14:23.033', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:18:24.490', 'SYYYY-MM-DD HH24:MI:SS'), '241457', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1308591517623083009', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-23 10:18:24.914', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1354463469016223745', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, 'startEvent', NULL, TO_DATE('2021-01-28 00:17:10.384', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:11.108', 'SYYYY-MM-DD HH24:MI:SS'), '724', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1354463473504129025', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2021-01-28 00:17:11.460', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:11.460', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1354463474770808834', '2', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463476456919042', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2021-01-28 00:17:11.769', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:13.306', 'SYYYY-MM-DD HH24:MI:SS'), '1537', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1354463482802900993', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2021-01-28 00:17:13.671', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:13.671', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_HI_ACTINST" VALUES ('1354463484451262466', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463485835382785', NULL, '领导审批', 'userTask', '1275735541155614721', TO_DATE('2021-01-28 00:17:14.070', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
CREATE TABLE "ACT_HI_ATTACHMENT" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "USER_ID_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "DESCRIPTION_" NCLOB ,
  "TYPE_" NVARCHAR2(255) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "URL_" NCLOB ,
  "CONTENT_ID_" NVARCHAR2(64) ,
  "TIME_" DATE 
)
;

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
CREATE TABLE "ACT_HI_COMMENT" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "TYPE_" NVARCHAR2(255) ,
  "TIME_" DATE NOT NULL ,
  "USER_ID_" NVARCHAR2(255) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "ACTION_" NVARCHAR2(255) ,
  "MESSAGE_" NCLOB ,
  "FULL_MSG_" BLOB 
)
;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308407844994953218', 'comment', TO_DATE('2020-09-22 22:08:33.885', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', '1308406317274247169', '1308406300706746370', 'AddComment', '俞宝山提交了任务，意见：我觉得可以;', HEXTORAW('E4BF9EE5AE9DE5B1B1E68F90E4BAA4E4BA86E4BBBBE58AA1EFBC8CE6848FE8A781EFBC9AE68891E8A789E5BE97E58FAFE4BBA53B'));
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308407861721837569', 'event', TO_DATE('2020-09-22 22:08:37.875', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', '1308407851600982018', NULL, 'DeleteGroupLink', 'null_|_assignee', NULL);
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308407866788556802', 'event', TO_DATE('2020-09-22 22:08:39.081', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', '1308407851600982018', NULL, 'AddUserLink', '1280709549107552257_|_assignee', NULL);
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308583546591637506', 'comment', TO_DATE('2020-09-23 09:46:44.411', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', '1308583539075444738', '1308583522503749633', 'AddComment', '与上一步处理人相同，系统自动完成;', HEXTORAW('E4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B'));
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308586708929044481', 'comment', TO_DATE('2020-09-23 09:59:18.374', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', '1308586702457233410', '1308586685709377538', 'AddComment', '与上一步处理人相同，系统自动完成;', HEXTORAW('E4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B'));
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308587571659628545', 'comment', TO_DATE('2020-09-23 10:02:44.062', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', '1308587565158457345', '1308587550507753474', 'AddComment', '与上一步处理人相同，系统自动完成;', HEXTORAW('E4B88EE4B88AE4B880E6ADA5E5A484E79086E4BABAE79BB8E5908CEFBC8CE7B3BBE7BB9FE887AAE58AA8E5AE8CE688903B'));
INSERT INTO "ACT_HI_COMMENT" VALUES ('1308591513432973314', 'comment', TO_DATE('2020-09-23 10:18:23.857', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', '1308590503566204930', '1308590488798060546', 'AddComment', '老俞退回任务到【填写申请单】，退回原因：跳什么舞，回家睡觉;', HEXTORAW('E586AFE7A195E6A5A0E98080E59B9EE4BBBBE58AA1E588B0E38090E5A1ABE58699E794B3E8AFB7E58D95E38091EFBC8CE98080E59B9EE58E9FE59BA0EFBC9AE8B7B3E4BB80E4B988E8889EEFBC8CE59B9EE5AEB6E79DA1E8A7893B'));
COMMIT;

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
CREATE TABLE "ACT_HI_DETAIL" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "ACT_INST_ID_" NVARCHAR2(64) ,
  "NAME_" NVARCHAR2(255) NOT NULL ,
  "VAR_TYPE_" NVARCHAR2(255) ,
  "REV_" NUMBER(11) ,
  "TIME_" DATE NOT NULL ,
  "BYTEARRAY_ID_" NVARCHAR2(64) ,
  "DOUBLE_" NUMBER ,
  "LONG_" NUMBER(20) ,
  "TEXT_" NCLOB ,
  "TEXT2_" NCLOB 
)
;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308406301990203394', 'FormProperty', '1308406300706746370', '1308406301486886914', NULL, '1308406301734350850', 'formData', NULL, NULL, TO_DATE('2020-09-22 22:02:26.005', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308406614306467841', 'FormProperty', '1308406613064953858', '1308406613807345665', NULL, '1308406614050615297', 'formData', NULL, NULL, TO_DATE('2020-09-22 22:03:40.468', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308406819877695490', 'FormProperty', '1308406818585849858', '1308406819361796097', NULL, '1308406819621842946', 'formData', NULL, NULL, TO_DATE('2020-09-22 22:04:29.478', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308407847201157122', 'FormProperty', '1308406300706746370', '1308406301486886914', '1308406317274247169', '1308406316791902210', 'formData', NULL, NULL, TO_DATE('2020-09-22 22:08:34.348', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308583523824955393', 'FormProperty', '1308583522503749633', '1308583523304861698', NULL, '1308583523564908545', 'formData', NULL, NULL, TO_DATE('2020-09-23 09:46:38.981', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308586277687484418', 'FormProperty', '1308586276353695745', '1308586277171585026', NULL, '1308586277431631873', 'formData', NULL, NULL, TO_DATE('2020-09-23 09:57:35.554', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308586686925725698', 'FormProperty', '1308586685709377538', '1308586686443380737', NULL, '1308586686682456065', 'formData', NULL, NULL, TO_DATE('2020-09-23 09:59:13.127', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308587453116014594', 'FormProperty', '1308587451853529089', '1308587452633669633', NULL, '1308587452872744962', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:02:15.801', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308587551795404802', 'FormProperty', '1308587550507753474', '1308587551300476930', NULL, '1308587551543746561', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:02:39.328', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308587714240798722', 'FormProperty', '1308587712978313218', '1308587713737482242', NULL, '1308587713993334785', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:03:18.057', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308588719665799169', 'FormProperty', '1308588718357176322', '1308588719162482690', NULL, '1308588719409946626', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:07:17.767', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308588942920212481', 'FormProperty', '1308588941628366850', '1308588942400118785', NULL, '1308588942660165634', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:08:10.995', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308589269304172545', 'FormProperty', '1308589267949412354', '1308589268750524417', NULL, '1308589269002182657', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:09:28.802', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1308590490060546049', 'FormProperty', '1308590488798060546', '1308590489553035265', NULL, '1308590489804693505', 'formData', NULL, NULL, TO_DATE('2020-09-23 10:14:19.862', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL);
INSERT INTO "ACT_HI_DETAIL" VALUES ('1354463470446481409', 'FormProperty', '1354463463303581698', '1354463467527245825', NULL, '1354463469016223745', 'formData', NULL, NULL, TO_DATE('2021-01-28 00:17:10.384', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
CREATE TABLE "ACT_HI_ENTITYLINK" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "LINK_TYPE_" NVARCHAR2(255) ,
  "CREATE_TIME_" DATE ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "REF_SCOPE_ID_" NVARCHAR2(255) ,
  "REF_SCOPE_TYPE_" NVARCHAR2(255) ,
  "REF_SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "HIERARCHY_TYPE_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
CREATE TABLE "ACT_HI_IDENTITYLINK" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "GROUP_ID_" NVARCHAR2(255) ,
  "TYPE_" NVARCHAR2(255) ,
  "USER_ID_" NVARCHAR2(255) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406301226840066', NULL, 'starter', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:02:25.883', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406304850718721', NULL, 'assignee', '1265476890672672808', '1308406304594866177', TO_DATE('2020-09-22 22:02:26.688', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406305358229505', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:02:26.868', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406313876860930', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:02:28.899', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406317517516801', NULL, 'assignee', '1275735541155614721', '1308406317274247169', TO_DATE('2020-09-22 22:02:29.710', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406318016638977', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-22 22:02:29.886', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406613555687426', NULL, 'starter', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:03:40.349', 'SYYYY-MM-DD HH24:MI:SS'), '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406620316905474', NULL, 'assignee', '1265476890672672808', '1308406620056858626', TO_DATE('2020-09-22 22:03:41.899', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406620824416257', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:03:42.082', 'SYYYY-MM-DD HH24:MI:SS'), '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406629749895170', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:03:44.209', 'SYYYY-MM-DD HH24:MI:SS'), '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406633407328257', NULL, 'assignee', '1275735541155614721', '1308406633172447233', TO_DATE('2020-09-22 22:03:45.025', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406633906450433', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-22 22:03:45.200', 'SYYYY-MM-DD HH24:MI:SS'), '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406819105943553', NULL, 'starter', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:04:29.356', 'SYYYY-MM-DD HH24:MI:SS'), '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406822872428545', NULL, 'assignee', '1265476890672672808', '1308406822629158913', TO_DATE('2020-09-22 22:04:30.195', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406823371550722', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:04:30.372', 'SYYYY-MM-DD HH24:MI:SS'), '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406831776935937', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:04:32.376', 'SYYYY-MM-DD HH24:MI:SS'), '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406835497283586', NULL, 'assignee', '1280700700074041345', '1308406835233042433', TO_DATE('2020-09-22 22:04:33.200', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308406836000600066', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-22 22:04:33.383', 'SYYYY-MM-DD HH24:MI:SS'), '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308407848664969218', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-22 22:08:34.821', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308407851844251650', NULL, 'assignee', '1280709549107552257', '1308407851600982018', TO_DATE('2020-09-22 22:08:35.522', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308407852334985218', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-22 22:08:35.697', 'SYYYY-MM-DD HH24:MI:SS'), '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308407861465985026', NULL, 'assignee', NULL, '1308407851600982018', TO_DATE('2020-09-22 22:08:37.814', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308407866041970690', NULL, 'assignee', '1280709549107552257', '1308407851600982018', TO_DATE('2020-09-22 22:08:38.906', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583523040620545', NULL, 'starter', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:46:38.857', 'SYYYY-MM-DD HH24:MI:SS'), '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583526576418817', NULL, 'assignee', '1275735541155614721', '1308583526312177666', TO_DATE('2020-09-23 09:46:39.641', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583527075540994', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:46:39.818', 'SYYYY-MM-DD HH24:MI:SS'), '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583535636115457', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:46:41.860', 'SYYYY-MM-DD HH24:MI:SS'), '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583539327102977', NULL, 'assignee', '1275735541155614721', '1308583539075444738', TO_DATE('2020-09-23 09:46:42.681', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583548533600258', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:46:44.934', 'SYYYY-MM-DD HH24:MI:SS'), '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583552174256129', NULL, 'assignee', '1280709549107552257', '1308583551935180802', TO_DATE('2020-09-23 09:46:45.746', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308583552690155522', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 09:46:45.925', 'SYYYY-MM-DD HH24:MI:SS'), '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586276898955265', NULL, 'starter', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:57:35.429', 'SYYYY-MM-DD HH24:MI:SS'), '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586281382666242', NULL, 'assignee', '1275735541155614721', '1308586281105842178', TO_DATE('2020-09-23 09:57:36.434', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586281839845377', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:57:36.606', 'SYYYY-MM-DD HH24:MI:SS'), '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586289326678017', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:57:38.390', 'SYYYY-MM-DD HH24:MI:SS'), '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586292665344001', NULL, 'assignee', '1280700700074041345', '1308586292422074369', TO_DATE('2020-09-23 09:57:39.129', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586293126717442', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 09:57:39.296', 'SYYYY-MM-DD HH24:MI:SS'), '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586686191722498', NULL, 'starter', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:13.011', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586691203915778', NULL, 'assignee', '1275735541155614721', '1308586690956451842', TO_DATE('2020-09-23 09:59:14.147', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586691669483521', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:14.316', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586699412168705', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:16.163', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586702696308737', NULL, 'assignee', '1275735541155614721', '1308586702457233410', TO_DATE('2020-09-23 09:59:16.889', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586710615154689', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:18.833', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586717011468290', NULL, 'assignee', '1275735541155614721', '1308586716768198657', TO_DATE('2020-09-23 09:59:20.300', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586718399782914', NULL, 'assignee', '1280700700074041345', '1308586718148124673', TO_DATE('2020-09-23 09:59:20.629', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586718647246849', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 09:59:20.749', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586719632908289', NULL, 'assignee', '1280709549107552257', '1308586719393832961', TO_DATE('2020-09-23 09:59:20.927', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308586719880372226', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 09:59:21.043', 'SYYYY-MM-DD HH24:MI:SS'), '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587452382011393', NULL, 'starter', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:15.684', 'SYYYY-MM-DD HH24:MI:SS'), '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587457251598337', NULL, 'assignee', '1280700700074041345', '1308587457004134402', TO_DATE('2020-09-23 10:02:16.787', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587457721360385', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:16.958', 'SYYYY-MM-DD HH24:MI:SS'), '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587465472434177', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:18.806', 'SYYYY-MM-DD HH24:MI:SS'), '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587468764962817', NULL, 'assignee', '1275735541155614721', '1308587468509110274', TO_DATE('2020-09-23 10:02:19.531', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587469213753345', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 10:02:19.698', 'SYYYY-MM-DD HH24:MI:SS'), '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587551040430081', NULL, 'starter', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:39.207', 'SYYYY-MM-DD HH24:MI:SS'), '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587554412650498', NULL, 'assignee', '1280700700074041345', '1308587554144215042', TO_DATE('2020-09-23 10:02:39.946', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587554878218241', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:40.121', 'SYYYY-MM-DD HH24:MI:SS'), '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587562130169857', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:41.850', 'SYYYY-MM-DD HH24:MI:SS'), '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587565401726978', NULL, 'assignee', '1280700700074041345', '1308587565158457345', TO_DATE('2020-09-23 10:02:42.574', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587573337350145', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:44.522', 'SYYYY-MM-DD HH24:MI:SS'), '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587576667627521', NULL, 'assignee', '1275735541155614721', '1308587576432746498', TO_DATE('2020-09-23 10:02:45.260', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587577120612354', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 10:02:45.425', 'SYYYY-MM-DD HH24:MI:SS'), '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587713485824002', NULL, 'starter', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:03:17.938', 'SYYYY-MM-DD HH24:MI:SS'), '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587716581220354', NULL, 'assignee', '1280700700074041345', '1308587716329562114', TO_DATE('2020-09-23 10:03:18.615', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587717034205185', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:03:18.783', 'SYYYY-MM-DD HH24:MI:SS'), '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587724307128321', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:03:20.517', 'SYYYY-MM-DD HH24:MI:SS'), '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587727629017090', NULL, 'assignee', '1275735541155614721', '1308587727377358849', TO_DATE('2020-09-23 10:03:21.248', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308587728090390529', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 10:03:21.420', 'SYYYY-MM-DD HH24:MI:SS'), '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588718894047233', NULL, 'starter', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:07:17.645', 'SYYYY-MM-DD HH24:MI:SS'), '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588722522120193', NULL, 'assignee', '1280709549107552257', '1308588722266267649', TO_DATE('2020-09-23 10:07:18.449', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588723096739842', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:07:18.648', 'SYYYY-MM-DD HH24:MI:SS'), '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588731435016194', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:07:20.636', 'SYYYY-MM-DD HH24:MI:SS'), '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588735113420801', NULL, 'assignee', '1280700700074041345', '1308588734824013825', TO_DATE('2020-09-23 10:07:21.443', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588735608348674', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:07:21.630', 'SYYYY-MM-DD HH24:MI:SS'), '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588942156849153', NULL, 'starter', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:08:10.874', 'SYYYY-MM-DD HH24:MI:SS'), '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588945663287298', NULL, 'assignee', '1280709549107552257', '1308588945399046146', TO_DATE('2020-09-23 10:08:11.648', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588946162409474', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:08:11.829', 'SYYYY-MM-DD HH24:MI:SS'), '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588954462937089', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:08:13.810', 'SYYYY-MM-DD HH24:MI:SS'), '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588958086815745', NULL, 'assignee', '1275735541155614721', '1308588957851934722', TO_DATE('2020-09-23 10:08:14.616', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308588958577549314', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 10:08:14.790', 'SYYYY-MM-DD HH24:MI:SS'), '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589268490477570', NULL, 'starter', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:09:28.678', 'SYYYY-MM-DD HH24:MI:SS'), '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589273775300610', NULL, 'assignee', '1280709549107552257', '1308589273519448066', TO_DATE('2020-09-23 10:09:29.878', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589274274422785', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:09:30.057', 'SYYYY-MM-DD HH24:MI:SS'), '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589283048906753', NULL, 'participant', '1280709549107552257', NULL, TO_DATE('2020-09-23 10:09:32.149', 'SYYYY-MM-DD HH24:MI:SS'), '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589286731505665', NULL, 'assignee', '1275735541155614721', '1308589286484041730', TO_DATE('2020-09-23 10:09:32.969', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308589287243210754', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2020-09-23 10:09:33.149', 'SYYYY-MM-DD HH24:MI:SS'), '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590489305571329', NULL, 'starter', '1265476890672672808', NULL, TO_DATE('2020-09-23 10:14:19.743', 'SYYYY-MM-DD HH24:MI:SS'), '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590492744900609', NULL, 'assignee', '1265476890672672808', '1308590492497436673', TO_DATE('2020-09-23 10:14:20.505', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590493223051265', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-23 10:14:20.677', 'SYYYY-MM-DD HH24:MI:SS'), '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590500516945922', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2020-09-23 10:14:22.417', 'SYYYY-MM-DD HH24:MI:SS'), '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590503809474562', NULL, 'assignee', '1280700700074041345', '1308590503566204930', TO_DATE('2020-09-23 10:14:23.143', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308590504275042305', NULL, 'participant', '1280700700074041345', NULL, TO_DATE('2020-09-23 10:14:23.312', 'SYYYY-MM-DD HH24:MI:SS'), '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1308591518612938753', NULL, 'assignee', '1265476890672672808', '1308591518118010881', TO_DATE('2020-09-23 10:18:25.090', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463466017296385', NULL, 'starter', '1265476890672672808', NULL, TO_DATE('2021-01-28 00:17:09.669', 'SYYYY-MM-DD HH24:MI:SS'), '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463477811679234', NULL, 'assignee', '1265476890672672808', '1354463476456919042', TO_DATE('2021-01-28 00:17:12.164', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463479166439425', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2021-01-28 00:17:12.805', 'SYYYY-MM-DD HH24:MI:SS'), '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463481066459137', NULL, 'participant', '1265476890672672808', NULL, TO_DATE('2021-01-28 00:17:13.258', 'SYYYY-MM-DD HH24:MI:SS'), '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463487110451201', NULL, 'assignee', '1275735541155614721', '1354463485835382785', TO_DATE('2021-01-28 00:17:14.396', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_IDENTITYLINK" VALUES ('1354463488700092417', NULL, 'participant', '1275735541155614721', NULL, TO_DATE('2021-01-28 00:17:15.078', 'SYYYY-MM-DD HH24:MI:SS'), '1354463463303581698', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
CREATE TABLE "ACT_HI_PROCINST" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_INST_ID_" NVARCHAR2(64) NOT NULL ,
  "BUSINESS_KEY_" NVARCHAR2(255) ,
  "PROC_DEF_ID_" NVARCHAR2(64) NOT NULL ,
  "START_TIME_" DATE NOT NULL ,
  "END_TIME_" DATE ,
  "DURATION_" NUMBER(20) ,
  "START_USER_ID_" NVARCHAR2(255) ,
  "START_ACT_ID_" NVARCHAR2(255) ,
  "END_ACT_ID_" NVARCHAR2(255) ,
  "SUPER_PROCESS_INSTANCE_ID_" NVARCHAR2(64) ,
  "DELETE_REASON_" NCLOB ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "CALLBACK_ID_" NVARCHAR2(255) ,
  "CALLBACK_TYPE_" NVARCHAR2(255) ,
  "REFERENCE_ID_" NVARCHAR2(255) ,
  "REFERENCE_TYPE_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308406300706746370', '2', '1308406300706746370', NULL, 'formal:1:1295553082574471169', TO_DATE('2020-09-22 22:02:25.698', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308406613064953858', '2', '1308406613064953858', NULL, 'travel:1:1304341427379126274', TO_DATE('2020-09-22 22:03:40.172', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308406818585849858', '2', '1308406818585849858', NULL, 'leave:1:1294922085572947969', TO_DATE('2020-09-22 22:04:29.165', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308583522503749633', '2', '1308583522503749633', NULL, 'formal:1:1295553082574471169', TO_DATE('2020-09-23 09:46:38.668', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308586276353695745', '2', '1308586276353695745', NULL, 'leave:1:1294922085572947969', TO_DATE('2020-09-23 09:57:35.235', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308586685709377538', '2', '1308586685709377538', NULL, 'travel:1:1304341427379126274', TO_DATE('2020-09-23 09:59:12.834', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308587451853529089', '2', '1308587451853529089', NULL, 'travel:1:1304341427379126274', TO_DATE('2020-09-23 10:02:15.495', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:02:18发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308587550507753474', '2', '1308587550507753474', NULL, 'leave:1:1294922085572947969', TO_DATE('2020-09-23 10:02:39.011', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:02:41发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308587712978313218', '2', '1308587712978313218', NULL, 'formal:1:1295553082574471169', TO_DATE('2020-09-23 10:03:17.754', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:03:20发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308588718357176322', '2', '1308588718357176322', NULL, 'leave:1:1294922085572947969', TO_DATE('2020-09-23 10:07:17.446', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308588941628366850', '2', '1308588941628366850', NULL, 'formal:1:1295553082574471169', TO_DATE('2020-09-23 10:08:10.679', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308589267949412354', '2', '1308589267949412354', NULL, 'travel:1:1304341427379126274', TO_DATE('2020-09-23 10:09:28.481', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1308590488798060546', '2', '1308590488798060546', NULL, 'leave:1:1294922085572947969', TO_DATE('2020-09-23 10:14:19.559', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_HI_PROCINST" VALUES ('1354463463303581698', '2', '1354463463303581698', NULL, 'car_model:1:1354458538414739458', TO_DATE('2021-01-28 00:17:08.652', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1265476890672672808', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, '', '超级管理员在2021-01-28 00:17:12发起了用车申请', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
CREATE TABLE "ACT_HI_TASKINST" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "TASK_DEF_ID_" NVARCHAR2(64) ,
  "TASK_DEF_KEY_" NVARCHAR2(255) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "PROPAGATED_STAGE_INST_ID_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "PARENT_TASK_ID_" NVARCHAR2(64) ,
  "DESCRIPTION_" NCLOB ,
  "OWNER_" NVARCHAR2(255) ,
  "ASSIGNEE_" NVARCHAR2(255) ,
  "START_TIME_" DATE NOT NULL ,
  "CLAIM_TIME_" DATE ,
  "END_TIME_" DATE ,
  "DURATION_" NUMBER(20) ,
  "DELETE_REASON_" NCLOB ,
  "PRIORITY_" NUMBER(11) ,
  "DUE_DATE_" DATE ,
  "FORM_KEY_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "LAST_UPDATED_TIME_" DATE 
)
;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406304594866177', '2', 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2020-09-22 22:02:26.616', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-22 22:02:29.074', 'SYYYY-MM-DD HH24:MI:SS'), '2458', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:02:29.074', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406317274247169', '2', 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-22 22:02:29.653', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-22 22:08:34.938', 'SYYYY-MM-DD HH24:MI:SS'), '365285', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:08:34.938', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406620056858626', '2', 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406613064953858', '1308406613807345665', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2020-09-22 22:03:41.839', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-22 22:03:44.382', 'SYYYY-MM-DD HH24:MI:SS'), '2543', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:03:44.382', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406633172447233', '1', 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406613064953858', '1308406613807345665', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-22 22:03:44.966', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:03:45.025', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406822629158913', '2', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406818585849858', '1308406819361796097', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2020-09-22 22:04:30.136', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-22 22:04:32.549', 'SYYYY-MM-DD HH24:MI:SS'), '2413', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:04:32.549', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308406835233042433', '1', 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406818585849858', '1308406819361796097', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-22 22:04:33.140', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-22 22:04:33.200', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308407851600982018', '4', 'formal:1:1295553082574471169', NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-22 22:08:35.463', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', TO_DATE('2020-09-24 00:00:00.000', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '', TO_DATE('2020-09-22 22:08:39.941', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308583526312177666', '2', 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:46:39.555', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 09:46:42.036', 'SYYYY-MM-DD HH24:MI:SS'), '2481', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:46:42.036', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308583539075444738', '2', 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:46:42.622', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 09:46:45.108', 'SYYYY-MM-DD HH24:MI:SS'), '2486', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:46:45.108', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308583551935180802', '1', 'formal:1:1295553082574471169', NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-23 09:46:45.688', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:46:45.746', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586281105842178', '2', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586276353695745', '1308586277171585026', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:57:36.347', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 09:57:38.539', 'SYYYY-MM-DD HH24:MI:SS'), '2192', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:57:38.539', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586292422074369', '1', 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586276353695745', '1308586277171585026', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 09:57:39.070', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:57:39.129', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586690956451842', '2', 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586685709377538', '1308586686443380737', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:59:14.085', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 09:59:16.313', 'SYYYY-MM-DD HH24:MI:SS'), '2228', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:59:16.313', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586702457233410', '2', 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586685709377538', '1308586686443380737', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:59:16.831', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 09:59:18.982', 'SYYYY-MM-DD HH24:MI:SS'), '2151', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:59:18.982', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586716768198657', '1', 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714415194113', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 09:59:20.244', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:59:20.300', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586718148124673', '1', 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714654269441', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 09:59:20.572', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:59:20.629', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308586719393832961', '1', 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714893344770', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-23 09:59:20.867', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 09:59:20.927', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587457004134402', '2', 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587451853529089', '1308587452633669633', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:02:16.728', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:02:18.956', 'SYYYY-MM-DD HH24:MI:SS'), '2228', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:02:18.956', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587468509110274', '1', 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587451853529089', '1308587452633669633', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 10:02:19.471', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:02:19.531', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587554144215042', '2', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:02:39.881', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:02:41.999', 'SYYYY-MM-DD HH24:MI:SS'), '2118', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:02:41.999', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587565158457345', '2', 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:02:42.515', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:02:44.685', 'SYYYY-MM-DD HH24:MI:SS'), '2170', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:02:44.685', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587576432746498', '1', 'leave:1:1294922085572947969', NULL, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '宝山审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 10:02:45.202', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:02:45.260', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587716329562114', '2', 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587712978313218', '1308587713737482242', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:03:18.555', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:03:20.667', 'SYYYY-MM-DD HH24:MI:SS'), '2112', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:03:20.667', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308587727377358849', '1', 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587712978313218', '1308587713737482242', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 10:03:21.190', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:03:21.248', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308588722266267649', '2', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588718357176322', '1308588719162482690', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-23 10:07:18.386', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:07:20.807', 'SYYYY-MM-DD HH24:MI:SS'), '2421', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:07:20.807', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308588734824013825', '1', 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588718357176322', '1308588719162482690', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:07:21.383', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:07:21.443', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308588945399046146', '2', 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588941628366850', '1308588942400118785', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-23 10:08:11.586', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:08:13.983', 'SYYYY-MM-DD HH24:MI:SS'), '2397', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:08:13.983', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308588957851934722', '1', 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588941628366850', '1308588942400118785', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 10:08:14.558', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:08:14.616', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308589273519448066', '2', 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589267949412354', '1308589268750524417', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', TO_DATE('2020-09-23 10:09:29.817', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:09:32.321', 'SYYYY-MM-DD HH24:MI:SS'), '2504', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:09:32.321', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308589286484041730', '1', 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589267949412354', '1308589268750524417', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2020-09-23 10:09:32.897', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:09:32.969', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308590492497436673', '2', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308590489553035265', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2020-09-23 10:14:20.444', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:14:22.567', 'SYYYY-MM-DD HH24:MI:SS'), '2123', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:14:22.567', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308590503566204930', '2', 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590488798060546', '1308590489553035265', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', TO_DATE('2020-09-23 10:14:23.083', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-09-23 10:18:24.604', 'SYYYY-MM-DD HH24:MI:SS'), '241521', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:18:24.604', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1308591518118010881', '1', 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308591517363036162', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2020-09-23 10:18:24.972', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2020-09-23 10:18:25.090', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1354463476456919042', '2', 'car_model:1:1354458538414739458', NULL, 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463463303581698', '1354463467527245825', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', TO_DATE('2021-01-28 00:17:11.771', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2021-01-28 00:17:13.262', 'SYYYY-MM-DD HH24:MI:SS'), '1491', NULL, '50', NULL, NULL, NULL, '', TO_DATE('2021-01-28 00:17:13.262', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_TASKINST" VALUES ('1354463485835382785', '1', 'car_model:1:1354458538414739458', NULL, 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463463303581698', '1354463467527245825', NULL, NULL, NULL, NULL, NULL, '领导审批', NULL, NULL, NULL, '1275735541155614721', TO_DATE('2021-01-28 00:17:14.073', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '', TO_DATE('2021-01-28 00:17:14.396', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;

-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
CREATE TABLE "ACT_HI_TSK_LOG" (
  "ID_" NUMBER(20) NOT NULL ,
  "TYPE_" NVARCHAR2(64) ,
  "TASK_ID_" NVARCHAR2(64) NOT NULL ,
  "TIME_STAMP_" DATE NOT NULL ,
  "USER_ID_" NVARCHAR2(255) ,
  "DATA_" NCLOB ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
CREATE TABLE "ACT_HI_VARINST" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "NAME_" NVARCHAR2(255) NOT NULL ,
  "VAR_TYPE_" NVARCHAR2(100) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "BYTEARRAY_ID_" NVARCHAR2(64) ,
  "DOUBLE_" NUMBER ,
  "LONG_" NUMBER(20) ,
  "TEXT_" NCLOB ,
  "TEXT2_" NCLOB ,
  "CREATE_TIME_" DATE ,
  "LAST_UPDATED_TIME_" DATE 
)
;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406300954210305', '0', '1308406300706746370', '1308406300706746370', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, TO_DATE('2020-09-22 22:02:25.822', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:25.822', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406302497714177', '1', '1308406300706746370', '1308406300706746370', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL, TO_DATE('2020-09-22 22:02:26.186', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:08:34.704', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406613316612097', '0', '1308406613064953858', '1308406613064953858', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, TO_DATE('2020-09-22 22:03:40.291', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:40.291', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406614793007106', '0', '1308406613064953858', '1308406613064953858', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL, TO_DATE('2020-09-22 22:03:40.645', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:40.645', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406617540276225', '0', '1308406613064953858', '1308406613064953858', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308406617791934466', NULL, NULL, NULL, NULL, TO_DATE('2020-09-22 22:03:41.300', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.300', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406618278473729', '0', '1308406613064953858', '1308406613064953858', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-22 22:03:41.476', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.476', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406818841702402', '0', '1308406818585849858', '1308406818585849858', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, TO_DATE('2020-09-22 22:04:29.294', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:29.294', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308406820372623362', '0', '1308406818585849858', '1308406818585849858', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL, TO_DATE('2020-09-22 22:04:29.658', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:29.658', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308583522767990785', '0', '1308583522503749633', '1308583522503749633', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, TO_DATE('2020-09-23 09:46:38.793', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:38.793', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308583524093390850', '0', '1308583522503749633', '1308583522503749633', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL, TO_DATE('2020-09-23 09:46:39.108', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:39.108', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586276622131202', '0', '1308586276353695745', '1308586276353695745', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, TO_DATE('2020-09-23 09:57:35.365', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:35.365', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586277955919874', '0', '1308586276353695745', '1308586276353695745', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL, TO_DATE('2020-09-23 09:57:35.679', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:35.679', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586685948452865', '0', '1308586685709377538', '1308586685709377538', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:12.952', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:12.952', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586687177383938', '0', '1308586685709377538', '1308586685709377538', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL, TO_DATE('2020-09-23 09:59:13.246', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.246', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586688616030209', '0', '1308586685709377538', '1308586685709377538', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308586688863494145', NULL, NULL, NULL, NULL, TO_DATE('2020-09-23 09:59:13.589', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.589', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586689337450497', '0', '1308586685709377538', '1308586685709377538', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-23 09:59:13.760', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.760', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586713685385218', '0', '1308586685709377538', '1308586713228206081', NULL, 'nrOfInstances', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-23 09:59:19.566', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.566', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586713928654849', '0', '1308586685709377538', '1308586713228206081', NULL, 'nrOfCompletedInstances', 'integer', NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, TO_DATE('2020-09-23 09:59:19.624', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.624', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586714167730178', '0', '1308586685709377538', '1308586713228206081', NULL, 'nrOfActiveInstances', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-23 09:59:19.680', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.680', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586715350523905', '0', '1308586685709377538', '1308586714415194113', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, '1275735541155614721', '1275735541155614721', NULL, TO_DATE('2020-09-23 09:59:19.963', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.963', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586715593793538', '0', '1308586685709377538', '1308586714654269441', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, '1280700700074041345', '1280700700074041345', NULL, TO_DATE('2020-09-23 09:59:20.021', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:20.021', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586715832868865', '0', '1308586685709377538', '1308586714893344770', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, '1280709549107552257', '1280709549107552257', NULL, TO_DATE('2020-09-23 09:59:20.078', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:20.078', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586716080332801', '0', '1308586685709377538', '1308586714415194113', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, TO_DATE('2020-09-23 09:59:20.136', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:20.136', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586717665779713', '0', '1308586685709377538', '1308586714654269441', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, TO_DATE('2020-09-23 09:59:20.515', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:20.515', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308586718903099393', '0', '1308586685709377538', '1308586714893344770', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, '2', '2', NULL, TO_DATE('2020-09-23 09:59:20.809', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:20.809', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587452117770241', '0', '1308587451853529089', '1308587451853529089', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:15.622', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:15.622', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587453568999425', '0', '1308587451853529089', '1308587451853529089', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL, TO_DATE('2020-09-23 10:02:15.967', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:15.967', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587454676295682', '0', '1308587451853529089', '1308587451853529089', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308587454923759618', NULL, NULL, NULL, NULL, TO_DATE('2020-09-23 10:02:16.232', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.232', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587455368355841', '0', '1308587451853529089', '1308587451853529089', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-23 10:02:16.398', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.398', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587550784577538', '0', '1308587550507753474', '1308587550507753474', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, TO_DATE('2020-09-23 10:02:39.145', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.145', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587552252583938', '0', '1308587550507753474', '1308587550507753474', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL, TO_DATE('2020-09-23 10:02:39.495', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.495', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587713229971458', '0', '1308587712978313218', '1308587712978313218', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, TO_DATE('2020-09-23 10:03:17.877', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:17.877', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308587714496651266', '0', '1308587712978313218', '1308587712978313218', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL, TO_DATE('2020-09-23 10:03:18.179', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:18.179', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308588718629806082', '0', '1308588718357176322', '1308588718357176322', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, TO_DATE('2020-09-23 10:07:17.582', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:17.582', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308588720164921345', '0', '1308588718357176322', '1308588718357176322', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL, TO_DATE('2020-09-23 10:07:17.947', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:17.947', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308588941900996610', '0', '1308588941628366850', '1308588941628366850', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, TO_DATE('2020-09-23 10:08:10.814', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:10.814', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308588943423528961', '0', '1308588941628366850', '1308588941628366850', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL, TO_DATE('2020-09-23 10:08:11.176', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:11.176', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308589268226236418', '0', '1308589267949412354', '1308589267949412354', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, TO_DATE('2020-09-23 10:09:28.615', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:28.615', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308589269815877633', '0', '1308589267949412354', '1308589267949412354', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL, TO_DATE('2020-09-23 10:09:28.995', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:28.995', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308589271011254273', '0', '1308589267949412354', '1308589267949412354', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308589271267106818', NULL, NULL, NULL, NULL, TO_DATE('2020-09-23 10:09:29.279', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.279', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308589271770423297', '0', '1308589267949412354', '1308589267949412354', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, '3', '3', NULL, TO_DATE('2020-09-23 10:09:29.461', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.461', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308590489049718785', '0', '1308590488798060546', '1308590488798060546', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, TO_DATE('2020-09-23 10:14:19.683', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:19.683', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1308590490513530881', '0', '1308590488798060546', '1308590488798060546', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL, TO_DATE('2020-09-23 10:14:20.031', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:20.031', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1354463464687702018', '0', '1354463463303581698', '1354463463303581698', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, TO_DATE('2021-01-28 00:17:09.354', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:09.354', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ACT_HI_VARINST" VALUES ('1354463471910293506', '0', '1354463463303581698', '1354463463303581698', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL, TO_DATE('2021-01-28 00:17:11.088', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:11.088', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
CREATE TABLE "ACT_ID_BYTEARRAY" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "NAME_" NVARCHAR2(255) ,
  "BYTES_" BLOB 
)
;

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
CREATE TABLE "ACT_ID_GROUP" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "NAME_" NVARCHAR2(255) ,
  "TYPE_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
CREATE TABLE "ACT_ID_INFO" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "USER_ID_" NVARCHAR2(64) ,
  "TYPE_" NVARCHAR2(64) ,
  "KEY_" NVARCHAR2(255) ,
  "VALUE_" NVARCHAR2(255) ,
  "PASSWORD_" BLOB ,
  "PARENT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
CREATE TABLE "ACT_ID_MEMBERSHIP" (
  "USER_ID_" NVARCHAR2(64) NOT NULL ,
  "GROUP_ID_" NVARCHAR2(64) NOT NULL 
)
;

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
CREATE TABLE "ACT_ID_PRIV" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "NAME_" NVARCHAR2(255) NOT NULL 
)
;

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
CREATE TABLE "ACT_ID_PRIV_MAPPING" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "PRIV_ID_" NVARCHAR2(64) NOT NULL ,
  "USER_ID_" NVARCHAR2(255) ,
  "GROUP_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
CREATE TABLE "ACT_ID_PROPERTY" (
  "NAME_" NVARCHAR2(64) NOT NULL ,
  "VALUE_" NVARCHAR2(300) ,
  "REV_" NUMBER(11) 
)
;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO "ACT_ID_PROPERTY" VALUES ('schema.version', '6.5.0.6', '1');
COMMIT;

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
CREATE TABLE "ACT_ID_TOKEN" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TOKEN_VALUE_" NVARCHAR2(255) ,
  "TOKEN_DATE_" DATE NOT NULL ,
  "IP_ADDRESS_" NVARCHAR2(255) ,
  "USER_AGENT_" NVARCHAR2(255) ,
  "USER_ID_" NVARCHAR2(255) ,
  "TOKEN_DATA_" NCLOB 
)
;

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
CREATE TABLE "ACT_ID_USER" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "FIRST_" NVARCHAR2(255) ,
  "LAST_" NVARCHAR2(255) ,
  "DISPLAY_NAME_" NVARCHAR2(255) ,
  "EMAIL_" NVARCHAR2(255) ,
  "PWD_" NVARCHAR2(255) ,
  "PICTURE_ID_" NVARCHAR2(64) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
CREATE TABLE "ACT_PROCDEF_INFO" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "PROC_DEF_ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "INFO_JSON_ID_" NVARCHAR2(64) 
)
;

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
CREATE TABLE "ACT_RE_DEPLOYMENT" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "NAME_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "KEY_" NVARCHAR2(255) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "DEPLOY_TIME_" DATE ,
  "DERIVED_FROM_" NVARCHAR2(64) ,
  "DERIVED_FROM_ROOT_" NVARCHAR2(64) ,
  "PARENT_DEPLOYMENT_ID_" NVARCHAR2(255) ,
  "ENGINE_VERSION_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO "ACT_RE_DEPLOYMENT" VALUES ('1294922083219943426', '请假流程', 'kaoqin', NULL, '', TO_DATE('2020-08-16 17:00:57.678', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RE_DEPLOYMENT" VALUES ('1295553080485707777', '转正流程', 'xingzheng', NULL, '', TO_DATE('2020-08-18 10:48:19.152', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RE_DEPLOYMENT" VALUES ('1304341425068064769', '出差流程', 'travel', NULL, '', TO_DATE('2020-09-11 16:50:03.823', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RE_DEPLOYMENT" VALUES ('1354458533096361986', '用车申请', 'approval', NULL, '', TO_DATE('2021-01-27 23:57:33.210', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
CREATE TABLE "ACT_RE_MODEL" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "NAME_" NVARCHAR2(255) ,
  "KEY_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "CREATE_TIME_" DATE ,
  "LAST_UPDATE_TIME_" DATE ,
  "VERSION_" NUMBER(11) ,
  "META_INFO_" NCLOB ,
  "DEPLOYMENT_ID_" NVARCHAR2(64) ,
  "EDITOR_SOURCE_VALUE_ID_" NVARCHAR2(64) ,
  "EDITOR_SOURCE_EXTRA_VALUE_ID_" NVARCHAR2(64) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
CREATE TABLE "ACT_RE_PROCDEF" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "KEY_" NVARCHAR2(255) NOT NULL ,
  "VERSION_" NUMBER(11) NOT NULL ,
  "DEPLOYMENT_ID_" NVARCHAR2(64) ,
  "RESOURCE_NAME_" NCLOB ,
  "DGRM_RESOURCE_NAME_" NCLOB ,
  "DESCRIPTION_" NCLOB ,
  "HAS_START_FORM_KEY_" NUMBER(4) ,
  "HAS_GRAPHICAL_NOTATION_" NUMBER(4) ,
  "SUSPENSION_STATE_" NUMBER(11) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "ENGINE_VERSION_" NVARCHAR2(255) ,
  "DERIVED_FROM_" NVARCHAR2(64) ,
  "DERIVED_FROM_ROOT_" NVARCHAR2(64) ,
  "DERIVED_VERSION_" NUMBER(11) NOT NULL 
)
;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO "ACT_RE_PROCDEF" VALUES ('car_model:1:1354458538414739458', '2', 'approval', '用车申请', 'car_model', '1', '1354458533096361986', '用车申请.bpmn20.xml', '用车申请.car_model.png', '用车申请', '0', '1', '1', '', NULL, NULL, NULL, '0');
INSERT INTO "ACT_RE_PROCDEF" VALUES ('formal:1:1295553082574471169', '2', 'xingzheng', '转正流程', 'formal', '1', '1295553080485707777', '转正流程.bpmn20.xml', '转正流程.formal.png', '转正流程', '0', '1', '1', '', NULL, NULL, NULL, '0');
INSERT INTO "ACT_RE_PROCDEF" VALUES ('leave:1:1294922085572947969', '4', 'kaoqin', '请假流程', 'leave', '1', '1294922083219943426', '请假流程.bpmn20.xml', '请假流程.leave.png', '请假流程', '0', '1', '1', '', NULL, NULL, NULL, '0');
INSERT INTO "ACT_RE_PROCDEF" VALUES ('travel:1:1304341427379126274', '2', 'travel', '出差流程', 'travel', '1', '1304341425068064769', '出差流程.bpmn20.xml', '出差流程.travel.png', '出差流程', '0', '1', '1', '', NULL, NULL, NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
CREATE TABLE "ACT_RU_ACTINST" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_DEF_ID_" NVARCHAR2(64) NOT NULL ,
  "PROC_INST_ID_" NVARCHAR2(64) NOT NULL ,
  "EXECUTION_ID_" NVARCHAR2(64) NOT NULL ,
  "ACT_ID_" NVARCHAR2(255) NOT NULL ,
  "TASK_ID_" NVARCHAR2(64) ,
  "CALL_PROC_INST_ID_" NVARCHAR2(64) ,
  "ACT_NAME_" NVARCHAR2(255) ,
  "ACT_TYPE_" NVARCHAR2(255) NOT NULL ,
  "ASSIGNEE_" NVARCHAR2(255) ,
  "START_TIME_" DATE NOT NULL ,
  "END_TIME_" DATE ,
  "DURATION_" NUMBER(20) ,
  "DELETE_REASON_" NCLOB ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406301734350850', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:02:26.005', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:26.318', 'SYYYY-MM-DD HH24:MI:SS'), '313', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406303806337026', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:02:26.499', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:26.499', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406304053800962', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:02:26.558', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:29.247', 'SYYYY-MM-DD HH24:MI:SS'), '2689', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406316305362945', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:02:29.478', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:02:29.478', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406316791902210', '2', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-22 22:02:29.595', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:08:35.052', 'SYYYY-MM-DD HH24:MI:SS'), '365457', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406614050615297', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:03:40.467', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.535', 'SYYYY-MM-DD HH24:MI:SS'), '1068', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406619301883906', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:03:41.719', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:41.719', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406619561930754', '2', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:03:41.780', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:44.554', 'SYYYY-MM-DD HH24:MI:SS'), '2774', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406632182591490', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:03:44.789', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:03:44.789', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406632677519362', '1', 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-22 22:03:44.907', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406819621842946', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-22 22:04:29.478', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:29.827', 'SYYYY-MM-DD HH24:MI:SS'), '349', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406821853212673', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:04:30.010', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:30.010', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406822138425345', '2', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-22 22:04:30.078', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:32.721', 'SYYYY-MM-DD HH24:MI:SS'), '2643', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406834209632258', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:04:32.956', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:04:32.956', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308406834738114561', '1', 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-22 22:04:33.082', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308407850615320578', '1', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-22 22:08:35.286', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-22 22:08:35.286', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308407851106054145', '3', 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', NULL, '主管审批', 'userTask', '1280709549107552257', TO_DATE('2020-09-22 22:08:35.404', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583523564908545', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:46:38.981', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:39.248', 'SYYYY-MM-DD HH24:MI:SS'), '267', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583525452345345', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:39.432', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:39.432', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583525724975106', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:46:39.496', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:42.210', 'SYYYY-MM-DD HH24:MI:SS'), '2714', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583538093977602', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:42.445', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:42.445', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583538588905473', '2', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:46:42.564', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:45.280', 'SYYYY-MM-DD HH24:MI:SS'), '2716', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583550957907969', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:46:45.513', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:46:45.513', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308583551444447233', '1', 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', NULL, '主管审批', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 09:46:45.629', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586277431631873', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:57:35.554', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:36.067', 'SYYYY-MM-DD HH24:MI:SS'), '513', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586280283758593', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:57:36.234', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:36.234', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586280539611138', '2', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:57:36.296', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:38.701', 'SYYYY-MM-DD HH24:MI:SS'), '2405', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586291503521794', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:57:38.910', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:57:38.910', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586291956506625', '1', 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 09:57:39.018', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586686682456065', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 09:59:13.127', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.810', 'SYYYY-MM-DD HH24:MI:SS'), '683', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586690235031554', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:13.975', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:13.975', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586690486689794', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', NULL, '填写申请单', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:14.034', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:16.461', 'SYYYY-MM-DD HH24:MI:SS'), '2427', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586701551263745', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:16.673', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:16.673', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586702000054273', '2', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:16.780', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.134', 'SYYYY-MM-DD HH24:MI:SS'), '2354', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586712754249730', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 09:59:19.344', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 09:59:19.344', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586716319408130', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', NULL, '领导会签', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 09:59:20.194', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586717904855041', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', NULL, '领导会签', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 09:59:20.571', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308586719137980418', '1', 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', NULL, '领导会签', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 09:59:20.866', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587452872744962', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:02:15.801', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.449', 'SYYYY-MM-DD HH24:MI:SS'), '648', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587456282714114', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:16.614', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:16.614', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587456551149569', '2', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:16.678', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:19.104', 'SYYYY-MM-DD HH24:MI:SS'), '2426', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587467590557698', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:19.311', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:19.311', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587468056125441', '1', 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:02:19.421', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587551543746561', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:02:39.328', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.612', 'SYYYY-MM-DD HH24:MI:SS'), '284', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587553410211842', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:39.771', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:39.771', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587553657675778', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:39.830', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:42.148', 'SYYYY-MM-DD HH24:MI:SS'), '2318', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587564248293378', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:42.356', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:42.356', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587564709666818', '2', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:02:42.465', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:44.835', 'SYYYY-MM-DD HH24:MI:SS'), '2370', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587575518388225', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:02:45.043', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:02:45.043', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587575975567361', '1', 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', NULL, '宝山审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:02:45.151', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587713993334785', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:03:18.057', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:18.279', 'SYYYY-MM-DD HH24:MI:SS'), '222', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587715612336130', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:03:18.443', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:18.443', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587715863994370', '2', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', NULL, '填写申请单', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:03:18.504', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:20.815', 'SYYYY-MM-DD HH24:MI:SS'), '2311', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587726433640449', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:03:21.024', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:03:21.024', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308587726920179714', '1', 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:03:21.140', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588719409946626', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:07:17.767', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:18.083', 'SYYYY-MM-DD HH24:MI:SS'), '316', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588721486127106', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:07:18.262', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:18.262', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588721754562561', '2', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:07:18.327', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:20.978', 'SYYYY-MM-DD HH24:MI:SS'), '2651', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588733838352385', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:07:21.208', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:07:21.208', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588734329085953', '1', 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:07:21.325', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588942660165634', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:08:10.995', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:11.292', 'SYYYY-MM-DD HH24:MI:SS'), '297', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588944648265730', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:08:11.468', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:11.468', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588944899923970', '2', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:08:11.529', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:14.154', 'SYYYY-MM-DD HH24:MI:SS'), '2625', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588956883050497', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:08:14.386', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:08:14.386', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308588957361201153', '1', 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', NULL, '部门经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:08:14.500', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308589269002182657', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:09:28.801', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.518', 'SYYYY-MM-DD HH24:MI:SS'), '717', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308589272768667649', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:09:29.698', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:29.698', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308589273020325890', '2', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', NULL, '填写申请单', 'userTask', '1280709549107552257', TO_DATE('2020-09-23 10:09:29.759', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:32.491', 'SYYYY-MM-DD HH24:MI:SS'), '2732', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308589285452242945', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:09:32.722', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:09:32.722', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308589285938782210', '1', 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', NULL, '经理审批', 'userTask', '1275735541155614721', TO_DATE('2020-09-23 10:09:32.839', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308590489804693505', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, TO_DATE('2020-09-23 10:14:19.862', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:20.166', 'SYYYY-MM-DD HH24:MI:SS'), '304', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308590491771822082', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:14:20.331', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:20.331', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308590492027674626', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-23 10:14:20.393', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:22.715', 'SYYYY-MM-DD HH24:MI:SS'), '2322', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308590502639263745', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2020-09-23 10:14:22.924', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:14:22.924', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308590503100637186', '2', 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', NULL, '老俞审批', 'userTask', '1280700700074041345', TO_DATE('2020-09-23 10:14:23.033', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-23 10:18:24.490', 'SYYYY-MM-DD HH24:MI:SS'), '241457', 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1308591517623083009', '1', 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2020-09-23 10:18:24.914', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1354463469016223745', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, 'startEvent', NULL, TO_DATE('2021-01-28 00:17:10.384', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:11.108', 'SYYYY-MM-DD HH24:MI:SS'), '724', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1354463473504129025', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2021-01-28 00:17:11.460', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:11.460', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1354463474770808834', '2', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463476456919042', NULL, '填写申请单', 'userTask', '1265476890672672808', TO_DATE('2021-01-28 00:17:11.769', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:13.306', 'SYYYY-MM-DD HH24:MI:SS'), '1537', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1354463482802900993', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, 'sequenceFlow', NULL, TO_DATE('2021-01-28 00:17:13.671', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-01-28 00:17:13.671', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '');
INSERT INTO "ACT_RU_ACTINST" VALUES ('1354463484451262466', '1', 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463485835382785', NULL, '领导审批', 'userTask', '1275735541155614721', TO_DATE('2021-01-28 00:17:14.070', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
CREATE TABLE "ACT_RU_DEADLETTER_JOB" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "EXCLUSIVE_" NUMBER(4) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROCESS_INSTANCE_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "ELEMENT_ID_" NVARCHAR2(255) ,
  "ELEMENT_NAME_" NVARCHAR2(255) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "EXCEPTION_STACK_ID_" NVARCHAR2(64) ,
  "EXCEPTION_MSG_" NCLOB ,
  "DUEDATE_" DATE ,
  "REPEAT_" NVARCHAR2(255) ,
  "HANDLER_TYPE_" NVARCHAR2(255) ,
  "HANDLER_CFG_" NCLOB ,
  "CUSTOM_VALUES_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
CREATE TABLE "ACT_RU_ENTITYLINK" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "CREATE_TIME_" DATE ,
  "LINK_TYPE_" NVARCHAR2(255) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "REF_SCOPE_ID_" NVARCHAR2(255) ,
  "REF_SCOPE_TYPE_" NVARCHAR2(255) ,
  "REF_SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "HIERARCHY_TYPE_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
CREATE TABLE "ACT_RU_EVENT_SUBSCR" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "EVENT_TYPE_" NVARCHAR2(255) NOT NULL ,
  "EVENT_NAME_" NVARCHAR2(255) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "ACTIVITY_ID_" NVARCHAR2(64) ,
  "CONFIGURATION_" NVARCHAR2(255) ,
  "CREATED_" DATE NOT NULL ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "SUB_SCOPE_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(64) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(64) ,
  "SCOPE_TYPE_" NVARCHAR2(64) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
CREATE TABLE "ACT_RU_EXECUTION" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "BUSINESS_KEY_" NVARCHAR2(255) ,
  "PARENT_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "SUPER_EXEC_" NVARCHAR2(64) ,
  "ROOT_PROC_INST_ID_" NVARCHAR2(64) ,
  "ACT_ID_" NVARCHAR2(255) ,
  "IS_ACTIVE_" NUMBER(4) ,
  "IS_CONCURRENT_" NUMBER(4) ,
  "IS_SCOPE_" NUMBER(4) ,
  "IS_EVENT_SCOPE_" NUMBER(4) ,
  "IS_MI_ROOT_" NUMBER(4) ,
  "SUSPENSION_STATE_" NUMBER(11) ,
  "CACHED_ENT_STATE_" NUMBER(11) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "START_ACT_ID_" NVARCHAR2(255) ,
  "START_TIME_" DATE ,
  "START_USER_ID_" NVARCHAR2(255) ,
  "LOCK_TIME_" DATE ,
  "IS_COUNT_ENABLED_" NUMBER(4) ,
  "EVT_SUBSCR_COUNT_" NUMBER(11) ,
  "TASK_COUNT_" NUMBER(11) ,
  "JOB_COUNT_" NUMBER(11) ,
  "TIMER_JOB_COUNT_" NUMBER(11) ,
  "SUSP_JOB_COUNT_" NUMBER(11) ,
  "DEADLETTER_JOB_COUNT_" NUMBER(11) ,
  "VAR_COUNT_" NUMBER(11) ,
  "ID_LINK_COUNT_" NUMBER(11) ,
  "CALLBACK_ID_" NVARCHAR2(255) ,
  "CALLBACK_TYPE_" NVARCHAR2(255) ,
  "REFERENCE_ID_" NVARCHAR2(255) ,
  "REFERENCE_TYPE_" NVARCHAR2(255) ,
  "PROPAGATED_STAGE_INST_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406300706746370', '2', '1308406300706746370', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308406300706746370', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', 'startEvent1', TO_DATE('2020-09-22 22:02:25.698', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406301486886914', '3', '1308406300706746370', NULL, '1308406300706746370', 'formal:1:1295553082574471169', NULL, '1308406300706746370', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-22 22:02:25.886', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406613064953858', '2', '1308406613064953858', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308406613064953858', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', 'startEvent1', TO_DATE('2020-09-22 22:03:40.172', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406613807345665', '2', '1308406613064953858', NULL, '1308406613064953858', 'travel:1:1304341427379126274', NULL, '1308406613064953858', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-22 22:03:40.349', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406818585849858', '2', '1308406818585849858', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308406818585849858', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', 'startEvent1', TO_DATE('2020-09-22 22:04:29.165', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308406819361796097', '2', '1308406818585849858', NULL, '1308406818585849858', 'leave:1:1294922085572947969', NULL, '1308406818585849858', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-22 22:04:29.356', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308583522503749633', '2', '1308583522503749633', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308583522503749633', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', 'startEvent1', TO_DATE('2020-09-23 09:46:38.668', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308583523304861698', '3', '1308583522503749633', NULL, '1308583522503749633', 'formal:1:1295553082574471169', NULL, '1308583522503749633', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:46:38.858', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586276353695745', '2', '1308586276353695745', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308586276353695745', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', 'startEvent1', TO_DATE('2020-09-23 09:57:35.235', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586277171585026', '2', '1308586276353695745', NULL, '1308586276353695745', 'leave:1:1294922085572947969', NULL, '1308586276353695745', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:57:35.430', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586685709377538', '2', '1308586685709377538', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308586685709377538', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', 'startEvent1', TO_DATE('2020-09-23 09:59:12.834', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586713228206081', '1', '1308586685709377538', NULL, '1308586685709377538', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '0', '0', '0', '0', '1', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:59:19.345', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '0', '0', '0', '0', '0', '3', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586714415194113', '1', '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:59:19.680', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '2', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586714654269441', '1', '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:59:19.739', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '2', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308586714893344770', '1', '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 09:59:19.796', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '2', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587451853529089', '2', '1308587451853529089', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308587451853529089', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '老俞在2020-09-23 10:02:18发起了出差流程', 'startEvent1', TO_DATE('2020-09-23 10:02:15.495', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587452633669633', '2', '1308587451853529089', NULL, '1308587451853529089', 'travel:1:1304341427379126274', NULL, '1308587451853529089', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:02:15.684', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587550507753474', '2', '1308587550507753474', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308587550507753474', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '老俞在2020-09-23 10:02:41发起了请假流程', 'startEvent1', TO_DATE('2020-09-23 10:02:39.011', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587551300476930', '3', '1308587550507753474', NULL, '1308587550507753474', 'leave:1:1294922085572947969', NULL, '1308587550507753474', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:02:39.207', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587712978313218', '2', '1308587712978313218', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308587712978313218', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '老俞在2020-09-23 10:03:20发起了转正流程', 'startEvent1', TO_DATE('2020-09-23 10:03:17.754', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308587713737482242', '2', '1308587712978313218', NULL, '1308587712978313218', 'formal:1:1295553082574471169', NULL, '1308587712978313218', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:03:17.938', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308588718357176322', '2', '1308588718357176322', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308588718357176322', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', 'startEvent1', TO_DATE('2020-09-23 10:07:17.446', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308588719162482690', '2', '1308588718357176322', NULL, '1308588718357176322', 'leave:1:1294922085572947969', NULL, '1308588718357176322', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:07:17.645', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308588941628366850', '2', '1308588941628366850', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308588941628366850', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', 'startEvent1', TO_DATE('2020-09-23 10:08:10.679', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308588942400118785', '2', '1308588941628366850', NULL, '1308588941628366850', 'formal:1:1295553082574471169', NULL, '1308588941628366850', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:08:10.874', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308589267949412354', '2', '1308589267949412354', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308589267949412354', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', 'startEvent1', TO_DATE('2020-09-23 10:09:28.481', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308589268750524417', '2', '1308589267949412354', NULL, '1308589267949412354', 'travel:1:1304341427379126274', NULL, '1308589267949412354', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:09:28.679', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308590488798060546', '2', '1308590488798060546', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308590488798060546', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', 'startEvent1', TO_DATE('2020-09-23 10:14:19.559', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1308591517363036162', '1', '1308590488798060546', NULL, '1308590488798060546', 'leave:1:1294922085572947969', NULL, '1308590488798060546', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2020-09-23 10:18:24.721', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1354463463303581698', '2', '1354463463303581698', NULL, NULL, 'car_model:1:1354458538414739458', NULL, '1354463463303581698', NULL, '1', '0', '1', '0', '0', '1', NULL, '', '超级管理员在2021-01-28 00:17:12发起了用车申请', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', TO_DATE('2021-01-28 00:17:08.652', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, '1', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_EXECUTION" VALUES ('1354463467527245825', '2', '1354463463303581698', NULL, '1354463463303581698', 'car_model:1:1354458538414739458', NULL, '1354463463303581698', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1', '0', '0', '0', '0', '1', NULL, '', NULL, NULL, TO_DATE('2021-01-28 00:17:09.670', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '0', '1', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
CREATE TABLE "ACT_RU_HISTORY_JOB" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "LOCK_EXP_TIME_" DATE ,
  "LOCK_OWNER_" NVARCHAR2(255) ,
  "RETRIES_" NUMBER(11) ,
  "EXCEPTION_STACK_ID_" NVARCHAR2(64) ,
  "EXCEPTION_MSG_" NCLOB ,
  "HANDLER_TYPE_" NVARCHAR2(255) ,
  "HANDLER_CFG_" NCLOB ,
  "CUSTOM_VALUES_ID_" NVARCHAR2(64) ,
  "ADV_HANDLER_CFG_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
CREATE TABLE "ACT_RU_IDENTITYLINK" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "GROUP_ID_" NVARCHAR2(255) ,
  "TYPE_" NVARCHAR2(255) ,
  "USER_ID_" NVARCHAR2(255) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406301226840066', '1', NULL, 'starter', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406305358229505', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406313876860930', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406318016638977', '1', NULL, 'participant', '1275735541155614721', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406613555687426', '1', NULL, 'starter', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406620824416257', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406629749895170', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406633906450433', '1', NULL, 'participant', '1275735541155614721', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406819105943553', '1', NULL, 'starter', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406823371550722', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406831776935937', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308406836000600066', '1', NULL, 'participant', '1280700700074041345', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308407848664969218', '1', NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308407852334985218', '1', NULL, 'participant', '1280709549107552257', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308583523040620545', '1', NULL, 'starter', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308583527075540994', '1', NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308583535636115457', '1', NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308583548533600258', '1', NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308583552690155522', '1', NULL, 'participant', '1280709549107552257', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586276898955265', '1', NULL, 'starter', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586281839845377', '1', NULL, 'participant', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586289326678017', '1', NULL, 'participant', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586293126717442', '1', NULL, 'participant', '1280700700074041345', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586686191722498', '1', NULL, 'starter', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586691669483521', '1', NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586699412168705', '1', NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586710615154689', '1', NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586718647246849', '1', NULL, 'participant', '1280700700074041345', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308586719880372226', '1', NULL, 'participant', '1280709549107552257', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587452382011393', '1', NULL, 'starter', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587457721360385', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587465472434177', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587469213753345', '1', NULL, 'participant', '1275735541155614721', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587551040430081', '1', NULL, 'starter', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587554878218241', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587562130169857', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587573337350145', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587577120612354', '1', NULL, 'participant', '1275735541155614721', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587713485824002', '1', NULL, 'starter', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587717034205185', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587724307128321', '1', NULL, 'participant', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308587728090390529', '1', NULL, 'participant', '1275735541155614721', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588718894047233', '1', NULL, 'starter', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588723096739842', '1', NULL, 'participant', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588731435016194', '1', NULL, 'participant', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588735608348674', '1', NULL, 'participant', '1280700700074041345', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588942156849153', '1', NULL, 'starter', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588946162409474', '1', NULL, 'participant', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588954462937089', '1', NULL, 'participant', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308588958577549314', '1', NULL, 'participant', '1275735541155614721', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308589268490477570', '1', NULL, 'starter', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308589274274422785', '1', NULL, 'participant', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308589283048906753', '1', NULL, 'participant', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308589287243210754', '1', NULL, 'participant', '1275735541155614721', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308590489305571329', '1', NULL, 'starter', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308590493223051265', '1', NULL, 'participant', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308590500516945922', '1', NULL, 'participant', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1308590504275042305', '1', NULL, 'participant', '1280700700074041345', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1354463466017296385', '1', NULL, 'starter', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1354463479166439425', '1', NULL, 'participant', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1354463481066459137', '1', NULL, 'participant', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_IDENTITYLINK" VALUES ('1354463488700092417', '1', NULL, 'participant', '1275735541155614721', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
CREATE TABLE "ACT_RU_JOB" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "LOCK_EXP_TIME_" DATE ,
  "LOCK_OWNER_" NVARCHAR2(255) ,
  "EXCLUSIVE_" NUMBER(4) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROCESS_INSTANCE_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "ELEMENT_ID_" NVARCHAR2(255) ,
  "ELEMENT_NAME_" NVARCHAR2(255) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "RETRIES_" NUMBER(11) ,
  "EXCEPTION_STACK_ID_" NVARCHAR2(64) ,
  "EXCEPTION_MSG_" NCLOB ,
  "DUEDATE_" DATE ,
  "REPEAT_" NVARCHAR2(255) ,
  "HANDLER_TYPE_" NVARCHAR2(255) ,
  "HANDLER_CFG_" NCLOB ,
  "CUSTOM_VALUES_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
CREATE TABLE "ACT_RU_SUSPENDED_JOB" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "EXCLUSIVE_" NUMBER(4) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROCESS_INSTANCE_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "ELEMENT_ID_" NVARCHAR2(255) ,
  "ELEMENT_NAME_" NVARCHAR2(255) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "RETRIES_" NUMBER(11) ,
  "EXCEPTION_STACK_ID_" NVARCHAR2(64) ,
  "EXCEPTION_MSG_" NCLOB ,
  "DUEDATE_" DATE ,
  "REPEAT_" NVARCHAR2(255) ,
  "HANDLER_TYPE_" NVARCHAR2(255) ,
  "HANDLER_CFG_" NCLOB ,
  "CUSTOM_VALUES_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
CREATE TABLE "ACT_RU_TASK" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "TASK_DEF_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "PROPAGATED_STAGE_INST_ID_" NVARCHAR2(255) ,
  "NAME_" NVARCHAR2(255) ,
  "PARENT_TASK_ID_" NVARCHAR2(64) ,
  "DESCRIPTION_" NCLOB ,
  "TASK_DEF_KEY_" NVARCHAR2(255) ,
  "OWNER_" NVARCHAR2(255) ,
  "ASSIGNEE_" NVARCHAR2(255) ,
  "DELEGATION_" NVARCHAR2(64) ,
  "PRIORITY_" NUMBER(11) ,
  "CREATE_TIME_" DATE ,
  "DUE_DATE_" DATE ,
  "CATEGORY_" NVARCHAR2(255) ,
  "SUSPENSION_STATE_" NUMBER(11) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "FORM_KEY_" NVARCHAR2(255) ,
  "CLAIM_TIME_" DATE ,
  "IS_COUNT_ENABLED_" NUMBER(4) ,
  "VAR_COUNT_" NUMBER(11) ,
  "ID_LINK_COUNT_" NUMBER(11) ,
  "SUB_TASK_COUNT_" NUMBER(11) 
)
;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO "ACT_RU_TASK" VALUES ('1308406633172447233', '1', '1308406613807345665', '1308406613064953858', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-22 22:03:44.966', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308406835233042433', '1', '1308406819361796097', '1308406818585849858', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, '50', TO_DATE('2020-09-22 22:04:33.140', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308407851600982018', '4', '1308406301486886914', '1308406300706746370', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, '1280709549107552257', NULL, '50', TO_DATE('2020-09-22 22:08:35.463', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-24 00:00:00.000', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308583551935180802', '1', '1308583523304861698', '1308583522503749633', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, '1280709549107552257', NULL, '50', TO_DATE('2020-09-23 09:46:45.688', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308586292422074369', '1', '1308586277171585026', '1308586276353695745', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, '50', TO_DATE('2020-09-23 09:57:39.070', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308586716768198657', '1', '1308586714415194113', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 09:59:20.244', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308586718148124673', '1', '1308586714654269441', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1280700700074041345', NULL, '50', TO_DATE('2020-09-23 09:59:20.572', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308586719393832961', '1', '1308586714893344770', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1280709549107552257', NULL, '50', TO_DATE('2020-09-23 09:59:20.867', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308587468509110274', '1', '1308587452633669633', '1308587451853529089', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 10:02:19.471', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308587576432746498', '1', '1308587551300476930', '1308587550507753474', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '宝山审批', NULL, NULL, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 10:02:45.202', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308587727377358849', '1', '1308587713737482242', '1308587712978313218', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 10:03:21.190', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308588734824013825', '1', '1308588719162482690', '1308588718357176322', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, '50', TO_DATE('2020-09-23 10:07:21.383', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308588957851934722', '1', '1308588942400118785', '1308588941628366850', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 10:08:14.558', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308589286484041730', '1', '1308589268750524417', '1308589267949412354', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, '50', TO_DATE('2020-09-23 10:09:32.897', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1308591518118010881', '1', '1308591517363036162', '1308590488798060546', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', NULL, '1265476890672672808', NULL, '50', TO_DATE('2020-09-23 10:18:24.972', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
INSERT INTO "ACT_RU_TASK" VALUES ('1354463485835382785', '1', '1354463467527245825', '1354463463303581698', 'car_model:1:1354458538414739458', NULL, NULL, NULL, NULL, NULL, NULL, '领导审批', NULL, NULL, 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', NULL, '1275735541155614721', NULL, '50', TO_DATE('2021-01-28 00:17:14.073', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', '', NULL, NULL, '1', '0', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
CREATE TABLE "ACT_RU_TIMER_JOB" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "LOCK_EXP_TIME_" DATE ,
  "LOCK_OWNER_" NVARCHAR2(255) ,
  "EXCLUSIVE_" NUMBER(4) ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROCESS_INSTANCE_ID_" NVARCHAR2(64) ,
  "PROC_DEF_ID_" NVARCHAR2(64) ,
  "ELEMENT_ID_" NVARCHAR2(255) ,
  "ELEMENT_NAME_" NVARCHAR2(255) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "SCOPE_DEFINITION_ID_" NVARCHAR2(255) ,
  "RETRIES_" NUMBER(11) ,
  "EXCEPTION_STACK_ID_" NVARCHAR2(64) ,
  "EXCEPTION_MSG_" NCLOB ,
  "DUEDATE_" DATE ,
  "REPEAT_" NVARCHAR2(255) ,
  "HANDLER_TYPE_" NVARCHAR2(255) ,
  "HANDLER_CFG_" NCLOB ,
  "CUSTOM_VALUES_ID_" NVARCHAR2(64) ,
  "CREATE_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
CREATE TABLE "ACT_RU_VARIABLE" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(255) NOT NULL ,
  "NAME_" NVARCHAR2(255) NOT NULL ,
  "EXECUTION_ID_" NVARCHAR2(64) ,
  "PROC_INST_ID_" NVARCHAR2(64) ,
  "TASK_ID_" NVARCHAR2(64) ,
  "SCOPE_ID_" NVARCHAR2(255) ,
  "SUB_SCOPE_ID_" NVARCHAR2(255) ,
  "SCOPE_TYPE_" NVARCHAR2(255) ,
  "BYTEARRAY_ID_" NVARCHAR2(64) ,
  "DOUBLE_" NUMBER ,
  "LONG_" NUMBER(20) ,
  "TEXT_" NCLOB ,
  "TEXT2_" NCLOB 
)
;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406300954210305', '1', 'string', 'INITIATOR', '1308406300706746370', '1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406302497714177', '1', 'string', 'formData', '1308406300706746370', '1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406613316612097', '1', 'string', 'INITIATOR', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406614793007106', '1', 'string', 'formData', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406617540276225', '1', 'serializable', 'pers', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, '1308406617288617986', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406618278473729', '1', 'integer', 'num', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406818841702402', '1', 'string', 'INITIATOR', '1308406818585849858', '1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308406820372623362', '1', 'string', 'formData', '1308406818585849858', '1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308583522767990785', '1', 'string', 'INITIATOR', '1308583522503749633', '1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308583524093390850', '1', 'string', 'formData', '1308583522503749633', '1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586276622131202', '1', 'string', 'INITIATOR', '1308586276353695745', '1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586277955919874', '1', 'string', 'formData', '1308586276353695745', '1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586685948452865', '1', 'string', 'INITIATOR', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586687177383938', '1', 'string', 'formData', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586688616030209', '1', 'serializable', 'pers', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, '1308586688364371969', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586689337450497', '1', 'integer', 'num', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586713685385218', '1', 'integer', 'nrOfInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586713928654849', '1', 'integer', 'nrOfCompletedInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586714167730178', '1', 'integer', 'nrOfActiveInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586715350523905', '1', 'long', 'per', '1308586714415194113', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', '1275735541155614721', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586715593793538', '1', 'long', 'per', '1308586714654269441', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', '1280700700074041345', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586715832868865', '1', 'long', 'per', '1308586714893344770', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', '1280709549107552257', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586716080332801', '1', 'integer', 'loopCounter', '1308586714415194113', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586717665779713', '1', 'integer', 'loopCounter', '1308586714654269441', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308586718903099393', '1', 'integer', 'loopCounter', '1308586714893344770', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, '2', '2', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587452117770241', '1', 'string', 'INITIATOR', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587453568999425', '1', 'string', 'formData', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587454676295682', '1', 'serializable', 'pers', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, '1308587454428831745', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587455368355841', '1', 'integer', 'num', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587550784577538', '1', 'string', 'INITIATOR', '1308587550507753474', '1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587552252583938', '1', 'string', 'formData', '1308587550507753474', '1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587713229971458', '1', 'string', 'INITIATOR', '1308587712978313218', '1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308587714496651266', '1', 'string', 'formData', '1308587712978313218', '1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308588718629806082', '1', 'string', 'INITIATOR', '1308588718357176322', '1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308588720164921345', '1', 'string', 'formData', '1308588718357176322', '1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308588941900996610', '1', 'string', 'INITIATOR', '1308588941628366850', '1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308588943423528961', '1', 'string', 'formData', '1308588941628366850', '1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308589268226236418', '1', 'string', 'INITIATOR', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308589269815877633', '1', 'string', 'formData', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308589271011254273', '1', 'serializable', 'pers', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, '1308589270763790337', NULL, NULL, NULL, NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308589271770423297', '1', 'integer', 'num', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308590489049718785', '1', 'string', 'INITIATOR', '1308590488798060546', '1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1308590490513530881', '1', 'string', 'formData', '1308590488798060546', '1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1354463464687702018', '1', 'string', 'INITIATOR', '1354463463303581698', '1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "ACT_RU_VARIABLE" VALUES ('1354463471910293506', '1', 'string', 'formData', '1354463463303581698', '1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_button
-- ----------------------------
CREATE TABLE "FLW_BUTTON" (
  "ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(64) NOT NULL ,
  "ACT_ID" NVARCHAR2(64) NOT NULL ,
  "ACT_NAME" NVARCHAR2(255) ,
  "SUBMIT" NCHAR(1) ,
  "SAVE" NCHAR(1) ,
  "BACK" NCHAR(1) ,
  "TURN" NCHAR(1) ,
  "NEXT" NCHAR(1) ,
  "ENTRUST" NCHAR(1) ,
  "END" NCHAR(1) ,
  "TRACE" NCHAR(1) ,
  "SUSPEND" NCHAR(1) ,
  "JUMP" NCHAR(1) ,
  "ADD_SIGN" NCHAR(1) ,
  "DELETE_SIGN" NCHAR(1) ,
  "VERSION" NVARCHAR2(20) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_BUTTON"."ID" IS '主键';
COMMENT ON COLUMN "FLW_BUTTON"."PROCESS_DEFINITION_ID" IS '流程实例id';
COMMENT ON COLUMN "FLW_BUTTON"."ACT_ID" IS '活动节点id';
COMMENT ON COLUMN "FLW_BUTTON"."ACT_NAME" IS '活动节点名称';
COMMENT ON COLUMN "FLW_BUTTON"."SUBMIT" IS '提交（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."SAVE" IS '保存（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."BACK" IS '退回（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."TURN" IS '转办（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."NEXT" IS '指定（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."ENTRUST" IS '委托（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."END" IS '终止（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."TRACE" IS '追踪（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."SUSPEND" IS '挂起（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."JUMP" IS '跳转（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."ADD_SIGN" IS '加签（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."DELETE_SIGN" IS '减签（Y-是，N-否）';
COMMENT ON COLUMN "FLW_BUTTON"."VERSION" IS '版本';
COMMENT ON COLUMN "FLW_BUTTON"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_BUTTON"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_BUTTON"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_BUTTON"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_BUTTON" IS '流程节点按钮表';

-- ----------------------------
-- Records of flw_button
-- ----------------------------
INSERT INTO "FLW_BUTTON" VALUES ('1294925235696578561', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-08-16 17:13:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1294925267078361090', 'leave:1:1294922085572947969', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '宝山审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-08-16 17:13:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1295542179338616834', 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-08-18 10:05:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-09 20:14:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_BUTTON" VALUES ('1295542245906415618', 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-08-18 10:05:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-22 21:17:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_BUTTON" VALUES ('1295542270900273153', 'formal:1:1295553082574471169', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '部门经理审批', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-08-18 10:05:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-18 10:06:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_BUTTON" VALUES ('1295542365045620738', 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', NULL, TO_DATE('2020-08-18 10:05:44', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-18 10:06:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_BUTTON" VALUES ('1295542516766179329', 'formal:1:1295553082574471169', 'sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, TO_DATE('2020-08-18 10:06:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1304341611609735169', 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-09-11 16:50:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-22 21:18:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_BUTTON" VALUES ('1304341640323940353', 'travel:1:1304341427379126274', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '经理审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, TO_DATE('2020-09-11 16:50:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1304341958755500033', 'travel:1:1304341427379126274', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '领导会签', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', NULL, TO_DATE('2020-09-11 16:52:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1304342034198446081', 'travel:1:1304341427379126274', 'sid-6D4A69E7-A765-49EC-94C6-C238AF325027', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, TO_DATE('2020-09-11 16:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1354458652785020929', 'car_model:1:1354458538414739458', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '填写申请单', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, TO_DATE('2021-01-27 23:58:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_BUTTON" VALUES ('1354458710733524994', 'car_model:1:1354458538414739458', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '领导审批', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, TO_DATE('2021-01-27 23:58:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_category
-- ----------------------------
CREATE TABLE "FLW_CATEGORY" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_CATEGORY"."ID" IS '主键';
COMMENT ON COLUMN "FLW_CATEGORY"."NAME" IS '名称';
COMMENT ON COLUMN "FLW_CATEGORY"."CODE" IS '编码';
COMMENT ON COLUMN "FLW_CATEGORY"."SORT" IS '排序';
COMMENT ON COLUMN "FLW_CATEGORY"."REMARK" IS '描述';
COMMENT ON COLUMN "FLW_CATEGORY"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "FLW_CATEGORY"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_CATEGORY"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_CATEGORY"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_CATEGORY"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_CATEGORY" IS '流程分类表';

-- ----------------------------
-- Records of flw_category
-- ----------------------------
INSERT INTO "FLW_CATEGORY" VALUES ('1290140237082759170', '考勤类', 'kaoqin', '100', '考勤类', '0', TO_DATE('2020-08-03 12:19:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-06 16:18:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_CATEGORY" VALUES ('1290670559956320258', '行政类', 'xingzheng', '100', '行政类', '0', TO_DATE('2020-08-04 23:26:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-06 16:13:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_CATEGORY" VALUES ('1308401074679459841', '差旅类', 'travel', '100', '差旅类', '0', TO_DATE('2020-09-22 21:41:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_CATEGORY" VALUES ('1354458450737008641', '审批类', 'approval', '100', '审批类', '0', TO_DATE('2021-01-27 23:57:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_channel_definition
-- ----------------------------
CREATE TABLE "FLW_CHANNEL_DEFINITION" (
  "ID_" NVARCHAR2(255) NOT NULL ,
  "NAME_" NVARCHAR2(255) ,
  "VERSION_" NUMBER(11) ,
  "KEY_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "DEPLOYMENT_ID_" NVARCHAR2(255) ,
  "CREATE_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "RESOURCE_NAME_" NVARCHAR2(255) ,
  "DESCRIPTION_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_draft
-- ----------------------------
CREATE TABLE "FLW_DRAFT" (
  "ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(64) NOT NULL ,
  "FORM_JSON" NCLOB NOT NULL ,
  "FORM_DATA" NCLOB NOT NULL ,
  "PROCESS_NAME" NVARCHAR2(255) NOT NULL ,
  "CATEGORY" NVARCHAR2(50) NOT NULL ,
  "CATEGORY_NAME" NVARCHAR2(100) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_DRAFT"."ID" IS '主键';
COMMENT ON COLUMN "FLW_DRAFT"."PROCESS_DEFINITION_ID" IS '流程定义id';
COMMENT ON COLUMN "FLW_DRAFT"."FORM_JSON" IS '表单布局数据';
COMMENT ON COLUMN "FLW_DRAFT"."FORM_DATA" IS '表单填写数据';
COMMENT ON COLUMN "FLW_DRAFT"."PROCESS_NAME" IS '流程名称';
COMMENT ON COLUMN "FLW_DRAFT"."CATEGORY" IS '分类编码';
COMMENT ON COLUMN "FLW_DRAFT"."CATEGORY_NAME" IS '分类名称';
COMMENT ON COLUMN "FLW_DRAFT"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_DRAFT"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_DRAFT"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "FLW_DRAFT"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "FLW_DRAFT" IS '申请草稿表';

-- ----------------------------
-- Records of flw_draft
-- ----------------------------
INSERT INTO "FLW_DRAFT" VALUES ('1308407141660504066', 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-10","2020-09-19"],"trafficList":[{"startPlace":"俄罗斯","endPlace":"纽约","traffic":"飞机","money":3200,"key":1600783500495},{"startPlace":"纽约","endPlace":"北京","traffic":"飞机","money":1800,"key":1600783512343},{"startPlace":"北京","endPlace":"东京","traffic":"飞机","money":1500,"key":1600783521559},{"startPlace":"东京","endPlace":"大阪","traffic":"火车","money":400,"key":1600783534784}]}', '出差申请', 'travel', '差旅类', TO_DATE('2020-09-22 22:05:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308407262112526337', 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"超级管理员","deptName":"总公司","time":["2020-09-30","2020-10-01"],"type":"1","remark":"放假了，请求回家吃烤肉"}', '请假申请', 'kaoqin', '考勤类', TO_DATE('2020-09-22 22:06:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308407362373169154', 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"超级管理员","appyDate":"2020-09-23","applyDept":"总公司","applyPosition":"老大","entryDate":"2020-09-08","formalDate":"2020-09-30"}', '转正申请', 'xingzheng', '行政类', TO_DATE('2020-09-22 22:06:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308586063039782913', 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', '转正申请', 'xingzheng', '行政类', TO_DATE('2020-09-23 09:56:44', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308586445610639361', 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"俞宝山","deptName":"研发部","time":["2020-09-24","2020-09-25"],"type":"1","remark":"一天跳舞没跳够，再来一天"}', '请假申请', 'kaoqin', '考勤类', TO_DATE('2020-09-23 09:58:16', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308586966652248065', 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"俞宝山","dept":"研发部","travelDate":["2020-10-21","2020-10-29"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"新加坡","traffic":"飞机","money":1440,"key":1600826393108},{"startPlace":"新加坡","endPlace":"乌鲁木齐","traffic":"飞机","money":1440,"key":1600826411250}]}', '出差申请', 'travel', '差旅类', TO_DATE('2020-09-23 10:00:20', 'SYYYY-MM-DD HH24:MI:SS'), '1275735541155614721', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308587986744729601', 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"老俞","dept":"研发部","travelDate":["2020-09-30","2020-10-11"],"trafficList":[{"startPlace":"北京","endPlace":"青岛","traffic":"飞机","money":1200,"key":1600826633299},{"startPlace":"青岛","endPlace":"南通","traffic":"火车","money":640,"key":1600826646459},{"startPlace":"南通","endPlace":"北京","traffic":"飞机","money":1600,"key":1600826655203}]}', '出差申请', 'travel', '差旅类', TO_DATE('2020-09-23 10:04:23', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308588109390372865', 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"项目上线，需庆祝"}', '请假申请', 'kaoqin', '考勤类', TO_DATE('2020-09-23 10:04:52', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308588188574638082', 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-23"}', '转正申请', 'xingzheng', '行政类', TO_DATE('2020-09-23 10:05:11', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308588839165714434', 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"徐玉祥","deptName":"研发部","time":["2020-09-27","2020-10-20"],"type":"3","remark":"回家结婚"}', '请假申请', 'kaoqin', '考勤类', TO_DATE('2020-09-23 10:07:46', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308589063913299970', 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', '转正申请', 'xingzheng', '行政类', TO_DATE('2020-09-23 10:08:40', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, NULL);
INSERT INTO "FLW_DRAFT" VALUES ('1308589423692308482', 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-10-01","2020-10-23"],"trafficList":[{"startPlace":"成都","endPlace":"绵阳","traffic":"火车","money":250,"key":1600826986325},{"startPlace":"绵阳","endPlace":"成都","traffic":"火车","money":250,"key":1600826996492}]}', '出差申请', 'travel', '差旅类', TO_DATE('2020-09-23 10:10:06', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_ev_databasechangelog
-- ----------------------------
CREATE TABLE "FLW_EV_DATABASECHANGELOG" (
  "ID" NVARCHAR2(255) NOT NULL ,
  "AUTHOR" NVARCHAR2(255) NOT NULL ,
  "FILENAME" NVARCHAR2(255) NOT NULL ,
  "DATEEXECUTED" DATE NOT NULL ,
  "ORDEREXECUTED" NUMBER(11) NOT NULL ,
  "EXECTYPE" NVARCHAR2(10) NOT NULL ,
  "MD5SUM" NVARCHAR2(35) ,
  "DESCRIPTION" NVARCHAR2(255) ,
  "COMMENTS" NVARCHAR2(255) ,
  "TAG" NVARCHAR2(255) ,
  "LIQUIBASE" NVARCHAR2(20) ,
  "CONTEXTS" NVARCHAR2(255) ,
  "LABELS" NVARCHAR2(255) ,
  "DEPLOYMENT_ID" NVARCHAR2(10) 
)
;

-- ----------------------------
-- Table structure for flw_ev_databasechangeloglock
-- ----------------------------
CREATE TABLE "FLW_EV_DATABASECHANGELOGLOCK" (
  "ID" NUMBER(11) NOT NULL ,
  "LOCKED" NCHAR(1) NOT NULL ,
  "LOCKGRANTED" DATE ,
  "LOCKEDBY" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_event
-- ----------------------------
CREATE TABLE "FLW_EVENT" (
  "ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(64) NOT NULL ,
  "ACT_ID" NVARCHAR2(64) ,
  "ACT_NAME" NVARCHAR2(255) ,
  "NODE_TYPE" NUMBER(4) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "TYPE" NVARCHAR2(100) NOT NULL ,
  "SCRIPT" NCLOB NOT NULL ,
  "EXEC_SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_EVENT"."ID" IS '主键';
COMMENT ON COLUMN "FLW_EVENT"."PROCESS_DEFINITION_ID" IS '流程定义id';
COMMENT ON COLUMN "FLW_EVENT"."ACT_ID" IS '活动节点id';
COMMENT ON COLUMN "FLW_EVENT"."ACT_NAME" IS '活动节点名称';
COMMENT ON COLUMN "FLW_EVENT"."NODE_TYPE" IS '事件节点类型（字典 1全局 2节点）';
COMMENT ON COLUMN "FLW_EVENT"."NAME" IS '名称';
COMMENT ON COLUMN "FLW_EVENT"."TYPE" IS '类型（字典 见事件类型字典）';
COMMENT ON COLUMN "FLW_EVENT"."SCRIPT" IS '脚本';
COMMENT ON COLUMN "FLW_EVENT"."EXEC_SORT" IS '执行顺序';
COMMENT ON COLUMN "FLW_EVENT"."REMARK" IS '备注';
COMMENT ON COLUMN "FLW_EVENT"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_EVENT"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_EVENT"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_EVENT"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_EVENT" IS '流程事件配置表';

-- ----------------------------
-- Records of flw_event
-- ----------------------------
INSERT INTO "FLW_EVENT" VALUES ('1294925374511263745', 'leave:1:1294922085572947969', '', '', '1', '启动时打印一句话', 'PROCESS_STARTED', 'System.out.println("这是打印的内容");', '100', '启动时打印一句话', TO_DATE('2020-08-16 17:14:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-24 09:51:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_EVENT" VALUES ('1295536105399222273', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', '2', '任务完成时打印一句话', 'TASK_COMPLETED', 'System.out.println("这是打印的内容");', '100', '任务完成时打印一句话', TO_DATE('2020-08-18 09:40:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_EVENT" VALUES ('1304342885814124545', 'travel:1:1304341427379126274', '', '', '1', '流程启动时设置会签人员参数', 'PROCESS_STARTED', 'import cn.hutool.core.collection.CollectionUtil;
import com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', '100', '流程启动时设置会签人员参数', TO_DATE('2020-09-11 16:55:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_event_definition
-- ----------------------------
CREATE TABLE "FLW_EVENT_DEFINITION" (
  "ID_" NVARCHAR2(255) NOT NULL ,
  "NAME_" NVARCHAR2(255) ,
  "VERSION_" NUMBER(11) ,
  "KEY_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "DEPLOYMENT_ID_" NVARCHAR2(255) ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "RESOURCE_NAME_" NVARCHAR2(255) ,
  "DESCRIPTION_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_event_deployment
-- ----------------------------
CREATE TABLE "FLW_EVENT_DEPLOYMENT" (
  "ID_" NVARCHAR2(255) NOT NULL ,
  "NAME_" NVARCHAR2(255) ,
  "CATEGORY_" NVARCHAR2(255) ,
  "DEPLOY_TIME_" DATE ,
  "TENANT_ID_" NVARCHAR2(255) ,
  "PARENT_DEPLOYMENT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_event_resource
-- ----------------------------
CREATE TABLE "FLW_EVENT_RESOURCE" (
  "ID_" NVARCHAR2(255) NOT NULL ,
  "NAME_" NVARCHAR2(255) ,
  "DEPLOYMENT_ID_" NVARCHAR2(255) ,
  "RESOURCE_BYTES_" BLOB 
)
;

-- ----------------------------
-- Table structure for flw_form
-- ----------------------------
CREATE TABLE "FLW_FORM" (
  "ID" NUMBER(20) NOT NULL ,
  "FORM_ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(64) NOT NULL ,
  "ACT_ID" NVARCHAR2(64) ,
  "ACT_NAME" NVARCHAR2(255) ,
  "NODE_TYPE" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_FORM"."ID" IS '主键';
COMMENT ON COLUMN "FLW_FORM"."FORM_ID" IS '表单id';
COMMENT ON COLUMN "FLW_FORM"."PROCESS_DEFINITION_ID" IS '流程定义id';
COMMENT ON COLUMN "FLW_FORM"."ACT_ID" IS '活动节点id';
COMMENT ON COLUMN "FLW_FORM"."ACT_NAME" IS '活动节点名称';
COMMENT ON COLUMN "FLW_FORM"."NODE_TYPE" IS '表单节点类型（字典 1全局 2节点）';
COMMENT ON COLUMN "FLW_FORM"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_FORM"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_FORM"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_FORM"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_FORM" IS '流程表单配置表';

-- ----------------------------
-- Records of flw_form
-- ----------------------------
INSERT INTO "FLW_FORM" VALUES ('1289833421153099778', '1294922455393120258', 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', '3', TO_DATE('2020-08-16 17:43:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-17 20:29:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM" VALUES ('1295301986463330305', '1294922365303664641', 'leave:1:1294922085572947969', '', '', '1', TO_DATE('2020-08-17 18:10:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1295387809110192130', '1294922455393120258', 'leave:1:1294922085572947969', '', '', '2', TO_DATE('2020-08-17 23:51:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1295553303433936897', '1295542814805032961', 'formal:1:1295553082574471169', '', '', '1', TO_DATE('2020-08-18 10:49:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1295553341874733058', '1295542814805032961', 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', '3', TO_DATE('2020-08-18 10:49:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1295553371952087042', '1295542994690342913', 'formal:1:1295553082574471169', '', '', '2', TO_DATE('2020-08-18 10:49:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1296623909172662273', '1295542814805032962', 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', '3', TO_DATE('2020-08-21 09:43:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1304342082042871810', '1304313274803888130', 'travel:1:1304341427379126274', '', '', '1', TO_DATE('2020-09-11 16:52:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1304342120999567362', '1304313274803888130', 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', '3', TO_DATE('2020-09-11 16:52:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1304342154944069633', '1304317596870582274', 'travel:1:1304341427379126274', '', '', '2', TO_DATE('2020-09-11 16:52:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1308592009845628929', '1294922365303664641', 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', '3', TO_DATE('2020-09-23 10:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1354458802618142721', '1354453645117394946', 'car_model:1:1354458538414739458', '', '', '1', TO_DATE('2021-01-27 23:58:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_FORM" VALUES ('1354468741201842177', '1354468627381014530', 'car_model:1:1354458538414739458', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '领导审批', '3', TO_DATE('2021-01-28 00:38:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_form_resource
-- ----------------------------
CREATE TABLE "FLW_FORM_RESOURCE" (
  "ID" NUMBER(20) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "TYPE" NUMBER(4) ,
  "CATEGORY" NVARCHAR2(100) NOT NULL ,
  "FORM_JSON" NCLOB ,
  "FORM_URL" NVARCHAR2(100) ,
  "APP_FORM_URL" NVARCHAR2(100) ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."ID" IS '主键id';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."CODE" IS '表单编码';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."NAME" IS '表单名称';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."TYPE" IS '表单类型（字典 1自行开发 2在线设计）';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."CATEGORY" IS '表单分类';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."FORM_JSON" IS 'PC端表单数据，适用于在线设计表单';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."FORM_URL" IS 'PC端表单URL。适用于自行开发的表单';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."APP_FORM_URL" IS '移动端表单URL';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."REMARK" IS '描述';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "FLW_FORM_RESOURCE"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "FLW_FORM_RESOURCE" IS '流程脚本表';

-- ----------------------------
-- Records of flw_form_resource
-- ----------------------------
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1294922365303664641', 'leaveFormWrite', '请假填写单', '2', 'kaoqin', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '请假填写单', '0', TO_DATE('2020-08-16 17:02:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-18 09:42:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1294922455393120258', 'leaveFormRead', '请假只读单', '2', 'kaoqin', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680134338"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1597568614214","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"deptName","key":"input_1597568763728","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":true,"hidden":false,"defaultValue":"","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569102078","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":true,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '请假只读单', '0', TO_DATE('2020-08-16 17:02:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-18 10:41:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1295542814805032961', 'formalFormWrite', '转正填写单', '2', 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正填写单', '0', TO_DATE('2020-08-18 10:07:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-23 10:06:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1295542814805032962', 'formalFormWriteWithAssess', '转正填写单_主管填写', '2', 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":true,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正填写单_主管填写', '0', TO_DATE('2020-08-18 10:07:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-24 09:35:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1295542994690342913', 'formalFormRead', '转正只读单', '2', 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正只读单', '0', TO_DATE('2020-08-18 10:08:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-24 09:35:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1304313274803888130', 'travelWrite', '出差填写单', '2', 'travel', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '出差填写单', '0', TO_DATE('2020-09-11 14:58:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-11 15:14:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1304317596870582274', 'travelRead', '出差只读单', '2', 'travel', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1599807772599","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"dept","key":"input_1599807774961","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":true,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '出差只读单', '0', TO_DATE('2020-09-11 15:15:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-11 15:16:17', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1354453645117394946', 'tests_codes', '用车申请单', '1', 'approval', NULL, 'carApplyForm', NULL, '用车申请单', '0', TO_DATE('2021-01-27 23:38:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-01-28 00:36:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_FORM_RESOURCE" VALUES ('1354468627381014530', 'tests_codes_readonly', '用车审批单', '1', 'approval', NULL, 'carApplyFormReadOnly', NULL, '用车审批单', '0', TO_DATE('2021-01-28 00:37:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_option
-- ----------------------------
CREATE TABLE "FLW_OPTION" (
  "ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(64) NOT NULL ,
  "TITLE" NVARCHAR2(255) ,
  "JUMP_FIRST" NCHAR(1) NOT NULL ,
  "SMART_COMPLETE" NCHAR(1) NOT NULL ,
  "VERSION" NVARCHAR2(20) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_OPTION"."ID" IS '主键';
COMMENT ON COLUMN "FLW_OPTION"."PROCESS_DEFINITION_ID" IS '流程定义id';
COMMENT ON COLUMN "FLW_OPTION"."TITLE" IS '标题规则';
COMMENT ON COLUMN "FLW_OPTION"."JUMP_FIRST" IS '自动完成第一个任务（Y-是，N-否）';
COMMENT ON COLUMN "FLW_OPTION"."SMART_COMPLETE" IS '跳过相同处理人（Y-是，N-否）';
COMMENT ON COLUMN "FLW_OPTION"."VERSION" IS '版本';
COMMENT ON COLUMN "FLW_OPTION"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_OPTION"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_OPTION"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_OPTION"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_OPTION" IS '流程选项配置表';

-- ----------------------------
-- Records of flw_option
-- ----------------------------
INSERT INTO "FLW_OPTION" VALUES ('1294922087854649346', 'leave:1:1294922085572947969', 'user在time发起了title', 'Y', 'Y', NULL, TO_DATE('2020-08-16 17:00:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-18 00:05:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_OPTION" VALUES ('1295553085309157378', 'formal:1:1295553082574471169', 'user在time发起了title', 'Y', 'Y', NULL, TO_DATE('2020-08-18 10:48:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_OPTION" VALUES ('1304341429899902977', 'travel:1:1304341427379126274', NULL, 'Y', 'Y', NULL, TO_DATE('2020-09-11 16:50:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_OPTION" VALUES ('1354458538599288833', 'car_model:1:1354458538414739458', NULL, 'Y', 'Y', NULL, TO_DATE('2021-01-27 23:57:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for flw_ru_batch
-- ----------------------------
CREATE TABLE "FLW_RU_BATCH" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "TYPE_" NVARCHAR2(64) NOT NULL ,
  "SEARCH_KEY_" NVARCHAR2(255) ,
  "SEARCH_KEY2_" NVARCHAR2(255) ,
  "CREATE_TIME_" DATE NOT NULL ,
  "COMPLETE_TIME_" DATE ,
  "STATUS_" NVARCHAR2(255) ,
  "BATCH_DOC_ID_" NVARCHAR2(64) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_ru_batch_part
-- ----------------------------
CREATE TABLE "FLW_RU_BATCH_PART" (
  "ID_" NVARCHAR2(64) NOT NULL ,
  "REV_" NUMBER(11) ,
  "BATCH_ID_" NVARCHAR2(64) ,
  "TYPE_" NVARCHAR2(64) NOT NULL ,
  "SCOPE_ID_" NVARCHAR2(64) ,
  "SUB_SCOPE_ID_" NVARCHAR2(64) ,
  "SCOPE_TYPE_" NVARCHAR2(64) ,
  "SEARCH_KEY_" NVARCHAR2(255) ,
  "SEARCH_KEY2_" NVARCHAR2(255) ,
  "CREATE_TIME_" DATE NOT NULL ,
  "COMPLETE_TIME_" DATE ,
  "STATUS_" NVARCHAR2(255) ,
  "RESULT_DOC_ID_" NVARCHAR2(64) ,
  "TENANT_ID_" NVARCHAR2(255) 
)
;

-- ----------------------------
-- Table structure for flw_script
-- ----------------------------
CREATE TABLE "FLW_SCRIPT" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "TYPE" NUMBER(4) NOT NULL ,
  "LANG" NUMBER(4) NOT NULL ,
  "CONTENT" NCLOB ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_SCRIPT"."ID" IS '主键id';
COMMENT ON COLUMN "FLW_SCRIPT"."NAME" IS '脚本名称';
COMMENT ON COLUMN "FLW_SCRIPT"."TYPE" IS '脚本类别（字典 1流程脚本 2系统脚本）';
COMMENT ON COLUMN "FLW_SCRIPT"."LANG" IS '脚本语言（字典1 groovy)';
COMMENT ON COLUMN "FLW_SCRIPT"."CONTENT" IS '脚本内容';
COMMENT ON COLUMN "FLW_SCRIPT"."REMARK" IS '描述';
COMMENT ON COLUMN "FLW_SCRIPT"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "FLW_SCRIPT"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_SCRIPT"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_SCRIPT"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "FLW_SCRIPT"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "FLW_SCRIPT" IS '流程脚本表';

-- ----------------------------
-- Records of flw_script
-- ----------------------------
INSERT INTO "FLW_SCRIPT" VALUES ('1294898800718163970', '打印内容', '1', '1', 'System.out.println("这是打印的内容");', '打印内容', '0', TO_DATE('2020-08-16 15:28:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-16 18:23:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "FLW_SCRIPT" VALUES ('1304322960072609794', '设置会签人员', '1', '1', 'import cn.hutool.core.collection.CollectionUtil;
import com.cn.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', '流程启动时给流程实例设置会签人员', '0', TO_DATE('2020-09-11 15:36:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-11 16:55:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for flw_shortcut
-- ----------------------------
CREATE TABLE "FLW_SHORTCUT" (
  "ID" NUMBER(20) NOT NULL ,
  "PROCESS_DEFINITION_ID" NVARCHAR2(100) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CATEGORY" NVARCHAR2(50) NOT NULL ,
  "CATEGORY_NAME" NVARCHAR2(100) NOT NULL ,
  "DESCRIPTION" NVARCHAR2(255) ,
  "VERSION" NUMBER(4) NOT NULL ,
  "ICON" NVARCHAR2(255) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "FLW_SHORTCUT"."ID" IS '主键';
COMMENT ON COLUMN "FLW_SHORTCUT"."PROCESS_DEFINITION_ID" IS '流程定义id';
COMMENT ON COLUMN "FLW_SHORTCUT"."NAME" IS '名称';
COMMENT ON COLUMN "FLW_SHORTCUT"."CATEGORY" IS '分类';
COMMENT ON COLUMN "FLW_SHORTCUT"."CATEGORY_NAME" IS '分类名称';
COMMENT ON COLUMN "FLW_SHORTCUT"."DESCRIPTION" IS '描述';
COMMENT ON COLUMN "FLW_SHORTCUT"."VERSION" IS '定义版本';
COMMENT ON COLUMN "FLW_SHORTCUT"."ICON" IS '图标';
COMMENT ON COLUMN "FLW_SHORTCUT"."SORT" IS '排序';
COMMENT ON COLUMN "FLW_SHORTCUT"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "FLW_SHORTCUT"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "FLW_SHORTCUT"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "FLW_SHORTCUT"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "FLW_SHORTCUT"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "FLW_SHORTCUT" IS '流程申请入口表';

-- ----------------------------
-- Records of flw_shortcut
-- ----------------------------
INSERT INTO "FLW_SHORTCUT" VALUES ('1295307482717040642', 'leave:1:1294922085572947969', '请假申请', 'kaoqin', '考勤类', '请假申请', '1', 'profile', '100', '0', TO_DATE('2020-08-17 18:32:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_SHORTCUT" VALUES ('1295934105837555714', 'formal:1:1295553082574471169', '转正申请', 'xingzheng', '行政类', '转正申请', '1', 'block', '100', '0', TO_DATE('2020-08-19 12:02:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_SHORTCUT" VALUES ('1304343307362648066', 'travel:1:1304341427379126274', '出差申请', 'travel', '差旅类', '出差申请', '1', 'thunderbolt', '100', '0', TO_DATE('2020-09-11 16:57:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "FLW_SHORTCUT" VALUES ('1354458994553688065', 'car_model:1:1354458538414739458', '用车申请', 'approval', '审批类', '用车申请', '1', 'car', '100', '0', TO_DATE('2021-01-27 23:59:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for pay_ali_trade_history
-- ----------------------------
CREATE TABLE "PAY_ALI_TRADE_HISTORY" (
  "ID" NUMBER(20) NOT NULL ,
  "OUT_TRADE_NO" NVARCHAR2(20) NOT NULL ,
  "TRADE_NO" NVARCHAR2(100) ,
  "BILL_DATE" DATE NOT NULL ,
  "AMOUNT" NUMBER NOT NULL ,
  "SUBJECT" NVARCHAR2(255) NOT NULL ,
  "BODY" NVARCHAR2(255) NOT NULL ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."ID" IS '主键id';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."OUT_TRADE_NO" IS '商家订单号';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."TRADE_NO" IS '支付宝订单号';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."BILL_DATE" IS '交易时间';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."AMOUNT" IS '交易金额';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."SUBJECT" IS '商品名称';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."BODY" IS '商品描述';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."STATUS" IS '状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "PAY_ALI_TRADE_HISTORY"."UPDATE_USER" IS '修改人';

-- ----------------------------
-- Records of pay_ali_trade_history
-- ----------------------------
INSERT INTO "PAY_ALI_TRADE_HISTORY" VALUES ('1308743504209526785', '1308743503441969153', '2020092322001400230504748834', TO_DATE('2020-09-23 20:22:21', 'SYYYY-MM-DD HH24:MI:SS'), '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '1', TO_DATE('2020-09-23 20:22:21', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL);
INSERT INTO "PAY_ALI_TRADE_HISTORY" VALUES ('1308752588191268865', '1308752588027691009', NULL, TO_DATE('2020-09-23 20:58:27', 'SYYYY-MM-DD HH24:MI:SS'), '1.00', 'XiaoNuo快速开发平台WAP支付测试商品', 'XiaoNuo快速开发平台WAP支付测试商品', '0', TO_DATE('2020-09-23 20:58:27', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL);
INSERT INTO "PAY_ALI_TRADE_HISTORY" VALUES ('1308754130948579329', '1308754130894053377', NULL, TO_DATE('2020-09-23 21:04:35', 'SYYYY-MM-DD HH24:MI:SS'), '1.00', 'XiaoNuo快速开发平台扫码支付测试商品', 'XiaoNuo快速开发平台扫码支付测试商品', '1', TO_DATE('2020-09-23 21:04:35', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL);
INSERT INTO "PAY_ALI_TRADE_HISTORY" VALUES ('1308759207155326978', '1308759206559735810', NULL, TO_DATE('2020-09-23 21:24:45', 'SYYYY-MM-DD HH24:MI:SS'), '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '0', TO_DATE('2020-09-23 21:24:45', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL);
INSERT INTO "PAY_ALI_TRADE_HISTORY" VALUES ('1308760139100315649', '1308760138500530177', '2020092322001400230504749933', TO_DATE('2020-09-23 21:28:27', 'SYYYY-MM-DD HH24:MI:SS'), '1.00', 'XiaoNuo快速开发平台PC支付测试商品', 'XiaoNuo快速开发平台PC支付测试商品', '1', TO_DATE('2020-09-23 21:28:27', 'SYYYY-MM-DD HH24:MI:SS'), '-1', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
CREATE TABLE "SYS_APP" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "ACTIVE" NVARCHAR2(1) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_APP"."ID" IS '主键id';
COMMENT ON COLUMN "SYS_APP"."NAME" IS '应用名称';
COMMENT ON COLUMN "SYS_APP"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_APP"."ACTIVE" IS '是否默认激活（Y-是，N-否）';
COMMENT ON COLUMN "SYS_APP"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_APP"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_APP"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_APP"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "SYS_APP"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "SYS_APP" IS '系统应用表';

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO "SYS_APP" VALUES ('1265476890672672821', '系统应用', 'system', 'Y', '0', TO_DATE('2020-03-25 19:07:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-15 15:23:05', 'SYYYY-MM-DD HH24:MI:SS'), '1280709549107552257');
INSERT INTO "SYS_APP" VALUES ('1265476890672672822', '业务应用', 'business', 'N', '2', TO_DATE('2020-03-26 08:40:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_APP" VALUES ('1265476890672672823', '在线办公', 'office', 'N', '0', TO_DATE('2020-04-02 15:48:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_APP" VALUES ('1290262474351808514', '高级体验', 'experience', 'N', '0', TO_DATE('2020-08-03 20:25:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-15 15:46:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_APP" VALUES ('1342451550318694401', '系统工具', 'system_tool', 'N', '0', TO_DATE('2020-12-25 20:46:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
CREATE TABLE "SYS_AREA" (
  "ID" NUMBER(20) NOT NULL ,
  "LEVEL" NUMBER(4) NOT NULL ,
  "PARENT_CODE" NVARCHAR2(20) NOT NULL ,
  "AREA_CODE" NVARCHAR2(20) NOT NULL ,
  "ZIP_CODE" NVARCHAR2(6) NOT NULL ,
  "CITY_CODE" NVARCHAR2(6) NOT NULL ,
  "NAME" NVARCHAR2(50) NOT NULL ,
  "SHORT_NAME" NVARCHAR2(50) NOT NULL ,
  "MERGER_NAME" NVARCHAR2(50) NOT NULL ,
  "PINYIN" NVARCHAR2(30) NOT NULL ,
  "LNG" NUMBER NOT NULL ,
  "LAT" NUMBER NOT NULL 
)
;
COMMENT ON COLUMN "SYS_AREA"."LEVEL" IS '层级';
COMMENT ON COLUMN "SYS_AREA"."PARENT_CODE" IS '父级行政代码';
COMMENT ON COLUMN "SYS_AREA"."AREA_CODE" IS '行政代码';
COMMENT ON COLUMN "SYS_AREA"."ZIP_CODE" IS '邮政编码';
COMMENT ON COLUMN "SYS_AREA"."CITY_CODE" IS '区号';
COMMENT ON COLUMN "SYS_AREA"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_AREA"."SHORT_NAME" IS '简称';
COMMENT ON COLUMN "SYS_AREA"."MERGER_NAME" IS '组合名';
COMMENT ON COLUMN "SYS_AREA"."PINYIN" IS '拼音';
COMMENT ON COLUMN "SYS_AREA"."LNG" IS '经度';
COMMENT ON COLUMN "SYS_AREA"."LAT" IS '纬度';
COMMENT ON TABLE "SYS_AREA" IS '中国行政地区表';

-- ----------------------------
-- Table structure for sys_code_generate
-- ----------------------------
CREATE TABLE "SYS_CODE_GENERATE" (
  "ID" NUMBER(20) NOT NULL ,
  "AUTHOR_NAME" NVARCHAR2(255) NOT NULL ,
  "CLASS_NAME" NVARCHAR2(255) NOT NULL ,
  "TABLE_PREFIX" NVARCHAR2(255) NOT NULL ,
  "GENERATE_TYPE" NVARCHAR2(255) NOT NULL ,
  "TABLE_NAME" NVARCHAR2(255) NOT NULL ,
  "PACKAGE_NAME" NVARCHAR2(255) ,
  "BUS_NAME" NVARCHAR2(255) ,
  "TABLE_COMMENT" NVARCHAR2(255) ,
  "CREATE_USER" NUMBER(20) ,
  "CREATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE 
)
;
COMMENT ON COLUMN "SYS_CODE_GENERATE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."AUTHOR_NAME" IS '作者姓名';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."CLASS_NAME" IS '类名';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."TABLE_PREFIX" IS '是否移除表前缀';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."GENERATE_TYPE" IS '生成位置类型';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."TABLE_NAME" IS '数据库表名';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."PACKAGE_NAME" IS '包名称';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."BUS_NAME" IS '业务名';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."TABLE_COMMENT" IS '功能名';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."UPDATE_USER" IS '更新人';
COMMENT ON COLUMN "SYS_CODE_GENERATE"."UPDATE_TIME" IS '更新时间';
COMMENT ON TABLE "SYS_CODE_GENERATE" IS '代码生成基础配置';

-- ----------------------------
-- Records of sys_code_generate
-- ----------------------------
INSERT INTO "SYS_CODE_GENERATE" VALUES ('1362310959781744641', 'yubaoshan、xuyuxiang、dongxiayu', 'CodeGenTest', 'Y', '2', 'xn_code_gen_test', 'com.cn.xiaonuo', 'codegentest', '测试', '1265476890672672808', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_code_generate_config
-- ----------------------------
CREATE TABLE "SYS_CODE_GENERATE_CONFIG" (
  "ID" NUMBER(20) NOT NULL ,
  "CODE_GEN_ID" NUMBER(20) ,
  "COLUMN_NAME" NVARCHAR2(255) ,
  "JAVA_NAME" NVARCHAR2(255) ,
  "DATA_TYPE" NVARCHAR2(255) ,
  "COLUMN_COMMENT" NVARCHAR2(255) ,
  "JAVA_TYPE" NVARCHAR2(255) ,
  "EFFECT_TYPE" NVARCHAR2(255) ,
  "DICT_TYPE_CODE" NVARCHAR2(255) ,
  "WHETHER_TABLE" NVARCHAR2(255) ,
  "WHETHER_ADD_UPDATE" NVARCHAR2(255) ,
  "WHETHER_RETRACT" NVARCHAR2(255) ,
  "WHETHER_REQUIRED" NVARCHAR2(255) ,
  "QUERY_WHETHER" NVARCHAR2(255) ,
  "QUERY_TYPE" NVARCHAR2(255) ,
  "COLUMN_KEY" NVARCHAR2(255) ,
  "COLUMN_KEY_NAME" NVARCHAR2(255) ,
  "WHETHER_COMMON" NVARCHAR2(255) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."ID" IS '主键';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."CODE_GEN_ID" IS '代码生成主表ID';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."COLUMN_NAME" IS '数据库字段名';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."JAVA_NAME" IS 'java类字段名';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."DATA_TYPE" IS '物理类型';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."COLUMN_COMMENT" IS '字段描述';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."JAVA_TYPE" IS 'java类型';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."EFFECT_TYPE" IS '作用类型（字典）';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."DICT_TYPE_CODE" IS '字典code';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."WHETHER_TABLE" IS '列表展示';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."WHETHER_ADD_UPDATE" IS '增改';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."WHETHER_RETRACT" IS '列表是否缩进（字典）';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."WHETHER_REQUIRED" IS '是否必填（字典）';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."QUERY_WHETHER" IS '是否是查询条件';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."QUERY_TYPE" IS '查询方式';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."COLUMN_KEY" IS '主键';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."COLUMN_KEY_NAME" IS '主外键名称';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."WHETHER_COMMON" IS '是否是通用字段';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "SYS_CODE_GENERATE_CONFIG"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "SYS_CODE_GENERATE_CONFIG" IS '代码生成详细配置';

-- ----------------------------
-- Records of sys_code_generate_config
-- ----------------------------
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310959903379458', '1362310959781744641', 'id', 'id', 'bigint', '主键', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', 'PRI', 'Id', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310959941128193', '1362310959781744641', 'name', 'name', 'varchar', '姓名', 'String', 'input', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'like', '', 'Name', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310959978876929', '1362310959781744641', 'age', 'age', 'int', '年龄', 'Integer', 'input', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Age', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960008237058', '1362310959781744641', 'interest', 'interest', 'varchar', '兴趣', 'String', 'checkbox', 'sex', 'Y', 'Y', 'N', 'Y', 'N', 'eq', '', 'Interest', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960033402881', '1362310959781744641', 'switchTest', 'switchtest', 'varchar', '开关', 'String', 'radio', 'yes_or_no', 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Switchtest', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960062763009', '1362310959781744641', 'birthday', 'birthday', 'date', '日期', 'Date', 'datepicker', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Birthday', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960096317442', '1362310959781744641', 'whether', 'whether', 'varchar', '是否已婚', 'String', 'select', 'yes_or_no', 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Whether', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960121483266', '1362310959781744641', 'explainTest', 'explaintest', 'varchar', '简介', 'String', 'textarea', NULL, 'N', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Explaintest', 'N', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960150843393', '1362310959781744641', 'create_time', 'createTime', 'datetime', '创建时间', 'Date', 'datepicker', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'CreateTime', 'Y', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960176009218', '1362310959781744641', 'create_user', 'createUser', 'bigint', '', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'CreateUser', 'Y', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960201175041', '1362310959781744641', 'update_time', 'updateTime', 'datetime', '', 'Date', 'datepicker', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'UpdateTime', 'Y', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CODE_GENERATE_CONFIG" VALUES ('1362310960234729473', '1362310959781744641', 'update_user', 'updateUser', 'bigint', '', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'UpdateUser', 'Y', TO_DATE('2021-02-18 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
CREATE TABLE "SYS_CONFIG" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "VALUE" NVARCHAR2(255) NOT NULL ,
  "SYS_FLAG" NCHAR(1) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "GROUP_CODE" NVARCHAR2(255) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_CONFIG"."ID" IS '主键';
COMMENT ON COLUMN "SYS_CONFIG"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_CONFIG"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_CONFIG"."VALUE" IS '值';
COMMENT ON COLUMN "SYS_CONFIG"."SYS_FLAG" IS '是否是系统参数（Y-是，N-否）';
COMMENT ON COLUMN "SYS_CONFIG"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_CONFIG"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_CONFIG"."GROUP_CODE" IS '常量所属分类的编码，来自于“常量的分类”字典';
COMMENT ON COLUMN "SYS_CONFIG"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_CONFIG"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_CONFIG"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_CONFIG"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_CONFIG" IS '系统参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853504', '验证码开关', 'XIAONUO_CAPTCHA_OPEN', 'true', 'Y', '登录验证码开关 false关闭 true打开', '0', 'DEFAULT', TO_DATE('2020-04-14 23:30:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:19:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853506', 'jwt密钥', 'XIAONUO_JWT_SECRET', 'xiaonuo', 'Y', '（重要）jwt密钥，默认为空，自行设置', '0', 'DEFAULT', TO_DATE('2020-05-26 06:35:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853507', '默认密码', 'XIAONUO_DEFAULT_PASSWORD', '123456', 'Y', '默认密码', '0', 'DEFAULT', TO_DATE('2020-05-26 06:37:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853508', 'token过期时间', 'XIAONUO_TOKEN_EXPIRE', '86400', 'Y', 'token过期时间（单位：秒）', '0', 'DEFAULT', TO_DATE('2020-05-27 11:54:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853509', 'session会话过期时间', 'XIAONUO_SESSION_EXPIRE', '7200', 'Y', 'session会话过期时间（单位：秒）', '0', 'DEFAULT', TO_DATE('2020-05-27 11:54:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1265117443880853519', '阿里云短信keyId', 'XIAONUO_ALIYUN_SMS_ACCESSKEY_ID', '你的keyId', 'Y', '阿里云短信keyId', '0', 'ALIYUN_SMS', TO_DATE('2020-06-07 16:27:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269547042242371585', '阿里云短信secret', 'XIAONUO_ALIYUN_SMS_ACCESSKEY_SECRET', '你的secret', 'Y', '阿里云短信secret', '0', 'ALIYUN_SMS', TO_DATE('2020-06-07 16:29:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269547130041737217', '阿里云短信签名', 'XIAONUO_ALIYUN_SMS_SIGN_NAME', 'XiaoNuo快速开发平台', 'Y', '阿里云短信签名', '0', 'ALIYUN_SMS', TO_DATE('2020-06-07 16:29:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269547279530926081', '阿里云短信-登录模板号', 'XIAONUO_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', 'SMS_1877123456', 'Y', '阿里云短信-登录模板号', '0', 'ALIYUN_SMS', TO_DATE('2020-06-07 16:30:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269547410879750145', '阿里云短信默认失效时间', 'XIAONUO_ALIYUN_SMS_INVALIDATE_MINUTES', '5', 'Y', '阿里云短信默认失效时间（单位：分钟）', '0', 'ALIYUN_SMS', TO_DATE('2020-06-07 16:31:04', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269575927357071361', '腾讯云短信secretId', 'XIAONUO_TENCENT_SMS_SECRET_ID', '你的secretId', 'Y', '腾讯云短信secretId', '0', 'TENCENT_SMS', TO_DATE('2020-06-07 18:24:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269575991693500418', '腾讯云短信secretKey', 'XIAONUO_TENCENT_SMS_SECRET_KEY', '你的secretkey', 'Y', '腾讯云短信secretKey', '0', 'TENCENT_SMS', TO_DATE('2020-06-07 18:24:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269576044084551682', '腾讯云短信sdkAppId', 'XIAONUO_TENCENT_SMS_SDK_APP_ID', '1400375123', 'Y', '腾讯云短信sdkAppId', '0', 'TENCENT_SMS', TO_DATE('2020-06-07 18:24:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1269576089294954497', '腾讯云短信签名', 'XIAONUO_TENCENT_SMS_SIGN', 'XiaoNuo快速开发平台', 'Y', '腾讯云短信签名', '0', 'TENCENT_SMS', TO_DATE('2020-06-07 18:25:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270378172860403713', '邮箱host', 'XIAONUO_EMAIL_HOST', 'smtp.126.com', 'Y', '邮箱host', '0', 'EMAIL', TO_DATE('2020-06-09 23:32:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270378295543795714', '邮箱用户名', 'XIAONUO_EMAIL_USERNAME', 'test@126.com', 'Y', '邮箱用户名', '0', 'EMAIL', TO_DATE('2020-06-09 23:32:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270378340510928897', '邮箱密码', 'XIAONUO_EMAIL_PASSWORD', '你的邮箱密码', 'Y', '邮箱密码', '0', 'EMAIL', TO_DATE('2020-06-09 23:32:54', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270378527358783489', '邮箱端口', 'XIAONUO_EMAIL_PORT', '465', 'Y', '邮箱端口', '0', 'EMAIL', TO_DATE('2020-06-09 23:33:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270378790035460097', '邮箱是否开启ssl', 'XIAONUO_EMAIL_SSL', 'true', 'Y', '邮箱是否开启ssl', '0', 'EMAIL', TO_DATE('2020-06-09 23:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649972737', '邮箱发件人', 'XIAONUO_EMAIL_FROM', 'test@126.com', 'Y', '邮箱发件人', '0', 'EMAIL', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649972738', 'win本地上传文件路径', 'XIAONUO_FILE_UPLOAD_PATH_FOR_WINDOWS', 'd:/tmp', 'Y', 'win本地上传文件路径', '0', 'FILE_PATH', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649972739', 'linux/mac本地上传文件路径', 'XIAONUO_FILE_UPLOAD_PATH_FOR_LINUX', '/tmp', 'Y', 'linux/mac本地上传文件路径', '0', 'FILE_PATH', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649982740', 'XiaoNuo演示环境', 'XIAONUO_DEMO_ENV_FLAG', 'false', 'Y', 'XiaoNuo演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', '0', 'DEFAULT', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-03 14:38:17', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649982741', 'XiaoNuo放开XSS过滤的接口', 'XIAONUO_UN_XSS_FILTER_URL', '/demo/xssfilter,/demo/unxss', 'Y', '多个url可以用英文逗号隔开', '0', 'DEFAULT', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1270380786649982742', '单用户登陆的开关', 'XIAONUO_ENABLE_SINGLE_LOGIN', 'false', 'Y', '单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', '0', 'DEFAULT', TO_DATE('2020-06-09 23:42:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1280694183769792514', 'druid监控登录账号', 'XIAONUO_DRUID_USERNAME', 'superAdmin', 'Y', 'druid监控登录账号', '0', 'DEFAULT', TO_DATE('2020-07-08 10:44:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:18:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CONFIG" VALUES ('1280694281648070658', 'druid监控界面登录密码', 'XIAONUO_DRUID_PASSWORD', '123456', 'Y', 'druid监控登录密码', '0', 'DEFAULT', TO_DATE('2020-07-08 10:44:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:18:36', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_CONFIG" VALUES ('1280694281648070659', '阿里云定位api接口地址', 'XIAONUO_IP_GEO_API', 'http://api01.aliyun.venuscn.com/ip?ip=%s', 'Y', '阿里云定位api接口地址', '0', 'DEFAULT', TO_DATE('2020-07-20 10:44:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1280694281648070660', '阿里云定位appCode', 'XIAONUO_IP_GEO_APP_CODE', '461535aabeae4f34861884d392f5d452', 'Y', '阿里云定位appCode', '0', 'DEFAULT', TO_DATE('2020-07-20 10:44:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288309751255412737', 'Oauth用户登录的开关', 'XIAONUO_ENABLE_OAUTH_LOGIN', 'true', 'Y', 'Oauth用户登录的开关', '0', 'OAUTH', TO_DATE('2020-07-29 11:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288310043346743297', 'Oauth码云登录ClientId', 'XIAONUO_OAUTH_GITEE_CLIENT_ID', '你的clientId', 'Y', 'Oauth码云登录ClientId', '0', 'OAUTH', TO_DATE('2020-07-29 11:07:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288310157876408321', 'Oauth码云登录ClientSecret', 'XIAONUO_OAUTH_GITEE_CLIENT_SECRET', '你的clientSecret', 'Y', 'Oauth码云登录ClientSecret', '0', 'OAUTH', TO_DATE('2020-07-29 11:07:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288310280056483841', 'Oauth码云登录回调地址', 'XIAONUO_OAUTH_GITEE_REDIRECT_URI', 'http://127.0.0.1:82/oauth/callback/gitee', 'Y', 'Oauth码云登录回调地址', '0', 'OAUTH', TO_DATE('2020-07-29 11:08:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288358228593221633', '前端项目地址', 'XIAONUO_WEB_URL', 'http://localhost:8080', 'Y', '前端项目地址', '0', 'DEFAULT', TO_DATE('2020-07-29 14:18:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288358228593221634', '支付宝支付跳转地址', 'XIAONUO_ALIPAY_RETURN_URL', 'http://localhost:8080/pay/index', 'Y', '支付宝支付跳转地址', '0', 'DEFAULT', TO_DATE('2020-07-29 14:18:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_CONFIG" VALUES ('1288358228593221635', '是否开启多租户', 'XIAONUO_TENANT_OPEN', 'true', 'Y', '是否开启多租户', '0', 'DEFAULT', TO_DATE('2020-09-03 17:45:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-16 00:09:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_database_info
-- ----------------------------
CREATE TABLE "SYS_DATABASE_INFO" (
  "ID" NUMBER(20) NOT NULL ,
  "DB_NAME" NVARCHAR2(255) NOT NULL ,
  "JDBC_DRIVER" NVARCHAR2(255) NOT NULL ,
  "USER_NAME" NVARCHAR2(255) NOT NULL ,
  "PASSWORD" NVARCHAR2(255) NOT NULL ,
  "JDBC_URL" NCLOB NOT NULL ,
  "REMARKS" NVARCHAR2(255) ,
  "CREATE_TIME" DATE 
)
;
COMMENT ON COLUMN "SYS_DATABASE_INFO"."ID" IS '主键id';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."DB_NAME" IS '数据库名称（英文名称）';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."JDBC_DRIVER" IS 'jdbc的驱动类型';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."USER_NAME" IS '数据库连接的账号';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."PASSWORD" IS '数据库连接密码';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."JDBC_URL" IS 'jdbc的url';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."REMARKS" IS '备注，摘要';
COMMENT ON COLUMN "SYS_DATABASE_INFO"."CREATE_TIME" IS '创建时间';
COMMENT ON TABLE "SYS_DATABASE_INFO" IS '数据库信息表';

-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO "SYS_DATABASE_INFO" VALUES ('1380424104192102401', 'master', 'com.mysql.cj.jdbc.Driver', 'root', '123456', 'jdbc:mysql://localhost:3306/xiaonuo-vue?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '主数据源，项目启动数据源！', TO_DATE('2021-04-09 15:35:28', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;

-- ----------------------------
-- Table structure for sys_demo_leave
-- ----------------------------
CREATE TABLE "SYS_DEMO_LEAVE" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(50) NOT NULL ,
  "ORG_NAME" NVARCHAR2(50) NOT NULL ,
  "TYPE" NUMBER(4) NOT NULL ,
  "BEGIN_TIME" DATE NOT NULL ,
  "END_TIME" DATE NOT NULL ,
  "DAYS" NUMBER(4) NOT NULL ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) ,
  "FLW_PROCESS_STATUS" NUMBER(4) ,
  "FLW_START_USER_ID" NUMBER(20) ,
  "FLW_START_USER_NAME" NVARCHAR2(100) ,
  "FLW_START_ORG_ID" NUMBER(20) ,
  "FLW_START_ORG_NAME" NVARCHAR2(100) 
)
;
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."NAME" IS '姓名';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."ORG_NAME" IS '部门名';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."TYPE" IS '请假类型（字典 1事假 2病假 3婚假 4丧假 5产假 6其他）';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."BEGIN_TIME" IS '请假开始时间';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."END_TIME" IS '请假结束时间';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."DAYS" IS '请假天数';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."UPDATE_USER" IS '更新人';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."FLW_PROCESS_STATUS" IS '流程状态（字典 0草稿 1审核中 2已退回 3已完成）';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."FLW_START_USER_ID" IS '发起人id';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."FLW_START_USER_NAME" IS '发起人姓名';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."FLW_START_ORG_ID" IS '发起人所属机构id';
COMMENT ON COLUMN "SYS_DEMO_LEAVE"."FLW_START_ORG_NAME" IS '发起人所属机构名称';

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
CREATE TABLE "SYS_DICT_DATA" (
  "ID" NUMBER(20) NOT NULL ,
  "TYPE_ID" NUMBER(20) NOT NULL ,
  "VALUE" NCLOB NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_DICT_DATA"."ID" IS '主键';
COMMENT ON COLUMN "SYS_DICT_DATA"."TYPE_ID" IS '字典类型id';
COMMENT ON COLUMN "SYS_DICT_DATA"."VALUE" IS '值';
COMMENT ON COLUMN "SYS_DICT_DATA"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_DICT_DATA"."SORT" IS '排序';
COMMENT ON COLUMN "SYS_DICT_DATA"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_DICT_DATA"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_DICT_DATA"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_DICT_DATA"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_DICT_DATA"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_DICT_DATA"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_DICT_DATA" IS '系统字典值表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087357', '1265216211667636234', '男', '1', '100', '男性', '0', TO_DATE('2020-04-01 10:23:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087358', '1265216211667636234', '女', '2', '100', '女性', '0', TO_DATE('2020-04-01 10:23:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087359', '1265216211667636234', '未知', '3', '100', '未知性别', '0', TO_DATE('2020-04-01 10:24:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087361', '1265216211667636235', '默认常量', 'DEFAULT', '100', '默认常量，都以XIAONUO_开头的', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087363', '1265216211667636235', '阿里云短信', 'ALIYUN_SMS', '100', '阿里云短信配置', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087364', '1265216211667636235', '腾讯云短信', 'TENCENT_SMS', '100', '腾讯云短信', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087365', '1265216211667636235', '邮件配置', 'EMAIL', '100', '邮箱配置', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087366', '1265216211667636235', '文件上传路径', 'FILE_PATH', '100', '文件上传路径', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216536659087367', '1265216211667636235', 'Oauth配置', 'OAUTH', '100', 'Oauth配置', '0', TO_DATE('2020-04-14 23:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216617500102656', '1265216211667636226', '正常', '0', '100', '正常', '0', TO_DATE('2020-05-26 17:41:44', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216617500102657', '1265216211667636226', '停用', '1', '100', '停用', '0', TO_DATE('2020-05-26 17:42:03', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265216938389524482', '1265216211667636226', '删除', '2', '100', '删除', '0', TO_DATE('2020-05-26 17:43:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265217669028892673', '1265217074079453185', '否', 'N', '100', '否', '0', TO_DATE('2020-05-26 17:46:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265217706584690689', '1265217074079453185', '是', 'Y', '100', '是', '0', TO_DATE('2020-05-26 17:46:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265220776437731330', '1265217846770913282', '登录', '1', '100', '登录', '0', TO_DATE('2020-05-26 17:58:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265220806070489090', '1265217846770913282', '登出', '2', '100', '登出', '0', TO_DATE('2020-05-26 17:58:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265221129564573697', '1265221049302372354', '目录', '0', '100', '目录', '0', TO_DATE('2020-05-26 17:59:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265221163119005697', '1265221049302372354', '菜单', '1', '100', '菜单', '0', TO_DATE('2020-05-26 18:00:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265221188091891713', '1265221049302372354', '按钮', '2', '100', '按钮', '0', TO_DATE('2020-05-26 18:00:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466389204967426', '1265466149622128641', '未发送', '0', '100', '未发送', '0', TO_DATE('2020-05-27 10:14:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466432670539778', '1265466149622128641', '发送成功', '1', '100', '发送成功', '0', TO_DATE('2020-05-27 10:14:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466486097584130', '1265466149622128641', '发送失败', '2', '100', '发送失败', '0', TO_DATE('2020-05-27 10:14:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466530477514754', '1265466149622128641', '失效', '3', '100', '失效', '0', TO_DATE('2020-05-27 10:15:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466835009150978', '1265466752209395713', '无', '0', '100', '无', '0', TO_DATE('2020-05-27 10:16:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466874758569986', '1265466752209395713', '组件', '1', '100', '组件', '0', TO_DATE('2020-05-27 10:16:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466925476093953', '1265466752209395713', '内链', '2', '100', '内链', '0', TO_DATE('2020-05-27 10:16:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265466962209808385', '1265466752209395713', '外链', '3', '100', '外链', '0', TO_DATE('2020-05-27 10:16:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467428423475202', '1265467337566461954', '系统权重', '1', '100', '系统权重', '0', TO_DATE('2020-05-27 10:18:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467503090475009', '1265467337566461954', '业务权重', '2', '100', '业务权重', '0', TO_DATE('2020-05-27 10:18:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467709110493186', '1265467629167058946', '事假', '1', '100', '事假', '0', TO_DATE('2020-05-27 10:19:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467745013735426', '1265467629167058946', '病假', '2', '100', '病假', '0', TO_DATE('2020-05-27 10:19:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467785253888001', '1265467629167058946', '婚假', '3', '100', '婚假', '0', TO_DATE('2020-05-27 10:20:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467823426248706', '1265467629167058946', '丧假', '4', '100', '丧假', '0', TO_DATE('2020-05-27 10:20:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467855781109762', '1265467629167058946', '产假', '5', '100', '产假', '0', TO_DATE('2020-05-27 10:20:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265467895782187010', '1265467629167058946', '其他', '6', '100', '其他', '0', TO_DATE('2020-05-27 10:20:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468138431062018', '1265468028632571905', '全部数据', '1', '100', '全部数据', '0', TO_DATE('2020-05-27 10:21:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468194928336897', '1265468028632571905', '本部门及以下数据', '2', '100', '本部门及以下数据', '0', TO_DATE('2020-05-27 10:21:44', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468241992622082', '1265468028632571905', '本部门数据', '3', '100', '本部门数据', '0', TO_DATE('2020-05-27 10:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468273634451457', '1265468028632571905', '仅本人数据', '4', '100', '仅本人数据', '0', TO_DATE('2020-05-27 10:22:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468302046666753', '1265468028632571905', '自定义数据', '5', '100', '自定义数据', '0', TO_DATE('2020-05-27 10:22:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468508100239362', '1265468437904367618', 'app', '1', '100', 'app', '0', TO_DATE('2020-05-27 10:22:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468543433056258', '1265468437904367618', 'pc', '2', '100', 'pc', '0', TO_DATE('2020-05-27 10:23:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468576874242050', '1265468437904367618', '其他', '3', '100', '其他', '0', TO_DATE('2020-05-27 10:23:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468839764828161', '1265468761230680066', 'Integer', '1', '100', 'Integer', '0', TO_DATE('2020-05-27 10:24:17', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468871641538562', '1265468761230680066', 'String', '2', '100', 'String', '0', TO_DATE('2020-05-27 10:24:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468898896125954', '1265468761230680066', 'Long', '3', '100', 'Long', '0', TO_DATE('2020-05-27 10:24:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468922275176450', '1265468761230680066', 'Double', '4', '100', 'Double', '0', TO_DATE('2020-05-27 10:24:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468946648276993', '1265468761230680066', 'Boolean', '5', '100', 'Boolean', '0', TO_DATE('2020-05-27 10:24:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468970450952193', '1265468761230680066', 'Date', '6', '100', 'Date', '0', TO_DATE('2020-05-27 10:24:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265468970450952194', '1265468761230680066', 'List', '7', '100', 'List', '0', TO_DATE('2020-05-27 10:24:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469305756196865', '1265469198583341057', '流程脚本', '1', '100', '流程脚本', '0', TO_DATE('2020-05-27 10:26:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469330859106306', '1265469198583341057', '系统脚本', '2', '100', '系统脚本', '0', TO_DATE('2020-05-27 10:26:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469526330449922', '1265469441454514178', 'groovy', '1', '100', 'groovy', '0', TO_DATE('2020-05-27 10:27:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469753078718464', '1265469702042427393', '启动', '1', '100', '启动', '0', TO_DATE('2020-05-27 10:30:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469753078718465', '1265469702042427393', '全局', '2', '100', '全局', '0', TO_DATE('2020-05-27 10:27:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265469779460890626', '1265469702042427393', '节点', '3', '100', '节点', '0', TO_DATE('2020-05-27 10:28:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470046877130753', '1265469962873610241', '流程启动', 'PROCESS_STARTED', '100', '流程启动', '0', TO_DATE('2020-05-27 10:29:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470074517594113', '1265469962873610241', '流程完成', 'PROCESS_COMPLETED', '100', '流程完成', '0', TO_DATE('2020-05-27 10:29:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470103152107521', '1265469962873610241', '流程取消', 'PROCESS_CANCELLED', '100', '流程取消', '0', TO_DATE('2020-05-27 10:29:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470125725851649', '1265469962873610241', '活动开始', 'ACTIVITY_STARTED', '100', '活动开始', '0', TO_DATE('2020-05-27 10:29:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470153416646657', '1265469962873610241', '活动完成', 'ACTIVITY_COMPLETED', '100', '活动完成', '0', TO_DATE('2020-05-27 10:29:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470179165478913', '1265469962873610241', '活动取消', 'ACTIVITY_CANCELLED', '100', '活动取消', '0', TO_DATE('2020-05-27 10:29:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470207363784705', '1265469962873610241', '任务分配', 'TASK_ASSIGNED', '100', '任务分配', '0', TO_DATE('2020-05-27 10:29:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470236853936130', '1265469962873610241', '任务创建', 'TASK_CREATED', '100', '任务创建', '0', TO_DATE('2020-05-27 10:29:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470266780295170', '1265469962873610241', '任务完成', 'TASK_COMPLETED', '100', '任务完成', '0', TO_DATE('2020-05-27 10:29:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470296446607361', '1265469962873610241', '连接线', 'SEQUENCEFLOW_TAKEN', '100', '连接线', '0', TO_DATE('2020-05-27 10:30:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470296446607362', '1265469962873610242', '全局', '1', '100', '全局', '0', TO_DATE('2020-05-27 10:30:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470296446607363', '1265469962873610242', '节点', '2', '100', '节点', '0', TO_DATE('2020-05-27 10:30:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470526197997569', '1265470456631271426', '草稿', '0', '100', '草稿', '0', TO_DATE('2020-05-27 10:30:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470552823439361', '1265470456631271426', '审核中', '1', '100', '审核中', '0', TO_DATE('2020-05-27 10:31:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470575615287297', '1265470456631271426', '已退回', '2', '100', '已退回', '0', TO_DATE('2020-05-27 10:31:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1265470607588466690', '1265470456631271426', '已完成', '3', '100', '已完成', '0', TO_DATE('2020-05-27 10:31:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617233011335170', '1275617093517172738', '其它', '0', '100', '其它', '0', TO_DATE('2020-06-24 10:30:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617295355469826', '1275617093517172738', '增加', '1', '100', '增加', '0', TO_DATE('2020-06-24 10:30:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617348610547714', '1275617093517172738', '删除', '2', '100', '删除', '0', TO_DATE('2020-06-24 10:30:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617395515449346', '1275617093517172738', '编辑', '3', '100', '编辑', '0', TO_DATE('2020-06-24 10:31:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617433612312577', '1275617093517172738', '更新', '4', '100', '更新', '0', TO_DATE('2020-06-24 10:31:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617472707420161', '1275617093517172738', '查询', '5', '100', '查询', '0', TO_DATE('2020-06-24 10:31:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617502973517826', '1275617093517172738', '详情', '6', '100', '详情', '0', TO_DATE('2020-06-24 10:31:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617536959963137', '1275617093517172738', '树', '7', '100', '树', '0', TO_DATE('2020-06-24 10:31:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617619524837377', '1275617093517172738', '导入', '8', '100', '导入', '0', TO_DATE('2020-06-24 10:31:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617651816783873', '1275617093517172738', '导出', '9', '100', '导出', '0', TO_DATE('2020-06-24 10:32:03', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617683475390465', '1275617093517172738', '授权', '10', '100', '授权', '0', TO_DATE('2020-06-24 10:32:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617709928865793', '1275617093517172738', '强退', '11', '100', '强退', '0', TO_DATE('2020-06-24 10:32:17', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617739091861505', '1275617093517172738', '清空', '12', '100', '清空', '0', TO_DATE('2020-06-24 10:32:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1275617788601425921', '1275617093517172738', '修改状态', '13', '100', '修改状态', '0', TO_DATE('2020-06-24 10:32:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1277774590944317441', '1277774529430654977', '阿里云', '1', '100', '阿里云', '0', TO_DATE('2020-06-30 09:22:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1277774666055913474', '1277774529430654977', '腾讯云', '2', '100', '腾讯云', '0', TO_DATE('2020-06-30 09:23:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1277774695168577538', '1277774529430654977', 'minio', '3', '100', 'minio', '0', TO_DATE('2020-06-30 09:23:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1277774726835572737', '1277774529430654977', '本地', '4', '100', '本地', '0', TO_DATE('2020-06-30 09:23:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278607123583868929', '1278606951432855553', '运行', '1', '100', '运行', '0', TO_DATE('2020-07-02 16:31:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278607162943217666', '1278606951432855553', '停止', '2', '100', '停止', '0', TO_DATE('2020-07-02 16:31:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939265862004738', '1278911800547147777', '通知', '1', '100', '通知', '0', TO_DATE('2020-07-03 14:30:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939319922388994', '1278911800547147777', '公告', '2', '100', '公告', '0', TO_DATE('2020-07-03 14:31:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939399001796609', '1278911952657776642', '草稿', '0', '100', '草稿', '0', TO_DATE('2020-07-03 14:31:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939432686252034', '1278911952657776642', '发布', '1', '100', '发布', '0', TO_DATE('2020-07-03 14:31:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939458804183041', '1278911952657776642', '撤回', '2', '100', '撤回', '0', TO_DATE('2020-07-03 14:31:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278939485878415362', '1278911952657776642', '删除', '3', '100', '删除', '0', TO_DATE('2020-07-03 14:31:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278992343223025665', '1278992276965605377', '委托中', '0', '90', '委托中', '0', TO_DATE('2020-07-03 18:01:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278992370066571266', '1278992276965605377', '委托结束', '1', '100', '委托结束', '0', TO_DATE('2020-07-03 18:01:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1278992396788482050', '1278992276965605377', '未委托', '2', '100', '未委托', '0', TO_DATE('2020-07-03 18:02:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291390260160299009', '1291390159941599233', '是', 'true', '100', '是', '2', TO_DATE('2020-08-06 23:06:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291390315437031426', '1291390159941599233', '否', 'false', '100', '否', '2', TO_DATE('2020-08-06 23:06:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291391148769738754', '1291391077990858754', '是', 'true', '100', '是', '0', TO_DATE('2020-08-06 23:10:17', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291391205719998465', '1291391077990858754', '否', 'false', '100', '否', '0', TO_DATE('2020-08-06 23:10:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291393684314587138', '1291393441594408961', '是', 'true', '100', '已结束', '0', TO_DATE('2020-08-06 23:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1291393766048989186', '1291393441594408961', '否', 'false', '100', '未结束', '0', TO_DATE('2020-08-06 23:20:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300767954291433474', '1300767512828354562', 'Mysql', 'com.mysql.cj.jdbc.Driver', '100', 'Mysql数据库驱动', '0', TO_DATE('2020-09-01 20:10:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768214854180866', '1300767512828354562', 'Oracle', 'oracle.jdbc.OracleDriver', '100', 'Oracle数据库驱动', '0', TO_DATE('2020-09-01 20:11:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196417', '1300767512828354562', 'Sqlserver', 'com.microsoft.jdbc.sqlserver.SQLServerDriver', '100', 'Sqlserver数据库', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196418', '1300767512828354563', '未支付', '0', '100', '未支付', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196419', '1300767512828354563', '已支付', '1', '100', '已支付', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196420', '1300767512828354563', '已退款', '2', '100', '已退款', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196421', '1300767512828354563', '已关闭', '3', '100', '已关闭', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1300768392747196422', '1300767512828354563', '已关闭有退款', '4', '100', '已关闭有退款', '0', TO_DATE('2020-09-01 20:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1342451445578534913', '1342451383595110402', '下载压缩包', '1', '100', '下载压缩包', '0', TO_DATE('2020-12-25 20:45:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1342451490893795329', '1342451383595110402', '生成到本项目', '2', '100', '生成到本项目', '0', TO_DATE('2020-12-25 20:45:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1354106182690942978', '1354106042974482433', '自行开发', '1', '100', '自行开发', '0', TO_DATE('2021-01-27 00:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1354106244473040897', '1354106042974482433', '在线设计', '2', '100', '在线设计', '0', TO_DATE('2021-01-27 00:37:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358094655567454210', '1358094419419750401', '输入框', 'input', '100', '输入框', '0', TO_DATE('2021-02-07 00:46:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-08 01:01:28', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358094740510498817', '1358094419419750401', '时间选择', 'datepicker', '100', '时间选择', '0', TO_DATE('2021-02-07 00:46:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-08 01:04:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358094793149014017', '1358094419419750401', '下拉框', 'select', '100', '下拉框', '0', TO_DATE('2021-02-07 00:46:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358095496009506817', '1358094419419750401', '单选框', 'radio', '100', '单选框', '0', TO_DATE('2021-02-07 00:49:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358095673084633090', '1358094419419750401', '开关', 'switch', '100', '开关', '2', TO_DATE('2021-02-07 00:50:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-11 19:07:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358458689433190402', '1358457818733428737', '等于', 'eq', '1', '等于', '0', TO_DATE('2021-02-08 00:52:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:35:36', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358458785168179202', '1358457818733428737', '模糊', 'like', '2', '模糊', '0', TO_DATE('2021-02-08 00:53:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:35:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358460475682406401', '1358094419419750401', '多选框', 'checkbox', '100', '多选框', '0', TO_DATE('2021-02-08 00:59:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358460819019743233', '1358094419419750401', '数字输入框', 'inputnumber', '100', '数字输入框', '0', TO_DATE('2021-02-08 01:01:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358470210267725826', '1358470065111252994', 'Long', 'Long', '100', 'Long', '0', TO_DATE('2021-02-08 01:38:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358470239351029762', '1358470065111252994', 'String', 'String', '100', 'String', '0', TO_DATE('2021-02-08 01:38:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358470265640927233', '1358470065111252994', 'Date', 'Date', '100', 'Date', '0', TO_DATE('2021-02-08 01:38:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358470300168437761', '1358470065111252994', 'Integer', 'Integer', '100', 'Integer', '0', TO_DATE('2021-02-08 01:38:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358470697377415169', '1358470065111252994', 'boolean', 'boolean', '100', 'boolean', '0', TO_DATE('2021-02-08 01:40:28', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-08 01:40:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358471133434036226', '1358470065111252994', 'int', 'int', '100', 'int', '0', TO_DATE('2021-02-08 01:42:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358471188291338241', '1358470065111252994', 'double', 'double', '100', 'double', '0', TO_DATE('2021-02-08 01:42:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1358756511688761346', '1358457818733428737', '大于', 'gt', '3', '大于', '0', TO_DATE('2021-02-08 20:36:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358756547159990274', '1358457818733428737', '小于', 'lt', '4', '大于', '0', TO_DATE('2021-02-08 20:36:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358756609990664193', '1358457818733428737', '不等于', 'ne', '7', '不等于', '0', TO_DATE('2021-02-08 20:36:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358756685030957057', '1358457818733428737', '大于等于', 'ge', '5', '大于等于', '0', TO_DATE('2021-02-08 20:36:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1358756800525312001', '1358457818733428737', '小于等于', 'le', '6', '小于等于', '0', TO_DATE('2021-02-08 20:37:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_DATA" VALUES ('1360529773814083586', '1358094419419750401', '文本域', 'textarea', '100', '文本域', '0', TO_DATE('2021-02-13 18:02:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_DATA" VALUES ('1360606105914732545', '1358457818733428737', '不为空', 'isNotNull', '8', '不为空', '0', TO_DATE('2021-02-13 23:05:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-13 23:45:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
CREATE TABLE "SYS_DICT_TYPE" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_DICT_TYPE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_DICT_TYPE"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_DICT_TYPE"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_DICT_TYPE"."SORT" IS '排序';
COMMENT ON COLUMN "SYS_DICT_TYPE"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_DICT_TYPE"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_DICT_TYPE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_DICT_TYPE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_DICT_TYPE"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_DICT_TYPE"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_DICT_TYPE" IS '系统字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265216211667636226', '通用状态', 'common_status', '100', '通用状态', '0', TO_DATE('2020-05-26 17:40:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-06-08 11:31:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265216211667636234', '性别', 'sex', '100', '性别字典', '0', TO_DATE('2020-04-01 10:12:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265216211667636235', '常量的分类', 'consts_type', '100', '常量的分类，用于区别一组配置', '0', TO_DATE('2020-04-14 23:24:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265217074079453185', '是否', 'yes_or_no', '100', '是否', '0', TO_DATE('2020-05-26 17:43:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265217846770913282', '访问类型', 'vis_type', '100', '访问类型', '0', TO_DATE('2020-05-26 17:46:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265221049302372354', '菜单类型', 'menu_type', '100', '菜单类型', '0', TO_DATE('2020-05-26 17:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265466149622128641', '发送类型', 'send_type', '100', '发送类型', '0', TO_DATE('2020-05-27 10:13:36', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265466752209395713', '打开方式', 'open_type', '100', '打开方式', '0', TO_DATE('2020-05-27 10:16:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265467337566461954', '菜单权重', 'menu_weight', '100', '菜单权重', '0', TO_DATE('2020-05-27 10:18:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265467629167058946', '请假类型', 'leave_type', '100', '请假类型', '0', TO_DATE('2020-05-27 10:19:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265468028632571905', '数据范围类型', 'data_scope_type', '100', '数据范围类型', '0', TO_DATE('2020-05-27 10:21:04', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265468437904367618', '短信发送来源', 'sms_send_source', '100', '短信发送来源', '0', TO_DATE('2020-05-27 10:22:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265468761230680066', '字段类型', 'filed_type', '100', '字段类型', '0', TO_DATE('2020-05-27 10:23:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265469198583341057', '脚本类型', 'script_type', '100', '脚本类型', '0', TO_DATE('2020-05-27 10:25:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265469441454514178', '脚本语言类型', 'script_language_type', '100', '脚本语言类型', '0', TO_DATE('2020-05-27 10:26:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265469702042427393', '表单类型', 'form_type', '100', '表单类型', '0', TO_DATE('2020-05-27 10:27:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265469962873610241', '事件类型', 'event_type', '100', '事件类型', '0', TO_DATE('2020-05-27 10:28:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265469962873610242', '事件节点类型', 'event_node_type', '100', '事件节点类型', '0', TO_DATE('2020-05-27 10:28:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1265470456631271426', '流程状态', 'process_status', '100', '流程状态', '0', TO_DATE('2020-05-27 10:30:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1275617093517172738', '操作类型', 'op_type', '100', '操作类型', '0', TO_DATE('2020-06-24 10:29:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1277774529430654977', '文件存储位置', 'file_storage_location', '100', '文件存储位置', '0', TO_DATE('2020-06-30 09:22:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1278606951432855553', '运行状态', 'run_status', '100', '定时任务运行状态', '0', TO_DATE('2020-07-02 16:30:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1278911800547147777', '通知公告类型', 'notice_type', '100', '通知公告类型', '0', TO_DATE('2020-07-03 12:41:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1278911952657776642', '通知公告状态', 'notice_status', '100', '通知公告状态', '0', TO_DATE('2020-07-03 12:42:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1278992276965605377', '委托状态', 'delegate_status', '100', '委托状态', '0', TO_DATE('2020-07-03 18:01:36', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1291390159941599233', '是否boolean', 'yes_true_false', '100', '是否boolean', '2', TO_DATE('2020-08-06 23:06:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1291391077990858754', '流程是否挂起', 'suspended_status', '100', '流程是否挂起', '0', TO_DATE('2020-08-06 23:10:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1291393441594408961', '是否结束', 'ended_status', '100', '是否结束', '0', TO_DATE('2020-08-06 23:19:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1300767512828354562', 'JDBC驱动类型', 'jdbc_driver', '100', 'JDBC驱动类型', '0', TO_DATE('2020-09-01 20:08:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1300767512828354563', '支付宝交易状态', 'alipay_trade_status', '100', '支付宝交易状态', '0', TO_DATE('2020-09-23 10:36:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1342451383595110402', '代码生成方式', 'code_gen_create_type', '100', '代码生成方式', '0', TO_DATE('2020-12-25 20:45:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1354106042974482433', '流程表单类型', 'form_resource_type', '100', '流程表单类型', '0', TO_DATE('2021-01-27 00:36:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1358094419419750401', '代码生成作用类型', 'code_gen_effect_type', '100', '代码生成作用类型', '0', TO_DATE('2021-02-07 00:45:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-08 00:47:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_DICT_TYPE" VALUES ('1358457818733428737', '代码生成查询类型', 'code_gen_query_type', '100', '代码生成查询类型', '0', TO_DATE('2021-02-08 00:49:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_DICT_TYPE" VALUES ('1358470065111252994', '代码生成java类型', 'code_gen_java_type', '100', '代码生成java类型', '0', TO_DATE('2021-02-08 01:37:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_emp
-- ----------------------------
CREATE TABLE "SYS_EMP" (
  "ID" NUMBER(20) NOT NULL ,
  "JOB_NUM" NVARCHAR2(100) ,
  "ORG_ID" NUMBER(20) NOT NULL ,
  "ORG_NAME" NVARCHAR2(100) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_EMP"."ID" IS '主键';
COMMENT ON COLUMN "SYS_EMP"."JOB_NUM" IS '工号';
COMMENT ON COLUMN "SYS_EMP"."ORG_ID" IS '所属机构id';
COMMENT ON COLUMN "SYS_EMP"."ORG_NAME" IS '所属机构名称';
COMMENT ON TABLE "SYS_EMP" IS '员工表';

-- ----------------------------
-- Records of sys_emp
-- ----------------------------
INSERT INTO "SYS_EMP" VALUES ('1275735541155614721', '102', '1265476890672672769', '华夏集团北京分公司');
INSERT INTO "SYS_EMP" VALUES ('1280700700074041345', '110', '1265476890672672771', '研发部');
INSERT INTO "SYS_EMP" VALUES ('1280709549107552257', '100', '1265476890672672770', '华夏集团成都分公司');
COMMIT;

-- ----------------------------
-- Table structure for sys_emp_ext_org_pos
-- ----------------------------
CREATE TABLE "SYS_EMP_EXT_ORG_POS" (
  "ID" NUMBER(20) NOT NULL ,
  "EMP_ID" NUMBER(20) NOT NULL ,
  "ORG_ID" NUMBER(20) NOT NULL ,
  "POS_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_EMP_EXT_ORG_POS"."ID" IS '主键';
COMMENT ON COLUMN "SYS_EMP_EXT_ORG_POS"."EMP_ID" IS '员工id';
COMMENT ON COLUMN "SYS_EMP_EXT_ORG_POS"."ORG_ID" IS '机构id';
COMMENT ON COLUMN "SYS_EMP_EXT_ORG_POS"."POS_ID" IS '岗位id';
COMMENT ON TABLE "SYS_EMP_EXT_ORG_POS" IS '员工附属机构岗位表';

-- ----------------------------
-- Table structure for sys_emp_pos
-- ----------------------------
CREATE TABLE "SYS_EMP_POS" (
  "ID" NUMBER(20) NOT NULL ,
  "EMP_ID" NUMBER(20) NOT NULL ,
  "POS_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_EMP_POS"."ID" IS '主键';
COMMENT ON COLUMN "SYS_EMP_POS"."EMP_ID" IS '员工id';
COMMENT ON COLUMN "SYS_EMP_POS"."POS_ID" IS '职位id';
COMMENT ON TABLE "SYS_EMP_POS" IS '员工职位关联表';

-- ----------------------------
-- Records of sys_emp_pos
-- ----------------------------
INSERT INTO "SYS_EMP_POS" VALUES ('1280710811995709441', '1275735541155614721', '1265476890672672787');
INSERT INTO "SYS_EMP_POS" VALUES ('1280710828479324161', '1280700700074041345', '1265476890672672790');
INSERT INTO "SYS_EMP_POS" VALUES ('1281042262003867649', '1280709549107552257', '1265476890672672787');
COMMIT;

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
CREATE TABLE "SYS_FILE_INFO" (
  "ID" NUMBER(20) NOT NULL ,
  "FILE_LOCATION" NUMBER(4) NOT NULL ,
  "FILE_BUCKET" NVARCHAR2(1000) ,
  "FILE_ORIGIN_NAME" NVARCHAR2(100) NOT NULL ,
  "FILE_SUFFIX" NVARCHAR2(50) ,
  "FILE_SIZE_KB" NUMBER(20) ,
  "FILE_SIZE_INFO" NVARCHAR2(100) ,
  "FILE_OBJECT_NAME" NVARCHAR2(100) NOT NULL ,
  "FILE_PATH" NVARCHAR2(1000) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_FILE_INFO"."ID" IS '主键id';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_LOCATION" IS '文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_BUCKET" IS '文件仓库';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_ORIGIN_NAME" IS '文件名称（上传时候的文件名）';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_SUFFIX" IS '文件后缀';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_SIZE_KB" IS '文件大小kb';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_SIZE_INFO" IS '文件大小信息，计算后的';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_OBJECT_NAME" IS '存储到bucket的名称（文件唯一标识id）';
COMMENT ON COLUMN "SYS_FILE_INFO"."FILE_PATH" IS '存储路径';
COMMENT ON COLUMN "SYS_FILE_INFO"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_FILE_INFO"."CREATE_USER" IS '创建用户';
COMMENT ON COLUMN "SYS_FILE_INFO"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "SYS_FILE_INFO"."UPDATE_USER" IS '修改用户';
COMMENT ON TABLE "SYS_FILE_INFO" IS '文件信息表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
CREATE TABLE "SYS_MENU" (
  "ID" NUMBER(20) NOT NULL ,
  "PID" NUMBER(20) NOT NULL ,
  "PIDS" NCLOB NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "TYPE" NUMBER(4) NOT NULL ,
  "ICON" NVARCHAR2(255) ,
  "ROUTER" NVARCHAR2(255) ,
  "COMPONENT" NVARCHAR2(255) ,
  "PERMISSION" NVARCHAR2(255) ,
  "APPLICATION" NVARCHAR2(50) NOT NULL ,
  "OPEN_TYPE" NUMBER(4) NOT NULL ,
  "VISIBLE" NCHAR(1) NOT NULL ,
  "LINK" NVARCHAR2(255) ,
  "REDIRECT" NVARCHAR2(255) ,
  "WEIGHT" NUMBER(4) ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_MENU"."ID" IS '主键';
COMMENT ON COLUMN "SYS_MENU"."PID" IS '父id';
COMMENT ON COLUMN "SYS_MENU"."PIDS" IS '父ids';
COMMENT ON COLUMN "SYS_MENU"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_MENU"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_MENU"."TYPE" IS '菜单类型（字典 0目录 1菜单 2按钮）';
COMMENT ON COLUMN "SYS_MENU"."ICON" IS '图标';
COMMENT ON COLUMN "SYS_MENU"."ROUTER" IS '路由地址';
COMMENT ON COLUMN "SYS_MENU"."COMPONENT" IS '组件地址';
COMMENT ON COLUMN "SYS_MENU"."PERMISSION" IS '权限标识';
COMMENT ON COLUMN "SYS_MENU"."APPLICATION" IS '应用分类（应用编码）';
COMMENT ON COLUMN "SYS_MENU"."OPEN_TYPE" IS '打开方式（字典 0无 1组件 2内链 3外链）';
COMMENT ON COLUMN "SYS_MENU"."VISIBLE" IS '是否可见（Y-是，N-否）';
COMMENT ON COLUMN "SYS_MENU"."LINK" IS '链接地址';
COMMENT ON COLUMN "SYS_MENU"."REDIRECT" IS '重定向地址';
COMMENT ON COLUMN "SYS_MENU"."WEIGHT" IS '权重（字典 1系统权重 2业务权重）';
COMMENT ON COLUMN "SYS_MENU"."SORT" IS '排序';
COMMENT ON COLUMN "SYS_MENU"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_MENU"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_MENU"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_MENU"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_MENU"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "SYS_MENU"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "SYS_MENU" IS '系统菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "SYS_MENU" VALUES ('1264622039642255311', '0', '[0],', '主控面板', 'system_index', '0', 'home', '/', 'RouteView', NULL, 'system', '0', 'Y', NULL, '/analysis', '1', '1', NULL, '0', TO_DATE('2020-05-25 02:19:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255321', '1264622039642255311', '[0],[1264622039642255311],', '分析页', 'system_index_dashboard', '1', NULL, 'analysis', 'system/dashboard/Analysis', NULL, 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-25 02:21:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255331', '1264622039642255311', '[0],[1264622039642255311],', '工作台', 'system_index_workplace', '1', NULL, 'workplace', 'system/dashboard/Workplace', NULL, 'system', '0', 'Y', NULL, NULL, '1', '2', NULL, '0', TO_DATE('2020-05-25 02:23:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255341', '0', '[0],', '组织架构', 'sys_mgr', '0', 'team', '/sys', 'PageView', NULL, 'system', '0', 'Y', NULL, NULL, '1', '2', NULL, '0', TO_DATE('2020-03-27 15:58:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255351', '1264622039642255341', '[0],[1264622039642255341],', '用户管理', 'sys_user_mgr', '1', NULL, '/mgr_user', 'system/user/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '3', NULL, '0', TO_DATE('2020-03-27 16:10:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255361', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户查询', 'sys_user_mgr_page', '2', NULL, NULL, NULL, 'sysUser:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:36:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255371', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户编辑', 'sys_user_mgr_edit', '2', NULL, NULL, NULL, 'sysUser:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:20:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255381', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户增加', 'sys_user_mgr_add', '2', NULL, NULL, NULL, 'sysUser:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:37:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255391', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户删除', 'sys_user_mgr_delete', '2', NULL, NULL, NULL, 'sysUser:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:37:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255401', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户详情', 'sys_user_mgr_detail', '2', NULL, NULL, NULL, 'sysUser:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:38:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255411', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户导出', 'sys_user_mgr_export', '2', NULL, NULL, NULL, 'sysUser:export', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:21:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255421', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户选择器', 'sys_user_mgr_selector', '2', NULL, NULL, NULL, 'sysUser:selector', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-03 13:30:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255431', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户授权角色', 'sys_user_mgr_grant_role', '2', NULL, NULL, NULL, 'sysUser:grantRole', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 09:22:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255441', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户拥有角色', 'sys_user_mgr_own_role', '2', NULL, NULL, NULL, 'sysUser:ownRole', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 14:27:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255451', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户授权数据', 'sys_user_mgr_grant_data', '2', NULL, NULL, NULL, 'sysUser:grantData', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 09:22:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255461', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户拥有数据', 'sys_user_mgr_own_data', '2', NULL, NULL, NULL, 'sysUser:ownData', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 14:27:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255471', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户更新信息', 'sys_user_mgr_update_info', '2', NULL, NULL, NULL, 'sysUser:updateInfo', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 16:19:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255481', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改密码', 'sys_user_mgr_update_pwd', '2', NULL, NULL, NULL, 'sysUser:updatePwd', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 16:20:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255491', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改状态', 'sys_user_mgr_change_status', '2', NULL, NULL, NULL, 'sysUser:changeStatus', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-23 11:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255501', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户修改头像', 'sys_user_mgr_update_avatar', '2', NULL, NULL, NULL, 'sysUser:updateAvatar', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:21:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255511', '1264622039642255351', '[0],[1264622039642255341],[1264622039642255351],', '用户重置密码', 'sys_user_mgr_reset_pwd', '2', NULL, NULL, NULL, 'sysUser:resetPwd', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 15:01:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255521', '1264622039642255341', '[0],[1264622039642255341],', '机构管理', 'sys_org_mgr', '1', NULL, '/org', 'system/org/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '4', NULL, '0', TO_DATE('2020-03-27 17:15:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255531', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构查询', 'sys_org_mgr_page', '2', NULL, NULL, NULL, 'sysOrg:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:17:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255541', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构列表', 'sys_org_mgr_list', '2', NULL, NULL, NULL, 'sysOrg:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:54:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255551', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构增加', 'sys_org_mgr_add', '2', NULL, NULL, NULL, 'sysOrg:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:19:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255561', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构编辑', 'sys_org_mgr_edit', '2', NULL, NULL, NULL, 'sysOrg:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:54:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255571', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构删除', 'sys_org_mgr_delete', '2', NULL, NULL, NULL, 'sysOrg:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:20:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255581', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构详情', 'sys_org_mgr_detail', '2', NULL, NULL, NULL, 'sysOrg:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:21:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255591', '1264622039642255521', '[0],[1264622039642255341],[1264622039642255521]', '机构树', 'sys_org_mgr_tree', '2', NULL, NULL, NULL, 'sysOrg:tree', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:21:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255601', '1264622039642255341', '[0],[1264622039642255341],', '职位管理', 'sys_pos_mgr', '1', NULL, '/pos', 'system/pos/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '5', NULL, '0', TO_DATE('2020-03-27 18:38:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255611', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位查询', 'sys_pos_mgr_page', '2', NULL, NULL, NULL, 'sysPos:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:41:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255621', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位列表', 'sys_pos_mgr_list', '2', NULL, NULL, NULL, 'sysPos:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:55:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255631', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位增加', 'sys_pos_mgr_add', '2', NULL, NULL, NULL, 'sysPos:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:42:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255641', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位编辑', 'sys_pos_mgr_edit', '2', NULL, NULL, NULL, 'sysPos:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:56:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255651', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位删除', 'sys_pos_mgr_delete', '2', NULL, NULL, NULL, 'sysPos:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:42:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255661', '1264622039642255601', '[0],[1264622039642255341],[1264622039642255601],', '职位详情', 'sys_pos_mgr_detail', '2', NULL, NULL, NULL, 'sysPos:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:43:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255671', '0', '[0],', '权限管理', 'auth_manager', '0', 'safety-certificate', '/auth', 'PageView', NULL, 'system', '0', 'Y', NULL, NULL, '1', '3', NULL, '0', TO_DATE('2020-07-15 15:51:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255681', '1264622039642255671', '[0],[1264622039642255671],', '应用管理', 'sys_app_mgr', '1', NULL, '/app', 'system/app/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '6', NULL, '0', TO_DATE('2020-03-27 16:40:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255691', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用查询', 'sys_app_mgr_page', '2', NULL, NULL, NULL, 'sysApp:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:41:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255701', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用列表', 'sys_app_mgr_list', '2', NULL, NULL, NULL, 'sysApp:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 10:04:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255711', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用增加', 'sys_app_mgr_add', '2', NULL, NULL, NULL, 'sysApp:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 16:44:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255721', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用编辑', 'sys_app_mgr_edit', '2', NULL, NULL, NULL, 'sysApp:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 10:04:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255731', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用删除', 'sys_app_mgr_delete', '2', NULL, NULL, NULL, 'sysApp:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:14:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255741', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '应用详情', 'sys_app_mgr_detail', '2', NULL, NULL, NULL, 'sysApp:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:14:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255751', '1264622039642255681', '[0],[1264622039642255671],[1264622039642255681],', '设为默认应用', 'sys_app_mgr_set_as_default', '2', NULL, NULL, NULL, 'sysApp:setAsDefault', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 17:14:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255761', '1264622039642255671', '[0],[1264622039642255671],', '菜单管理', 'sys_menu_mgr', '1', NULL, '/menu', 'system/menu/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '7', NULL, '0', TO_DATE('2020-03-27 18:44:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255771', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单列表', 'sys_menu_mgr_list', '2', NULL, NULL, NULL, 'sysMenu:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:45:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255781', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单增加', 'sys_menu_mgr_add', '2', NULL, NULL, NULL, 'sysMenu:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:45:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255791', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单编辑', 'sys_menu_mgr_edit', '2', NULL, NULL, NULL, 'sysMenu:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:52:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255801', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单删除', 'sys_menu_mgr_delete', '2', NULL, NULL, NULL, 'sysMenu:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:46:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255811', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单详情', 'sys_menu_mgr_detail', '2', NULL, NULL, NULL, 'sysMenu:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:46:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255821', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单授权树', 'sys_menu_mgr_grant_tree', '2', NULL, NULL, NULL, 'sysMenu:treeForGrant', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-03 09:50:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255831', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单树', 'sys_menu_mgr_tree', '2', NULL, NULL, NULL, 'sysMenu:tree', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-27 18:47:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255841', '1264622039642255761', '[0],[1264622039642255671],[1264622039642255761],', '菜单切换', 'sys_menu_mgr_change', '2', NULL, NULL, NULL, 'sysMenu:change', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-03 09:51:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255851', '1264622039642255671', '[0],[1264622039642255671],', '角色管理', 'sys_role_mgr', '1', NULL, '/role', 'system/role/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '8', NULL, '0', TO_DATE('2020-03-28 16:01:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255861', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色查询', 'sys_role_mgr_page', '2', NULL, NULL, NULL, 'sysRole:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-28 16:02:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255871', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色增加', 'sys_role_mgr_add', '2', NULL, NULL, NULL, 'sysRole:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-28 16:02:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255881', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色编辑', 'sys_role_mgr_edit', '2', NULL, NULL, NULL, 'sysRole:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:57:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255891', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色删除', 'sys_role_mgr_delete', '2', NULL, NULL, NULL, 'sysRole:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-28 16:02:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255901', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色详情', 'sys_role_mgr_detail', '2', NULL, NULL, NULL, 'sysRole:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-03-28 16:03:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255911', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色下拉', 'sys_role_mgr_drop_down', '2', NULL, NULL, NULL, 'sysRole:dropDown', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 15:45:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255921', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色授权菜单', 'sys_role_mgr_grant_menu', '2', NULL, NULL, NULL, 'sysRole:grantMenu', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 09:16:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255931', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色拥有菜单', 'sys_role_mgr_own_menu', '2', NULL, NULL, NULL, 'sysRole:ownMenu', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 14:21:54', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255941', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色授权数据', 'sys_role_mgr_grant_data', '2', NULL, NULL, NULL, 'sysRole:grantData', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 09:16:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255951', '1264622039642255851', '[0],[1264622039642255671],[1264622039642255851],', '角色拥有数据', 'sys_role_mgr_own_data', '2', NULL, NULL, NULL, 'sysRole:ownData', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 14:23:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255961', '0', '[0],', '开发管理', 'system_tools', '0', 'euro', '/tools', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '4', NULL, '0', TO_DATE('2020-05-25 02:10:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255971', '1264622039642255961', '[0],[1264622039642255961],', '系统配置', 'system_tools_config', '1', NULL, '/config', 'system/config/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '9', NULL, '0', TO_DATE('2020-05-25 02:12:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255981', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置查询', 'system_tools_config_page', '2', NULL, NULL, NULL, 'sysConfig:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:02:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642255991', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置列表', 'system_tools_config_list', '2', NULL, NULL, NULL, 'sysConfig:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:02:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256001', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置增加', 'system_tools_config_add', '2', NULL, NULL, NULL, 'sysConfig:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:03:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256011', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置编辑', 'system_tools_config_edit', '2', NULL, NULL, NULL, 'sysConfig:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:03:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256021', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置删除', 'system_tools_config_delete', '2', NULL, NULL, NULL, 'sysConfig:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:03:44', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256031', '1264622039642255971', '[0],[1264622039642255961],[1264622039642255971],', '配置详情', 'system_tools_config_detail', '2', NULL, NULL, NULL, 'sysConfig:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 17:02:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256041', '1264622039642255961', '[0],[1264622039642255961],', '邮件发送', 'sys_email_mgr', '1', NULL, '/email', 'system/email/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '10', NULL, '0', TO_DATE('2020-07-02 11:44:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256051', '1264622039642256041', '[0],[1264622039642255961],[1264622039642256041],', '发送文本邮件', 'sys_email_mgr_send_email', '2', NULL, NULL, NULL, 'email:sendEmail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:45:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256061', '1264622039642256041', '[0],[1264622039642255961],[1264622039642256041],', '发送html邮件', 'sys_email_mgr_send_email_html', '2', NULL, NULL, NULL, 'email:sendEmailHtml', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 11:45:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256071', '1264622039642255961', '[0],[1264622039642255961],', '短信管理', 'sys_sms_mgr', '1', NULL, '/sms', 'system/sms/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '11', NULL, '0', TO_DATE('2020-07-02 12:00:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256081', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '短信发送查询', 'sys_sms_mgr_page', '2', NULL, NULL, NULL, 'sms:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:16:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256091', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '发送验证码短信', 'sys_sms_mgr_send_login_message', '2', NULL, NULL, NULL, 'sms:sendLoginMessage', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:02:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256101', '1264622039642256071', '[0],[1264622039642255961],[1264622039642256071],', '验证短信验证码', 'sys_sms_mgr_validate_message', '2', NULL, NULL, NULL, 'sms:validateMessage', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 12:02:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256111', '1264622039642255961', '[0],[1264622039642255961],', '字典管理', 'sys_dict_mgr', '1', NULL, '/dict', 'system/dict/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '12', NULL, '0', TO_DATE('2020-04-01 11:17:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256121', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型查询', 'sys_dict_mgr_dict_type_page', '2', NULL, NULL, NULL, 'sysDictType:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256131', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型列表', 'sys_dict_mgr_dict_type_list', '2', NULL, NULL, NULL, 'sysDictType:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-29 15:12:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256141', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型增加', 'sys_dict_mgr_dict_type_add', '2', NULL, NULL, NULL, 'sysDictType:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:19:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256151', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型删除', 'sys_dict_mgr_dict_type_delete', '2', NULL, NULL, NULL, 'sysDictType:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:21:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256161', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型编辑', 'sys_dict_mgr_dict_type_edit', '2', NULL, NULL, NULL, 'sysDictType:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:21:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256171', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型详情', 'sys_dict_mgr_dict_type_detail', '2', NULL, NULL, NULL, 'sysDictType:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:22:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256181', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型下拉', 'sys_dict_mgr_dict_type_drop_down', '2', NULL, NULL, NULL, 'sysDictType:dropDown', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:22:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256191', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典类型修改状态', 'sys_dict_mgr_dict_type_change_status', '2', NULL, NULL, NULL, 'sysDictType:changeStatus', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-23 11:15:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256201', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值查询', 'sys_dict_mgr_dict_page', '2', NULL, NULL, NULL, 'sysDictData:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:23:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256211', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值列表', 'sys_dict_mgr_dict_list', '2', NULL, NULL, NULL, 'sysDictData:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:24:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256221', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值增加', 'sys_dict_mgr_dict_add', '2', NULL, NULL, NULL, 'sysDictData:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:22:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256231', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值删除', 'sys_dict_mgr_dict_delete', '2', NULL, NULL, NULL, 'sysDictData:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:23:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256241', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值编辑', 'sys_dict_mgr_dict_edit', '2', NULL, NULL, NULL, 'sysDictData:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:24:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256251', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值详情', 'sys_dict_mgr_dict_detail', '2', NULL, NULL, NULL, 'sysDictData:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-04-01 11:24:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256261', '1264622039642256111', '[0],[1264622039642255961],[1264622039642256111],', '字典值修改状态', 'sys_dict_mgr_dict_change_status', '2', NULL, NULL, NULL, 'sysDictData:changeStatus', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-23 11:17:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256271', '1264622039642255961', '[0],[1264622039642255961],', '接口文档', 'sys_swagger_mgr', '1', NULL, '/swagger', 'Iframe', NULL, 'system', '2', 'Y', 'http://localhost:82/doc.html', NULL, '1', '13', NULL, '0', TO_DATE('2020-07-02 12:16:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256281', '0', '[0],', '日志管理', 'sys_log_mgr', '0', 'read', '/log', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '5', NULL, '0', TO_DATE('2020-04-01 09:25:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256291', '1264622039642256281', '[0],[1264622039642256281],', '访问日志', 'sys_log_mgr_vis_log', '1', NULL, '/vislog', 'system/log/vislog/index', NULL, 'system', '0', 'Y', NULL, NULL, '1', '14', NULL, '0', TO_DATE('2020-04-01 09:26:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256301', '1264622039642256291', '[0],[1264622039642256281],[1264622039642256291],', '访问日志查询', 'sys_log_mgr_vis_log_page', '2', NULL, NULL, NULL, 'sysVisLog:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 09:55:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256311', '1264622039642256291', '[0],[1264622039642256281],[1264622039642256291],', '访问日志清空', 'sys_log_mgr_vis_log_delete', '2', NULL, NULL, NULL, 'sysVisLog:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 09:56:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256321', '1264622039642256281', '[0],[1264622039642256281],', '操作日志', 'sys_log_mgr_op_log', '1', NULL, '/oplog', 'system/log/oplog/index', NULL, 'system', '0', 'Y', NULL, NULL, '1', '15', NULL, '0', TO_DATE('2020-04-01 09:26:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256331', '1264622039642256321', '[0],[1264622039642256281],[1264622039642256321],', '操作日志查询', 'sys_log_mgr_op_log_page', '2', NULL, NULL, NULL, 'sysOpLog:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 09:57:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256341', '1264622039642256321', '[0],[1264622039642256281],[1264622039642256321],', '操作日志清空', 'sys_log_mgr_op_log_delete', '2', NULL, NULL, NULL, 'sysOpLog:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 09:58:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256351', '0', '[0],', '系统监控', 'sys_monitor_mgr', '0', 'deployment-unit', '/monitor', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '6', NULL, '0', TO_DATE('2020-06-05 16:00:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256361', '1264622039642256351', '[0],[1264622039642256351],', '服务监控', 'sys_monitor_mgr_machine_monitor', '1', NULL, '/machine', 'system/machine/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '16', NULL, '0', TO_DATE('2020-06-05 16:02:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256371', '1264622039642256361', '[0],[1264622039642256351],[1264622039642256361],', '服务监控查询', 'sys_monitor_mgr_machine_monitor_query', '2', NULL, NULL, NULL, 'sysMachine:query', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-05 16:05:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256381', '1264622039642256351', '[0],[1264622039642256351],', '在线用户', 'sys_monitor_mgr_online_user', '1', NULL, '/onlineUser', 'system/onlineUser/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '17', NULL, '0', TO_DATE('2020-06-05 16:01:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256391', '1264622039642256381', '[0],[1264622039642256351],[1264622039642256381],', '在线用户列表', 'sys_monitor_mgr_online_user_list', '2', NULL, NULL, NULL, 'sysOnlineUser:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-05 16:03:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256401', '1264622039642256381', '[0],[1264622039642256351],[1264622039642256381],', '在线用户强退', 'sys_monitor_mgr_online_user_force_exist', '2', NULL, NULL, NULL, 'sysOnlineUser:forceExist', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-05 16:04:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256411', '1264622039642256351', '[0],[1264622039642256351],', '数据监控', 'sys_monitor_mgr_druid', '1', NULL, '/druid', 'Iframe', NULL, 'system', '2', 'Y', 'http://localhost:82/druid/login.html', NULL, '1', '18', NULL, '0', TO_DATE('2020-06-28 16:15:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-13 09:39:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642256421', '0', '[0],', '通知公告', 'sys_notice', '0', 'sound', '/notice', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '7', NULL, '0', TO_DATE('2020-06-29 15:41:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256431', '1264622039642256421', '[0],[1264622039642256421],', '公告管理', 'sys_notice_mgr', '1', NULL, '/notice', 'system/notice/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '19', NULL, '0', TO_DATE('2020-06-29 15:44:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256441', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告查询', 'sys_notice_mgr_page', '2', NULL, NULL, NULL, 'sysNotice:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:45:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256451', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告增加', 'sys_notice_mgr_add', '2', NULL, NULL, NULL, 'sysNotice:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:45:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256461', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告编辑', 'sys_notice_mgr_edit', '2', NULL, NULL, NULL, 'sysNotice:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:46:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256471', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告删除', 'sys_notice_mgr_delete', '2', NULL, NULL, NULL, 'sysNotice:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:46:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256481', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告查看', 'sys_notice_mgr_detail', '2', NULL, NULL, NULL, 'sysNotice:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:46:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256491', '1264622039642256431', '[0],[1264622039642256421],[1264622039642256431],', '公告修改状态', 'sys_notice_mgr_changeStatus', '2', NULL, NULL, NULL, 'sysNotice:changeStatus', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 15:46:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256501', '1264622039642256421', '[0],[1264622039642256421],', '已收公告', 'sys_notice_mgr_received', '1', NULL, '/noticeReceived', 'system/noticeReceived/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '20', NULL, '0', TO_DATE('2020-06-29 16:32:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256511', '1264622039642256501', '[0],[1264622039642256421],[1264622039642256501],', '已收公告查询', 'sys_notice_mgr_received_page', '2', NULL, NULL, NULL, 'sysNotice:received', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-29 16:33:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256521', '0', '[0],', '文件管理', 'sys_file_mgr', '0', 'file', '/file', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '8', NULL, '0', TO_DATE('2020-06-24 17:31:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256531', '1264622039642256521', '[0],[1264622039642256521],', '系统文件', 'sys_file_mgr_sys_file', '1', NULL, '/file', 'system/file/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '21', NULL, '0', TO_DATE('2020-06-24 17:32:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256541', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件查询', 'sys_file_mgr_sys_file_page', '2', NULL, NULL, NULL, 'sysFileInfo:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:35:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256551', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件列表', 'sys_file_mgr_sys_file_list', '2', NULL, NULL, NULL, 'sysFileInfo:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:35:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256561', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件删除', 'sys_file_mgr_sys_file_delete', '2', NULL, NULL, NULL, 'sysFileInfo:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:36:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256571', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件详情', 'sys_file_mgr_sys_file_detail', '2', NULL, NULL, NULL, 'sysFileInfo:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:36:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256581', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件上传', 'sys_file_mgr_sys_file_upload', '2', NULL, NULL, NULL, 'sysFileInfo:upload', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:34:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256591', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '文件下载', 'sys_file_mgr_sys_file_download', '2', NULL, NULL, NULL, 'sysFileInfo:download', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:34:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256601', '1264622039642256531', '[0],[1264622039642256521],[1264622039642256531],', '图片预览', 'sys_file_mgr_sys_file_preview', '2', NULL, NULL, NULL, 'sysFileInfo:preview', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-06-24 17:35:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256611', '0', '[0],', '定时任务', 'sys_timers', '0', 'dashboard', '/timers', 'PageView', NULL, 'system', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:17:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256621', '1264622039642256611', '[0],[1264622039642256611],', '任务管理', 'sys_timers_mgr', '1', NULL, '/timers', 'system/timers/index', NULL, 'system', '1', 'Y', NULL, NULL, '1', '22', NULL, '0', TO_DATE('2020-07-01 17:18:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256631', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务查询', 'sys_timers_mgr_page', '2', NULL, NULL, NULL, 'sysTimers:page', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:19:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256641', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务列表', 'sys_timers_mgr_list', '2', NULL, NULL, NULL, 'sysTimers:list', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:19:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256651', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务详情', 'sys_timers_mgr_detail', '2', NULL, NULL, NULL, 'sysTimers:detail', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:20:10', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256661', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务增加', 'sys_timers_mgr_add', '2', NULL, NULL, NULL, 'sysTimers:add', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:20:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256671', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务删除', 'sys_timers_mgr_delete', '2', NULL, NULL, NULL, 'sysTimers:delete', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:20:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256681', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务编辑', 'sys_timers_mgr_edit', '2', NULL, NULL, NULL, 'sysTimers:edit', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:20:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256691', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务可执行列表', 'sys_timers_mgr_get_action_classes', '2', NULL, NULL, NULL, 'sysTimers:getActionClasses', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:22:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256701', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务启动', 'sys_timers_mgr_start', '2', NULL, NULL, NULL, 'sysTimers:start', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:22:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256711', '1264622039642256621', '[0],[1264622039642256611],[1264622039642256621],', '定时任务关闭', 'sys_timers_mgr_stop', '2', NULL, NULL, NULL, 'sysTimers:stop', 'system', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:22:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256721', '0', '[0],', '业务流程', 'sys_flw_mgr', '0', 'cluster', '/flw', 'PageView', NULL, 'office', '1', 'Y', NULL, NULL, '0', '9', NULL, '0', TO_DATE('2020-05-27 15:04:59', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256731', '1264622039642256721', '[0],[1264622039642256721],', '模型设计', 'sys_flw_model_designer', '1', NULL, '/designer', 'Iframe', NULL, 'office', '2', 'Y', 'http://localhost:82/designer/index.html?token=', NULL, '0', '23', NULL, '2', TO_DATE('2020-05-27 15:08:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256732', '1264622039642256721', '[0],[1264622039642256721],', '模型管理', 'sys_flw_model_mgr', '1', NULL, '/model', 'flowable/model/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '24', NULL, '0', TO_DATE('2020-05-27 15:21:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-17 21:32:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642256733', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型列表', 'sys_flw_model_mgr_model_list', '2', NULL, NULL, NULL, 'flowableModel:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256734', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型增加', 'sys_flw_model_mgr_model_add', '2', NULL, NULL, NULL, 'flowableModel:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256735', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型删除', 'sys_flw_model_mgr_model_delete', '2', NULL, NULL, NULL, 'flowableModel:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256736', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型编辑', 'sys_flw_model_mgr_model_edit', '2', NULL, NULL, NULL, 'flowableModel:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256737', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型预览', 'sys_flw_model_mgr_model_preview', '2', NULL, NULL, NULL, 'flowableModel:preview', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256738', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型版本', 'sys_flw_model_mgr_model_version', '2', NULL, NULL, NULL, 'flowableModel:version', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256739', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型设为新版本', 'sys_flw_model_mgr_model_set_as_new', '2', NULL, NULL, NULL, 'flowableModel:setAsNew', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256740', '1264622039642256732', '[0],[1264622039642256721],[1264622039642256732],', '模型导入', 'sys_flw_model_mgr_model_import_model', '2', NULL, NULL, NULL, 'flowableModel:importModel', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256741', '1264622039642256721', '[0],[1264622039642256721],', '定义管理', 'sys_flw_definition_mgr', '1', NULL, '/defenition', 'flowable/defenition/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '24', NULL, '0', TO_DATE('2020-05-27 15:21:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256751', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义查询', 'sys_flw_definition_mgr_page', '2', NULL, NULL, NULL, 'flowableDefinition:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:22:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256761', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义部署', 'sys_flw_definition_mgr_deploy', '2', NULL, NULL, NULL, 'flowableDefinition:deploy', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:22:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256771', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义删除', 'sys_flw_definition_mgr_delete', '2', NULL, NULL, NULL, 'flowableDefinition:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:23:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256781', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义导出', 'sys_flw_definition_mgr_export', '2', NULL, NULL, NULL, 'flowableDefinition:export', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:23:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256791', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义映射', 'sys_flw_definition_mgr_mapping', '2', NULL, NULL, NULL, 'flowableDefinition:mapping', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:23:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256801', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义挂起', 'sys_flw_definition_mgr_suspend', '2', NULL, NULL, NULL, 'flowableDefinition:suspend', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:23:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256811', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义激活', 'sys_flw_definition_mgr_active', '2', NULL, NULL, NULL, 'flowableDefinition:active', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:24:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256821', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '定义追踪', 'sys_flw_definition_mgr_trace', '2', NULL, NULL, NULL, 'flowableDefinition:trace', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:24:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256831', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '任务节点', 'sys_flw_definition_mgr_userTasks', '2', NULL, NULL, NULL, 'flowableDefinition:userTasks', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:25:04', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256841', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项编辑', 'sys_flw_definition_mgr_option_edit', '2', NULL, NULL, NULL, 'flowableOption:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:26:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256851', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项查看', 'sys_flw_definition_mgr_option_detail', '2', NULL, NULL, NULL, 'flowableOption:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:26:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256861', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '选项列表', 'sys_flw_definition_mgr_option_list', '2', NULL, NULL, NULL, 'flowableOption:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:27:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256871', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮增加', 'sys_flw_definition_mgr_button_add', '2', NULL, NULL, NULL, 'flowableButton:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:05:54', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256881', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮删除', 'sys_flw_definition_mgr_button_delete', '2', NULL, NULL, NULL, 'flowableButton:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256891', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮编辑', 'sys_flw_definition_mgr_button_edit', '2', NULL, NULL, NULL, 'flowableButton:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256901', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮查看', 'sys_flw_definition_mgr_button_detail', '2', NULL, NULL, NULL, 'flowableButton:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256911', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮列表', 'sys_flw_definition_mgr_button_list', '2', NULL, NULL, NULL, 'flowableButton:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256912', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '按钮追踪', 'sys_flw_definition_mgr_button_trace', '2', NULL, NULL, NULL, 'flowableButton:trace', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:06:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256921', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件增加', 'sys_flw_definition_mgr_event_add', '2', NULL, NULL, NULL, 'flowableEvent:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256931', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件删除', 'sys_flw_definition_mgr_event_delete', '2', NULL, NULL, NULL, 'flowableEvent:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256941', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件编辑', 'sys_flw_definition_mgr_event_edit', '2', NULL, NULL, NULL, 'flowableEvent:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:07:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256951', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件查看', 'sys_flw_definition_mgr_event_detail', '2', NULL, NULL, NULL, 'flowableEvent:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:14', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256961', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '事件列表', 'sys_flw_definition_mgr_event_list', '2', NULL, NULL, NULL, 'flowableEvent:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256971', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '表单列表', 'sys_flw_definition_mgr_form_list', '2', NULL, NULL, NULL, 'flowableForm:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256981', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单增加', 'sys_flw_definition_mgr_form_add', '2', NULL, NULL, NULL, 'flowableForm:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642256991', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单删除', 'sys_flw_definition_mgr_form_delete', '2', NULL, NULL, NULL, 'flowableForm:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257001', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单编辑', 'sys_flw_definition_mgr_form_edit', '2', NULL, NULL, NULL, 'flowableForm:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257011', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程表单查看', 'sys_flw_definition_mgr_form_detail', '2', NULL, NULL, NULL, 'flowableForm:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257021', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程启动表单', 'sys_flw_definition_mgr_form_start_form_data', '2', NULL, NULL, NULL, 'flowableForm:startFormData', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257022', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程全局表单', 'sys_flw_definition_mgr_form_global_form_data', '2', NULL, NULL, NULL, 'flowableForm:globalFormData', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257031', '1264622039642256741', '[0],[1264622039642256721],[1264622039642256741],', '流程任务表单', 'sys_flw_definition_mgr_form_task_form_data', '2', NULL, NULL, NULL, 'flowableForm:taskFormData', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257041', '1264622039642256721', '[0],[1264622039642256721],', '分类管理', 'sys_flw_category_mgr', '1', NULL, '/category', 'flowable/category/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '25', NULL, '0', TO_DATE('2020-05-27 15:10:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257051', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类查询', 'sys_flw_category_mgr_page', '2', NULL, NULL, NULL, 'flowableCategory:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 12:24:58', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257061', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类列表', 'sys_flw_category_mgr_list', '2', NULL, NULL, NULL, 'flowableCategory:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:13:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257071', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类增加', 'sys_flw_category_mgr_add', '2', NULL, NULL, NULL, 'flowableCategory:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:14:18', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257081', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类删除', 'sys_flw_category_mgr_delete', '2', NULL, NULL, NULL, 'flowableCategory:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:16:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257091', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类编辑', 'sys_flw_category_mgr_edit', '2', NULL, NULL, NULL, 'flowableCategory:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:17:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257101', '1264622039642257041', '[0],[1264622039642256721],[1264622039642257041],', '分类详情', 'sys_flw_category_mgr_detail', '2', NULL, NULL, NULL, 'flowableCategory:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 15:17:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257111', '1264622039642256721', '[0],[1264622039642256721],', '表单管理', 'sys_flw_form_resource_mgr', '1', NULL, '/form', 'flowable/form/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '26', NULL, '0', TO_DATE('2020-05-27 16:43:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257121', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单查询', 'sys_flw_form_resource_mgr_form_page', '2', NULL, NULL, NULL, 'flowableFormResource:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257131', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单增加', 'sys_flw_form_resource_mgr_form_add', '2', NULL, NULL, NULL, 'flowableFormResource:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257141', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单删除', 'sys_flw_form_resource_mgr_form_delete', '2', NULL, NULL, NULL, 'flowableFormResource:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257151', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单编辑', 'sys_flw_form_resource_mgr_form_edit', '2', NULL, NULL, NULL, 'flowableFormResource:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257161', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单查看', 'sys_flw_form_resource_mgr_form_detail', '2', NULL, NULL, NULL, 'flowableFormResource:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257162', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单设计', 'sys_flw_form_resource_mgr_form_design', '2', NULL, NULL, NULL, 'flowableFormResource:design', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257163', '1264622039642257111', '[0],[1264622039642256721],[1264622039642257111],', '表单列表', 'sys_flw_form_resource_mgr_form_list', '2', NULL, NULL, NULL, 'flowableFormResource:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:08:27', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257171', '1264622039642256721', '[0],[1264622039642256721],', '脚本管理', 'sys_flw_script_mgr', '1', NULL, '/script', 'flowable/script/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '27', NULL, '0', TO_DATE('2020-05-27 16:43:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257181', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本查询', 'sys_flw_script_mgr_page', '2', NULL, NULL, NULL, 'flowableScript:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:45:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257191', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本列表', 'sys_flw_script_mgr_list', '2', NULL, NULL, NULL, 'flowableScript:list', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:45:25', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257201', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本增加', 'sys_flw_script_mgr_add', '2', NULL, NULL, NULL, 'flowableScript:add', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:45:43', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257211', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本删除', 'sys_flw_script_mgr_delete', '2', NULL, NULL, NULL, 'flowableScript:delete', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:45:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257221', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本编辑', 'sys_flw_script_mgr_edit', '2', NULL, NULL, NULL, 'flowableScript:edit', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:46:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257231', '1264622039642257171', '[0],[1264622039642256721],[1264622039642257171],', '脚本查看', 'sys_flw_script_mgr_detail', '2', NULL, NULL, NULL, 'flowableScript:detail', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:46:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257232', '1264622039642256721', '[0],[1264622039642256721],', '入口管理', 'sys_flw_shortcut_mgr', '1', NULL, '/shortcut', 'flowable/shortcut/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '28', NULL, '0', TO_DATE('2020-05-27 16:46:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257233', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口查询', 'sys_flw_shortcut_mgr_page', '2', NULL, NULL, NULL, 'flowableShortcut:page', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:25:05', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257234', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口增加', 'sys_flw_shortcut_mgr_add', '2', NULL, NULL, NULL, 'flowableShortcut:add', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:25:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257235', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口删除', 'sys_flw_shortcut_mgr_delete', '2', NULL, NULL, NULL, 'flowableShortcut:delete', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:25:45', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257236', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口编辑', 'sys_flw_shortcut_mgr_edit', '2', NULL, NULL, NULL, 'flowableShortcut:edit', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:25:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257237', '1264622039642257232', '[0],[1264622039642256721],[1264622039642257232]', '入口详情', 'sys_flw_shortcut_mgr_detail', '2', NULL, NULL, NULL, 'flowableShortcut:detail', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:26:09', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257241', '1264622039642256721', '[0],[1264622039642256721],', '实例管理', 'sys_flw_instance_mgr', '1', NULL, '/instance', 'flowable/instance/index', NULL, 'office', '1', 'Y', NULL, NULL, '0', '29', NULL, '0', TO_DATE('2020-05-27 16:10:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257251', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例查询', 'sys_flw_instance_mgr_page', '2', NULL, NULL, NULL, 'flowableInstance:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:10:55', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257261', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例历史用户任务节点', 'sys_flw_instance_mgr_his_user_tasks', '2', NULL, NULL, NULL, 'flowableInstance:hisUserTasks', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:11:12', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257271', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例追踪', 'sys_flw_instance_mgr_trace', '2', NULL, NULL, NULL, 'flowableInstance:trace', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:11:31', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257281', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例挂起', 'sys_flw_instance_mgr_suspend', '2', NULL, NULL, NULL, 'flowableInstance:suspend', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:11:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257291', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例激活', 'sys_flw_instance_mgr_active', '2', NULL, NULL, NULL, 'flowableInstance:active', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:12:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257301', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例历史审批记录', 'sys_flw_instance_mgr_comment_history', '2', NULL, NULL, NULL, 'flowableInstance:commentHistory', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:12:13', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257311', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例任务查询', 'sys_flw_instance_mgr_task_page', '2', NULL, NULL, NULL, 'flowableInstanceTask:page', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:13:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257312', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '实例表单数据', 'sys_flw_instance_mgr_form_data', '2', NULL, NULL, NULL, 'flowableInstance:formData', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:13:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257313', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '加签用户选择器', 'sys_flw_instance_mgr_add_sign_user_selector', '2', NULL, NULL, NULL, 'flowableInstance:addSignUserSelector', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:13:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257314', '1264622039642257241', '[0],[1264622039642256721],[1264622039642257241],', '减签用户选择器', 'sys_flw_instance_mgr_delete_sign_user_selector', '2', NULL, NULL, NULL, 'flowableInstance:deleteSignUserSelector', 'office', '0', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-05-27 16:13:41', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257321', '0', '[0],', '在线办公', 'sys_flw_office', '0', 'laptop', '/handle', 'PageView', NULL, 'office', '1', 'Y', NULL, NULL, '1', '10', NULL, '0', TO_DATE('2020-05-27 16:55:15', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257331', '1264622039642257321', '[0],[1264622039642257321],', '我的任务', 'sys_flw_task_mgr', '0', NULL, '/task', 'RouteView', NULL, 'office', '1', 'Y', NULL, NULL, '1', '30', NULL, '0', TO_DATE('2020-05-27 16:16:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257341', '1264622039642257331', '[0],[1264622039642257321],[1264622039642257331],', '待办任务', 'sys_flw_task_mgr_todo_task', '1', NULL, '/todoTask', 'flowable/task/todoTask/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '1', NULL, '0', TO_DATE('2020-05-27 16:18:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257351', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务查询', 'sys_flw_task_mgr_todo_task_page', '2', NULL, NULL, NULL, 'flowableTodoTask:page', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:19:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257361', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '流程发起', 'sys_flw_task_mgr_todo_task_start', '2', NULL, NULL, NULL, 'flowableHandleTask:start', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:39:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257371', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务提交', 'sys_flw_task_mgr_todo_task_submit', '2', NULL, NULL, NULL, 'flowableHandleTask:submit', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:39:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257381', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务保存', 'sys_flw_task_mgr_todo_task_save', '2', NULL, NULL, NULL, 'flowableHandleTask:save', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:39:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257391', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务退回', 'sys_flw_task_mgr_todo_task_back', '2', NULL, NULL, NULL, 'flowableHandleTask:back', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:39:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257401', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务转办', 'sys_flw_task_mgr_todo_task_turn', '2', NULL, NULL, NULL, 'flowableHandleTask:turn', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:39:46', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257411', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务委托', 'sys_flw_task_mgr_todo_task_entrust', '2', NULL, NULL, NULL, 'flowableHandleTask:entrust', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:40:03', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257421', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务终止', 'sys_flw_task_mgr_todo_task_end', '2', NULL, NULL, NULL, 'flowableHandleTask:end', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:40:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257431', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务挂起', 'sys_flw_task_mgr_todo_task_suspend', '2', NULL, NULL, NULL, 'flowableHandleTask:suspend', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:40:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257441', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务跳转', 'sys_flw_task_mgr_todo_task_jump', '2', NULL, NULL, NULL, 'flowableHandleTask:jump', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:40:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257451', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务加签', 'sys_flw_task_mgr_todo_task_add_sign', '2', NULL, NULL, NULL, 'flowableHandleTask:addSign', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:41:03', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257461', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务减签', 'sys_flw_task_mgr_todo_task_delete_sign', '2', NULL, NULL, NULL, 'flowableHandleTask:deleteSign', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:41:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257462', '1264622039642257341', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务数据', 'sys_flw_task_mgr_todo_task_task_data', '2', NULL, NULL, NULL, 'flowableHandleTask:taskData', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:41:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257471', '1264622039642257331', '[0],[1264622039642257321],[1264622039642257331],', '已办任务', 'sys_flw_task_mgr_done_task', '1', NULL, '/doneTask', 'flowable/task/doneTask/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '2', NULL, '0', TO_DATE('2020-05-27 16:19:29', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257481', '1264622039642257471', '[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', '已办任务查询', 'sys_flw_task_mgr_done_task_page', '2', NULL, NULL, NULL, 'flowableDoneTask:page', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257491', '1264622039642257321', '[0],[1264622039642257321],', '我的申请', 'sys_flw_apply_mgr', '0', NULL, '/myapply', 'RouteView', NULL, 'office', '1', 'Y', NULL, NULL, '1', '31', NULL, '0', TO_DATE('2020-07-02 14:22:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257501', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '起草申请', 'sys_flw_apply_mgr_draft_apply_mgr', '1', NULL, '/drafapply', 'flowable/draftapply/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 14:24:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257511', '1264622039642257501', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', '起草入口列表', 'sys_flw_apply_mgr_draft_apply_mgr_list', '2', NULL, NULL, NULL, 'flowableShortcut:list', 'office', '1', 'Y', NULL, NULL, '0', '100', NULL, '0', TO_DATE('2020-07-02 14:25:19', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257521', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '起草表单填写', 'sys_flw_apply_mgr_draft_apply_mgr_apply_form', '1', NULL, '/draftapply/form', 'flowable/draftapply/form', NULL, 'office', '1', 'N', NULL, NULL, '1', '1', NULL, '2', TO_DATE('2020-08-21 22:33:38', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257522', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '申请草稿', 'sys_flw_mgr_draft_mgr', '1', NULL, '/draft', 'flowable/draft/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-09-09 15:32:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-09 23:47:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257523', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿查询', 'sys_flw_mgr_draft_mgr_page', '2', NULL, NULL, NULL, 'flowableDraft:page', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257524', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿添加或编辑', 'sys_flw_mgr_draft_mgr_add_or_update', '2', NULL, NULL, NULL, 'flowableDraft:addOrUpdate', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257525', '1264622039642257522', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿删除', 'sys_flw_mgr_draft_mgr_delete', '2', NULL, NULL, NULL, 'flowableDraft:delete', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257531', '1264622039642257491', '[0],[1264622039642257321],[1264622039642257491],', '已发申请', 'sys_flw_apply_mgr_applyed_mgr', '1', NULL, '/applyed', 'flowable/applyed/index', NULL, 'office', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-02 14:24:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257532', '1264622039642257531', '[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', '已发申请查询', 'sys_flw_apply_mgr_applyed_mgr_page', '2', NULL, NULL, NULL, 'flowableInstance:my', 'office', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257641', '0', '[0],', '多数据源', 'dbs_databaseInfo', '0', 'sliders', '/database', 'PageView', NULL, 'experience', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-08-26 00:53:28', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257642', '1264622039642257641', '[0],[1264622039642257641],', '数据源管理', 'dbs_databaseInfo_mgr', '1', NULL, '/databaseInfo', 'dbs/databaseInfo/index', NULL, 'experience', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-07-01 17:18:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257643', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源查询', 'dbs_databaseInfo_mgr_page', '2', NULL, NULL, NULL, 'databaseInfo:page', 'experience', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257644', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源增加', 'dbs_databaseInfo_mgr_add', '2', NULL, NULL, NULL, 'databaseInfo:add', 'experience', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257645', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源编辑', 'dbs_databaseInfo_mgr_edit', '2', NULL, NULL, NULL, 'databaseInfo:edit', 'experience', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257646', '1264622039642257642', '[0],[1264622039642257641],[1264622039642257642],', '数据源删除', 'dbs_databaseInfo_mgr_delete', '2', NULL, NULL, NULL, 'databaseInfo:delete', 'experience', '0', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-05-27 16:20:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 22:00:32', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_MENU" VALUES ('1264622039642257671', '0', '[0],', '支付管理', 'pay_manage', '0', 'strikethrough', '/paymanage', 'PageView', NULL, 'experience', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-09-03 00:35:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257681', '1264622039642257671', '[0],[1264622039642257671],', '支付体验', 'pay_manage_index', '1', '', '/pay/index', 'pay/index', NULL, 'experience', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-08-26 14:55:08', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257691', '1264622039642257671', '[0],[1264622039642257671],', '支付订单', 'pay_manage_order', '1', NULL, '/pay/alipay/index', 'pay/alipay/index', NULL, 'experience', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-09-03 00:39:56', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1264622039642257701', '0', '[0],', '设计表单', 'form_design', '1', 'pic-left', '/formdesign', 'formDesign', NULL, 'experience', '1', 'Y', NULL, NULL, '1', '100', NULL, '0', TO_DATE('2020-08-15 15:48:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1342451789402411009', '0', '[0],', '代码生成', 'code_gen', '1', 'thunderbolt', '/codeGenerate/index', 'gen/codeGenerate/index', '', 'system_tool', '1', 'Y', NULL, '', '1', '100', '代码生成', '0', TO_DATE('2020-12-25 20:47:03', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_MENU" VALUES ('1359406155611545602', '0', '[0],', '测试菜单', 'tests_gen_codes', '1', 'play-circle', '/codegentest', 'main/codegentest/index', '', 'system_tool', '1', 'Y', NULL, '', '1', '100', NULL, '0', TO_DATE('2021-02-10 15:37:39', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:04:22', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
CREATE TABLE "SYS_NOTICE" (
  "ID" NUMBER(20) NOT NULL ,
  "TITLE" NVARCHAR2(1000) ,
  "CONTENT" NCLOB ,
  "TYPE" NUMBER(4) NOT NULL ,
  "PUBLIC_USER_ID" NUMBER(20) NOT NULL ,
  "PUBLIC_USER_NAME" NVARCHAR2(100) NOT NULL ,
  "PUBLIC_ORG_ID" NUMBER(20) ,
  "PUBLIC_ORG_NAME" NVARCHAR2(50) ,
  "PUBLIC_TIME" DATE ,
  "CANCEL_TIME" DATE ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_NOTICE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_NOTICE"."TITLE" IS '标题';
COMMENT ON COLUMN "SYS_NOTICE"."CONTENT" IS '内容';
COMMENT ON COLUMN "SYS_NOTICE"."TYPE" IS '类型（字典 1通知 2公告）';
COMMENT ON COLUMN "SYS_NOTICE"."PUBLIC_USER_ID" IS '发布人id';
COMMENT ON COLUMN "SYS_NOTICE"."PUBLIC_USER_NAME" IS '发布人姓名';
COMMENT ON COLUMN "SYS_NOTICE"."PUBLIC_ORG_ID" IS '发布机构id';
COMMENT ON COLUMN "SYS_NOTICE"."PUBLIC_ORG_NAME" IS '发布机构名称';
COMMENT ON COLUMN "SYS_NOTICE"."PUBLIC_TIME" IS '发布时间';
COMMENT ON COLUMN "SYS_NOTICE"."CANCEL_TIME" IS '撤回时间';
COMMENT ON COLUMN "SYS_NOTICE"."STATUS" IS '状态（字典 0草稿 1发布 2撤回 3删除）';
COMMENT ON COLUMN "SYS_NOTICE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_NOTICE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_NOTICE"."UPDATE_TIME" IS '修改时间';
COMMENT ON COLUMN "SYS_NOTICE"."UPDATE_USER" IS '修改人';
COMMENT ON TABLE "SYS_NOTICE" IS '通知表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "SYS_NOTICE" VALUES ('1304960081456066561', 'qqqq', 'qqqqqq<p></p>', '1', '1265476890672672808', '超级管理员', NULL, NULL, TO_DATE('2020-09-13 09:48:23', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-13 09:52:26', 'SYYYY-MM-DD HH24:MI:SS'), '3', TO_DATE('2020-09-13 09:48:23', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-13 09:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345');
INSERT INTO "SYS_NOTICE" VALUES ('1304960124862918657', '123123123', '<p>23123123123123</p>', '2', '1265476890672672808', '超级管理员', NULL, NULL, TO_DATE('2020-09-13 09:48:33', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-09-13 09:52:28', 'SYYYY-MM-DD HH24:MI:SS'), '3', TO_DATE('2020-09-13 09:48:33', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-13 09:52:40', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345');
INSERT INTO "SYS_NOTICE" VALUES ('1304961721068220417', '北京的秋天', '<p><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972071688&amp;di=9d692807717018e9f36dc209b8f2a290&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></p>', '1', '1280700700074041345', '老俞', '1265476890672672771', '研发部', TO_DATE('2020-09-13 09:54:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '1', TO_DATE('2020-09-13 09:54:54', 'SYYYY-MM-DD HH24:MI:SS'), '1280700700074041345', NULL, NULL);
INSERT INTO "SYS_NOTICE" VALUES ('1304964964817104898', '北京的秋天', '<div style="text-align: center;"><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972936240&amp;di=0c65610a70a7f8de26e84f51da77604f&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></div><p></p>', '1', '1265476890672672808', '超级管理员', NULL, NULL, TO_DATE('2020-09-13 10:07:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '1', TO_DATE('2020-09-13 10:07:47', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_notice_user
-- ----------------------------
CREATE TABLE "SYS_NOTICE_USER" (
  "ID" NUMBER(20) NOT NULL ,
  "NOTICE_ID" NUMBER(20) NOT NULL ,
  "USER_ID" NUMBER(20) NOT NULL ,
  "STATUS" NUMBER(4) NOT NULL ,
  "READ_TIME" DATE 
)
;
COMMENT ON COLUMN "SYS_NOTICE_USER"."ID" IS '主键';
COMMENT ON COLUMN "SYS_NOTICE_USER"."NOTICE_ID" IS '通知公告id';
COMMENT ON COLUMN "SYS_NOTICE_USER"."USER_ID" IS '用户id';
COMMENT ON COLUMN "SYS_NOTICE_USER"."STATUS" IS '状态（字典 0未读 1已读）';
COMMENT ON COLUMN "SYS_NOTICE_USER"."READ_TIME" IS '阅读时间';
COMMENT ON TABLE "SYS_NOTICE_USER" IS '系统用户数据范围表';

-- ----------------------------
-- Records of sys_notice_user
-- ----------------------------
INSERT INTO "SYS_NOTICE_USER" VALUES ('1304960081539952642', '1304960081456066561', '1280700700074041345', '0', NULL);
INSERT INTO "SYS_NOTICE_USER" VALUES ('1304960124934221825', '1304960124862918657', '1280700700074041345', '1', TO_DATE('2020-09-13 09:49:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_NOTICE_USER" VALUES ('1304961721131134977', '1304961721068220417', '1280700700074041345', '1', TO_DATE('2020-09-13 09:54:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_NOTICE_USER" VALUES ('1304964964875825153', '1304964964817104898', '1280700700074041345', '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_oauth_user
-- ----------------------------
CREATE TABLE "SYS_OAUTH_USER" (
  "ID" NUMBER(20) NOT NULL ,
  "UUID" NVARCHAR2(255) NOT NULL ,
  "ACCESS_TOKEN" NVARCHAR2(255) ,
  "NICK_NAME" NVARCHAR2(255) ,
  "AVATAR" NVARCHAR2(500) ,
  "BLOG" NVARCHAR2(255) ,
  "COMPANY" NVARCHAR2(255) ,
  "LOCATION" NVARCHAR2(255) ,
  "EMAIL" NVARCHAR2(255) ,
  "GENDER" NVARCHAR2(50) ,
  "SOURCE" NVARCHAR2(255) ,
  "REMARK" NVARCHAR2(255) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_OAUTH_USER"."ID" IS '主键';
COMMENT ON COLUMN "SYS_OAUTH_USER"."UUID" IS '第三方平台的用户唯一id';
COMMENT ON COLUMN "SYS_OAUTH_USER"."ACCESS_TOKEN" IS '用户授权的token';
COMMENT ON COLUMN "SYS_OAUTH_USER"."NICK_NAME" IS '昵称';
COMMENT ON COLUMN "SYS_OAUTH_USER"."AVATAR" IS '头像';
COMMENT ON COLUMN "SYS_OAUTH_USER"."BLOG" IS '用户网址';
COMMENT ON COLUMN "SYS_OAUTH_USER"."COMPANY" IS '所在公司';
COMMENT ON COLUMN "SYS_OAUTH_USER"."LOCATION" IS '位置';
COMMENT ON COLUMN "SYS_OAUTH_USER"."EMAIL" IS '邮箱';
COMMENT ON COLUMN "SYS_OAUTH_USER"."GENDER" IS '性别';
COMMENT ON COLUMN "SYS_OAUTH_USER"."SOURCE" IS '用户来源';
COMMENT ON COLUMN "SYS_OAUTH_USER"."REMARK" IS '用户备注（各平台中的用户个人介绍）';
COMMENT ON COLUMN "SYS_OAUTH_USER"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_OAUTH_USER"."CREATE_USER" IS '创建用户';
COMMENT ON COLUMN "SYS_OAUTH_USER"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_OAUTH_USER"."UPDATE_USER" IS '更新用户';
COMMENT ON TABLE "SYS_OAUTH_USER" IS '第三方认证用户信息表';

-- ----------------------------
-- Table structure for sys_op_log
-- ----------------------------
CREATE TABLE "SYS_OP_LOG" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(50) ,
  "OP_TYPE" NUMBER(4) ,
  "SUCCESS" NCHAR(1) ,
  "MESSAGE" NCLOB ,
  "IP" NVARCHAR2(255) ,
  "LOCATION" NVARCHAR2(255) ,
  "BROWSER" NVARCHAR2(255) ,
  "OS" NVARCHAR2(255) ,
  "URL" NVARCHAR2(500) ,
  "CLASS_NAME" NVARCHAR2(500) ,
  "METHOD_NAME" NVARCHAR2(500) ,
  "REQ_METHOD" NVARCHAR2(255) ,
  "PARAM" NCLOB ,
  "RESULT" NCLOB ,
  "OP_TIME" DATE ,
  "ACCOUNT" NVARCHAR2(50) 
)
;
COMMENT ON COLUMN "SYS_OP_LOG"."ID" IS '主键';
COMMENT ON COLUMN "SYS_OP_LOG"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_OP_LOG"."OP_TYPE" IS '操作类型';
COMMENT ON COLUMN "SYS_OP_LOG"."SUCCESS" IS '是否执行成功（Y-是，N-否）';
COMMENT ON COLUMN "SYS_OP_LOG"."MESSAGE" IS '具体消息';
COMMENT ON COLUMN "SYS_OP_LOG"."IP" IS 'ip';
COMMENT ON COLUMN "SYS_OP_LOG"."LOCATION" IS '地址';
COMMENT ON COLUMN "SYS_OP_LOG"."BROWSER" IS '浏览器';
COMMENT ON COLUMN "SYS_OP_LOG"."OS" IS '操作系统';
COMMENT ON COLUMN "SYS_OP_LOG"."URL" IS '请求地址';
COMMENT ON COLUMN "SYS_OP_LOG"."CLASS_NAME" IS '类名称';
COMMENT ON COLUMN "SYS_OP_LOG"."METHOD_NAME" IS '方法名称';
COMMENT ON COLUMN "SYS_OP_LOG"."REQ_METHOD" IS '请求方式（GET POST PUT DELETE)';
COMMENT ON COLUMN "SYS_OP_LOG"."PARAM" IS '请求参数';
COMMENT ON COLUMN "SYS_OP_LOG"."RESULT" IS '返回结果';
COMMENT ON COLUMN "SYS_OP_LOG"."OP_TIME" IS '操作时间';
COMMENT ON COLUMN "SYS_OP_LOG"."ACCOUNT" IS '操作账号';
COMMENT ON TABLE "SYS_OP_LOG" IS '系统操作日志表';

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
CREATE TABLE "SYS_ORG" (
  "ID" NUMBER(20) NOT NULL ,
  "PID" NUMBER(20) NOT NULL ,
  "PIDS" NCLOB NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_ORG"."ID" IS '主键';
COMMENT ON COLUMN "SYS_ORG"."PID" IS '父id';
COMMENT ON COLUMN "SYS_ORG"."PIDS" IS '父ids';
COMMENT ON COLUMN "SYS_ORG"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_ORG"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_ORG"."SORT" IS '排序';
COMMENT ON COLUMN "SYS_ORG"."REMARK" IS '描述';
COMMENT ON COLUMN "SYS_ORG"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_ORG"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_ORG"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_ORG"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_ORG"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_ORG" IS '系统组织机构表';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO "SYS_ORG" VALUES ('1265476890651701250', '0', '[0],', '华夏集团', 'hxjt', '100', '华夏集团总公司', '0', TO_DATE('2020-03-26 16:50:53', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672769', '1265476890651701250', '[0],[1265476890651701250],', '华夏集团北京分公司', 'hxjt_bj', '100', '华夏集团北京分公司', '0', TO_DATE('2020-03-26 16:55:42', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672770', '1265476890651701250', '[0],[1265476890651701250],', '华夏集团成都分公司', 'hxjt_cd', '100', '华夏集团成都分公司', '0', TO_DATE('2020-03-26 16:56:02', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672771', '1265476890672672769', '[0],[1265476890651701250],[1265476890672672769],', '研发部', 'hxjt_bj_yfb', '100', '华夏集团北京分公司研发部', '0', TO_DATE('2020-03-26 16:56:36', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672772', '1265476890672672769', '[0],[1265476890651701250],[1265476890672672769],', '企划部', 'hxjt_bj_qhb', '100', '华夏集团北京分公司企划部', '0', TO_DATE('2020-03-26 16:57:06', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672773', '1265476890672672770', '[0],[1265476890651701250],[1265476890672672770],', '市场部', 'hxjt_cd_scb', '100', '华夏集团成都分公司市场部', '0', TO_DATE('2020-03-26 16:57:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672774', '1265476890672672770', '[0],[1265476890651701250],[1265476890672672770],', '财务部', 'hxjt_cd_cwb', '100', '华夏集团成都分公司财务部', '0', TO_DATE('2020-03-26 16:58:01', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_ORG" VALUES ('1265476890672672775', '1265476890672672773', '[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', '市场部二部', 'hxjt_cd_scb_2b', '100', '华夏集团成都分公司市场部二部', '0', TO_DATE('2020-04-06 15:36:50', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_pos
-- ----------------------------
CREATE TABLE "SYS_POS" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_POS"."ID" IS '主键';
COMMENT ON COLUMN "SYS_POS"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_POS"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_POS"."SORT" IS '排序';
COMMENT ON COLUMN "SYS_POS"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_POS"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_POS"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_POS"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_POS"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_POS"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_POS" IS '系统职位表';

-- ----------------------------
-- Records of sys_pos
-- ----------------------------
INSERT INTO "SYS_POS" VALUES ('1265476890672672787', '总经理', 'zjl', '100', '总经理职位', '0', TO_DATE('2020-03-26 19:28:54', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-06-02 21:01:04', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_POS" VALUES ('1265476890672672788', '副总经理', 'fzjl', '100', '副总经理职位', '0', TO_DATE('2020-03-26 19:29:57', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_POS" VALUES ('1265476890672672789', '部门经理', 'bmjl', '100', '部门经理职位', '0', TO_DATE('2020-03-26 19:31:49', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "SYS_POS" VALUES ('1265476890672672790', '工作人员', 'gzry', '100', '工作人员职位', '0', TO_DATE('2020-05-27 11:32:00', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-06-01 10:51:35', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
CREATE TABLE "SYS_ROLE" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "CODE" NVARCHAR2(50) NOT NULL ,
  "SORT" NUMBER(11) NOT NULL ,
  "DATA_SCOPE_TYPE" NUMBER(4) NOT NULL ,
  "REMARK" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_ROLE"."ID" IS '主键id';
COMMENT ON COLUMN "SYS_ROLE"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_ROLE"."CODE" IS '编码';
COMMENT ON COLUMN "SYS_ROLE"."SORT" IS '序号';
COMMENT ON COLUMN "SYS_ROLE"."DATA_SCOPE_TYPE" IS '数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）';
COMMENT ON COLUMN "SYS_ROLE"."REMARK" IS '备注';
COMMENT ON COLUMN "SYS_ROLE"."STATUS" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "SYS_ROLE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_ROLE"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_ROLE"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_ROLE"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_ROLE" IS '系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "SYS_ROLE" VALUES ('1265476890672672817', '组织架构管理员', 'ent_manager_role', '100', '1', '组织架构管理员', '0', TO_DATE('2020-04-02 19:27:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-12 15:54:07', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_ROLE" VALUES ('1265476890672672818', '权限管理员', 'auth_role', '101', '5', '权限管理员', '0', TO_DATE('2020-04-02 19:28:40', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-07-16 10:52:21', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_ROLE" VALUES ('1265476890672672819', '公告发布员', 'notice_produce_role', '102', '5', '公告发布员', '0', TO_DATE('2020-05-29 15:48:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-08-08 19:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_data_scope
-- ----------------------------
CREATE TABLE "SYS_ROLE_DATA_SCOPE" (
  "ID" NUMBER(20) NOT NULL ,
  "ROLE_ID" NUMBER(20) NOT NULL ,
  "ORG_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_ROLE_DATA_SCOPE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_ROLE_DATA_SCOPE"."ROLE_ID" IS '角色id';
COMMENT ON COLUMN "SYS_ROLE_DATA_SCOPE"."ORG_ID" IS '机构id';
COMMENT ON TABLE "SYS_ROLE_DATA_SCOPE" IS '系统角色数据范围表';

-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435908822102018', '1265476890672672818', '1265476890651701250');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435909635796993', '1265476890672672818', '1265476890672672769');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435910432714754', '1265476890672672818', '1265476890672672771');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435911233826818', '1265476890672672818', '1265476890672672772');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435912018161666', '1265476890672672818', '1265476890672672770');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435912810885122', '1265476890672672818', '1265476890672672773');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435913595219970', '1265476890672672818', '1265476890672672775');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1277435914392137730', '1265476890672672818', '1265476890672672774');
INSERT INTO "SYS_ROLE_DATA_SCOPE" VALUES ('1292060127645429762', '1265476890672672819', '1265476890672672774');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
CREATE TABLE "SYS_ROLE_MENU" (
  "ID" NUMBER(20) NOT NULL ,
  "ROLE_ID" NUMBER(20) NOT NULL ,
  "MENU_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_ROLE_MENU"."ID" IS '主键';
COMMENT ON COLUMN "SYS_ROLE_MENU"."ROLE_ID" IS '角色id';
COMMENT ON COLUMN "SYS_ROLE_MENU"."MENU_ID" IS '菜单id';
COMMENT ON TABLE "SYS_ROLE_MENU" IS '系统角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366872187256834', '1265476890672672818', '1264622039642255671');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366872602492929', '1265476890672672818', '1264622039642255681');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366873026117634', '1265476890672672818', '1264622039642255761');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366873449742337', '1265476890672672818', '1264622039642255851');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366873864978433', '1265476890672672818', '1264622039642255691');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366874284408834', '1265476890672672818', '1264622039642255701');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366874703839233', '1265476890672672818', '1264622039642255711');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366875119075330', '1265476890672672818', '1264622039642255721');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366875538505730', '1265476890672672818', '1264622039642255731');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366875962130433', '1265476890672672818', '1264622039642255741');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366876377366529', '1265476890672672818', '1264622039642255751');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366876800991233', '1265476890672672818', '1264622039642255771');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366877216227330', '1265476890672672818', '1264622039642255781');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366877639852033', '1265476890672672818', '1264622039642255791');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366878067671041', '1265476890672672818', '1264622039642255801');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366878487101441', '1265476890672672818', '1264622039642255811');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366878898143233', '1265476890672672818', '1264622039642255821');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366879325962242', '1265476890672672818', '1264622039642255831');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366879745392641', '1265476890672672818', '1264622039642255841');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366880160628738', '1265476890672672818', '1264622039642255881');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366880580059138', '1265476890672672818', '1264622039642255891');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366880999489537', '1265476890672672818', '1264622039642255901');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366881423114242', '1265476890672672818', '1264622039642255911');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366881838350338', '1265476890672672818', '1264622039642255921');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366882261975042', '1265476890672672818', '1264622039642255931');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366882685599745', '1265476890672672818', '1264622039642255941');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366883100835842', '1265476890672672818', '1264622039642255951');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366883520266242', '1265476890672672818', '1264622039642255861');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366883939696642', '1265476890672672818', '1264622039642255871');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366884363321346', '1265476890672672818', '1264622039642257021');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366884782751746', '1265476890672672818', '1264622039642257031');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366885197987842', '1265476890672672818', '1264622039642256831');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366885617418242', '1265476890672672818', '1264622039642257261');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366886045237250', '1265476890672672818', '1264622039642257271');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366886473056258', '1265476890672672818', '1264622039642257301');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366886884098050', '1265476890672672818', '1264622039642257321');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366887307722754', '1265476890672672818', '1264622039642257331');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366887722958850', '1265476890672672818', '1264622039642257471');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366888142389250', '1265476890672672818', '1264622039642257481');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366888566013954', '1265476890672672818', '1264622039642257341');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366888981250049', '1265476890672672818', '1264622039642257411');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366889404874754', '1265476890672672818', '1264622039642257421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366889820110850', '1265476890672672818', '1264622039642257431');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366890235346946', '1265476890672672818', '1264622039642257441');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366890663165954', '1265476890672672818', '1264622039642257451');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366891082596354', '1265476890672672818', '1264622039642257461');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366891506221057', '1265476890672672818', '1264622039642257351');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366891925651458', '1265476890672672818', '1264622039642257361');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366892345081858', '1265476890672672818', '1264622039642257371');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366892764512258', '1265476890672672818', '1264622039642257381');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366893183942658', '1265476890672672818', '1264622039642257391');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366893607567361', '1265476890672672818', '1264622039642257401');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366894031192065', '1265476890672672818', '1264622039642257491');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366894446428162', '1265476890672672818', '1264622039642257501');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366894865858562', '1265476890672672818', '1264622039642257511');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366895285288961', '1265476890672672818', '1264622039642255591');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366895708913665', '1265476890672672818', '1264622039642257061');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366896132538369', '1265476890672672818', '1264622039642257462');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366896556163074', '1265476890672672818', '1264622039642256912');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366896979787777', '1265476890672672818', '1264622039642255421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366897399218178', '1265476890672672818', '1264622039642257022');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366897827037185', '1265476890672672818', '1264622039642256821');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366898242273282', '1265476890672672818', '1264622039642257311');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366898670092290', '1265476890672672818', '1264622039642257312');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366899089522690', '1265476890672672818', '1264622039642257313');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366899508953089', '1265476890672672818', '1264622039642257314');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366899932577793', '1265476890672672818', '1264622039642257522');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366900352008193', '1265476890672672818', '1264622039642257523');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366900771438594', '1265476890672672818', '1264622039642257524');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366901190868994', '1265476890672672818', '1264622039642257525');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366901610299394', '1265476890672672818', '1264622039642257531');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1304366902033924097', '1265476890672672818', '1264622039642257532');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864773769273346', '1265476890672672819', '1264622039642256431');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864774197092353', '1265476890672672819', '1264622039642256421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864774624911362', '1265476890672672819', '1264622039642256441');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864775048536065', '1265476890672672819', '1264622039642256451');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864775467966465', '1265476890672672819', '1264622039642256461');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864775887396866', '1265476890672672819', '1264622039642256471');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864776311021570', '1265476890672672819', '1264622039642256481');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864776730451969', '1265476890672672819', '1264622039642256491');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864777154076673', '1265476890672672819', '1264622039642256501');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864777573507074', '1265476890672672819', '1264622039642256511');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864778005520386', '1265476890672672819', '1264622039642255421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864778424950785', '1265476890672672819', '1264622039642257321');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864778840186881', '1265476890672672819', '1264622039642257331');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864779263811585', '1265476890672672819', '1264622039642257021');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864779683241986', '1265476890672672819', '1264622039642257011');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864780106866689', '1265476890672672819', '1264622039642256831');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864780530491393', '1265476890672672819', '1264622039642257061');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864780945727489', '1265476890672672819', '1264622039642257501');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864781369352193', '1265476890672672819', '1264622039642257491');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864781792976897', '1265476890672672819', '1264622039642257511');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864782216601602', '1265476890672672819', '1264622039642257271');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864782631837697', '1265476890672672819', '1264622039642257261');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864783063851009', '1265476890672672819', '1264622039642257301');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864783483281410', '1265476890672672819', '1264622039642257471');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864783902711809', '1265476890672672819', '1264622039642257341');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864784322142210', '1265476890672672819', '1264622039642257481');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864784745766913', '1265476890672672819', '1264622039642257411');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864785169391618', '1265476890672672819', '1264622039642257431');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864785588822018', '1265476890672672819', '1264622039642257421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864786012446722', '1265476890672672819', '1264622039642257441');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864786436071426', '1265476890672672819', '1264622039642257451');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864786859696130', '1265476890672672819', '1264622039642257461');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864787274932225', '1265476890672672819', '1264622039642257351');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864787702751233', '1265476890672672819', '1264622039642257361');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864788113793026', '1265476890672672819', '1264622039642257371');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864788541612034', '1265476890672672819', '1264622039642257381');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864788961042433', '1265476890672672819', '1264622039642257391');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864789384667138', '1265476890672672819', '1264622039642257401');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864789808291841', '1265476890672672819', '1264622039642257462');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864790227722241', '1265476890672672819', '1264622039642257031');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864790659735554', '1265476890672672819', '1264622039642256912');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864791079165953', '1265476890672672819', '1264622039642257022');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864791494402050', '1265476890672672819', '1264622039642257311');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864791913832450', '1265476890672672819', '1264622039642257312');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864792345845762', '1265476890672672819', '1264622039642257313');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864792769470465', '1265476890672672819', '1264622039642257314');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864793193095169', '1265476890672672819', '1264622039642257522');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864793612525570', '1265476890672672819', '1264622039642257523');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864794027761665', '1265476890672672819', '1264622039642257524');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864794459774978', '1265476890672672819', '1264622039642257525');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864794875011073', '1265476890672672819', '1264622039642257532');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864795307024385', '1265476890672672819', '1264622039642257531');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864795722260482', '1265476890672672819', '1264622039642256821');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864929906434049', '1265476890672672817', '1264622039642255311');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864930338447362', '1265476890672672817', '1264622039642255331');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864930753683457', '1265476890672672817', '1264622039642255321');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864931181502465', '1265476890672672817', '1264622039642255341');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864931596738561', '1265476890672672817', '1264622039642255351');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864932020363266', '1265476890672672817', '1264622039642255361');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864932439793666', '1265476890672672817', '1264622039642255371');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864932863418369', '1265476890672672817', '1264622039642255381');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864933287043073', '1265476890672672817', '1264622039642255391');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864933706473474', '1265476890672672817', '1264622039642255401');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864934130098177', '1265476890672672817', '1264622039642255411');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864934553722881', '1265476890672672817', '1264622039642255421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864934973153281', '1265476890672672817', '1264622039642255431');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864935392583681', '1265476890672672817', '1264622039642255441');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864935820402689', '1265476890672672817', '1264622039642255451');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864936239833090', '1265476890672672817', '1264622039642255461');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864936663457793', '1265476890672672817', '1264622039642255471');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864937087082498', '1265476890672672817', '1264622039642255481');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864937506512898', '1265476890672672817', '1264622039642255491');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864937938526210', '1265476890672672817', '1264622039642255501');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864938357956610', '1265476890672672817', '1264622039642255511');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864938777387010', '1265476890672672817', '1264622039642255521');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864939201011713', '1265476890672672817', '1264622039642255531');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864939624636418', '1265476890672672817', '1264622039642255541');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864940044066817', '1265476890672672817', '1264622039642255551');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864940467691522', '1265476890672672817', '1264622039642255561');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864940933259265', '1265476890672672817', '1264622039642255571');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864941356883970', '1265476890672672817', '1264622039642255581');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864941776314369', '1265476890672672817', '1264622039642255591');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864942195744769', '1265476890672672817', '1264622039642255601');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864942619369473', '1265476890672672817', '1264622039642255621');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864943042994178', '1265476890672672817', '1264622039642255631');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864943462424577', '1265476890672672817', '1264622039642255641');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864943886049282', '1265476890672672817', '1264622039642255651');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864944309673986', '1265476890672672817', '1264622039642255661');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864944733298690', '1265476890672672817', '1264622039642255611');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864945156923393', '1265476890672672817', '1264622039642257321');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864945576353793', '1265476890672672817', '1264622039642257331');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864945999978497', '1265476890672672817', '1264622039642257471');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864946423603201', '1265476890672672817', '1264622039642257481');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864946847227905', '1265476890672672817', '1264622039642257341');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864947266658305', '1265476890672672817', '1264622039642257411');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864947681894402', '1265476890672672817', '1264622039642257421');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864948109713409', '1265476890672672817', '1264622039642257431');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864948529143810', '1265476890672672817', '1264622039642257441');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864948952768513', '1265476890672672817', '1264622039642257451');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864949380587522', '1265476890672672817', '1264622039642257461');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864949804212225', '1265476890672672817', '1264622039642257351');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864950223642626', '1265476890672672817', '1264622039642257361');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864950638878721', '1265476890672672817', '1264622039642257371');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864951066697729', '1265476890672672817', '1264622039642257381');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864951490322433', '1265476890672672817', '1264622039642257391');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864951913947137', '1265476890672672817', '1264622039642257401');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864952329183233', '1265476890672672817', '1264622039642257491');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864952757002241', '1265476890672672817', '1264622039642257501');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864953176432642', '1265476890672672817', '1264622039642257511');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864953600057346', '1265476890672672817', '1264622039642256831');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864954019487746', '1265476890672672817', '1264622039642257031');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864954447306754', '1265476890672672817', '1264622039642257021');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864954870931458', '1265476890672672817', '1264622039642257061');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864955290361857', '1265476890672672817', '1264622039642257261');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864955709792258', '1265476890672672817', '1264622039642257301');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864956133416962', '1265476890672672817', '1264622039642257271');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864956557041665', '1265476890672672817', '1264622039642257462');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864956976472066', '1265476890672672817', '1264622039642256912');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864957400096770', '1265476890672672817', '1264622039642255911');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864957861470210', '1265476890672672817', '1264622039642257522');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864958280900610', '1265476890672672817', '1264622039642257523');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864958704525314', '1265476890672672817', '1264622039642257524');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864959132344321', '1265476890672672817', '1264622039642257525');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864959555969026', '1265476890672672817', '1264622039642257532');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864959975399425', '1265476890672672817', '1264622039642257531');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864960399024129', '1265476890672672817', '1264622039642257311');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864960822648833', '1265476890672672817', '1264622039642257312');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864961242079233', '1265476890672672817', '1264622039642257313');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864961657315330', '1265476890672672817', '1264622039642257314');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864962085134337', '1265476890672672817', '1264622039642256821');
INSERT INTO "SYS_ROLE_MENU" VALUES ('1307864962504564737', '1265476890672672817', '1264622039642257022');
COMMIT;

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
CREATE TABLE "SYS_SMS" (
  "ID" NUMBER(20) NOT NULL ,
  "PHONE_NUMBERS" NVARCHAR2(200) NOT NULL ,
  "VALIDATE_CODE" NVARCHAR2(255) ,
  "TEMPLATE_CODE" NVARCHAR2(255) ,
  "BIZ_ID" NVARCHAR2(255) ,
  "STATUS" NUMBER(4) NOT NULL ,
  "SOURCE" NUMBER(4) NOT NULL ,
  "INVALID_TIME" DATE ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_SMS"."ID" IS '主键';
COMMENT ON COLUMN "SYS_SMS"."PHONE_NUMBERS" IS '手机号';
COMMENT ON COLUMN "SYS_SMS"."VALIDATE_CODE" IS '短信验证码';
COMMENT ON COLUMN "SYS_SMS"."TEMPLATE_CODE" IS '短信模板ID';
COMMENT ON COLUMN "SYS_SMS"."BIZ_ID" IS '回执id，可根据该id查询具体的发送状态';
COMMENT ON COLUMN "SYS_SMS"."STATUS" IS '发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）';
COMMENT ON COLUMN "SYS_SMS"."SOURCE" IS '来源（字典 1 app， 2 pc， 3 其他）';
COMMENT ON COLUMN "SYS_SMS"."INVALID_TIME" IS '失效时间';
COMMENT ON COLUMN "SYS_SMS"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_SMS"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_SMS"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_SMS"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_SMS" IS '短信信息发送表';

-- ----------------------------
-- Table structure for sys_tenant_info
-- ----------------------------
CREATE TABLE "SYS_TENANT_INFO" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(255) ,
  "CODE" NVARCHAR2(255) ,
  "DB_NAME" NVARCHAR2(255) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_TENANT_INFO"."ID" IS '主键id';
COMMENT ON COLUMN "SYS_TENANT_INFO"."NAME" IS '租户名称';
COMMENT ON COLUMN "SYS_TENANT_INFO"."CODE" IS '租户的编码';
COMMENT ON COLUMN "SYS_TENANT_INFO"."DB_NAME" IS '关联的数据库名称';
COMMENT ON COLUMN "SYS_TENANT_INFO"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_TENANT_INFO"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_TENANT_INFO"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_TENANT_INFO"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_TENANT_INFO" IS '租户表';

-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------
INSERT INTO "SYS_TENANT_INFO" VALUES ('1301724123547000811', '总公司（管理单位）', 'default', 'master', TO_DATE('2020-09-04 11:29:51', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_timers
-- ----------------------------
CREATE TABLE "SYS_TIMERS" (
  "ID" NUMBER(20) NOT NULL ,
  "TIMER_NAME" NVARCHAR2(255) ,
  "ACTION_CLASS" NVARCHAR2(255) ,
  "CRON" NVARCHAR2(255) ,
  "JOB_STATUS" NUMBER(4) ,
  "REMARK" NVARCHAR2(1000) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_TIMERS"."ID" IS '定时器id';
COMMENT ON COLUMN "SYS_TIMERS"."TIMER_NAME" IS '任务名称';
COMMENT ON COLUMN "SYS_TIMERS"."ACTION_CLASS" IS '执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）';
COMMENT ON COLUMN "SYS_TIMERS"."CRON" IS '定时任务表达式';
COMMENT ON COLUMN "SYS_TIMERS"."JOB_STATUS" IS '状态（字典 1运行  2停止）';
COMMENT ON COLUMN "SYS_TIMERS"."REMARK" IS '备注信息';
COMMENT ON COLUMN "SYS_TIMERS"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_TIMERS"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_TIMERS"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_TIMERS"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_TIMERS" IS '定时任务';

-- ----------------------------
-- Records of sys_timers
-- ----------------------------
INSERT INTO "SYS_TIMERS" VALUES ('1288760324837851137', '定时同步缓存常量', 'com.cn.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', '0 0/1 * * * ?', '1', '定时同步sys_config表的数据到缓存常量中', TO_DATE('2020-07-30 16:56:20', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-07-30 16:58:52', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "SYS_TIMERS" VALUES ('1304971718170832898', '定时打印一句话', 'com.cn.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', '0 0 * * * ? *', '2', '定时打印一句话', TO_DATE('2020-09-13 10:34:37', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 20:37:48', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
CREATE TABLE "SYS_USER" (
  "ID" NUMBER(20) NOT NULL ,
  "ACCOUNT" NVARCHAR2(50) NOT NULL ,
  "PASSWORD" NVARCHAR2(100) NOT NULL ,
  "NICK_NAME" NVARCHAR2(50) ,
  "NAME" NVARCHAR2(100) NOT NULL ,
  "AVATAR" NUMBER(20) ,
  "BIRTHDAY" DATE ,
  "SEX" NUMBER(4) NOT NULL ,
  "EMAIL" NVARCHAR2(50) ,
  "PHONE" NVARCHAR2(50) ,
  "TEL" NVARCHAR2(50) ,
  "LAST_LOGIN_IP" NVARCHAR2(100) ,
  "LAST_LOGIN_TIME" DATE ,
  "ADMIN_TYPE" NUMBER(4) NOT NULL ,
  "STATUS" NUMBER(4) NOT NULL ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "SYS_USER"."ID" IS '主键';
COMMENT ON COLUMN "SYS_USER"."ACCOUNT" IS '账号';
COMMENT ON COLUMN "SYS_USER"."PASSWORD" IS '密码';
COMMENT ON COLUMN "SYS_USER"."NICK_NAME" IS '昵称';
COMMENT ON COLUMN "SYS_USER"."NAME" IS '姓名';
COMMENT ON COLUMN "SYS_USER"."AVATAR" IS '头像';
COMMENT ON COLUMN "SYS_USER"."BIRTHDAY" IS '生日';
COMMENT ON COLUMN "SYS_USER"."SEX" IS '性别(字典 1男 2女 3未知)';
COMMENT ON COLUMN "SYS_USER"."EMAIL" IS '邮箱';
COMMENT ON COLUMN "SYS_USER"."PHONE" IS '手机';
COMMENT ON COLUMN "SYS_USER"."TEL" IS '电话';
COMMENT ON COLUMN "SYS_USER"."LAST_LOGIN_IP" IS '最后登陆IP';
COMMENT ON COLUMN "SYS_USER"."LAST_LOGIN_TIME" IS '最后登陆时间';
COMMENT ON COLUMN "SYS_USER"."ADMIN_TYPE" IS '管理员类型（0超级管理员 1非管理员）';
COMMENT ON COLUMN "SYS_USER"."STATUS" IS '状态（字典 0正常 1冻结 2删除）';
COMMENT ON COLUMN "SYS_USER"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_USER"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "SYS_USER"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "SYS_USER"."UPDATE_USER" IS '更新人';
COMMENT ON TABLE "SYS_USER" IS '系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "SYS_USER" VALUES ('1265476890672672808', 'superAdmin', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '超级管理员', '超级管理员', NULL, TO_DATE('2020-03-18', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'superAdmin@qq.com', '15228937093', '1234567890', '127.0.0.1', TO_DATE('2021-01-28 00:42:28', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', TO_DATE('2020-05-29 16:39:28', 'SYYYY-MM-DD HH24:MI:SS'), '-1', TO_DATE('2021-01-28 00:42:28', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "SYS_USER" VALUES ('1275735541155614721', 'yubaoshan', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '俞宝山', '俞宝山', NULL, TO_DATE('1992-10-03', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'await183@qq.com', '18200001102', '', '127.0.0.1', TO_DATE('2021-01-28 00:38:34', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', TO_DATE('2020-06-24 18:20:30', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-01-28 00:38:34', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "SYS_USER" VALUES ('1280700700074041345', 'laoyu', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', 'laoyu', '老俞', NULL, TO_DATE('2020-07-01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '18200001103', NULL, '127.0.0.1', TO_DATE('2020-09-23 10:17:27', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', TO_DATE('2020-07-08 11:10:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 10:17:27', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
INSERT INTO "SYS_USER" VALUES ('1280709549107552257', 'xuyuxiang', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '就是那个锅', '徐玉祥', NULL, TO_DATE('2020-07-01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '18200001100', NULL, '127.0.0.1', TO_DATE('2020-09-23 10:16:54', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', TO_DATE('2020-07-08 11:45:26', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2020-09-23 10:16:54', 'SYYYY-MM-DD HH24:MI:SS'), '-1');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_data_scope
-- ----------------------------
CREATE TABLE "SYS_USER_DATA_SCOPE" (
  "ID" NUMBER(20) NOT NULL ,
  "USER_ID" NUMBER(20) NOT NULL ,
  "ORG_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_USER_DATA_SCOPE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_USER_DATA_SCOPE"."USER_ID" IS '用户id';
COMMENT ON COLUMN "SYS_USER_DATA_SCOPE"."ORG_ID" IS '机构id';
COMMENT ON TABLE "SYS_USER_DATA_SCOPE" IS '系统用户数据范围表';

-- ----------------------------
-- Records of sys_user_data_scope
-- ----------------------------
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1277459951742840834', '1266277099455635457', '1265476890672672770');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1277459952577507330', '1266277099455635457', '1265476890672672773');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1277459953424756737', '1266277099455635457', '1265476890672672775');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1277459954267811841', '1266277099455635457', '1265476890672672774');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043527249922', '1265476890672672809', '1265476890651701250');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043535638529', '1265476890672672809', '1265476890672672769');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043535638530', '1265476890672672809', '1265476890672672771');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043535638531', '1265476890672672809', '1265476890672672772');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043544027137', '1265476890672672809', '1265476890672672770');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043544027138', '1265476890672672809', '1265476890672672773');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043552415746', '1265476890672672809', '1265476890672672775');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712043552415747', '1265476890672672809', '1265476890672672774');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712071570366466', '1275735541155614721', '1265476890672672769');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712071570366467', '1275735541155614721', '1265476890672672771');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1280712071578755074', '1275735541155614721', '1265476890672672772');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1285129189085609986', '1280700700074041345', '1265476890672672770');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1285129189093998594', '1280700700074041345', '1265476890672672773');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1285129189102387201', '1280700700074041345', '1265476890672672775');
INSERT INTO "SYS_USER_DATA_SCOPE" VALUES ('1285129189106581505', '1280700700074041345', '1265476890672672774');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
CREATE TABLE "SYS_USER_ROLE" (
  "ID" NUMBER(20) NOT NULL ,
  "USER_ID" NUMBER(20) NOT NULL ,
  "ROLE_ID" NUMBER(20) NOT NULL 
)
;
COMMENT ON COLUMN "SYS_USER_ROLE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_USER_ROLE"."USER_ID" IS '用户id';
COMMENT ON COLUMN "SYS_USER_ROLE"."ROLE_ID" IS '角色id';
COMMENT ON TABLE "SYS_USER_ROLE" IS '系统用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "SYS_USER_ROLE" VALUES ('1283596900713574402', '1275735541155614721', '1265476890672672817');
INSERT INTO "SYS_USER_ROLE" VALUES ('1283596920384860162', '1280700700074041345', '1265476890672672819');
INSERT INTO "SYS_USER_ROLE" VALUES ('1283596949627547649', '1280709549107552257', '1265476890672672818');
COMMIT;

-- ----------------------------
-- Table structure for sys_vis_log
-- ----------------------------
CREATE TABLE "SYS_VIS_LOG" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(50) ,
  "SUCCESS" NCHAR(1) ,
  "MESSAGE" NCLOB ,
  "IP" NVARCHAR2(255) ,
  "LOCATION" NVARCHAR2(255) ,
  "BROWSER" NVARCHAR2(255) ,
  "OS" NVARCHAR2(255) ,
  "VIS_TYPE" NUMBER(4) NOT NULL ,
  "VIS_TIME" DATE ,
  "ACCOUNT" NVARCHAR2(50) 
)
;
COMMENT ON COLUMN "SYS_VIS_LOG"."ID" IS '主键';
COMMENT ON COLUMN "SYS_VIS_LOG"."NAME" IS '名称';
COMMENT ON COLUMN "SYS_VIS_LOG"."SUCCESS" IS '是否执行成功（Y-是，N-否）';
COMMENT ON COLUMN "SYS_VIS_LOG"."MESSAGE" IS '具体消息';
COMMENT ON COLUMN "SYS_VIS_LOG"."IP" IS 'ip';
COMMENT ON COLUMN "SYS_VIS_LOG"."LOCATION" IS '地址';
COMMENT ON COLUMN "SYS_VIS_LOG"."BROWSER" IS '浏览器';
COMMENT ON COLUMN "SYS_VIS_LOG"."OS" IS '操作系统';
COMMENT ON COLUMN "SYS_VIS_LOG"."VIS_TYPE" IS '操作类型（字典 1登入 2登出）';
COMMENT ON COLUMN "SYS_VIS_LOG"."VIS_TIME" IS '访问时间';
COMMENT ON COLUMN "SYS_VIS_LOG"."ACCOUNT" IS '访问账号';
COMMENT ON TABLE "SYS_VIS_LOG" IS '系统访问日志表';

-- ----------------------------
-- Table structure for xn_code_gen_test
-- ----------------------------
CREATE TABLE "XN_CODE_GEN_TEST" (
  "ID" NUMBER(20) NOT NULL ,
  "NAME" NVARCHAR2(255) ,
  "AGE" NUMBER(11) ,
  "INTEREST" NVARCHAR2(255) ,
  "SWITCHTEST" NVARCHAR2(255) ,
  "BIRTHDAY" DATE ,
  "WHETHER" NVARCHAR2(255) ,
  "EXPLAIN_TEST" NVARCHAR2(255) ,
  "CREATE_TIME" DATE ,
  "CREATE_USER" NUMBER(20) ,
  "UPDATE_TIME" DATE ,
  "UPDATE_USER" NUMBER(20) 
)
;
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."ID" IS '主键';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."NAME" IS '姓名';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."AGE" IS '年龄';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."INTEREST" IS '兴趣';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."SWITCHTEST" IS '开关';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."BIRTHDAY" IS '日期';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."WHETHER" IS '是否已婚';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."EXPLAIN_TEST" IS '简介';
COMMENT ON COLUMN "XN_CODE_GEN_TEST"."CREATE_TIME" IS '创建时间';
COMMENT ON TABLE "XN_CODE_GEN_TEST" IS '测试';

-- ----------------------------
-- Records of xn_code_gen_test
-- ----------------------------
INSERT INTO "XN_CODE_GEN_TEST" VALUES ('1362314704808611841', '俞宝山', '28', '["2","3","1"]', 'Y', TO_DATE('2021-02-18', 'SYYYY-MM-DD HH24:MI:SS'), 'Y', '测试简介', TO_DATE('2021-02-18 16:15:11', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
INSERT INTO "XN_CODE_GEN_TEST" VALUES ('1362314845863055361', '徐玉祥', '26', '["3","2"]', 'Y', TO_DATE('2021-02-18', 'SYYYY-MM-DD HH24:MI:SS'), 'Y', '玉祥也测试', TO_DATE('2021-02-18 16:15:44', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', TO_DATE('2021-02-18 16:16:24', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808');
INSERT INTO "XN_CODE_GEN_TEST" VALUES ('1362314976637259777', '董夏雨', '27', '["3"]', 'N', TO_DATE('2021-02-18', 'SYYYY-MM-DD HH24:MI:SS'), 'Y', '都测试', TO_DATE('2021-02-18 16:16:16', 'SYYYY-MM-DD HH24:MI:SS'), '1265476890672672808', NULL, NULL);
COMMIT;

-- ----------------------------
-- Primary Key structure for table act_de_databasechangeloglock
-- ----------------------------
ALTER TABLE "ACT_DE_DATABASECHANGELOGLOCK" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table act_de_model
-- ----------------------------
ALTER TABLE "ACT_DE_MODEL" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table act_de_model
-- ----------------------------
CREATE INDEX "IDX_PROC_MOD_CREATED"
  ON "ACT_DE_MODEL" ("CREATED_BY");

-- ----------------------------
-- Primary Key structure for table act_de_model_history
-- ----------------------------
ALTER TABLE "ACT_DE_MODEL_HISTORY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table act_de_model_history
-- ----------------------------
CREATE INDEX "IDX_PROC_MOD_HISTORY_PROC"
  ON "ACT_DE_MODEL_HISTORY" ("MODEL_ID");

-- ----------------------------
-- Primary Key structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "ACT_DE_MODEL_RELATION" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table act_de_model_relation
-- ----------------------------
CREATE INDEX "FK_RELATION_PARENT"
  ON "ACT_DE_MODEL_RELATION" ("PARENT_MODEL_ID");
CREATE INDEX "FK_RELATION_CHILD"
  ON "ACT_DE_MODEL_RELATION" ("MODEL_ID");

-- ----------------------------
-- Primary Key structure for table act_evt_log
-- ----------------------------
ALTER TABLE "ACT_EVT_LOG" ADD PRIMARY KEY ("LOG_NR_");

-- ----------------------------
-- Primary Key structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "ACT_GE_BYTEARRAY" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ge_bytearray
-- ----------------------------
CREATE INDEX "ACT_FK_BYTEARR_DEPL"
  ON "ACT_GE_BYTEARRAY" ("DEPLOYMENT_ID_");

-- ----------------------------
-- Primary Key structure for table act_ge_property
-- ----------------------------
ALTER TABLE "ACT_GE_PROPERTY" ADD PRIMARY KEY ("NAME_");

-- ----------------------------
-- Primary Key structure for table act_hi_actinst
-- ----------------------------
ALTER TABLE "ACT_HI_ACTINST" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_actinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_ACT_INST_START"
  ON "ACT_HI_ACTINST" ("START_TIME_");
CREATE INDEX "ACT_IDX_HI_ACT_INST_END"
  ON "ACT_HI_ACTINST" ("END_TIME_");
CREATE INDEX "ACT_IDX_HI_ACT_INST_PROCINST"
  ON "ACT_HI_ACTINST" ("PROC_INST_ID_", "ACT_ID_");
CREATE INDEX "ACT_IDX_HI_ACT_INST_EXEC"
  ON "ACT_HI_ACTINST" ("EXECUTION_ID_", "ACT_ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_attachment
-- ----------------------------
ALTER TABLE "ACT_HI_ATTACHMENT" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_comment
-- ----------------------------
ALTER TABLE "ACT_HI_COMMENT" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_detail
-- ----------------------------
ALTER TABLE "ACT_HI_DETAIL" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_detail
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_DETAIL_PROC_INST"
  ON "ACT_HI_DETAIL" ("PROC_INST_ID_");
CREATE INDEX "ACT_IDX_HI_DETAIL_ACT_INST"
  ON "ACT_HI_DETAIL" ("ACT_INST_ID_");
CREATE INDEX "ACT_IDX_HI_DETAIL_TIME"
  ON "ACT_HI_DETAIL" ("TIME_");
CREATE INDEX "ACT_IDX_HI_DETAIL_NAME"
  ON "ACT_HI_DETAIL" ("NAME_");
CREATE INDEX "ACT_IDX_HI_DETAIL_TASK_ID"
  ON "ACT_HI_DETAIL" ("TASK_ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_entitylink
-- ----------------------------
ALTER TABLE "ACT_HI_ENTITYLINK" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_entitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_ENT_LNK_SCOPE"
  ON "ACT_HI_ENTITYLINK" ("SCOPE_ID_", "SCOPE_TYPE_", "LINK_TYPE_");
CREATE INDEX "ACT_IDX_HI_ENT_LNK_SCOPE_DEF"
  ON "ACT_HI_ENTITYLINK" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_", "LINK_TYPE_");

-- ----------------------------
-- Primary Key structure for table act_hi_identitylink
-- ----------------------------
ALTER TABLE "ACT_HI_IDENTITYLINK" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_identitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_USER"
  ON "ACT_HI_IDENTITYLINK" ("USER_ID_");
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SCOPE"
  ON "ACT_HI_IDENTITYLINK" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SUB_SCOPE"
  ON "ACT_HI_IDENTITYLINK" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SCOPE_DEF"
  ON "ACT_HI_IDENTITYLINK" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_TASK"
  ON "ACT_HI_IDENTITYLINK" ("TASK_ID_");
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_PROCINST"
  ON "ACT_HI_IDENTITYLINK" ("PROC_INST_ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_procinst
-- ----------------------------
ALTER TABLE "ACT_HI_PROCINST" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_procinst
-- ----------------------------
CREATE UNIQUE INDEX "PROC_INST_ID_"
  ON "ACT_HI_PROCINST" ("PROC_INST_ID_");
CREATE INDEX "ACT_IDX_HI_PRO_INST_END"
  ON "ACT_HI_PROCINST" ("END_TIME_");
CREATE INDEX "ACT_IDX_HI_PRO_I_BUSKEY"
  ON "ACT_HI_PROCINST" ("BUSINESS_KEY_");

-- ----------------------------
-- Primary Key structure for table act_hi_taskinst
-- ----------------------------
ALTER TABLE "ACT_HI_TASKINST" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_taskinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_TASK_SCOPE"
  ON "ACT_HI_TASKINST" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_TASK_SUB_SCOPE"
  ON "ACT_HI_TASKINST" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_TASK_SCOPE_DEF"
  ON "ACT_HI_TASKINST" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_TASK_INST_PROCINST"
  ON "ACT_HI_TASKINST" ("PROC_INST_ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_tsk_log
-- ----------------------------
ALTER TABLE "ACT_HI_TSK_LOG" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_varinst
-- ----------------------------
ALTER TABLE "ACT_HI_VARINST" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_varinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_PROCVAR_NAME_TYPE"
  ON "ACT_HI_VARINST" ("NAME_", "VAR_TYPE_");
CREATE INDEX "ACT_IDX_HI_VAR_SCOPE_ID_TYPE"
  ON "ACT_HI_VARINST" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_VAR_SUB_ID_TYPE"
  ON "ACT_HI_VARINST" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_HI_PROCVAR_PROC_INST"
  ON "ACT_HI_VARINST" ("PROC_INST_ID_");
CREATE INDEX "ACT_IDX_HI_PROCVAR_TASK_ID"
  ON "ACT_HI_VARINST" ("TASK_ID_");
CREATE INDEX "ACT_IDX_HI_PROCVAR_EXE"
  ON "ACT_HI_VARINST" ("EXECUTION_ID_");

-- ----------------------------
-- Primary Key structure for table act_id_bytearray
-- ----------------------------
ALTER TABLE "ACT_ID_BYTEARRAY" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_group
-- ----------------------------
ALTER TABLE "ACT_ID_GROUP" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_info
-- ----------------------------
ALTER TABLE "ACT_ID_INFO" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_membership
-- ----------------------------
ALTER TABLE "ACT_ID_MEMBERSHIP" ADD PRIMARY KEY ("USER_ID_", "GROUP_ID_");

-- ----------------------------
-- Indexes structure for table act_id_membership
-- ----------------------------
CREATE INDEX "ACT_FK_MEMB_GROUP"
  ON "ACT_ID_MEMBERSHIP" ("GROUP_ID_");

-- ----------------------------
-- Primary Key structure for table act_id_priv
-- ----------------------------
ALTER TABLE "ACT_ID_PRIV" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_id_priv
-- ----------------------------
CREATE UNIQUE INDEX "ACT_UNIQ_PRIV_NAME"
  ON "ACT_ID_PRIV" ("NAME_");

-- ----------------------------
-- Primary Key structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "ACT_ID_PRIV_MAPPING" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_id_priv_mapping
-- ----------------------------
CREATE INDEX "ACT_FK_PRIV_MAPPING"
  ON "ACT_ID_PRIV_MAPPING" ("PRIV_ID_");
CREATE INDEX "ACT_IDX_PRIV_USER"
  ON "ACT_ID_PRIV_MAPPING" ("USER_ID_");
CREATE INDEX "ACT_IDX_PRIV_GROUP"
  ON "ACT_ID_PRIV_MAPPING" ("GROUP_ID_");

-- ----------------------------
-- Primary Key structure for table act_id_property
-- ----------------------------
ALTER TABLE "ACT_ID_PROPERTY" ADD PRIMARY KEY ("NAME_");

-- ----------------------------
-- Primary Key structure for table act_id_token
-- ----------------------------
ALTER TABLE "ACT_ID_TOKEN" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_user
-- ----------------------------
ALTER TABLE "ACT_ID_USER" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "ACT_PROCDEF_INFO" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_procdef_info
-- ----------------------------
CREATE UNIQUE INDEX "ACT_UNIQ_INFO_PROCDEF"
  ON "ACT_PROCDEF_INFO" ("PROC_DEF_ID_");
CREATE INDEX "ACT_IDX_INFO_PROCDEF"
  ON "ACT_PROCDEF_INFO" ("PROC_DEF_ID_");
CREATE INDEX "ACT_FK_INFO_JSON_BA"
  ON "ACT_PROCDEF_INFO" ("INFO_JSON_ID_");

-- ----------------------------
-- Primary Key structure for table act_re_deployment
-- ----------------------------
ALTER TABLE "ACT_RE_DEPLOYMENT" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_re_model
-- ----------------------------
ALTER TABLE "ACT_RE_MODEL" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_re_model
-- ----------------------------
CREATE INDEX "ACT_FK_MODEL_SOURCE"
  ON "ACT_RE_MODEL" ("EDITOR_SOURCE_VALUE_ID_");
CREATE INDEX "ACT_FK_MODEL_SOURCE_EXTRA"
  ON "ACT_RE_MODEL" ("EDITOR_SOURCE_EXTRA_VALUE_ID_");
CREATE INDEX "ACT_FK_MODEL_DEPLOYMENT"
  ON "ACT_RE_MODEL" ("DEPLOYMENT_ID_");

-- ----------------------------
-- Primary Key structure for table act_re_procdef
-- ----------------------------
ALTER TABLE "ACT_RE_PROCDEF" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_re_procdef
-- ----------------------------
CREATE UNIQUE INDEX "ACT_UNIQ_PROCDEF"
  ON "ACT_RE_PROCDEF" ("KEY_", "VERSION_", "DERIVED_VERSION_", "TENANT_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_actinst
-- ----------------------------
ALTER TABLE "ACT_RU_ACTINST" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_actinst
-- ----------------------------
CREATE INDEX "ACT_IDX_RU_ACTI_START"
  ON "ACT_RU_ACTINST" ("START_TIME_");
CREATE INDEX "ACT_IDX_RU_ACTI_END"
  ON "ACT_RU_ACTINST" ("END_TIME_");
CREATE INDEX "ACT_IDX_RU_ACTI_PROC"
  ON "ACT_RU_ACTINST" ("PROC_INST_ID_");
CREATE INDEX "ACT_IDX_RU_ACTI_PROC_ACT"
  ON "ACT_RU_ACTINST" ("PROC_INST_ID_", "ACT_ID_");
CREATE INDEX "ACT_IDX_RU_ACTI_EXEC"
  ON "ACT_RU_ACTINST" ("EXECUTION_ID_");
CREATE INDEX "ACT_IDX_RU_ACTI_EXEC_ACT"
  ON "ACT_RU_ACTINST" ("EXECUTION_ID_", "ACT_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_deadletter_job
-- ----------------------------
CREATE INDEX "ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID"
  ON "ACT_RU_DEADLETTER_JOB" ("EXCEPTION_STACK_ID_");
CREATE INDEX "ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID"
  ON "ACT_RU_DEADLETTER_JOB" ("CUSTOM_VALUES_ID_");
CREATE INDEX "ACT_IDX_DJOB_SCOPE"
  ON "ACT_RU_DEADLETTER_JOB" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_DJOB_SUB_SCOPE"
  ON "ACT_RU_DEADLETTER_JOB" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_DJOB_SCOPE_DEF"
  ON "ACT_RU_DEADLETTER_JOB" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_DEADLETTER_JOB_EXECUTION"
  ON "ACT_RU_DEADLETTER_JOB" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE"
  ON "ACT_RU_DEADLETTER_JOB" ("PROCESS_INSTANCE_ID_");
CREATE INDEX "ACT_FK_DEADLETTER_JOB_PROC_DEF"
  ON "ACT_RU_DEADLETTER_JOB" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_entitylink
-- ----------------------------
ALTER TABLE "ACT_RU_ENTITYLINK" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_entitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_ENT_LNK_SCOPE"
  ON "ACT_RU_ENTITYLINK" ("SCOPE_ID_", "SCOPE_TYPE_", "LINK_TYPE_");
CREATE INDEX "ACT_IDX_ENT_LNK_SCOPE_DEF"
  ON "ACT_RU_ENTITYLINK" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_", "LINK_TYPE_");

-- ----------------------------
-- Primary Key structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "ACT_RU_EVENT_SUBSCR" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_event_subscr
-- ----------------------------
CREATE INDEX "ACT_IDX_EVENT_SUBSCR_CONFIG_"
  ON "ACT_RU_EVENT_SUBSCR" ("CONFIGURATION_");
CREATE INDEX "ACT_FK_EVENT_EXEC"
  ON "ACT_RU_EVENT_SUBSCR" ("EXECUTION_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "ACT_RU_EXECUTION" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_execution
-- ----------------------------
CREATE INDEX "ACT_IDX_EXEC_BUSKEY"
  ON "ACT_RU_EXECUTION" ("BUSINESS_KEY_");
CREATE INDEX "ACT_IDC_EXEC_ROOT"
  ON "ACT_RU_EXECUTION" ("ROOT_PROC_INST_ID_");
CREATE INDEX "ACT_FK_EXE_PROCINST"
  ON "ACT_RU_EXECUTION" ("PROC_INST_ID_");
CREATE INDEX "ACT_FK_EXE_PARENT"
  ON "ACT_RU_EXECUTION" ("PARENT_ID_");
CREATE INDEX "ACT_FK_EXE_SUPER"
  ON "ACT_RU_EXECUTION" ("SUPER_EXEC_");
CREATE INDEX "ACT_FK_EXE_PROCDEF"
  ON "ACT_RU_EXECUTION" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_history_job
-- ----------------------------
ALTER TABLE "ACT_RU_HISTORY_JOB" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "ACT_RU_IDENTITYLINK" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_identitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_IDENT_LNK_USER"
  ON "ACT_RU_IDENTITYLINK" ("USER_ID_");
CREATE INDEX "ACT_IDX_IDENT_LNK_GROUP"
  ON "ACT_RU_IDENTITYLINK" ("GROUP_ID_");
CREATE INDEX "ACT_IDX_IDENT_LNK_SCOPE"
  ON "ACT_RU_IDENTITYLINK" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_IDENT_LNK_SUB_SCOPE"
  ON "ACT_RU_IDENTITYLINK" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_IDENT_LNK_SCOPE_DEF"
  ON "ACT_RU_IDENTITYLINK" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_ATHRZ_PROCEDEF"
  ON "ACT_RU_IDENTITYLINK" ("PROC_DEF_ID_");
CREATE INDEX "ACT_FK_TSKASS_TASK"
  ON "ACT_RU_IDENTITYLINK" ("TASK_ID_");
CREATE INDEX "ACT_FK_IDL_PROCINST"
  ON "ACT_RU_IDENTITYLINK" ("PROC_INST_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_job
-- ----------------------------
ALTER TABLE "ACT_RU_JOB" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_job
-- ----------------------------
CREATE INDEX "ACT_IDX_JOB_EXCEPTION_STACK_ID"
  ON "ACT_RU_JOB" ("EXCEPTION_STACK_ID_");
CREATE INDEX "ACT_IDX_JOB_CUSTOM_VALUES_ID"
  ON "ACT_RU_JOB" ("CUSTOM_VALUES_ID_");
CREATE INDEX "ACT_IDX_JOB_SCOPE"
  ON "ACT_RU_JOB" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_JOB_SUB_SCOPE"
  ON "ACT_RU_JOB" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_JOB_SCOPE_DEF"
  ON "ACT_RU_JOB" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_JOB_EXECUTION"
  ON "ACT_RU_JOB" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_JOB_PROCESS_INSTANCE"
  ON "ACT_RU_JOB" ("PROCESS_INSTANCE_ID_");
CREATE INDEX "ACT_FK_JOB_PROC_DEF"
  ON "ACT_RU_JOB" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_suspended_job
-- ----------------------------
CREATE INDEX "ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID"
  ON "ACT_RU_SUSPENDED_JOB" ("EXCEPTION_STACK_ID_");
CREATE INDEX "ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID"
  ON "ACT_RU_SUSPENDED_JOB" ("CUSTOM_VALUES_ID_");
CREATE INDEX "ACT_IDX_SJOB_SCOPE"
  ON "ACT_RU_SUSPENDED_JOB" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_SJOB_SUB_SCOPE"
  ON "ACT_RU_SUSPENDED_JOB" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_SJOB_SCOPE_DEF"
  ON "ACT_RU_SUSPENDED_JOB" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_SUSPENDED_JOB_EXECUTION"
  ON "ACT_RU_SUSPENDED_JOB" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE"
  ON "ACT_RU_SUSPENDED_JOB" ("PROCESS_INSTANCE_ID_");
CREATE INDEX "ACT_FK_SUSPENDED_JOB_PROC_DEF"
  ON "ACT_RU_SUSPENDED_JOB" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_task
-- ----------------------------
ALTER TABLE "ACT_RU_TASK" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_task
-- ----------------------------
CREATE INDEX "ACT_IDX_TASK_CREATE"
  ON "ACT_RU_TASK" ("CREATE_TIME_");
CREATE INDEX "ACT_IDX_TASK_SCOPE"
  ON "ACT_RU_TASK" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_TASK_SUB_SCOPE"
  ON "ACT_RU_TASK" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_TASK_SCOPE_DEF"
  ON "ACT_RU_TASK" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_TASK_EXE"
  ON "ACT_RU_TASK" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_TASK_PROCINST"
  ON "ACT_RU_TASK" ("PROC_INST_ID_");
CREATE INDEX "ACT_FK_TASK_PROCDEF"
  ON "ACT_RU_TASK" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "ACT_RU_TIMER_JOB" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_timer_job
-- ----------------------------
CREATE INDEX "ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID"
  ON "ACT_RU_TIMER_JOB" ("EXCEPTION_STACK_ID_");
CREATE INDEX "ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID"
  ON "ACT_RU_TIMER_JOB" ("CUSTOM_VALUES_ID_");
CREATE INDEX "ACT_IDX_TJOB_SCOPE"
  ON "ACT_RU_TIMER_JOB" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_TJOB_SUB_SCOPE"
  ON "ACT_RU_TIMER_JOB" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_TJOB_SCOPE_DEF"
  ON "ACT_RU_TIMER_JOB" ("SCOPE_DEFINITION_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_TIMER_JOB_EXECUTION"
  ON "ACT_RU_TIMER_JOB" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_TIMER_JOB_PROCESS_INSTANCE"
  ON "ACT_RU_TIMER_JOB" ("PROCESS_INSTANCE_ID_");
CREATE INDEX "ACT_FK_TIMER_JOB_PROC_DEF"
  ON "ACT_RU_TIMER_JOB" ("PROC_DEF_ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "ACT_RU_VARIABLE" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_variable
-- ----------------------------
CREATE INDEX "ACT_IDX_RU_VAR_SCOPE_ID_TYPE"
  ON "ACT_RU_VARIABLE" ("SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_IDX_RU_VAR_SUB_ID_TYPE"
  ON "ACT_RU_VARIABLE" ("SUB_SCOPE_ID_", "SCOPE_TYPE_");
CREATE INDEX "ACT_FK_VAR_BYTEARRAY"
  ON "ACT_RU_VARIABLE" ("BYTEARRAY_ID_");
CREATE INDEX "ACT_IDX_VARIABLE_TASK_ID"
  ON "ACT_RU_VARIABLE" ("TASK_ID_");
CREATE INDEX "ACT_FK_VAR_EXE"
  ON "ACT_RU_VARIABLE" ("EXECUTION_ID_");
CREATE INDEX "ACT_FK_VAR_PROCINST"
  ON "ACT_RU_VARIABLE" ("PROC_INST_ID_");

-- ----------------------------
-- Primary Key structure for table flw_button
-- ----------------------------
ALTER TABLE "FLW_BUTTON" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_category
-- ----------------------------
ALTER TABLE "FLW_CATEGORY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_channel_definition
-- ----------------------------
ALTER TABLE "FLW_CHANNEL_DEFINITION" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table flw_channel_definition
-- ----------------------------
CREATE UNIQUE INDEX "ACT_IDX_CHANNEL_DEF_UNIQ"
  ON "FLW_CHANNEL_DEFINITION" ("KEY_", "VERSION_", "TENANT_ID_");

-- ----------------------------
-- Primary Key structure for table flw_draft
-- ----------------------------
ALTER TABLE "FLW_DRAFT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_ev_databasechangeloglock
-- ----------------------------
ALTER TABLE "FLW_EV_DATABASECHANGELOGLOCK" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_event
-- ----------------------------
ALTER TABLE "FLW_EVENT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_event_definition
-- ----------------------------
ALTER TABLE "FLW_EVENT_DEFINITION" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table flw_event_definition
-- ----------------------------
CREATE UNIQUE INDEX "ACT_IDX_EVENT_DEF_UNIQ"
  ON "FLW_EVENT_DEFINITION" ("KEY_", "VERSION_", "TENANT_ID_");

-- ----------------------------
-- Primary Key structure for table flw_event_deployment
-- ----------------------------
ALTER TABLE "FLW_EVENT_DEPLOYMENT" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_event_resource
-- ----------------------------
ALTER TABLE "FLW_EVENT_RESOURCE" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_form
-- ----------------------------
ALTER TABLE "FLW_FORM" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_form_resource
-- ----------------------------
ALTER TABLE "FLW_FORM_RESOURCE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_option
-- ----------------------------
ALTER TABLE "FLW_OPTION" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_ru_batch
-- ----------------------------
ALTER TABLE "FLW_RU_BATCH" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE "FLW_RU_BATCH_PART" ADD PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table flw_ru_batch_part
-- ----------------------------
CREATE INDEX "FLW_IDX_BATCH_PART"
  ON "FLW_RU_BATCH_PART" ("BATCH_ID_");

-- ----------------------------
-- Primary Key structure for table flw_script
-- ----------------------------
ALTER TABLE "FLW_SCRIPT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_shortcut
-- ----------------------------
ALTER TABLE "FLW_SHORTCUT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table pay_ali_trade_history
-- ----------------------------
ALTER TABLE "PAY_ALI_TRADE_HISTORY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_app
-- ----------------------------
ALTER TABLE "SYS_APP" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_area
-- ----------------------------
ALTER TABLE "SYS_AREA" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table sys_area
-- ----------------------------
CREATE UNIQUE INDEX "UK_CODE"
  ON "SYS_AREA" ("AREA_CODE");
CREATE INDEX "IDX_PARENT_CODE"
  ON "SYS_AREA" ("PARENT_CODE");

-- ----------------------------
-- Primary Key structure for table sys_code_generate
-- ----------------------------
ALTER TABLE "SYS_CODE_GENERATE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_code_generate_config
-- ----------------------------
ALTER TABLE "SYS_CODE_GENERATE_CONFIG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "SYS_CONFIG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_database_info
-- ----------------------------
ALTER TABLE "SYS_DATABASE_INFO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table sys_database_info
-- ----------------------------
CREATE UNIQUE INDEX "NAME_UNIQUE"
  ON "SYS_DATABASE_INFO" ("DB_NAME");

-- ----------------------------
-- Primary Key structure for table sys_demo_leave
-- ----------------------------
ALTER TABLE "SYS_DEMO_LEAVE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "SYS_DICT_DATA" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "SYS_DICT_TYPE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_emp
-- ----------------------------
ALTER TABLE "SYS_EMP" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_emp_ext_org_pos
-- ----------------------------
ALTER TABLE "SYS_EMP_EXT_ORG_POS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_emp_pos
-- ----------------------------
ALTER TABLE "SYS_EMP_POS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_file_info
-- ----------------------------
ALTER TABLE "SYS_FILE_INFO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "SYS_MENU" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "SYS_NOTICE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_notice_user
-- ----------------------------
ALTER TABLE "SYS_NOTICE_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_oauth_user
-- ----------------------------
ALTER TABLE "SYS_OAUTH_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_op_log
-- ----------------------------
ALTER TABLE "SYS_OP_LOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_org
-- ----------------------------
ALTER TABLE "SYS_ORG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_pos
-- ----------------------------
ALTER TABLE "SYS_POS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table sys_pos
-- ----------------------------
CREATE UNIQUE INDEX "CODE_UNI"
  ON "SYS_POS" ("CODE");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "SYS_ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_role_data_scope
-- ----------------------------
ALTER TABLE "SYS_ROLE_DATA_SCOPE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "SYS_ROLE_MENU" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_sms
-- ----------------------------
ALTER TABLE "SYS_SMS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_tenant_info
-- ----------------------------
ALTER TABLE "SYS_TENANT_INFO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_timers
-- ----------------------------
ALTER TABLE "SYS_TIMERS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "SYS_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_user_data_scope
-- ----------------------------
ALTER TABLE "SYS_USER_DATA_SCOPE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "SYS_USER_ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table sys_vis_log
-- ----------------------------
ALTER TABLE "SYS_VIS_LOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table xn_code_gen_test
-- ----------------------------
ALTER TABLE "XN_CODE_GEN_TEST" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Foreign Keys structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "ACT_DE_MODEL_RELATION" ADD CONSTRAINT "ACT_DE_MODEL_RELATION_IBFK_1" FOREIGN KEY ("MODEL_ID") REFERENCES "ACT_DE_MODEL" ("ID");
ALTER TABLE "ACT_DE_MODEL_RELATION" ADD CONSTRAINT "ACT_DE_MODEL_RELATION_IBFK_2" FOREIGN KEY ("PARENT_MODEL_ID") REFERENCES "ACT_DE_MODEL" ("ID");

-- ----------------------------
-- Foreign Keys structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "ACT_GE_BYTEARRAY" ADD CONSTRAINT "ACT_FK_BYTEARR_DEPL" FOREIGN KEY ("DEPLOYMENT_ID_") REFERENCES "ACT_RE_DEPLOYMENT" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_id_membership
-- ----------------------------
ALTER TABLE "ACT_ID_MEMBERSHIP" ADD CONSTRAINT "ACT_FK_MEMB_GROUP" FOREIGN KEY ("GROUP_ID_") REFERENCES "ACT_ID_GROUP" ("ID_");
ALTER TABLE "ACT_ID_MEMBERSHIP" ADD CONSTRAINT "ACT_FK_MEMB_USER" FOREIGN KEY ("USER_ID_") REFERENCES "ACT_ID_USER" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "ACT_ID_PRIV_MAPPING" ADD CONSTRAINT "ACT_FK_PRIV_MAPPING" FOREIGN KEY ("PRIV_ID_") REFERENCES "ACT_ID_PRIV" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "ACT_PROCDEF_INFO" ADD CONSTRAINT "ACT_FK_INFO_JSON_BA" FOREIGN KEY ("INFO_JSON_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_PROCDEF_INFO" ADD CONSTRAINT "ACT_FK_INFO_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_re_model
-- ----------------------------
ALTER TABLE "ACT_RE_MODEL" ADD CONSTRAINT "ACT_FK_MODEL_DEPLOYMENT" FOREIGN KEY ("DEPLOYMENT_ID_") REFERENCES "ACT_RE_DEPLOYMENT" ("ID_");
ALTER TABLE "ACT_RE_MODEL" ADD CONSTRAINT "ACT_FK_MODEL_SOURCE" FOREIGN KEY ("EDITOR_SOURCE_VALUE_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RE_MODEL" ADD CONSTRAINT "ACT_FK_MODEL_SOURCE_EXTRA" FOREIGN KEY ("EDITOR_SOURCE_EXTRA_VALUE_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_DEADLETTER_JOB" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "ACT_RU_EVENT_SUBSCR" ADD CONSTRAINT "ACT_FK_EVENT_EXEC" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "ACT_RU_EXECUTION" ADD CONSTRAINT "ACT_FK_EXE_PARENT" FOREIGN KEY ("PARENT_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_EXECUTION" ADD CONSTRAINT "ACT_FK_EXE_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");
ALTER TABLE "ACT_RU_EXECUTION" ADD CONSTRAINT "ACT_FK_EXE_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_EXECUTION" ADD CONSTRAINT "ACT_FK_EXE_SUPER" FOREIGN KEY ("SUPER_EXEC_") REFERENCES "ACT_RU_EXECUTION" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "ACT_RU_IDENTITYLINK" ADD CONSTRAINT "ACT_FK_ATHRZ_PROCEDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");
ALTER TABLE "ACT_RU_IDENTITYLINK" ADD CONSTRAINT "ACT_FK_IDL_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_IDENTITYLINK" ADD CONSTRAINT "ACT_FK_TSKASS_TASK" FOREIGN KEY ("TASK_ID_") REFERENCES "ACT_RU_TASK" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_job
-- ----------------------------
ALTER TABLE "ACT_RU_JOB" ADD CONSTRAINT "ACT_FK_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_JOB" ADD CONSTRAINT "ACT_FK_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_JOB" ADD CONSTRAINT "ACT_FK_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_JOB" ADD CONSTRAINT "ACT_FK_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_JOB" ADD CONSTRAINT "ACT_FK_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_SUSPENDED_JOB" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_task
-- ----------------------------
ALTER TABLE "ACT_RU_TASK" ADD CONSTRAINT "ACT_FK_TASK_EXE" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_TASK" ADD CONSTRAINT "ACT_FK_TASK_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");
ALTER TABLE "ACT_RU_TASK" ADD CONSTRAINT "ACT_FK_TASK_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "ACT_RU_TIMER_JOB" ADD CONSTRAINT "ACT_FK_TIMER_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_TIMER_JOB" ADD CONSTRAINT "ACT_FK_TIMER_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_TIMER_JOB" ADD CONSTRAINT "ACT_FK_TIMER_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_TIMER_JOB" ADD CONSTRAINT "ACT_FK_TIMER_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_TIMER_JOB" ADD CONSTRAINT "ACT_FK_TIMER_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "ACT_RE_PROCDEF" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "ACT_RU_VARIABLE" ADD CONSTRAINT "ACT_FK_VAR_BYTEARRAY" FOREIGN KEY ("BYTEARRAY_ID_") REFERENCES "ACT_GE_BYTEARRAY" ("ID_");
ALTER TABLE "ACT_RU_VARIABLE" ADD CONSTRAINT "ACT_FK_VAR_EXE" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");
ALTER TABLE "ACT_RU_VARIABLE" ADD CONSTRAINT "ACT_FK_VAR_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "ACT_RU_EXECUTION" ("ID_");

-- ----------------------------
-- Foreign Keys structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE "FLW_RU_BATCH_PART" ADD CONSTRAINT "FLW_FK_BATCH_PART_PARENT" FOREIGN KEY ("BATCH_ID_") REFERENCES "FLW_RU_BATCH" ("ID_");
