/*
 Navicat Premium Data Transfer

 Source Server         : pgsql本地数据库
 Source Server Type    : PostgreSQL
 Source Server Version : 130002
 Source Host           : localhost:5432
 Source Catalog        : xiaonuo-vue-postgresql
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130002
 File Encoding         : 65001

 Date: 12/04/2021 16:48:40
*/


-- ----------------------------
-- Table structure for act_de_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_de_databasechangelog";
CREATE TABLE "public"."act_de_databasechangelog" (
  "ID" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "AUTHOR" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "FILENAME" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "DATEEXECUTED" timestamp(6) NOT NULL,
  "ORDEREXECUTED" int4 NOT NULL,
  "EXECTYPE" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "MD5SUM" varchar(35) COLLATE "pg_catalog"."default",
  "DESCRIPTION" varchar(255) COLLATE "pg_catalog"."default",
  "COMMENTS" varchar(255) COLLATE "pg_catalog"."default",
  "TAG" varchar(255) COLLATE "pg_catalog"."default",
  "LIQUIBASE" varchar(20) COLLATE "pg_catalog"."default",
  "CONTEXTS" varchar(255) COLLATE "pg_catalog"."default",
  "LABELS" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_databasechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for act_de_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_de_databasechangeloglock";
CREATE TABLE "public"."act_de_databasechangeloglock" (
  "ID" int4 NOT NULL,
  "LOCKED" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "LOCKGRANTED" timestamp(6),
  "LOCKEDBY" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_databasechangeloglock
-- ----------------------------

-- ----------------------------
-- Table structure for act_de_model
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_de_model";
CREATE TABLE "public"."act_de_model" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "model_key" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4000) COLLATE "pg_catalog"."default",
  "model_comment" varchar(4000) COLLATE "pg_catalog"."default",
  "created" timestamp(6),
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "last_updated" timestamp(6),
  "last_updated_by" varchar(255) COLLATE "pg_catalog"."default",
  "version" int4,
  "model_editor_json" text COLLATE "pg_catalog"."default",
  "thumbnail" bytea,
  "model_type" int4,
  "tenant_id" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_model
-- ----------------------------
INSERT INTO "public"."act_de_model" VALUES ('4bd58cbc-60b7-11eb-a285-5405dbb6a472', '用车申请', 'car_model', '用车申请', NULL, '2021-01-27 23:49:52.991', 'superAdmin', '2021-01-27 23:56:03.811', 'superAdmin', 1, '{"modelId":"4bd58cbc-60b7-11eb-a285-5405dbb6a472","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"car_model","name":"用车申请","documentation":"用车申请","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737"}],"bounds":{"lowerRight":{"x":140,"y":207},"upperLeft":{"x":110,"y":177}},"dockers":[]},{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A"}],"bounds":{"lowerRight":{"x":285,"y":232},"upperLeft":{"x":185,"y":152}},"dockers":[]},{"resourceId":"sid-73A2336A-EF01-45E5-9E8E-9B8994017737","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}],"bounds":{"lowerRight":{"x":184.15625,"y":192},"upperLeft":{"x":140.609375,"y":192}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-BB070528-C3E8-423E-B409-F6D72DA3D869"}},{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330","properties":{"overrideid":"","name":"领导审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4940"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D"}],"bounds":{"lowerRight":{"x":430,"y":232},"upperLeft":{"x":330,"y":152}},"dockers":[]},{"resourceId":"sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}],"bounds":{"lowerRight":{"x":329.15625,"y":192},"upperLeft":{"x":285.84375,"y":192}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"}},{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8","properties":{"overrideid":"","name":"","documentation":"","executionlisteners":"","asynchronousdefinition":"false"},"stencil":{"id":"ThrowNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":488,"y":207},"upperLeft":{"x":458,"y":177}},"dockers":[{"x":473,"y":192}]},{"resourceId":"sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}],"bounds":{"lowerRight":{"x":457.46875,"y":192},"upperLeft":{"x":430.40625,"y":192}},"dockers":[{"x":50,"y":40},{"x":15,"y":15}],"target":{"resourceId":"sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\000\\370\\000\\000\\000@\\010\\006\\000\\000\\0007H\\272\\023\\000\\000\\006cIDATx\\332\\355\\234KH\\243W\\030\\206]\\314\\242\\013Q\\021EA\\027.\\272\\250\\322\\331\\271\\250\\222E\\226\\202\\005]x7\\032/\\005o+\\245\\005-\\242C7""6\\265\\336\\350\\242tQ(\\024\\2654\\024\\005\\343%\\211V\\255h\\247\\3304\\216\\343\\255h\\210\\306a\\034\\315\\324\\230Q\\347\\364\\373\\342\\245j\\215\\243\\371\\023\\215\\277\\357\\003\\207L\\230$\\352\\233\\367\\3119\\377\\371\\223\\004\\004\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\300\\011B\\210GKKK?NLL\\034\\016\\016\\016\\212\\201\\201\\001Y\\016\\235N''\\014\\006\\303\\013\\032*d,\\277\\214\\201\\033\\270xF\\243Q\\330l6\\341t:e=677\\205^\\257\\337\\246"\\246!cye\\014\\334\\300\\263\\312C(\\336\\231\\002:i\\2661#cye\\014\\334\\300K\\306\\313\\236\\244\\245\\251o\\205I\\367\\205\\353Rn\\005\\244\\362\\355#cye\\014\\334\\300\\307N\\027\\237\\234U\\323\\317\\342\\217_>;\\035k&\\255\\334\\312''\\220\\261\\2742\\0067(\\337\\237\\003O\\316\\225\\217\\257\\243|\\310\\030\\202\\313Dp^6\\236-\\037_G\\371\\2201\\004\\227\\211\\340\\317\\307\\276>W>\\276\\216\\362!c\\010.\\023\\301y\\234-\\237\\0147\\200\\0042\\206\\340\\017V\\360\\371\\261\\326s\\345\\343\\353(\\0372\\206\\340\\367\\\\p\\373\\226\\345\\\\\\351.\\016\\376\\177\\224\\017\\031C\\360{*\\370U\\305\\223\\323R\\362.\\005G\\306\\300/\\216\\301\\345<\\374\\345\\030\\034\\031\\003\\224\\017\\202#c\\200\\362Ap\\010~\\353\\244\\247\\247\\007fee}J\\243\\217\\306\\036\\015\\221\\235\\235\\355T\\251T\\243\\364\\357''\\271\\271\\271\\321\\020\\034\\202#c\\357xE>\\031n\\315+\\372\\201\\344\\261j\\255\\256\\256\\316\\254\\327\\353\\377!\\004\\343p8\\304\\364\\364\\264\\350\\350\\350\\330),,\\264\\027\\024\\024|E\\343=\\010\\016\\301\\221\\361\\365\\274\\312\\310\\310\\260*\\225\\312\\027\\217\\037?~\\033\\034\\034\\314?G\\004\\006\\006\\212\\270\\2708\\221\\224\\224\\344 \\311\\355yyy->\\363*33\\263\\245\\244\\244\\304\\272\\274\\274|d\\265\\033vvvDSS\\223\\243\\250\\250h\\205^\\225\\336\\207\\340\\020\\034\\031\\273''''''G\\243P(\\354\\341\\341\\341"55U\\364\\366\\366\\012\\273\\335\\356r\\211/\\373\\372\\372\\004\\317\\346\\021\\021\\021"99y\\217\\004_\\364\\272W$wuUU\\225\\225g\\352\\353222rH\\263\\371\\332]H\\216\\362!\\343\\373\\2201\\311\\375yBB\\202#**J\\214\\217\\217_\\351\\323\\354\\354\\254\\210\\216\\216\\026j\\265\\232\\275Z\\365\\232W$\\367\\207\\364\\200\\333<3\\337\\024\\222\\\\\\320}\\227\\371\\370\\002\\345\\203\\340\\310\\370\\274W\\211\\211\\211{,7\\255\\212\\257\\345\\023\\337.&&FTTT\\274\\315\\317\\317\\177\\356\\025\\257H\\320\\031\\203\\301\\360FxHss\\363k\\372e\\276D\\371 82\\376\\017r\\302\\034\\032\\032\\372\\316\\231\\333\\335L^[[\\273E+\\200f\\251\\007\\377\\212\\312\\312\\312\\227\\007\\007\\007\\236\\372\\355:&\\247e\\305\\366m\\356\\256\\243|\\310\\330\\2373f\\257\\010gJJ\\212GN\\3611yMM\\215\\240\\027\\211-I^\\321\\003|\\337\\335\\335}($\\322\\336\\336\\276\\301[\\375\\276(\\032=\\3560\\015%\\312\\347;\\301\\221\\261\\347\\031_\\226]ii\\351O\\261\\261\\261B\\253\\325z\\344\\023o\\274\\305\\307\\307\\013\\215F\\263,\\311\\253\\342\\342b\\323\\342\\342\\242T\\277\\305\\324\\324\\224\\203\\226\\023z\\037\\225O\\034\\217\\323 Q>d\\354G\\202\\377/;\\022|!((\\350t\\267\\374\\246\\360\\375\\370\\024\\332\\344\\344\\344K~\\\\)\\273|on\\262s\\356\\016~\\014>y\\357\\343\\362\\235\\006\\211\\362!c?\\024\\3744;\\362\\352 \\300\\365\\325\\362\\236\\303\\367?\\366\\312!\\351\\211\\365\\026\\227\\374\\241>\\033\\017\\265|\\310\\370\\376d\\034\\022\\022"y\\006?\\361J\\312f\\200\\323K3\\370kI\\2574X>b\\211.\\243%:\\257\\214\\023\\023\\023%\\037\\203\\357\\356\\356\\256K\\362J\\245RM\\314\\315\\315\\035H\\025\\334h4.I:V\\300\\006\\0206\\331d\\264\\311\\306\\247\\236\\253\\252\\252\\\\\\357\\\\\\363t5\\\\__/\\206\\207\\207\\237J\\362\\212\\356\\334\\332\\331\\331\\371L\\252\\340uuuFz\\254Z\\234\\302\\301i2d|\\344\\025\\261\\021\\031\\031\\311\\033\\320\\036\\235\\007\\267Z\\255\\242\\272\\272z@\\222W\\264D\\377\\200fq\\213C\\302:}aa\\301B\\277\\304\\032=V\\030\\312\\007\\301\\221\\361\\221Wj\\265z]\\243\\321\\034\\262\\2547}''[KK\\213\\230\\237\\2377\\221W\\253\\222\\275\\312\\314\\314\\374\\246\\251\\251I\\357\\351\\3569\\277U\\225~\\211OP>\\010\\216\\214\\317{E\\263\\370S^j\\263\\344\\357\\232\\311y\\346f\\271\\371\\366\\344\\325>\\277U\\325+^\\035\\177NuU\\253\\325N\\336T\\356\\212\\212\\2129^\\216\\340\\303&\\020\\034\\031_\\352\\325Z\\177\\177\\377\\263\\216\\216\\016\\021\\026\\026&\\322\\322\\322\\\\\\033o\\027?MF\\253h\\327\\213\\000M\\264.\\257\\312\\312\\312L^\\365\\212\\227\\024,ycc\\343\\320u\\226\\353\\243\\243\\243[yyy\\233\\374.\\033\\245R\\371\\010\\202Cpd\\354\\336+ZrO\\254\\257\\257\\357744\\010\\205B\\341:\\205\\026p\\374yp\\336-\\347Y\\233\\217\\271\\015\\006\\203\\225\\274\\262\\371\\304+~\\305\\341e\\005\\177\\341C[[\\333\\214\\331l\\336=q\\235/WVV\\370\\263\\254;4k[\\3506St\\333\\217\\002\\356\\010\\224\\017\\031\\337\\227\\214\\317xe\\351\\352\\352\\372\\213\\274r^\\364\\252\\247\\247\\347Uyy\\371Znn\\356o>\\367\\352\\370U\\247\\225.\\307\\316~\\265\\214Z\\255\\376=''''\\347;>%p\\027\\2636\\312\\007\\301\\357s\\306''^\\221C\\277\\236\\365\\212\\216\\265g\\374\\305+\\277\\001\\345C\\306\\370\\322E\\010\\216\\362!c\\010\\016\\301Q>d\\014\\301!8\\004G\\306\\000\\345\\203\\340\\310\\030\\240|\\020\\034\\031\\003\\224\\017\\202Cp\\010\\216\\362!c\\010\\016\\301Q>d\\014\\301!8\\312\\207\\214\\001\\004\\207\\340\\310\\030\\370\\210\\301\\301\\301\\207V>\\007\\225o\\037\\031\\313+c\\340\\006\\376X\\235\\315f{0\\345\\263X,?P\\371\\314\\310X^\\031\\0037\\014\\015\\015\\245\\214\\214\\214\\274\\332\\330\\330\\330\\225\\373\\254\\302\\305\\323\\351t\\177\\323HC\\306\\362\\312\\030\\\\\\001=\\031\\037\\323+\\356\\024/\\253\\370\\330I\\246\\203\\3776\\363]\\025\\017\\031\\003\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\274\\312\\277<\\227m\\327\\024\\314S\\276\\000\\000\\000\\000IEND\\256B`\\202', 0, NULL);
INSERT INTO "public"."act_de_model" VALUES ('674afd8b-f3fb-11ea-abe7-e0d55e485056', '出差流程', 'travel', '出差流程', NULL, '2020-09-11 14:52:48.062', 'superAdmin', '2020-09-11 14:55:52.718', 'superAdmin', 1, '{"modelId":"674afd8b-f3fb-11ea-abe7-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"travel","name":"出差流程","documentation":"出差流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-170CF235-7CA9-4E7A-8392-75AA1F532611","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"}},{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13","properties":{"overrideid":"","name":"经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4446"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"}},{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859","properties":{"overrideid":"","name":"领导会签","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"Parallel","multiinstance_cardinality":"${num}","multiinstance_collection":"pers","multiinstance_variable":"per","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"static","assignee":"${per}"}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-64A789A3-6EDA-4C69-836E-C233B7269859"}},{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:5494"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}],"bounds":{"lowerRight":{"x":609.15625,"y":178},"upperLeft":{"x":565.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-6D4A69E7-A765-49EC-94C6-C238AF325027"}},{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":778,"y":192},"upperLeft":{"x":750,"y":164}},"dockers":[]},{"resourceId":"sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}],"bounds":{"lowerRight":{"x":750,"y":178},"upperLeft":{"x":710.5625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\001\\025\\000\\000\\000.\\010\\006\\000\\000\\000\\006$\\2158\\000\\000\\004EIDATx\\332\\355\\235\\317K\\033i\\030\\307=x\\354q\\217{\\350\\241\\207=\\354a\\377\\200=\\344\\017(\\354\\245\\342\\217$\\212\\030a\\275\\225\\200x\\360R\\013"\\353\\036\\026\\251\\254\\245\\330\\223\\007\\025\\221\\256\\206\\322\\005\\243\\325HA\\020Y\\226\\335E6`\\330\\356\\022E\\255\\365G\\355jj\\302\\333\\347\\221\\211\\210\\246m\\232\\214\\231\\311\\353\\347\\003/\\201v\\350\\364\\223g\\336o\\236yg\\206\\251\\251\\001\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000P\\2141\\265\\251Tjbii)7;;kfff<\\033\\361x\\334$\\022\\211W2B\\370\\341w\\035\\374\\254D\\013\\266\\270\\270h\\266\\266\\266L&\\223\\361|loo\\233\\205\\205\\205})\\340\\035\\374\\360\\263\\335\\317J\\364\\027\\340|\\301~\\177\\332y:\\336\\354\\246\\275,\\\\F~\\031V\\361\\303\\317v?+\\321\\226\\362\\374\\027\\226/\\332\\352\\363\\037<\\375E\\220\\242\\235\\340\\207\\237\\355~V\\242\\347\\212\\205\\212\\366W\\374\\276\\327E3\\370\\341g\\273\\337\\265\\012\\025\\257\\317]\\257\\372\\240\\304\\017?B\\245\\002\\241\\242\\347\\251\\371\\242%_<\\260\\356\\240\\304\\017?B\\245\\202\\241\\222/\\326\\305a\\313A\\211\\037~\\204\\212G\\247?~\\031W\\325>\\343\\207\\337\\265\\015\\225\\306\\306\\306o\\033\\032\\032&\\3443-\\237F\\306^}}\\375\\023\\371\\014\\020*\\370\\341gO\\250\\310\\034\\377JFD\\346\\366=\\371\\274\\333\\324\\324\\364\\215\\353\\201"\\377\\370\\217\\241Ph\\177ll,\\265\\276\\276~l\\204\\235\\235\\235\\223\\221\\221\\221?d\\207\\007\\362\\367\\017\\002\\201@-E\\303\\017\\277\\352\\365\\253\\253\\253\\273%s\\371\\271\\004I\\326i\\034\\316\\206\\314\\363\\227\\362\\347!W\\346\\271\\006J4\\032\\335\\330\\335\\3355\\2058888\\356\\350\\350\\370M\\266\\033\\242h\\370\\341W\\235~\\032(\\022\\032\\377h\\200\\264\\267\\267\\233\\301\\301A3>>n\\206\\207\\207Mgg\\347Y\\270\\350\\331I\\331\\247<---o?\\024(\\347\\203E;\\026\\335\\236\\242\\341\\207_\\365\\371i\\207\\242\\241\\321\\333\\333\\253\\363\\371\\322\\034_YY1\\221H$\\347\\004\\313O%\\357H\\002%655ul\\212`tt\\364\\317\\262S\\214\\203\\022?\\374*\\356\\347\\254\\241d\\265C)\\024(y\\326\\326\\326L8\\034~''\\301r\\022\\014\\006\\277,5T\\366\\3649\\207b\\3205\\026]\\274\\245h\\370\\341W]~2o\\277\\327\\016dhh\\350\\223\\363\\274\\277\\277\\377P\\267\\325\\005\\334Rwf>\\007\\335\\276\\304\\375\\254\\352J\\263t:_[Z4\\374\\360\\363\\235_\\336K\\306\\317:wu\\015\\345S\\3506\\316\\372\\312\\275R;\\225\\375\\317\\350T\\314\\305\\025\\343R\\206\\237\\213\\206\\037~6\\373\\025\\323\\251\\014\\014\\014d\\312\\352T"\\221\\310\\257\\323\\323\\323\\271bBerr\\362_\\326T\\360\\303\\257\\372\\374\\264\\003\\323\\240\\210F\\243&\\233\\315~p\\216\\353\\005\\233`0xz\\271Y\\257\\026\\225s\\365\\347]\\021W\\177tg\\207n\\334\\010\\307A\\211\\037~\\225\\367\\223\\271\\376\\267\\206\\305\\362\\362r\\3019\\256a\\323\\323\\323\\223s\\272\\232XY_b[[\\333\\243\\356\\356\\356\\243\\217\\334\\247b\\272\\272\\272\\322\\362\\237zL\\321\\360\\303\\257j/)\\337\\321\\300hmm\\315%\\223\\311K\\035\\312\\271@\\371O\\306\\315\\262\\277H\\331\\321\\303\\346\\346\\346\\214^^\\316\\257\\261\\350\\032J,\\026;\\014\\207\\303G\\032(\\322\\016\\335\\240h\\370\\341W\\275~\\372\\030\\216s\\367l\\256\\257\\257\\357P\\027eu\\015%\\177\\312\\343\\004J\\240\\306-\\364TH\\002\\344\\027\\031\\257\\235\\035\\277\\011\\205B\\317x\\366\\007?\\374\\354\\361\\323\\033\\333dN\\037\\025X\\310\\215\\271\\322\\241x\\001\\007%~\\370y\\376@\\341\\027\\316\\275+\\247\\017\\024\\226\\274(K\\250pP\\342\\207\\237\\225pP\\342\\207\\037\\241B\\250\\340\\207\\037\\241B\\250pP\\342\\207\\3375\\341\\342{U|2\\216\\256\\352\\2751\\370\\341\\347''?+I$\\022\\033~y\\245d~\\244\\323\\3511\\267\\336\\000\\207\\037~~\\366\\263\\222\\271\\271\\271\\357\\346\\347\\347\\367677\\377\\367\\303/\\200\\026,\\036\\217\\277t\\353]\\265\\370\\341\\347g?k\\221/\\350\\266$\\357\\262\\266t\\037{\\353}\\005\\206\\356\\177\\325\\355\\202\\341\\207\\237\\237\\375\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\300\\015\\336\\003\\010v\\376m\\240;\\313\\037\\000\\000\\000\\000IEND\\256B`\\202', 0, NULL);
INSERT INTO "public"."act_de_model" VALUES ('6faec554-df94-11ea-aecf-fa1265c5e47d', '请假流程', 'leave', '请假流程', '', '2020-08-16 15:45:20.9', 'superAdmin', '2020-09-22 21:34:05.404', 'superAdmin', 2, '{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\001\\014\\000\\000\\0004\\010\\006\\000\\000\\000\\177\\322\\006\\347\\000\\000\\005\\031IDATx\\332\\355\\233;L[W\\034\\2073d\\350\\220\\241c\\207\\016\\331\\332\\241C+u\\350\\320\\201!C\\207H\\355\\000\\0300\\017#Y\\002,,\\213GU\\201j)\\342!@\\035"!\\214\\027\\006\\330*1BT\\012\\266\\003FB\\246)*U\\222\\0225\\011i\\007\\013a:P\\212\\033\\203\\015\\247\\347\\037\\331\\2521\\217\\370u\\261\\257\\374}\\322\\221e\\373^\\035\\374\\323\\377|\\367\\234s/7n\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\300\\365\\241\\224\\272\\271\\275\\275=\\033\\012\\205N\\374~\\277ZZZ*\\333\\346\\363\\371T0\\030\\374K\\267F\\3620>\\017\\262\\200sHA\\254\\256\\256\\252H$\\242\\216\\216\\216\\312\\276\\355\\355\\355\\251\\225\\225\\225\\277u\\201T\\223\\207\\261y\\220\\005\\234C\\256\\036\\351\\005\\361\\344G\\267\\372\\365\\301\\327o^\\313\\2700\\216\\364Ue\\213<\\214\\315#3\\0133\\344adm\\200F\\246\\232\\351\\201K1\\244Z9_MtQ\\304\\311\\303\\330<2\\2630K\\036F\\325\\006hd\\375g\\322\\001\\242\\310\\303\\330<2\\2630\\2210\\024#\\033a \\014\\204\\2010\\312M\\030\\317\\327\\274o\\212A^\\021Fe\\347q\\2210\\314\\220\\007\\302\\270\\016a\\304b\\352\\361B\\377\\231+\\210\\274\\227\\317+R\\030\\344qV\\030&\\312\\003a\\\\\\2030\\322\\013!\\263U\\2420\\310\\343\\2540\\314\\224\\007\\302\\270\\306%\\211Y\\332u-I*9\\017\\262\\000\\212\\202<\\310\\002(\\012\\362@\\030\\245\\024FCC\\303\\307uuu\\275\\272\\335\\223W\\213\\305\\362\\231!\\035UUU\\335\\234\\230\\230\\370V\\363GKK\\313\\251\\356L\\331l6\\345v\\273\\367\\246\\247\\247\\247<\\036\\317-\\204\\2010\\020Fy\\012C\\217\\327*-\\207_d\\334^\\320\\236\\313\\367E\\353lll\\354\\003\\227\\313\\2653<<|\\272\\261\\261\\241\\016\\016\\016\\224\\020\\215F\\325\\346\\346\\246\\032\\031\\031Q\\372\\373\\350\\334\\334\\334\\347\\010\\003a \\214\\362\\022F}}\\375\\210n\\011\\221\\203\\303\\341P^\\257W\\315\\316\\316\\252\\251\\251)\\345t:\\323\\305\\361]\\301\\235Y\\255\\326\\367u''\\321\\205\\205\\005\\225H$\\324e\\004\\002\\001\\325\\323\\323\\023\\037\\037\\037\\377\\204\\001\\2020\\020Fy\\010Cd\\221\\022\\202\\276\\240\\237\\033\\303\\362^>\\327\\343\\274pi\\3102\\244\\275\\275\\375\\205\\310"\\033D\\032\\235\\235\\235\\373555\\267(\\012\\204\\2010J+\\014Yf\\350\\026\\027\\021\\204B\\241+\\307\\256|\\237\\222Fmm\\355\\235|\\355\\364\\325\\300\\300@\\354\\252\\231E&\\262<\\031\\034\\034\\374\\206\\242@\\030\\010\\243\\344\\302x\\234\\232Yd\\203\\034\\227\\332\\323\\220\\311B\\316\\035\\332\\355\\366e\\331\\263\\310\\005\\331\\323\\350\\352\\352zV\\244\\037\\3740\\265\\031S\\351E\\221\\236\\005yP\\033o\\313E\\267Oe\\360wtt\\234d{\\301\\227\\343\\034\\016\\307\\261\\234\\227\\327\\335\\023=Ey\\235\\332\\340\\314\\026\\331\\010mjj:.\\322\\217O\\031\\357!\\003\\344\\377,\\244 \\310\\203\\332xK./\\344U68sA6B\\223\\347\\367\\346\\325y>\\\\r\\353\\246\\240f\\346\\242 \\017c\\3630\\2730\\214\\250\\217T\\223\\273!\\271 \\307''\\317\\275\\227\\317C\\036\\321|f\\030\\215\\215\\2151\\246\\235,IX\\222\\224tI"\\017g)\\217\\307s\\234\\313\\370\\235\\234\\234\\334/d\\2061\\267\\276\\276\\276\\227\\353\\036\\206\\335n_cc\\213MO6=K\\267\\351i\\261X>\\222\\201\\337\\332\\332\\032\\223\\213x\\266\\027{}\\374\\241\\234''O\\204\\346u\\227\\304\\351t>\\315E\\030n\\267;\\254\\377\\330:\\212\\002a \\214\\222\\337%Y\\225\\301?44tr||\\365DC\\276\\037\\035\\035\\215''g\\027\\217\\362~\\016CN\\326\\353\\232g\\331\\310bqqq\\337j\\265\\376\\306s\\030\\010\\003a\\224\\2050n\\353\\266#\\022\\350\\355\\355=\\015\\207\\303\\027\\216[\\371\\274\\257\\257\\357$)\\0139\\376vAOz\\352\\351\\311\\313\\231\\231\\231\\225D"\\021\\277L\\026\\363\\363\\363/\\233\\233\\233\\177/\\2503\\212\\202<\\310\\242\\330Oz~\\250\\307\\344\\253\\324&hww\\367\\231G\\303\\373\\373\\373\\323\\237\\362|%\\307\\027\\345\\361p\\231i\\264\\265\\265\\375\\254\\177\\244\\357\\360\\360p7\\271\\346\\211\\255\\255\\255\\375\\344r\\271\\236\\352\\216\\236\\030%\\013\\212\\202<\\310"\\177l6\\333\\273\\026\\213\\345\\276\\036\\237\\377\\\\r7E>\\367\\352\\225\\301{E\\3534\\271<\\251\\226\\215\\320\\264\\216\\345\\365\\007-\\213F#\\226!\\024\\005y\\220EQ\\305\\361\\216\\036\\253_d\\374{\\373]\\243\\307nI\\240(\\310\\203,\\200\\242 \\017\\262\\000\\006\\010\\302@\\030\\010\\003a \\014\\204\\2010\\020\\006\\302@\\030\\010\\003a \\014\\204\\2010\\020\\006EA\\036d\\001W\\342\\367\\373\\315X\\024\\257uQ\\304\\311\\303\\330<\\310\\002\\316\\021\\014\\006w"\\221\\210\\251\\212"\\034\\016\\177\\257\\213b\\213<\\214\\315\\203,\\340\\034\\201@\\340\\313\\345\\345\\345\\375\\335\\335\\335\\177\\315p\\365\\220\\202\\360\\371|\\177\\352VM\\036\\306\\346A\\026p!:\\340\\273\\332\\312\\217d*''\\353\\2772n\\362\\367m\\031]\\020\\344A\\026\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000P!\\374\\007\\023\\324\\301\\311\\267C\\004r\\000\\000\\000\\000IEND\\256B`\\202', 0, NULL);
INSERT INTO "public"."act_de_model" VALUES ('82114da5-e0f6-11ea-9096-e0d55e485056', '转正流程', 'formal', '转正流程', NULL, '2020-08-18 09:59:53.388', 'superAdmin', '2020-08-31 09:55:35.221', 'superAdmin', 1, '{"modelId":"82114da5-e0f6-11ea-9096-e0d55e485056","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"formal","name":"转正模型","documentation":"转正模型","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"","eventlisteners":"","signaldefinitions":"","messagedefinitions":"","escalationdefinitions":"","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false"},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"","name":"开始","documentation":"","executionlisteners":"","initiator":"","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":""},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4","properties":{"overrideid":"","name":"填写申请单","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8"}],"bounds":{"lowerRight":{"x":274.4890581296828,"y":217.09854567332218},"upperLeft":{"x":174.48905812968277,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}],"bounds":{"lowerRight":{"x":173.87686255641609,"y":177.8720425939571},"upperLeft":{"x":130.54148164110265,"y":177.51525016837908}},"dockers":[{"x":15,"y":15},{"x":50.000000000000014,"y":40}],"target":{"resourceId":"sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"}},{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2","properties":{"overrideid":"","name":"部门经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]","$$hashKey":"object:4403"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}],"bounds":{"lowerRight":{"x":319.54903503781736,"y":177.68745140354622},"upperLeft":{"x":274.94002309186544,"y":177.41109426977596}},"dockers":[{"x":50.000000000000014,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"}},{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D","properties":{"overrideid":"","name":"主管审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280709549107552257","firstName":"徐玉祥[xuyuxiang]","$$hashKey":"object:4601"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A"}],"bounds":{"lowerRight":{"x":561.1496536284474,"y":217.09854567332218},"upperLeft":{"x":461.1496536284473,"y":137.09854567332218}},"dockers":[]},{"resourceId":"sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}],"bounds":{"lowerRight":{"x":460.526748917857,"y":177.67669607889732},"upperLeft":{"x":420.6229047105904,"y":177.42184959442486}},"dockers":[{"x":50,"y":40},{"x":50.000000000000036,"y":40}],"target":{"resourceId":"sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"}},{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431","properties":{"overrideid":"","name":"总经理审批","documentation":"","asynchronousdefinition":"false","exclusivedefinition":"false","executionlisteners":"","multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":"false","usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"user","assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]","$$hashKey":"object:4796"}}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":"","skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D"}],"bounds":{"lowerRight":{"x":710,"y":218},"upperLeft":{"x":610,"y":138}},"dockers":[]},{"resourceId":"sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}],"bounds":{"lowerRight":{"x":609.5770517690605,"y":177.6946329924341},"upperLeft":{"x":561.5726018593869,"y":177.40391268088808}},"dockers":[{"x":50.000000000000036,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"}},{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6","properties":{"overrideid":"","name":"结束","documentation":"","executionlisteners":""},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":783,"y":192},"upperLeft":{"x":755,"y":164}},"dockers":[]},{"resourceId":"sid-982850A7-599B-4944-B40A-58D0E584E60D","properties":{"overrideid":"","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}],"bounds":{"lowerRight":{"x":754.375,"y":178},"upperLeft":{"x":710.390625,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"}}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\001\\025\\000\\000\\000.\\010\\006\\000\\000\\000\\006$\\2158\\000\\000\\004yIDATx\\332\\355\\235\\275K[Q\\030\\306\\035\\034:t\\354\\320\\241C\\207\\016\\016\\035\\372\\007t\\010\\235\\013.\\206\\370\\021\\214b\\304\\020\\220\\024! \\016\\242\\201\\014\\021A\\264\\202\\213\\213T\\252\\266\\245\\016\\241\\223Qc\\244T\\010\\016-\\204\\330\\200B\\221\\0204mcS\\243\\244&\\236\\276o\\310\\005\\265\\206\\330|\\230\\334s\\236\\037\\034\\022\\343\\305\\303\\223\\207\\363\\334\\367\\234{\\256\\267\\241\\001\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\020B4\\356\\355\\355\\275\\335\\332\\332\\312\\256\\256\\256\\212\\225\\225\\225\\2325\\237\\317''\\002\\201\\300wjf\\350S\\3337U4J\\011\\233\\266\\271\\271)\\016\\017\\017E:\\235\\256y\\213\\307\\343bcc\\343\\027\\231\\330\\002}\\352\\372\\246\\212F)\\341\\263\\300E\\323>\\177p\\346\\332\\357D\\264\\226\\346\\245\\351\\354\\020\\206>u}SE\\243\\224pYy\\361K\\323\\214\\013\\257{jzV \\343\\316\\240O]\\337T\\321(%<_\\274\\316\\270\\220\\317Uk\\343\\004\\364\\251\\353\\233*\\032\\225\\012\\225Z\\317_\\253\\035*z\\327''\\273o\\252h\\224>Tx\\256\\252\\031\\027\\371\\370R\\272P\\221I\\237\\354\\276\\251\\242Q\\352P\\321\\014\\273\\332d\\011\\025\\331\\364\\311\\356\\233*\\032\\225\\230\\376\\324K\\253\\326\\364G\\026}\\262\\373\\246\\212F\\204\\012B\\005\\241\\202P\\251J\\250\\264\\265\\265\\335\\243fmmm\\035\\241\\327\\027F\\243\\361QU\\006<\\375\\361\\247v\\273\\335\\337\\335\\335}D\\235\\211\\216\\216\\216\\343\\366\\366\\366Ez\\377\\020\\306!T\\020*r\\204\\212\\311d\\232\\2401}\\312c\\374b\\243\\317\\227i\\314?\\250XG\\203\\203\\203\\357\\254Vk\\326\\353\\365\\212X,&\\030\\336\\0104??\\177b6\\233S\\324\\251\\001\\306!T\\020*\\372\\326H\\343\\370\\025\\007\\010\\025\\013\\347\\036\\217''\\273\\260\\260 \\246\\247\\247s?\\347\\303e\\237\\336?)\\273\\243\\241\\241\\241\\345\\341\\341\\341\\363D"!\\256\\203\\267.\\367\\364\\364\\374\\244\\022\\351.\\214C\\250 T\\364\\251\\221\\002\\243\\205\\203\\203f"\\347\\221H\\344\\322\\030\\347\\261\\357r\\271\\264\\252e\\277\\254\\331\\211\\315f{\\306\\025J\\241@\\321\\230\\234\\234\\314\\320\\261n\\030\\207PA\\250\\350S#U \\021\\016\\215`0x\\355\\030\\317d2\\027\\203\\305[rG\\016\\207\\343\\023Oy\\212\\261\\263\\263#\\006\\006\\006\\276\\3028\\204\\012BE\\177\\032M&\\323c\\016\\013\\032\\303\\271\\360(\\004\\027\\027f\\2639\\313\\307\\226\\274xK\\245\\3201\\257\\235\\024#\\231L\\012\\213\\305\\362\\247\\214\\322+\\314+\\315\\262\\032''\\253>\\331}\\223]\\243\\246\\215\\232\\213\\203bff\\246\\350X\\237\\232\\232:\\343c\\371\\252P\\251\\235\\212\\233ru\\265\\270\\224V\\317\\306A\\237\\272\\276\\251\\242qii\\251\\3508\\347c\\362\\307\\217\\224\\024*]]]\\311h4Z\\264#.\\213:;;\\323(11\\375\\301\\364G\\227\\325\\230\\355\\246\\225\\212\\307\\343I\\226U\\251\\364\\365\\365\\275\\237\\233\\233+\\332\\021/\\356\\330l\\266 \\214C\\250 T\\364\\247\\221\\002\\242\\211Z\\246\\267\\2677\\267\\224Q\\210\\335\\335]^SIS\\250\\234\\225\\274g\\305h4\\336\\247j\\345\\224/\\033\\027\\202\\027v\\034\\016G\\212*\\225f\\030\\207PA\\250\\350\\366\\222\\362:W n\\267[\\244R\\251\\177\\306\\371\\366\\3666o\\035\\311\\3447\\302M\\224\\325\\031_V\\266\\333\\355\\307\\343\\343\\343"\\024\\012\\011\\355\\3622\\277r\\205\\302\\201b\\261X\\336\\3008\\204\\012BE\\277\\032\\271Z\\241\\300\\210shp\\305\\302S!^?\\231\\235\\235\\025N\\247\\363\\322\\316Z\\203\\301\\320Xv\\207T\\255\\334\\031\\033\\033{=::\\372\\203\\246D\\271\\335u\\364Y\\246\\277\\277\\377K%*\\024\\204\\012B\\005\\241R{\\215\\371`Y/\\260\\220\\273O\\2777W$Pn\\023\\204\\012B\\005\\241R\\0277\\0246\\345\\027os7\\024\\362m8\\\\X4\\350\\021\\204\\012B\\005\\241\\202\\177}\\200P\\201>\\204\\012B\\005\\241\\202PA\\250@#B\\005\\241\\202PA\\250 T\\376\\237\\253\\317V\\251\\223vZ\\255\\347\\376\\310\\242Ov\\337T\\321(%\\201@ V/\\217\\225\\324Z4\\032]\\254\\324S\\340d\\325''\\273o\\252h\\224\\222\\265\\265\\265f\\277\\337\\177tpppR\\017g\\0016\\315\\347\\363}\\253\\324\\363je\\325''\\273o\\252h\\224\\026\\372\\222\\236S\\372\\006\\271\\254+\\364\\324\\373[j\\334\\177\\270\\322\\246\\311\\252Ov\\337T\\321\\010\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\250\\024\\177\\001\\303\\311\\310R3\\224D\\244\\000\\000\\000\\000IEND\\256B`\\202', 0, NULL);

-- ----------------------------
-- Table structure for act_de_model_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_de_model_history";
CREATE TABLE "public"."act_de_model_history" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "model_key" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(4000) COLLATE "pg_catalog"."default",
  "model_comment" varchar(4000) COLLATE "pg_catalog"."default",
  "created" timestamp(6),
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "last_updated" timestamp(6),
  "last_updated_by" varchar(255) COLLATE "pg_catalog"."default",
  "removal_date" timestamp(6),
  "version" int4,
  "model_editor_json" text COLLATE "pg_catalog"."default",
  "model_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_type" int4,
  "tenant_id" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_model_history
-- ----------------------------
INSERT INTO "public"."act_de_model_history" VALUES ('48ce341d-fcd8-11ea-a4d5-e0d55e485056', '请假流程', 'leave', '请假流程', NULL, '2020-08-16 15:45:20.9', 'superAdmin', '2020-08-16 17:00:51.219', 'superAdmin', NULL, 1, '{"modelId":"6faec554-df94-11ea-aecf-fa1265c5e47d","bounds":{"lowerRight":{"x":1200,"y":1050},"upperLeft":{"x":0,"y":0}},"properties":{"process_id":"leave","name":"请假流程","documentation":"请假流程","process_author":"","process_version":"","process_namespace":"http://www.flowable.org/processdef","process_historylevel":"","isexecutable":true,"dataproperties":"","executionlisteners":"{\"executionListeners\":[]}","eventlisteners":"{\"eventListeners\":[]}","signaldefinitions":"[]","messagedefinitions":"[]","escalationdefinitions":"[]","process_potentialstarteruser":"","process_potentialstartergroup":"","iseagerexecutionfetch":"false","messages":[]},"childShapes":[{"resourceId":"startEvent1","properties":{"overrideid":"startEvent1","name":"开始","documentation":"","executionlisteners":{"executionListeners":[]},"initiator":"INITIATOR","formkeydefinition":"","formreference":"","formfieldvalidation":true,"formproperties":"","interrupting":true},"stencil":{"id":"StartNoneEvent"},"childShapes":[],"outgoing":[{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8"}],"bounds":{"lowerRight":{"x":130,"y":193},"upperLeft":{"x":100,"y":163}},"dockers":[]},{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","properties":{"overrideid":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F","name":"填写申请单","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"type":"initiator"}}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F"}],"bounds":{"lowerRight":{"x":275,"y":218},"upperLeft":{"x":175,"y":138}},"dockers":[]},{"resourceId":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","properties":{"overrideid":"sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}],"bounds":{"lowerRight":{"x":174.15625,"y":178},"upperLeft":{"x":130.609375,"y":178}},"dockers":[{"x":15,"y":15},{"x":50,"y":40}],"target":{"resourceId":"sid-54572B0C-206E-423B-AA4A-170EA2547C2F"}},{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","properties":{"overrideid":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4","name":"老俞审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1280700700074041345","firstName":"老俞[laoyu]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D"}],"bounds":{"lowerRight":{"x":420,"y":218},"upperLeft":{"x":320,"y":138}},"dockers":[]},{"resourceId":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","properties":{"overrideid":"sid-A99E5D1C-210A-424B-BC98-FE18780C993F","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}],"bounds":{"lowerRight":{"x":319.15625,"y":178},"upperLeft":{"x":275.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"}},{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","properties":{"overrideid":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45","name":"宝山审批","documentation":"","asynchronousdefinition":false,"exclusivedefinition":true,"executionlisteners":{"executionListeners":[]},"multiinstance_type":"None","multiinstance_cardinality":"","multiinstance_collection":"","multiinstance_variable":"","multiinstance_condition":"","isforcompensation":false,"usertaskassignment":{"assignment":{"type":"idm","idm":{"assignee":{"id":"1275735541155614721","firstName":"俞宝山[yubaoshan]"},"type":"user"},"initiatorCanCompleteTask":false}},"formkeydefinition":"","formreference":"","formfieldvalidation":true,"duedatedefinition":"","prioritydefinition":"","formproperties":"","tasklisteners":{"taskListeners":[]},"skipexpression":"","categorydefinition":""},"stencil":{"id":"UserTask"},"childShapes":[],"outgoing":[{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E"}],"bounds":{"lowerRight":{"x":565,"y":218},"upperLeft":{"x":465,"y":138}},"dockers":[]},{"resourceId":"sid-85466395-9D76-459D-8A07-E235DA564B0D","properties":{"overrideid":"sid-85466395-9D76-459D-8A07-E235DA564B0D","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}],"bounds":{"lowerRight":{"x":464.15625,"y":178},"upperLeft":{"x":420.84375,"y":178}},"dockers":[{"x":50,"y":40},{"x":50,"y":40}],"target":{"resourceId":"sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"}},{"resourceId":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","properties":{"overrideid":"sid-691ED2EA-4956-473D-B92E-76F0ECA9890E","name":"","documentation":"","conditionsequenceflow":"","executionlisteners":"","defaultflow":"false","skipexpression":""},"stencil":{"id":"SequenceFlow"},"childShapes":[],"outgoing":[{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}],"bounds":{"lowerRight":{"x":614.640625,"y":178},"upperLeft":{"x":565.875,"y":178}},"dockers":[{"x":50,"y":40},{"x":14,"y":14}],"target":{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"}},{"resourceId":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","properties":{"overrideid":"sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B","name":"结束","documentation":"","executionlisteners":{"executionListeners":[]}},"stencil":{"id":"EndNoneEvent"},"childShapes":[],"outgoing":[],"bounds":{"lowerRight":{"x":643,"y":192},"upperLeft":{"x":615,"y":164}},"dockers":[]}],"stencil":{"id":"BPMNDiagram"},"stencilset":{"namespace":"http://b3mn.org/stencilset/bpmn2.0#","url":"../editor/stencilsets/bpmn2.0/bpmn2.0.json"}}', '6faec554-df94-11ea-aecf-fa1265c5e47d', 0, NULL);

-- ----------------------------
-- Table structure for act_de_model_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_de_model_relation";
CREATE TABLE "public"."act_de_model_relation" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_model_id" varchar(255) COLLATE "pg_catalog"."default",
  "model_id" varchar(255) COLLATE "pg_catalog"."default",
  "relation_type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_de_model_relation
-- ----------------------------

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_evt_log";
CREATE TABLE "public"."act_evt_log" (
  "LOG_NR_" int8 NOT NULL,
  "TYPE_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TIME_STAMP_" timestamp(6) NOT NULL,
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "DATA_" bytea,
  "LOCK_OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "LOCK_TIME_" timestamp(6),
  "IS_PROCESSED_" int2
)
;

-- ----------------------------
-- Records of act_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ge_bytearray";
CREATE TABLE "public"."act_ge_bytearray" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "BYTES_" bytea,
  "GENERATED_" int2
)
;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------
INSERT INTO "public"."act_ge_bytearray" VALUES ('1294922083660345346', 1, '请假流程.bpmn20.xml', '1294922083219943426', E'<?xml version="1.0" encoding="UTF-8"?>\\012<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:flowable="http://flowable.org/bpmn" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:omgdi="http://www.omg.org/spec/DD/20100524/DI" typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath" targetNamespace="http://www.flowable.org/processdef">\\012  <process id="leave" name="\\350\\257\\267\\345\\201\\207\\346\\265\\201\\347\\250\\213" isExecutable="true">\\012    <documentation>\\350\\257\\267\\345\\201\\207\\346\\265\\201\\347\\250\\213</documentation>\\012    <startEvent id="startEvent1" name="\\345\\274\\200\\345\\247\\213" flowable:initiator="INITIATOR" flowable:formFieldValidation="true"></startEvent>\\012    <userTask id="sid-54572B0C-206E-423B-AA4A-170EA2547C2F" name="\\345\\241\\253\\345\\206\\231\\347\\224\\263\\350\\257\\267\\345\\215\\225" flowable:assignee="${INITIATOR}" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-initiator xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-initiator>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8" sourceRef="startEvent1" targetRef="sid-54572B0C-206E-423B-AA4A-170EA2547C2F"></sequenceFlow>\\012    <userTask id="sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4" name="\\350\\200\\201\\345\\206\\257\\345\\256\\241\\346\\211\\271" flowable:assignee="1280700700074041345" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\345\\206\\257\\347\\241\\225\\346\\245\\240[fengshuonan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-A99E5D1C-210A-424B-BC98-FE18780C993F" sourceRef="sid-54572B0C-206E-423B-AA4A-170EA2547C2F" targetRef="sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4"></sequenceFlow>\\012    <userTask id="sid-15C39F16-3D98-4D85-9A62-D66DC755FF45" name="\\345\\256\\235\\345\\261\\261\\345\\256\\241\\346\\211\\271" flowable:assignee="1275735541155614721" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\344\\277\\236\\345\\256\\235\\345\\261\\261[yubaoshan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-85466395-9D76-459D-8A07-E235DA564B0D" sourceRef="sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4" targetRef="sid-15C39F16-3D98-4D85-9A62-D66DC755FF45"></sequenceFlow>\\012    <sequenceFlow id="sid-691ED2EA-4956-473D-B92E-76F0ECA9890E" sourceRef="sid-15C39F16-3D98-4D85-9A62-D66DC755FF45" targetRef="sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B"></sequenceFlow>\\012    <endEvent id="sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B" name="\\347\\273\\223\\346\\235\\237"></endEvent>\\012  </process>\\012  <bpmndi:BPMNDiagram id="BPMNDiagram_leave">\\012    <bpmndi:BPMNPlane bpmnElement="leave" id="BPMNPlane_leave">\\012      <bpmndi:BPMNShape bpmnElement="startEvent1" id="BPMNShape_startEvent1">\\012        <omgdc:Bounds height="30.0" width="30.0" x="100.0" y="163.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-54572B0C-206E-423B-AA4A-170EA2547C2F" id="BPMNShape_sid-54572B0C-206E-423B-AA4A-170EA2547C2F">\\012        <omgdc:Bounds height="80.0" width="100.0" x="175.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4" id="BPMNShape_sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4">\\012        <omgdc:Bounds height="80.0" width="100.0" x="320.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-15C39F16-3D98-4D85-9A62-D66DC755FF45" id="BPMNShape_sid-15C39F16-3D98-4D85-9A62-D66DC755FF45">\\012        <omgdc:Bounds height="80.0" width="100.0" x="465.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B" id="BPMNShape_sid-A21FF4CB-FDBF-403A-9065-9BA51B3A080B">\\012        <omgdc:Bounds height="28.0" width="28.0" x="615.0" y="164.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNEdge bpmnElement="sid-691ED2EA-4956-473D-B92E-76F0ECA9890E" id="BPMNEdge_sid-691ED2EA-4956-473D-B92E-76F0ECA9890E">\\012        <omgdi:waypoint x="564.949999999996" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="615.0" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-85466395-9D76-459D-8A07-E235DA564B0D" id="BPMNEdge_sid-85466395-9D76-459D-8A07-E235DA564B0D">\\012        <omgdi:waypoint x="419.94999999999067" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="464.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8" id="BPMNEdge_sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8">\\012        <omgdi:waypoint x="129.9499984899576" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="174.9999999999917" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-A99E5D1C-210A-424B-BC98-FE18780C993F" id="BPMNEdge_sid-A99E5D1C-210A-424B-BC98-FE18780C993F">\\012        <omgdi:waypoint x="274.9499999999907" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="319.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012    </bpmndi:BPMNPlane>\\012  </bpmndi:BPMNDiagram>\\012</definitions>', 0);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1294922084922830850', 1, '请假流程.leave.png', '1294922083219943426', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\002\\215\\000\\000\\000\\344\\010\\006\\000\\000\\000\\375\\311\\036\\366\\000\\000\\014\\323IDATx\\332\\355\\335\\357oU\\365\\035\\007p\\037\\370\\300?b\\017L\\266d\\376\\011{\\260\\007\\376\\001&\\363\\201\\244\\330{\\225\\246\\222V\\034 \\026I\\310\\224\\224\\240D\\320\\030\\022\\267d1!1\\032\\026\\226\\030\\203\\254cR\\372\\303\\362S2&\\201NBV6D\\241\\266^\\306*"\\367Z\\213\\234}\\277]\\257;\\026\\012\\027ho\\317\\271\\367\\365J>\\001z\\313\\217\\224w?\\337\\317\\371\\236s\\317\\271\\357>\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\200\\005\\225$\\311\\375g\\317\\236}\\367\\350\\321\\243\\337\\017\\014\\014$}}}\\252\\316\\325\\337\\337\\237\\0348p\\340\\337\\241\\2122\\244dH\\206d\\010\\310\\244\\330\\250\\017\\036<\\230\\224J\\245drrR-R]\\274x1\\331\\277\\177\\377\\345\\320\\270\\037\\223!%CJ\\206\\200\\314\\211G\\366\\032uf\\032\\366d8\\342?-CJ\\206\\224\\014\\001\\231\\023O\\005i\\224\\331\\251\\320\\254\\247dH\\311\\220\\222! s\\342\\265,\\232d\\246\\232u"CJ\\206\\224\\014\\001\\271m\\326\\337|5\\226\\234=\\366Vr\\252\\177\\323t\\305\\237\\307\\217i\\260\\232\\265\\014\\311\\220\\014\\311\\020`h\\234\\256+\\023\\243\\311''\\275\\033\\222\\223{\\326\\375\\250\\342\\307\\342k\\232\\254\\005_\\206dH\\206d\\01004&\\347O\\375\\351\\206F]\\255\\013\\247z4Y\\013\\276\\014\\311\\220\\014\\311\\020`h\\234LN\\177\\270u\\316f\\035_\\323d-\\3702$C2$C\\200\\2411\\371\\244o\\343\\234\\315:\\276\\246\\311Z\\360eH\\206dH\\206\\000C\\243f\\255Y\\313\\220\\014\\311\\220\\014\\001\\206\\306\\3337\\353\\370.\\305\\271\\232u|M\\223\\265\\340\\313\\220\\014\\311\\220\\014\\001\\206\\306\\344\\314\\341\\337\\315\\331\\254\\343k\\232\\254\\005_\\206dH\\206d\\01004&\\227F\\207\\223O\\366u\\337xJ(|,\\276\\246\\311Z\\360eH\\206dH\\206\\000C\\343t}\\372\\267wnh\\326\\361c\\032\\254f-C2$C2\\004\\030\\032\\377W\\337~\\233\\2349\\362\\373\\033O\\011\\205\\217\\305\\3274Y\\013\\276\\014\\311\\220\\014\\311\\020\\320\\344Cc|\\322\\302\\310\\341\\337\\316y-Q|\\315\\323\\030,\\3702$C2$C@\\263\\016\\215\\341\\310}\\354\\314`\\362\\367\\275\\277\\231\\263QW+~N\\374\\\\G\\373\\026|\\031\\222!\\031\\222!\\240\\211\\206\\306\\333\\035\\325;\\332\\327\\254eH\\206dH\\206\\000CcMG\\365\\267:\\332\\327t-\\3702$C2$C@\\023\\014\\215w\\333\\250\\253\\245\\351Z\\360eH\\206dH\\206\\200&\\030\\032\\225f-C2$C2\\004\\240Yk\\3262$C2\\244\\014\\215\\200f\\255Y\\313\\220\\014\\311\\22024\\002\\232\\265f-CJ\\206\\224\\014A\\375$I\\362\\300\\360\\360p\\347\\333o\\277\\275\\177\\313\\226-\\227W\\257^=\\325\\326\\326\\226,]\\2724)\\026\\213\\327W\\254X1\\371\\302\\013/\\234\\335\\272u\\353\\216P?74*\\315Z\\206dH\\206d\\250\\261\\024\\012\\205\\237\\264\\264\\264\\254\\014k\\377\\273\\241\\316\\204\\272\\022\\347\\200P\\225P\\237\\206\\327v\\205\\037\\237\\217\\237grj\\322a\\361\\275\\367\\336{\\347\\245\\227^\\232Z\\263fM\\362\\346\\233o&G\\217\\036MFGG\\223J\\245\\222D\\361\\307R\\251\\224|\\374\\361\\307I\\030*\\223g\\237}\\366\\372s\\317=w\\256\\243\\243c\\271\\241Qi\\3262$C2$C\\371\\366\\370\\343\\217?\\032\\252/\\324\\344\\314\\220XK}\\030>\\277h\\222j\\022a8l\\177\\371\\345\\227\\277]\\267n\\335\\364@x\\355\\332\\265\\244V''N\\234H\\326\\257_\\177\\255\\263\\263\\363\\364\\222%K~fhT\\232\\265\\014\\311\\220\\014\\311P\\276\\204\\301\\357\\3010\\370\\355\\275\\203A\\361fu\\260\\221\\346\\000n\\334]\\274\\177\\367\\356\\335\\203O?\\375t\\322\\323\\323sG\\303\\342l{\\367\\356M\\332\\333\\333\\313\\215\\262\\353\\250Yk\\3262$C2\\244\\232ahliiY\\332\\332\\332\\372\\237\\364\\000X(\\024\\222W^y%\\031\\034\\034L>\\377\\374\\363\\344\\353\\257\\277\\236^\\353\\257^\\275:}\\006\\362\\360\\341\\303\\311\\266m\\333\\222''\\236xb\\366\\340x\\305\\256c\\203\\016\\214CCC\\177]\\265jU222\\222\\314\\207s\\347\\316%a\\000-/_\\276\\374\\327\\206Fe\\301\\227!\\031\\222!\\031\\312\\374\\300\\370H\\030\\362\\256\\245\\207\\305\\035;vL_\\212V\\213\\211\\211\\211\\351\\317\\217\\277/=<\\206?s\\271I\\253\\201\\304\\035\\30680\\326\\032\\214Z\\305?\\257\\243\\243#\\367G\\032\\232\\265f-C2$C\\252\\221\\207\\306\\270\\303\\230\\036\\030\\273\\272\\272\\246w\\025\\357F\\374}\\361\\022\\267Y\\203\\243\\035\\307F\\020\\257a\\214\\247\\244\\347k\\207\\361f;\\216O>\\371\\344D\\010\\314C\\206Fe\\301W2$C2\\224-\\361\\032\\306\\364)\\351\\356\\356\\356\\037NA\\337\\255x\\352z\\363\\346\\315\\263OU?d\\352\\312\\367i\\351\\0076m\\3324\\031\\257a\\\\H{\\366\\354)\\027\\012\\205\\217\\014\\215\\312\\202\\257dH\\206d([\\302\\300\\330\\237\\336a\\274\\327\\2011=8\\316\\332q<h\\362\\312\\261]\\273v\\375!\\376\\207~\\367\\335w\\311B{\\346\\231g\\306\\363\\272=\\255Yk\\3262$C2\\244\\032qh\\214\\267\\325I_\\303x\\267\\247\\244ou\\252:}\\215\\243\\323\\3249\\336e\\214\\367a\\214\\267\\325\\251\\207\\223''ON\\346u\\267Q\\263\\326\\254eH\\206dH5\\350\\320\\330W\\035\\350\\342\\233X\\026\\302\\316\\235;\\3556\\346]|\\322K|\\363\\313\\275\\334Z\\347N\\265\\267\\267\\217\\307k''\\262\\364\\315\\022\\352\\227\\232\\265f-C2$C\\252\\221\\206\\306Zr\\025\\237\\340R}\\363K\\334\\015\\274t\\351\\322\\202\\254\\375\\361]\\325\\263n\\307\\363\\240),g\\342\\243\\001\\267o\\337\\236\\324\\323\\266m\\333N\\304G\\015e\\345k\\220\\332.\\357kii\\371\\205f\\255Y\\313\\220\\014\\311\\220j\\204\\241\\261\\226\\\\\\315<\\032p\\372\\363^}\\365\\325\\205^\\377\\323C\\343\\363\\246\\260\\234\\211\\317\\222\\216\\217\\006\\254\\247#G\\216\\234\\013a\\351\\311\\3327U\\252>\\270\\331\\221\\231f\\255Y\\313\\220\\014\\311\\220\\312\\343\\320x\\253\\\\\\315<Kz\\372\\365\\241\\241\\241\\005]\\377\\343\\015\\300S\\377\\226\\036SX\\316\\254^\\275zjll\\254\\256C\\343\\370\\370x)\\204\\345|\\206\\277\\251~82K\\177si\\326\\232\\265\\014\\311\\220\\014\\251\\234\\017\\2157\\344*\\374\\372L\\365\\343\\363\\375\\006\\230\\331\\342\\223cR\\377\\216\\363\\246\\260\\234ikkK*\\225J]\\207\\306\\370\\367\\205\\260T\\262\\376M\\225>2\\213\\333\\372\\232\\265f-C2$C\\252\\021\\206\\306t\\256B\\225\\253\\277\\236\\257\\333\\354\\334\\352\\366;\\251\\277\\273b\\012\\313\\231\\370\\037\\267\\030\\356\\361\\001\\350\\213R\\232u\\266J\\206\\224\\014)\\031\\232\\337\\252\\367\\372o\\012\\313\\231e\\313\\226]\\257\\367Nc\\271\\\\\\036\\317\\311N\\343\\261\\370\\014\\316\\207\\037~\\370~\\247\\205\\034\\341\\313\\220\\014\\311\\220j\\240\\235\\306\\037r\\025\\237\\322b\\247\\221\\232\\254Z\\265j\\262\\336\\3274~\\361\\305\\027\\377\\310\\3705\\215?j\\322Y\\271\\226(\\374\\023nZYy\\335\\202\\237\\375\\014e-S\\026|\\031\\222\\241\\305\\317\\225k\\032\\251\\331\\206\\015\\033\\316\\324\\373\\335\\323\\275\\275\\275\\177\\311\\350\\273\\247?\\212w\\305\\237\\335\\244\\26344\\336\\352c\\213\\375\\272\\005?\\373\\031\\312Z\\246,\\3702$C\\213\\237+\\357\\236\\246f\\257\\275\\366\\332\\366z\\337\\247\\261\\273\\273{O\\306\\356\\323x\\323#zC\\243\\241\\261\\3212d\\301\\227!\\031j\\272\\241\\361\\266\\271r\\237Fj\\366\\342\\213/\\376t\\345\\312\\225\\337\\327\\361\\2110\\225\\326\\326\\326\\177\\345\\361N\\360\\206FCc\\3363d\\301\\227!\\031\\222\\241\\331\\342\\023a\\302\\232<U\\217''\\302\\024\\213\\305\\353\\236\\010\\223s]]]\\377\\254\\327\\263\\247{{{w\\344\\365\\231\\223\\206FC\\243\\005\\337\\202/C2\\344\\331\\323\\236=\\335\\324\\236z\\352\\251%k\\327\\256\\235\\252\\303n\\343Dkk\\353\\361\\020\\316\\242\\241\\321\\320h\\301\\267\\340[\\360eH\\206234>Z\\035\\350\\342n\\343|\\277!&\\376ya\\375\\277\\236\\272\\271x\\321\\364\\225c\\235\\235\\235\\303===\\013:1\\306\\353''\\343\\321\\305\\355\\256\\331\\321\\254\\015\\215\\026|\\013\\276\\014\\311\\220\\014\\325WX\\237?\\254\\016u]]]\\363v\\373\\235x\\233\\235\\265k\\327^K\\3572\\346u\\016\\340\\377ay\\260\\275\\275\\275<22\\262 \\003\\343\\360\\360\\360\\356\\360w\\214\\205\\243\\213\\207\\362\\3725r\\313\\035\\267\\334i\\304\\005\\377>\\267K\\221!\\03124\\316\\314\\001\\241.V\\207\\273\\356\\356\\356{\\036\\034\\343\\300\\270y\\363\\346\\364u\\214W\\362<\\007\\220R,\\026\\013\\235\\235\\235WK\\245\\322\\274\\016\\214\\027.\\\\8\\324\\332\\332\\372Y\\336\\267\\243\\335T\\327MueH\\206dH5\\352\\320\\030\\265\\264\\264,\\255\\276)\\246\\272\\343x\\267\\247\\252\\343\\357\\233\\265\\303\\350\\264t\\243)\\024\\012\\355\\035\\035\\035W\\346k\\3071\\3560\\306\\2011\\004q}\\336\\2776\\232\\265f-C2$C\\252\\221\\207\\306\\231\\035\\307\\266\\364\\340\\030\\257q\\214o\\216\\211\\357~\\256\\365]\\322\\361M/\\351k\\030c5\\302\\034\\300\\034G\\032\\305b\\361\\362\\373\\357\\277\\377\\315=\\2749f\\342\\365\\327_\\177+\\236\\222\\216\\001l\\204\\257\\213f\\255Y\\313\\220\\014\\311\\220j\\364\\241\\261:\\007\\204\\232H\\017}qx\\214\\367q\\2147\\000\\217\\273\\210\\325S\\327\\361\\024t|\\322K\\274q\\367\\033o\\274\\221,[\\266\\354\\373YO\\241\\271\\322(s\\000\\267\\270\\266!\\034%\\014tvv\\216\\037?~\\274|''\\367a\\334\\267o\\337\\3160t\\036\\213\\027\\2736\\322\\265\\013\\232\\265f-C2$C\\252\\031\\206\\306\\352\\034\\220\\276\\025\\317]\\326A\\32706\\327\\360\\370X\\034\\036\\333\\332\\332J[\\266l9u\\350\\320\\241\\317\\302\\021\\305X\\245R\\231\\236\\020\\313\\345\\362x|\\226t\\177\\177\\377\\2377n\\334\\370A8\\0229\\033C\\022\\217*\\032\\355\\335Q\\232\\265f-C2$C\\252Y\\206\\306\\364\\03403<N\\335\\311\\260\\330\\210s\\0005\\212w\\214\\017\\241Y3\\363\\214\\312OCUf\\202\\021\\177<\\037\\237!\\031\\037\\011\\324\\310wx\\327\\2545k\\031\\222!\\031R\\31564\\232\\003@\\263\\326\\254eH\\206dH\\031\\032\\001\\315Z\\263\\226!%CJ\\206\\000\\315ZY\\360\\225\\014)\\031\\0024ke\\301W2$C2\\004\\030\\032\\225\\005_\\311\\220\\014\\311\\020`hT\\232\\265\\014\\311\\220\\014\\311\\020`hT\\232\\265\\014\\311\\220\\014)C#\\240Yk\\3262$C2\\244\\014\\215\\200f\\255Y\\313\\220\\222!eh\\0044k\\315Z\\206\\224\\014)\\031\\0024ke\\301W2\\244d\\010\\320\\254\\225\\005_\\311\\220\\014\\311\\020`hT\\026|\\377w2$C2\\004\\030\\032\\225f-C2$C2\\004\\030\\0325I\\315Z\\206dH\\206\\224\\241\\021\\320\\2545k\\031\\222!\\031R\\206F@\\263\\326\\254eH\\311\\22024\\002\\232\\265f-CJ\\206\\224\\014\\001\\232\\265\\262\\340+\\031\\222!\\031\\0024ke\\301W2$C2\\004\\030\\032\\225f-C2$C2\\0044\\203\\201\\201\\001M2;U\\011\\315zJ\\206\\224\\014)\\031\\0022\\347\\300\\201\\003c\\245RI\\243\\314@\\215\\216\\216\\37614\\353\\3232\\244dH\\311\\020\\2209\\203\\203\\203\\277\\032\\032\\032\\372\\352\\313/\\277,k\\230\\213wd\\037\\033u\\177\\177\\377g\\241\\036\\223!%CJ\\206\\200L\\012\\015\\342\\221pdy,\\236\\222\\210\\327\\262\\250\\272W\\374\\272\\237\\316s\\243\\226!\\031\\222!\\031\\002\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\230W\\377\\005\\305\\300\\024K\\015\\037\\300X\\000\\000\\000\\000IEND\\256B`\\202', 1);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1295553080900943873', 1, '转正流程.bpmn20.xml', '1295553080485707777', E'<?xml version="1.0" encoding="UTF-8"?>\\012<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:flowable="http://flowable.org/bpmn" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:omgdi="http://www.omg.org/spec/DD/20100524/DI" typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath" targetNamespace="http://www.flowable.org/processdef">\\012  <process id="formal" name="\\350\\275\\254\\346\\255\\243\\346\\250\\241\\345\\236\\213" isExecutable="true">\\012    <documentation>\\350\\275\\254\\346\\255\\243\\346\\250\\241\\345\\236\\213</documentation>\\012    <startEvent id="startEvent1" name="\\345\\274\\200\\345\\247\\213" flowable:initiator="INITIATOR" flowable:formFieldValidation="true"></startEvent>\\012    <userTask id="sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4" name="\\345\\241\\253\\345\\206\\231\\347\\224\\263\\350\\257\\267\\345\\215\\225" flowable:assignee="${INITIATOR}" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-initiator xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-initiator>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F" sourceRef="startEvent1" targetRef="sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4"></sequenceFlow>\\012    <userTask id="sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2" name="\\351\\203\\250\\351\\227\\250\\347\\273\\217\\347\\220\\206\\345\\256\\241\\346\\211\\271" flowable:assignee="1275735541155614721" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\344\\277\\236\\345\\256\\235\\345\\261\\261[yubaoshan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8" sourceRef="sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4" targetRef="sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2"></sequenceFlow>\\012    <userTask id="sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D" name="\\344\\270\\273\\347\\256\\241\\345\\256\\241\\346\\211\\271" flowable:assignee="1280709549107552257" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\345\\276\\220\\347\\216\\211\\347\\245\\245[xuyuxiang]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483" sourceRef="sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2" targetRef="sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D"></sequenceFlow>\\012    <userTask id="sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431" name="\\346\\200\\273\\347\\273\\217\\347\\220\\206\\345\\256\\241\\346\\211\\271" flowable:assignee="1280700700074041345" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\345\\206\\257\\347\\241\\225\\346\\245\\240[fengshuonan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A" sourceRef="sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D" targetRef="sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431"></sequenceFlow>\\012    <endEvent id="sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6" name="\\347\\273\\223\\346\\235\\237"></endEvent>\\012    <sequenceFlow id="sid-982850A7-599B-4944-B40A-58D0E584E60D" sourceRef="sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431" targetRef="sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6"></sequenceFlow>\\012  </process>\\012  <bpmndi:BPMNDiagram id="BPMNDiagram_formal">\\012    <bpmndi:BPMNPlane bpmnElement="formal" id="BPMNPlane_formal">\\012      <bpmndi:BPMNShape bpmnElement="startEvent1" id="BPMNShape_startEvent1">\\012        <omgdc:Bounds height="30.0" width="30.0" x="100.0" y="163.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4" id="BPMNShape_sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4">\\012        <omgdc:Bounds height="80.0" width="100.0" x="175.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2" id="BPMNShape_sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2">\\012        <omgdc:Bounds height="80.0" width="100.0" x="320.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D" id="BPMNShape_sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D">\\012        <omgdc:Bounds height="80.0" width="100.0" x="465.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431" id="BPMNShape_sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431">\\012        <omgdc:Bounds height="80.0" width="100.0" x="610.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6" id="BPMNShape_sid-CBA3080C-ED15-43AC-83A0-54645AC3ECA6">\\012        <omgdc:Bounds height="28.0" width="28.0" x="755.0" y="164.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNEdge bpmnElement="sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F" id="BPMNEdge_sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F">\\012        <omgdi:waypoint x="129.9499984899576" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="174.9999999999917" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-982850A7-599B-4944-B40A-58D0E584E60D" id="BPMNEdge_sid-982850A7-599B-4944-B40A-58D0E584E60D">\\012        <omgdi:waypoint x="709.9499999999999" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="755.0" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8" id="BPMNEdge_sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8">\\012        <omgdi:waypoint x="274.9499999999907" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="319.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483" id="BPMNEdge_sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483">\\012        <omgdi:waypoint x="419.94999999999067" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="464.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A" id="BPMNEdge_sid-39E586CB-81CF-4BB5-A43F-34FF3E02438A">\\012        <omgdi:waypoint x="564.9499999999907" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="609.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012    </bpmndi:BPMNPlane>\\012  </bpmndi:BPMNDiagram>\\012</definitions>', 0);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1295553081920159745', 1, '转正流程.formal.png', '1295553080485707777', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\003\\031\\000\\000\\000\\344\\010\\006\\000\\000\\000\\364\\007\\351\\245\\000\\000\\016.IDATx\\332\\355\\335\\357oU\\365\\035\\007p\\036\\370`\\177\\304\\036\\220l\\311\\374\\023\\366`\\017\\374\\003L\\346\\003\\311\\205\\366*M%\\255:@,\\222\\220))A\\211EcH\\334\\222\\305\\204\\304`\\272t\\0111\\310:&\\320\\037\\026\\012\\330\\214A\\240\\223\\020\\313\\206(\\224\\326\\313XE\\244\\227Z\\344\\354\\373\\255\\\\\\275\\364\\007\\336\\013\\355\\355=\\267\\257W\\362\\016\\332\\362+\\360\\346s\\316\\247\\347\\334{\\226-\\003\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\226\\210$I\\036\\271p\\341\\302\\236\\201\\201\\201\\357zzz\\222\\256\\256.\\251p\\272\\273\\273\\223#G\\216\\3747$\\253C\\242C:\\244C:\\244C@\\352\\305\\241\\334\\337\\337\\237\\344r\\271dbbB\\026)W\\257^M\\016\\037>|=\\014\\351''uHtHtH\\207t\\010H\\265\\370U\\037C\\271j\\206\\363DWW\\3279\\035\\022\\035\\022\\035\\322!\\035\\002R-^V6\\024\\253''a0O\\352\\220\\350\\220\\350\\220\\016\\351\\020\\220j\\361>J\\003\\261\\252\\006s\\242C\\242C\\242C:\\244C\\300\\222X2\\276\\371j$\\271p\\342\\335\\344l\\367\\266\\251\\304\\377\\216\\0373L\\015f\\035\\322!\\035\\322!\\035\\022K\\006P\\366`\\27616\\234|rpKrf\\377\\246{\\022?\\026?g\\240:\\270\\353\\220\\016\\351\\220\\016\\351\\220X2\\200\\262\\006\\363\\245\\263\\177\\2351\\224\\013\\271|\\266\\323@up\\327!\\035\\322!\\035\\322!\\261d\\000\\345\\015\\346s\\037\\355\\230s0\\307\\317\\031\\250\\016\\356:\\244C:\\244C:$\\226\\014\\240\\254\\301\\374I\\327\\3269\\007s\\374\\234\\201\\352\\340\\256C:\\244C:\\244Cb\\311\\000\\014f\\203Y\\207tH\\207D\\207tH\\207\\200\\305\\033\\314\\361\\0358\\346\\032\\314\\361s\\006\\252\\203\\273\\016\\351\\220\\016\\351\\220\\016\\211%\\003(k0\\237?\\366\\3079\\007s\\374\\234\\201\\352\\340\\256C:\\244C:\\244Cb\\311\\000\\312\\032\\314\\327\\206\\007\\223O\\016\\265\\316\\274\\274\\034>\\026?g\\240:\\270\\353\\220\\016\\351\\220\\016\\351\\220X2\\200\\262\\006s\\314g\\377|o\\306`\\216\\0373L\\015f\\035\\322!\\035\\322!\\035\\022K\\006P\\376`\\276u+9\\177\\374O3//\\207\\217\\305\\317\\031\\250\\016\\356:\\244C:\\244C:$\\226\\014\\240\\344\\301\\034\\237\\202:t\\354\\017s\\336\\307\\032?\\347I\\251\\016\\356:\\244C:\\244C:$\\226\\014\\340\\247\\007\\363\\255[\\311\\310\\371\\336\\344_\\007~?\\347P.$~\\237\\370}}%\\310\\301]\\207tH\\207tH\\207\\304\\222\\001\\314:\\230\\177\\352+>\\276\\022d0\\353\\220\\016\\351\\220\\016\\351\\220X2\\200\\262\\006s)_\\361\\271\\337W\\202\\014X\\007w\\035\\322!\\035\\322!\\035\\322!\\300\\222qO\\036t(\\027b\\300:\\270\\353\\220\\016\\351\\220\\016\\351\\220\\016\\001\\226\\0141\\230uH\\207tHtH,\\031\\200\\301l0\\353\\220\\350\\220\\350\\220\\016\\351\\020`0\\213\\203\\273\\350\\220\\016\\351\\220\\016\\351\\020`\\311\\020\\203Y\\207tH\\207tH\\207\\304\\222\\001%I\\222\\344g\\203\\203\\203\\315\\273w\\357>\\334\\326\\326v}\\375\\372\\365\\223\\015\\015\\015\\311\\312\\225+\\223l6{\\347\\271\\347\\236\\233x\\371\\345\\227/\\354\\330\\261\\243=\\344W\\226\\0141\\230uH\\207tH\\207tH\\226\\356\\222Q__\\377\\363L&\\2636\\234+\\356\\0119\\037r#\\2367\\206\\344C>\\013\\237\\333\\033\\276})~?g\\332Kt\\271x\\377\\375\\367\\337{\\365\\325W''7l\\330\\220\\274\\363\\316;\\311\\300\\300@2<<\\234\\344\\363\\371$\\212\\337\\346r\\271\\344\\344\\311\\223IXB\\222\\027^x\\341\\316\\213/\\276x\\261\\251\\251i\\215%C\\014f\\035\\322!\\035\\322!\\035\\222\\245\\263d\\254Z\\265\\352\\211\\220\\256\\220\\211\\273KE)\\371(|\\377\\2543\\357%",\\023\\215\\257\\275\\366\\332\\255M\\2336M-\\020\\267o\\337NJu\\372\\364\\351d\\363\\346\\315\\267\\233\\233\\233\\317\\255X\\261\\342\\227\\226\\0141\\230uH\\207tH\\207tHjw\\311\\010\\213\\302\\362\\260(\\034(c\\261\\230-\\375\\265t\\336\\310\\314\\253\\027\\217\\354\\333\\267\\257\\367\\331g\\237M:;;\\313Z.\\246;p\\340@\\322\\330\\3308^+W5\\014f\\203Y\\207tH\\207D\\207\\304\\222q\\257L&\\263\\262\\256\\256\\356\\177\\305\\013C}}}\\362\\372\\353\\257''\\275\\275\\275\\311\\027_|\\221|\\375\\365\\327S\\347\\2067o\\336\\234\\272#\\346\\330\\261c\\311\\316\\235;\\223\\247\\236zj\\372\\242q\\303U\\215\\032]0\\372\\372\\372\\376\\261n\\335\\272dhh(\\231\\017\\027/^L\\302\\3022\\276f\\315\\232\\337Y2\\304\\301]\\207tH\\207tH\\207\\244v\\226\\214\\260`<\\036\\226\\202\\333\\305\\313E{{\\373\\324\\255\\364\\245\\030\\033\\033\\233\\372\\376\\361\\307\\025/\\033\\341\\347\\254\\271\\333\\356\\227\\264x\\005#.\\030\\245\\026\\243T\\361\\347kjjJ\\375fj0\\033\\314:\\244C:$:$\\226\\214\\037\\257`\\024/\\030---SW-\\036D\\374q\\361\\026\\375i\\213\\206+\\032\\265 \\276\\006#\\336"5_W0f\\273\\242\\361\\364\\323O\\217\\205\\302<j\\311\\020\\007w\\321!\\035\\322!\\035\\222\\364.\\031\\3615\\030\\305\\267H\\265\\266\\266\\376pK\\324\\203\\212\\267Rm\\337\\276}\\372\\255S\\251=o\\344\\373\\333\\244~\\266m\\333\\266\\211\\370\\032\\214\\205\\264\\177\\377\\376\\361\\372\\372\\372\\217-\\031\\342\\340.:\\244C:\\244C\\222\\336%#,\\030\\335\\305W0\\036v\\301(^4\\246]\\321\\350w\\246\\236b{\\367\\356\\375s\\374\\013\\375\\366\\333o\\223\\205\\366\\374\\363\\317\\217\\246\\365\\362\\227\\301l0\\353\\220\\016\\351\\220\\350\\220,\\365\\016\\305\\267\\251-~\\015\\306\\203\\336"u\\277[\\247\\212_\\243\\341\\266\\251\\024_\\305\\210\\317\\301\\210oS[\\011g\\316\\234\\231H\\353\\325\\014\\203\\331`\\326!\\035\\322!\\321!\\261d\\254\\352*,\\000\\361E\\333\\013\\241\\243\\243\\303\\325\\214\\264\\213O\\362\\216/\\366~\\230\\267\\252-Wcc\\343h\\274\\227\\257\\232\\376\\261\\204\\374\\306`6\\230uH\\207tHtHthn\\361\\011\\335\\205\\027{\\307\\253\\015\\327\\256][\\220s\\305\\370\\256S\\323\\336\\336v\\3712\\322e\\367\\356\\335\\207w\\355\\332\\225T\\322\\316\\235;O\\307G\\311W\\313\\237A\\321\\345\\270\\256L&\\363k\\203\\331`\\326!\\035\\322!\\321!\\321\\241\\231\\302\\307\\327\\026\\276\\337\\033o\\274\\261\\320\\347\\213\\305K\\306K\\313H\\227\\266\\266\\266\\353\\003\\003\\003\\025]2\\216\\037?~1\\224\\245\\263\\332\\376Q\\025\\345\\303\\3316y\\203\\331`\\326!\\035\\322!\\321!Y\\312\\035\\012\\037\\333S\\370|__\\337\\202\\236/\\306\\007\\366\\025\\375^:\\235\\265\\247\\314\\372\\365\\353''GFF*\\272d\\214\\216\\216\\346BY.U\\361?\\252\\0376\\371\\342\\177\\\\\\006\\263\\301\\254C:\\244C\\242C\\262\\224;\\024\\376\\377|\\341\\343\\363\\375\\202\\357\\351\\342\\223\\301\\213~\\037\\227\\234\\265\\247LCCC\\222\\317\\347+\\272d\\304_/\\224%_\\355\\377\\250\\2127\\371x\\331\\320`6\\230uH\\207tHtH\\226r\\207B\\306\\013\\377?_o[{\\277\\267\\263-\\372\\265\\363\\316\\332S&\\376\\305-\\206\\022\\212\\\\u1\\230\\253+:$:$:\\244C:\\264x\\251\\364\\371\\242\\263\\366\\224Y\\275z\\365\\235J_\\311\\030\\037\\037\\037M\\311\\225\\214\\023\\231L\\346\\361\\307\\036{\\354\\021\\227\\230}\\365G\\207tH\\207D\\207d\\251w(>\\205\\333\\225\\014J\\262n\\335\\272\\211J\\277&\\343\\312\\225+\\237V\\371k2\\356\\031\\310\\325r\\037k\\370-\\314\\232j\\371\\274\\301\\\\}\\035\\252\\366\\316,v\\247t(\\375\\035s\\202\\350X\\346XV\\331\\016yM\\006%\\333\\262e\\313\\371J\\277\\273\\324\\301\\203\\007\\377^\\245\\357.\\365q|\\212\\345\\364\\201\\\\M\\203\\371~\\037[\\354\\317\\033\\314\\325\\327\\241j\\357\\314bwJ\\207\\322\\3371K\\206c\\231cYe;\\344\\335\\245(\\331\\233o\\276\\271\\253\\322\\317\\311hmm\\335_e\\317\\311\\230\\365\\253=\\006\\263\\301\\234\\366\\016Y2t\\310\\222\\241C\\216e\\216e\\363\\331!\\317\\311\\240d\\257\\274\\362\\312/\\326\\256]\\373]\\005\\237\\370\\235\\257\\253\\253\\373O\\032\\237\\334h0\\033\\314i\\353\\220%C\\207,\\031:\\344X\\346X6\\237\\342\\023\\277\\3039\\334d%\\236\\370\\235\\315f\\357x\\342w\\312\\265\\264\\264\\374\\373\\344\\311\\223\\225\\272U\\252=\\024\\245?\\215\\177N\\006\\263\\301l\\311\\260dX2,\\031:\\344X\\266\\324;\\024\\237\\233Q8\\371ooo_\\220\\363\\305\\216\\216\\216\\342\\253\\030\\251<o$x\\346\\231gVl\\334\\270q\\262\\002W3\\306\\352\\352\\352N\\205rf-\\031\\006\\263\\203\\273\\316X2,\\031\\226\\014\\3072\\307\\262T.\\031O\\024\\026\\200x5c\\276_\\000\\036\\177\\276p\\276x\\247\\350a\\200\\251<o\\344\\256\\346\\346\\346\\301\\316\\316\\316\\005\\3350\\342\\353?\\3426\\372S\\367\\213\\032\\314\\006\\263\\203\\273%C\\207,\\031\\226\\014\\3072\\307\\262\\352\\025\\316\\347>*,\\001---\\363\\366v\\266\\361mk7n\\334x\\273\\370*FZ\\317\\033\\371\\261,\\313\\033\\033\\033\\307\\207\\206\\206\\026d\\301\\030\\034\\034\\334\\027~\\215\\221\\260\\215>\\232\\326?#o\\373\\347m\\377\\322\\270d,\\363\\026\\266:\\344-lu\\310\\261\\314\\261l\\001\\316\\033C\\256\\026\\226\\201\\326\\326\\326\\207^4\\342\\202\\261}\\373\\366\\342\\327a\\334H\\363y#E\\262\\331l}ss\\363\\315\\\\.7\\257\\013\\306\\345\\313\\227\\217\\326\\325\\325}\\236\\366\\313]\\036`\\344\\001F:\\244C:$:$\\226\\214\\357e2\\231\\225\\205\\027\\201\\027\\256h<\\350\\255S\\361\\307M\\273\\202\\3416\\251ZS__\\337\\330\\324\\324tc\\276\\256h\\304+\\030q\\301\\010E\\334\\234\\366?\\033\\203\\331`\\326!\\035\\322!\\321!\\261d\\334sE\\243\\241x\\321\\210\\257\\321\\210/\\006\\217\\357\\016U\\352\\273H\\305\\027y\\027\\277\\006#\\246\\026\\316\\033\\231c3\\315f\\263\\327?\\370\\340\\203o\\036\\342\\305\\340co\\275\\365\\326\\273\\361\\026\\251X\\300Z\\370s1\\230\\015f\\035\\322!\\035\\022\\035\\022K\\306\\314\\363\\306\\220\\261\\342%!.\\033\\3619\\032\\361\\201}\\361*E\\341V\\252xKT|\\222w|\\320\\336\\333o\\277\\235\\254^\\275\\372\\273iO\\031\\277Q+\\347\\215\\314\\275\\231.\\017[eOss\\363\\350\\251S\\247\\306\\313y\\016\\306\\241C\\207:\\302\\222r"\\276X\\247\\226\\356\\2453\\230\\015f\\035\\322!\\035\\022\\035\\022K\\306\\354\\347\\215\\305om\\373\\200\\351\\367\\032\\214\\245\\265l<\\031\\227\\215\\206\\206\\206\\\\[[\\333\\331\\243G\\217~\\0366\\320\\221|>?\\265Q\\214\\217\\217\\217^\\271r\\345\\323\\356\\356\\356\\277m\\335\\272\\365\\303\\260\\271^\\210%\\211[h\\255\\275\\033\\200\\301l0\\353\\220\\016\\351\\220\\350\\220X2\\356\\177\\336xw\\331\\230,g\\271\\250\\305\\363FJ\\024\\237\\360\\030J\\263!\\224`O\\310g!\\371\\273\\305\\210\\337^\\012\\351\\214\\217|\\257\\345''2\\032\\314\\006\\263\\016\\351\\220\\016\\211\\016\\211%\\303y#\\030\\314\\006\\263\\016\\211\\016\\211\\016\\351\\220\\016\\001\\006\\2638\\270\\213\\016\\351\\220\\016\\351\\220\\016\\001\\226\\0141\\230uH\\207tH\\207tH,\\031\\200\\301l0\\353\\220\\016\\351\\220\\350\\220\\350\\020`0\\213\\203\\273\\350\\220\\277;\\035\\322!\\035\\002,\\031b0\\353\\220\\016\\351\\220\\016\\351\\220X2\\000\\203\\331`\\326!\\035\\322!\\321!\\321!\\300`6\\230uHtHtH\\207t\\010\\260d\\210\\203\\273\\350\\220\\016\\351\\220\\016\\351\\020`\\3110\\020\\015f\\035\\322!\\035\\022\\035\\022K\\006`0\\033\\314:$:$:\\244C:\\004\\030\\314\\342\\340.:\\244C:\\244C:\\004X2\\304`\\326!\\035\\322!\\035\\322!\\261d\\000\\006\\263\\301\\254C:\\244C\\242C\\242C\\200\\301,\\016\\356\\242C\\242C:\\244C\\200%C\\014f\\035\\322!\\035\\322!\\035\\022K\\006`0\\033\\314:\\244C:$:$:\\004\\030\\314\\006\\263\\016\\211\\016\\211\\016\\351\\220\\016\\001\\006\\2638\\270\\213\\016\\351\\220\\016\\351\\220\\016\\001\\226\\0141\\230uH\\207tHtH,\\031\\200\\301l0\\353\\220\\350\\220\\350\\220\\016\\351\\020P}zzz\\014\\304\\352I>\\014\\346I\\035\\022\\035\\022\\035\\322!\\035\\002R\\355\\310\\221##\\271\\\\\\316P\\254\\202\\014\\017\\017\\377%\\014\\346s:$:$:\\244C:\\004\\244Zoo\\357o\\373\\372\\372\\276\\372\\362\\313/\\307\\015\\307\\305\\373\\252O\\034\\312\\335\\335\\335\\237\\207<\\251C\\242C\\242C:\\244C@\\352\\205a\\360xWW\\327\\211xy3\\336G)\\025O\\374s?\\227\\346\\241\\254C:\\244C:\\244C:\\224\\366\\016\\001\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\363\\340\\377\\261\\201Z\\245\\327\\012\\002\\376\\000\\000\\000\\000IEND\\256B`\\202', 1);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1304341425315528705', 1, '出差流程.bpmn20.xml', '1304341425068064769', E'<?xml version="1.0" encoding="UTF-8"?>\\012<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:flowable="http://flowable.org/bpmn" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:omgdi="http://www.omg.org/spec/DD/20100524/DI" typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath" targetNamespace="http://www.flowable.org/processdef">\\012  <process id="travel" name="\\345\\207\\272\\345\\267\\256\\346\\265\\201\\347\\250\\213" isExecutable="true">\\012    <documentation>\\345\\207\\272\\345\\267\\256\\346\\265\\201\\347\\250\\213</documentation>\\012    <startEvent id="startEvent1" name="\\345\\274\\200\\345\\247\\213" flowable:initiator="INITIATOR" flowable:formFieldValidation="true"></startEvent>\\012    <userTask id="sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7" name="\\345\\241\\253\\345\\206\\231\\347\\224\\263\\350\\257\\267\\345\\215\\225" flowable:assignee="${INITIATOR}" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-initiator xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-initiator>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-170CF235-7CA9-4E7A-8392-75AA1F532611" sourceRef="startEvent1" targetRef="sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7"></sequenceFlow>\\012    <userTask id="sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13" name="\\347\\273\\217\\347\\220\\206\\345\\256\\241\\346\\211\\271" flowable:assignee="1275735541155614721" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\344\\277\\236\\345\\256\\235\\345\\261\\261[yubaoshan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524" sourceRef="sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7" targetRef="sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13"></sequenceFlow>\\012    <userTask id="sid-64A789A3-6EDA-4C69-836E-C233B7269859" name="\\351\\242\\206\\345\\257\\274\\344\\274\\232\\347\\255\\276" flowable:assignee="${per}" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012      <multiInstanceLoopCharacteristics isSequential="false" flowable:collection="pers" flowable:elementVariable="per">\\012        <loopCardinality>${num}</loopCardinality>\\012      </multiInstanceLoopCharacteristics>\\012    </userTask>\\012    <sequenceFlow id="sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC" sourceRef="sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13" targetRef="sid-64A789A3-6EDA-4C69-836E-C233B7269859"></sequenceFlow>\\012    <userTask id="sid-6D4A69E7-A765-49EC-94C6-C238AF325027" name="\\346\\200\\273\\347\\273\\217\\347\\220\\206\\345\\256\\241\\346\\211\\271" flowable:assignee="1280700700074041345" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\345\\206\\257\\347\\241\\225\\346\\245\\240[fengshuonan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851" sourceRef="sid-64A789A3-6EDA-4C69-836E-C233B7269859" targetRef="sid-6D4A69E7-A765-49EC-94C6-C238AF325027"></sequenceFlow>\\012    <endEvent id="sid-557D1158-44D0-45A0-B650-A455B1FB0C4E" name="\\347\\273\\223\\346\\235\\237"></endEvent>\\012    <sequenceFlow id="sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0" sourceRef="sid-6D4A69E7-A765-49EC-94C6-C238AF325027" targetRef="sid-557D1158-44D0-45A0-B650-A455B1FB0C4E"></sequenceFlow>\\012  </process>\\012  <bpmndi:BPMNDiagram id="BPMNDiagram_travel">\\012    <bpmndi:BPMNPlane bpmnElement="travel" id="BPMNPlane_travel">\\012      <bpmndi:BPMNShape bpmnElement="startEvent1" id="BPMNShape_startEvent1">\\012        <omgdc:Bounds height="30.0" width="30.0" x="100.0" y="163.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7" id="BPMNShape_sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7">\\012        <omgdc:Bounds height="80.0" width="100.0" x="175.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13" id="BPMNShape_sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13">\\012        <omgdc:Bounds height="80.0" width="100.0" x="320.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-64A789A3-6EDA-4C69-836E-C233B7269859" id="BPMNShape_sid-64A789A3-6EDA-4C69-836E-C233B7269859">\\012        <omgdc:Bounds height="80.0" width="100.0" x="465.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-6D4A69E7-A765-49EC-94C6-C238AF325027" id="BPMNShape_sid-6D4A69E7-A765-49EC-94C6-C238AF325027">\\012        <omgdc:Bounds height="80.0" width="100.0" x="610.0" y="138.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-557D1158-44D0-45A0-B650-A455B1FB0C4E" id="BPMNShape_sid-557D1158-44D0-45A0-B650-A455B1FB0C4E">\\012        <omgdc:Bounds height="28.0" width="28.0" x="750.0" y="164.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNEdge bpmnElement="sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851" id="BPMNEdge_sid-3C5A70B8-B006-4A09-82CE-2172E3FD7851">\\012        <omgdi:waypoint x="564.9499999999907" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="609.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC" id="BPMNEdge_sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC">\\012        <omgdi:waypoint x="419.94999999999067" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="464.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-170CF235-7CA9-4E7A-8392-75AA1F532611" id="BPMNEdge_sid-170CF235-7CA9-4E7A-8392-75AA1F532611">\\012        <omgdi:waypoint x="129.9499984899576" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="174.9999999999917" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0" id="BPMNEdge_sid-9BBC7766-555C-4219-8D0B-DD72DF198BC0">\\012        <omgdi:waypoint x="709.9499999999563" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="750.0" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524" id="BPMNEdge_sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524">\\012        <omgdi:waypoint x="274.9499999999907" y="178.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="319.9999999999807" y="178.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012    </bpmndi:BPMNPlane>\\012  </bpmndi:BPMNDiagram>\\012</definitions>', 0);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1304341426900975618', 1, '出差流程.travel.png', '1304341425068064769', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\003\\024\\000\\000\\000\\344\\010\\006\\000\\000\\000\\001\\371b\\025\\000\\000\\016pIDATx\\332\\355\\335\\377o\\324\\365\\035\\007p~\\360\\207\\375\\021\\373\\201dK\\346\\237\\260\\037\\366\\203\\177\\200\\311\\374Ar\\330\\236\\322T\\322\\252\\003\\304"\\011\\231\\222\\022\\224X4\\206\\304-YLH\\014\\246K\\227\\020\\203\\254c\\002\\375b\\241\\200\\315\\030\\004:\\010\\261l\\210Bi-c\\025)=k\\221\\317\\336\\357\\216sg\\313\\325\\243_\\216\\373\\334=\\036\\311+\\325\\273\\202\\244>y\\275\\337\\257\\373|[\\261\\002\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\200\\005H\\222\\344\\221K\\227.\\355\\035\\030\\030\\370\\256\\247\\247''\\351\\352\\352Re\\256\\356\\356\\356\\344\\350\\321\\243\\377\\016\\225\\225!%C2$C2$C@\\252\\304\\006\\334\\337\\337\\237\\214\\215\\215%SSS\\352!\\325\\365\\353\\327\\223#G\\216\\334\\014\\015\\371I\\031R2\\244dH\\206d\\010H\\215\\370i\\216\\006\\\\1\\215x\\252\\253\\253\\353\\202\\014)\\031R2$C2\\004\\244F<4\\254\\001VN\\205&<-CJ\\206\\224\\014\\311\\220\\014\\001\\251\\021\\317{\\324\\374*\\252\\011''2\\244dH\\311\\220\\014\\311\\020PuMx\\342\\253\\221\\344\\322\\311\\367\\222\\363\\335\\333g*\\376s|M\\343\\324\\204eH\\206dH\\206dH\\031(\\300@1o\\335\\032\\037N\\316\\035\\332\\232\\234=\\260\\371\\007\\025_\\213\\357i\\236\\026r\\031\\222!\\031\\222!\\031R\\006\\0120P\\024\\255+\\347\\377<\\247\\001\\347\\353\\352\\371N\\315\\323B.C2$C2$C\\312@\\001\\006\\212\\342u\\341\\343\\235E\\233p|O\\363\\264\\220\\313\\220\\014\\311\\220\\014\\311\\2202P\\200\\201\\242h\\235\\353\\332V\\264\\011\\307\\3674O\\013\\271\\014\\311\\220\\014\\311\\220\\014)\\003\\005\\030(4aMX\\206dH\\206\\224\\014)\\003\\005\\260\\364M8\\336\\011\\243X\\023\\216\\357i\\236\\026r\\031\\222!\\031\\222!\\031R\\006\\0120P\\024\\255\\213\\307\\177_\\264\\011\\307\\3674O\\013\\271\\014\\311\\220\\014\\311\\220\\014)\\003\\005\\030(\\212\\326\\215\\341\\301\\344\\334\\341\\326\\271\\207\\210\\303k\\361=\\315\\323B.C2$C2$C\\312@\\001\\006\\212y\\353\\263\\277\\277?\\247\\011\\307\\3274NMX\\206dH\\206dH\\206\\224\\201\\002\\014\\024\\363\\3277\\337$\\027O\\374a\\356!\\342\\360Z|O\\363\\264\\220\\313\\220\\014\\311\\220\\014\\311\\2202P\\200\\201\\242\\350\\223E\\207\\216\\377\\256\\350y\\247\\361=O\\030\\265\\220\\313\\220\\014\\311\\220\\014\\311\\2202P\\200\\201b\\316''9#\\027{\\223\\177\\034\\374m\\321\\006\\234\\257\\370=\\361{}\\302c!\\227!\\031\\222!\\031\\222!e\\240\\000\\003\\305\\217~\\222\\343\\023\\036MX\\206dH\\206dH\\206\\224\\201\\002(\\332\\204K\\371$g\\276Ox4S\\013\\271\\014\\311\\220\\014\\311\\220\\014\\311\\020P\\303\\003\\305B\\033p\\2764S\\013\\271\\014\\311\\220\\014\\311\\220\\014\\311\\020P\\303\\003\\205\\322\\204eH\\206dH\\206dH\\031(\\000MX\\023\\226!\\031\\222!%CJ\\206\\000MX\\023\\226!%CJ\\206dH\\206\\000MXY\\310\\225\\014\\311\\220\\014\\311\\220\\014A\\365H\\222\\344''\\203\\203\\203\\315{\\366\\3549\\322\\326\\326vs\\303\\206\\015\\323\\015\\015\\015\\311\\352\\325\\253\\223l6{\\367\\371\\347\\237\\237z\\345\\225W.\\355\\334\\271\\263=\\324/\\014\\024J\\023\\226!\\031\\222!\\031\\222!U\\033\\003E}}\\375O3\\231\\314\\272\\260/\\334\\033\\352b\\250[q\\217\\030*\\027\\352\\263\\360\\336\\276\\360\\365\\345\\370}v\\3255:H|\\360\\301\\007\\357\\277\\366\\332k\\323\\0337nL\\336}\\367\\335d`` \\031\\036\\036Nr\\271\\\\\\022\\305\\257ccc\\311\\251S\\247\\2220p$/\\276\\370\\342\\335\\227^z\\351rSS\\323Z\\003\\205\\322\\204eH\\206dH\\206dHU\\347@\\361\\324SO=\\021\\252+\\324\\324\\275\\001\\242\\224\\3728|\\177\\326.\\273F\\204\\301\\241\\361\\365\\327_\\377f\\363\\346\\3153\\303\\302\\235;w\\222R\\2359s&\\331\\262e\\313\\235\\346\\346\\346\\013\\253V\\255\\372\\271\\201Bi\\3022$C2$C2\\244\\252#Ca(X\\031\\206\\202\\203\\0170D\\334\\257\\372\\253i\\217\\310\\334\\243\\022\\217\\354\\337\\277\\277\\367\\271\\347\\236K:;;\\037h\\220\\230\\355\\340\\301\\203Icc\\343d\\265\\034\\255\\320\\2045a\\031\\222!\\031R2\\244j9C\\231Lfu]]\\335\\177\\012\\207\\203\\372\\372\\372\\344\\2157\\336Hz{{\\223/\\276\\370"\\371\\372\\353\\257g\\366\\201\\267o\\337\\2369\\253\\345\\370\\361\\343\\311\\256]\\273\\222\\247\\237~z\\366Pq\\313\\321\\212*\\035&\\372\\372\\372\\376\\266~\\375\\372dhh(Y\\012\\227/_N\\302p2\\271v\\355\\332\\337\\030(\\224\\205\\\\\\206dH\\206dH\\206T:3\\024\\206\\211\\307\\303\\000p\\247p\\220hoo\\2379\\365\\275\\024\\343\\343\\3433\\337\\037\\177]\\341`\\021~\\317\\252;M\\276\\246\\305#\\023q\\230(5\\030\\245\\212\\277_SSS\\352\\247PMX\\023\\226!\\031\\222!%C\\252\\0263\\024\\217L\\024\\016\\023---3G#\\026"\\376\\272xJ\\375\\254\\241\\302\\221\\212j\\020\\257\\231\\210\\2479-\\325\\221\\211\\373\\035\\251x\\346\\231g\\306C`\\0365P(\\013\\271\\222!\\031\\222!\\031R\\351\\310P\\274f\\242\\3604\\247\\326\\326\\326\\357OkZ\\250x:\\324\\216\\035;f\\237\\376\\224\\332="\\377;\\325\\351''\\333\\267o\\237\\212\\327L,\\247\\003\\007\\016L\\326\\327\\327\\177b\\240P\\026r%C2$C2\\244\\322\\221\\2410Lt\\027\\036\\231X\\3540Q8T\\314:R\\321oW\\236b\\373\\366\\355\\373c\\374\\037\\372\\355\\267\\337&\\313\\355\\205\\027^\\030M\\353a-MX\\023\\226!\\031\\222!%C\\252\\2262\\024o\\015[x\\315\\304BOs\\232\\357\\364\\247\\302k*\\234\\372\\224\\342\\243\\023\\3619\\023\\361\\326\\260\\345p\\366\\354\\331\\251\\264\\036\\245\\320\\2045a\\031\\222!\\031R2\\244jl\\240\\350\\312o\\366\\343\\005\\325\\313\\241\\243\\243\\303Q\\212\\264\\213O\\300\\216\\027b/\\346\\366\\260\\017\\252\\261\\261q4\\236\\217WI\\177YB\\375J\\023\\326\\204eH\\206dH\\311\\220\\252\\205\\014\\225\\222\\227\\370d\\353\\374\\205\\330\\361(\\302\\215\\0337\\226e_\\030\\357\\3764\\353\\226\\262+W\\220.{\\366\\3549\\262{\\367\\356\\244\\234v\\355\\332u&>\\202\\275R~\\006\\005\\207\\331\\2722\\231\\314/5aMX\\206dH\\206\\224\\014\\251j\\316P)y\\011\\257\\257\\313\\177\\337\\233o\\276\\271\\334{\\303\\302\\201\\342e;\\364\\224ikk\\273900P\\326\\201\\342\\304\\211\\023\\227CX:+\\255\\011\\027\\324G\\367\\233\\3325aMX\\206dH\\206\\224\\014\\251j\\032(\\346\\313Kxmo\\376\\375\\276\\276\\276e\\335\\033\\306\\207\\337\\025\\374Y:\\355\\320Sf\\303\\206\\015\\323###e\\035(FGG\\307BX\\256Tp\\023\\376~j/\\374\\313\\245\\011k\\3022$C2\\244dHU\\351@1''/\\341\\337/\\346__\\352\\213\\261g\\213O\\324.\\370s\\\\\\261CO\\231\\206\\206\\206$\\227\\313\\225u\\240\\210\\377\\275\\020\\226\\\\\\2457\\341\\302\\251=\\036\\016\\324\\2045a\\031\\222!\\031R2\\244\\252y\\240(\\314K\\250\\311\\374\\277/\\325\\255b\\347\\273\\205l\\301\\177;g\\207\\2362\\361\\177\\334\\303PB\\220+\\2564\\341\\312*\\031R2\\244dH\\206d\\250<U\\356\\275\\241\\035z\\312\\254Y\\263\\346n\\271\\217PLNN\\216\\246\\344\\010\\305\\311L&\\363\\370c\\217=\\366\\210\\303\\304>\\325\\221!\\031\\222!%C\\252\\006\\216P|\\237\\227\\370\\364jG((\\311\\372\\365\\353\\247\\312}\\015\\305\\265k\\327>\\255\\360k(~\\320|+\\345\\274\\323\\360G\\270oU\\312\\373\\026\\362\\312\\317P\\245e\\312fP\\206d\\310Zf-\\253\\230\\201bN^\\\\CA\\311\\266n\\335z\\261\\334wy:t\\350\\320_+\\364.O\\237\\304''B\\316n\\276\\225\\324\\204\\347{\\355a\\277o!\\257\\374\\014UZ\\246l\\006eH\\206\\254e\\326\\262\\207>P\\024\\315\\213\\273<Q\\262\\267\\336zkw\\271\\237C\\321\\332\\332z\\240\\302\\236Cq\\337Oq4aM\\270\\3322d3(C2$C\\3262kY\\251y\\361\\034\\012J\\366\\352\\253\\257\\376l\\335\\272u\\337\\225\\361I\\331\\271\\272\\272\\272\\177\\245\\361)\\210\\232\\260&\\234\\366\\014\\331\\014\\312\\220\\014\\311\\220\\265\\314ZV\\252\\370\\244\\354\\260_\\233.\\307\\223\\262\\263\\331\\354]O\\312N\\271\\226\\226\\226\\177\\236:u\\252\\\\\\247;\\265\\207\\240\\364\\247\\361\\347\\244\\011k\\3026\\2036\\2032$C2d-\\253\\245\\014\\305\\347R\\3447\\372\\355\\355\\355\\313\\2627\\354\\350\\350(<:\\221\\312="\\301\\263\\317>\\273j\\323\\246M\\323e8J1^WWw:\\2043k\\240\\320\\204-\\3446\\2036\\2032$C\\3262kY\\305\\017\\024O\\3447\\373\\361(\\305R_\\234\\035\\177\\277\\2607\\274[\\360`\\275T\\356\\021\\271\\247\\271\\271y\\260\\263\\263sY\\247\\211x\\275F\\234<\\177\\354\\374NMX\\023\\266\\220\\333\\014\\312\\220\\014\\311\\220\\265\\314ZV\\031\\302\\336\\355\\343\\374\\206\\277\\245\\245e\\311n!\\033o\\025\\273i\\323\\246;\\205G''\\322\\272G\\344\\377aY\\331\\330\\3308944\\264,\\303\\304\\340\\340\\340\\376\\360\\337\\030\\011\\223\\347\\243i\\375\\031\\271\\325\\236[\\355U\\343fp\\205[~\\312\\220\\014\\311\\220\\265L\\206~d\\217\\030\\352z~\\343\\337\\332\\332\\272\\350\\241"\\016\\023;v\\354(\\274n\\342V\\232\\367\\210\\024\\310f\\263\\365\\315\\315\\315\\267\\307\\306\\306\\226t\\230\\270z\\365\\352\\261\\272\\272\\272\\317\\323~\\030\\313\\303\\200<\\014H\\206dH\\206\\224\\014\\251Z\\314P&\\223Y\\235\\277@;\\177\\244b\\241\\247?\\305_7\\353\\310\\204S\\235\\252M}}}cSS\\323\\255\\245:R\\021\\217L\\304a"\\004qK\\332\\1776\\232\\260&,C2$CJ\\206T\\255f(l\\374\\033\\012\\207\\212xME\\274P;\\336\\245\\251\\324\\2739\\305\\013\\260\\013\\257\\231\\210U\\015{D\\212L\\241\\331l\\366\\346\\207\\037~8\\261\\210\\013\\265\\307\\337~\\373\\355\\367\\342iN1\\200\\325\\360s\\321\\2045a\\031\\222!\\031R2\\244j9Cq\\217\\030j\\274p \\210\\203E|NE|\\370]<\\372\\220?\\035*\\236\\326\\024\\237\\200\\035\\037Z\\367\\316;\\357$k\\326\\254\\371n\\326\\323\\271oU\\313\\036\\221\\342S\\350\\3120A\\366477\\217\\236>}z\\362A\\2363q\\370\\360\\341\\2160\\220\\234\\214\\027\\327T\\323\\371p\\232\\260&,C2$CJ\\206T\\255g(\\356\\021\\013o''\\273\\300\\352w\\315Dm\\015\\026O\\306\\301\\242\\241\\241a\\254\\255\\255\\355\\374\\261c\\307>\\017\\323\\346H.\\227\\233\\231\\036&''''G\\257]\\273\\366iww\\367_\\266m\\333\\366Q\\230R/\\305\\220\\304\\211\\263\\332\\256\\324\\327\\2045a\\031\\222!\\031R2\\244j=C\\205{\\304{\\203\\305\\364\\203\\014\\022\\325\\270G\\244D\\361i\\211!4\\033C\\010\\366\\206\\372,T\\356^0\\342\\327+\\241:\\343\\243\\322\\253\\371\\351\\206\\232\\260&,C2$CJ\\206\\224\\201\\302\\036\\0214aMX\\206\\224\\014)\\031R2\\004h\\302\\232\\260\\205\\\\\\311\\220\\222!\\031\\222!@\\023V\\026r%C2$C2$C\\200\\201Bi\\3022$C2$C2\\244\\014\\024\\200&\\254\\011\\313\\220\\014\\311\\220\\222!%C\\200&\\254\\011\\313\\220\\222!%C2$C\\200&\\254,\\344J\\206dH\\206dH\\206\\000\\003\\205\\322\\204eH\\206dH\\206dH\\031(\\300@\\241\\371i\\3022$C2TbMLL$\\347\\316\\235\\233\\371\\272\\230\\327eH\\037\\322\\207\\000\\003\\205\\322\\204eH\\206j0Cq8\\010\\177\\344\\231\\257\\213y]\\206\\364!}\\0100P(MX\\206d\\310@a\\240\\220!e\\240\\0004aMX\\206dH\\206\\014\\0242\\244\\014\\024\\200&\\254\\011\\313\\220\\222!\\003\\205\\014)\\031\\0024aM\\330B\\256d\\310@!C\\372\\220>\\004h\\302\\312B\\256d\\310@a\\240\\220!}\\0100P(MX\\206dH\\206\\014\\0242\\244\\014\\024\\200&\\254\\011\\313\\220\\014\\311\\220\\201B\\206\\224\\014\\001\\232\\260&,CJ\\206\\014\\0242\\244\\017\\311\\020\\240\\011+\\013\\271\\222!\\003\\205\\014\\351C\\372\\020`\\240P\\232\\260\\014\\311\\220\\201\\302@!C\\312@\\001\\006\\012\\315O\\023\\226!\\031\\222!\\003\\205\\014)\\003\\005\\2600===\\232_\\345T.4\\341i\\031R2d\\240\\220!}H\\037\\002R\\343\\350\\321\\243#ccc\\032`\\005\\324\\360\\360\\360\\237B\\023\\276 CJ\\206*\\267&&&f\\206\\203\\370u1\\257\\313\\220>\\244\\017\\001U\\243\\267\\267\\367\\327}}}_}\\371\\345\\227\\223\\032\\341\\303\\3734''6\\340\\356\\356\\356\\317C=)CJ\\206\\224\\014\\311\\220\\014\\001\\251\\022\\376\\342?\\336\\325\\325u2\\036\\242\\214\\347=\\252\\262W\\374\\271_Hs\\003\\226!\\031\\222!\\031\\222!\\031J{\\206\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\340\\241\\372/\\347\\347E\\245\\303\\003\\0316\\000\\000\\000\\000IEND\\256B`\\202', 1);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308406617288617986', 1, 'var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308406617791934466', 1, 'hist.var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308586688364371969', 1, 'var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308586688863494145', 1, 'hist.var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308587454428831745', 1, 'var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308587454923759618', 1, 'hist.var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308589270763790337', 1, 'var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1308589271267106818', 1, 'hist.var-pers', NULL, E'\\254\\355\\000\\005sr\\000\\023java.util.ArrayListx\\201\\322\\035\\231\\307a\\235\\003\\000\\001I\\000\\004sizexp\\000\\000\\000\\003w\\004\\000\\000\\000\\003sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\021\\264R\\267-\\353\\320\\001sq\\000~\\000\\002\\021\\305\\366\\200S\\201\\340\\001sq\\000~\\000\\002\\021\\305\\376\\214\\247\\001\\240\\001x', NULL);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1354458534673420289', 1, '用车申请.bpmn20.xml', '1354458533096361986', E'<?xml version="1.0" encoding="UTF-8"?>\\012<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:flowable="http://flowable.org/bpmn" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:omgdi="http://www.omg.org/spec/DD/20100524/DI" typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath" targetNamespace="http://www.flowable.org/processdef">\\012  <process id="car_model" name="\\347\\224\\250\\350\\275\\246\\347\\224\\263\\350\\257\\267" isExecutable="true">\\012    <documentation>\\347\\224\\250\\350\\275\\246\\347\\224\\263\\350\\257\\267</documentation>\\012    <startEvent id="sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75" flowable:initiator="INITIATOR" flowable:formFieldValidation="true"></startEvent>\\012    <userTask id="sid-BB070528-C3E8-423E-B409-F6D72DA3D869" name="\\345\\241\\253\\345\\206\\231\\347\\224\\263\\350\\257\\267\\345\\215\\225" flowable:assignee="${INITIATOR}" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-initiator xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-initiator>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-73A2336A-EF01-45E5-9E8E-9B8994017737" sourceRef="sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75" targetRef="sid-BB070528-C3E8-423E-B409-F6D72DA3D869"></sequenceFlow>\\012    <userTask id="sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330" name="\\351\\242\\206\\345\\257\\274\\345\\256\\241\\346\\211\\271" flowable:assignee="1275735541155614721" flowable:formFieldValidation="true">\\012      <extensionElements>\\012        <modeler:activiti-idm-assignee xmlns:modeler="http://flowable.org/modeler"><![CDATA[true]]></modeler:activiti-idm-assignee>\\012        <modeler:assignee-info-firstname xmlns:modeler="http://flowable.org/modeler"><![CDATA[\\344\\277\\236\\345\\256\\235\\345\\261\\261[yubaoshan]]]></modeler:assignee-info-firstname>\\012        <modeler:initiator-can-complete xmlns:modeler="http://flowable.org/modeler"><![CDATA[false]]></modeler:initiator-can-complete>\\012      </extensionElements>\\012    </userTask>\\012    <sequenceFlow id="sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A" sourceRef="sid-BB070528-C3E8-423E-B409-F6D72DA3D869" targetRef="sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330"></sequenceFlow>\\012    <intermediateThrowEvent id="sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"></intermediateThrowEvent>\\012    <sequenceFlow id="sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D" sourceRef="sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330" targetRef="sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8"></sequenceFlow>\\012  </process>\\012  <bpmndi:BPMNDiagram id="BPMNDiagram_car_model">\\012    <bpmndi:BPMNPlane bpmnElement="car_model" id="BPMNPlane_car_model">\\012      <bpmndi:BPMNShape bpmnElement="sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75" id="BPMNShape_sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75">\\012        <omgdc:Bounds height="30.0" width="30.0" x="110.0" y="177.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-BB070528-C3E8-423E-B409-F6D72DA3D869" id="BPMNShape_sid-BB070528-C3E8-423E-B409-F6D72DA3D869">\\012        <omgdc:Bounds height="80.0" width="100.0" x="185.0" y="152.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330" id="BPMNShape_sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330">\\012        <omgdc:Bounds height="80.0" width="100.0" x="330.0" y="152.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNShape bpmnElement="sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8" id="BPMNShape_sid-6BCFC63E-DFF2-44C0-8D19-E1439306C6D8">\\012        <omgdc:Bounds height="30.0" width="30.0" x="458.0" y="177.0"></omgdc:Bounds>\\012      </bpmndi:BPMNShape>\\012      <bpmndi:BPMNEdge bpmnElement="sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A" id="BPMNEdge_sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A">\\012        <omgdi:waypoint x="284.9499999999907" y="192.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="329.9999999999807" y="192.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D" id="BPMNEdge_sid-A1FA6F08-AE19-43DF-BE35-7C5906D18B6D">\\012        <omgdi:waypoint x="429.9499999999753" y="192.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="458.0" y="192.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012      <bpmndi:BPMNEdge bpmnElement="sid-73A2336A-EF01-45E5-9E8E-9B8994017737" id="BPMNEdge_sid-73A2336A-EF01-45E5-9E8E-9B8994017737">\\012        <omgdi:waypoint x="139.9499984899576" y="192.0"></omgdi:waypoint>\\012        <omgdi:waypoint x="185.0" y="192.0"></omgdi:waypoint>\\012      </bpmndi:BPMNEdge>\\012    </bpmndi:BPMNPlane>\\012  </bpmndi:BPMNDiagram>\\012</definitions>', 0);
INSERT INTO "public"."act_ge_bytearray" VALUES ('1354458537030619138', 1, '用车申请.car_model.png', '1354458533096361986', E'\\211PNG\\015\\012\\032\\012\\000\\000\\000\\015IHDR\\000\\000\\001\\362\\000\\000\\000\\362\\010\\006\\000\\000\\000\\266\\346Gd\\000\\000\\013\\213IDATx\\332\\355\\335\\335o\\325\\365\\035\\007p.\\274\\340\\302\\013/\\274\\334\\005\\311H\\306\\205\\177\\300.\\270\\360\\202\\013/H\\306\\005\\204B\\033m*\\241\\352@\\253BB\\246\\004\\002&B\\214\\341bK\\026#\\011\\361aa\\2111\\312\\030\\223B\\313x\\022\\311\\230\\004\\212\\330\\254l\\200\\322''\\017[\\012\\301\\025*\\350w\\277\\317\\311\\216Ay\\260\\355\\351\\357\\364wN_\\257\\344\\033LO\\013\\246\\347\\335\\367\\347\\367\\334Y\\263\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\370^J\\351\\201\\363\\347\\317\\277w\\374\\370\\361o\\273\\273\\273\\323\\376\\375\\373\\255\\032\\257\\256\\256\\256t\\370\\360\\341\\177g\\253E\\206\\254\\231\\230!\\240\\012Q\\300G\\216\\034I\\245R)\\215\\215\\215Y\\323\\264._\\276\\234\\016\\035:t5+\\344\\3052d\\315\\264\\014\\001U\\210\\275(\\005\\\\\\230"\\036\\313\\366\\256ze\\310\\232i\\031\\002\\252\\020\\207B\\025`qVV\\3027e\\310\\232i\\031\\002\\252\\020\\347\\327\\224_\\241J8\\311\\2205\\3232\\004\\324\\240\\204\\277\\2762\\224\\316\\237\\330\\221\\316vm*\\257\\370\\357\\370\\230\\342T\\3022$C@\\301K\\370\\332\\310@\\372\\254s}:\\275g\\355\\017V|,^S\\236\\006\\271\\014\\311\\020P\\340\\022\\276t\\366Ow\\024pe\\365\\237\\335\\255<\\015r\\031\\222!\\240\\310%\\334\\373\\327\\255\\367,\\341xMy\\032\\3442$C@\\201K\\370\\263\\375\\033\\357Y\\302\\361\\232\\3624\\310eH\\206\\000%l\\031\\344\\226A\\016\\344Q\\302q\\205\\361\\275J8^S\\236\\006\\271\\014\\311\\020P\\340\\022>\\367\\361\\357\\356Y\\302\\361\\232\\3624\\310eH\\206\\200\\002\\227\\360\\177\\006z\\322g\\3736\\334yH4\\373X\\274\\246<\\015r\\031\\222!\\240\\300%\\034\\353\\302\\337\\337\\276\\243\\204\\343c\\212S\\011\\313\\220\\014\\001E/\\341\\0337\\322\\271c\\277\\277\\363\\220h\\366\\261xMy\\032\\3442$C@AK8\\236\\272\\325\\367\\361o\\357y~3^\\363d.\\203\\\\\\206d\\010(Z\\011g{IC\\347\\016\\2443{\\177s\\317\\002\\256\\254\\370\\234\\370\\\\{V\\006\\271\\014\\311\\020P\\200\\022\\376\\251=({VJX\\206d\\010(p\\011\\217g\\017\\352~{V\\312\\324 \\227!\\031\\002\\246\\261\\204''[\\300\\225\\245L\\015r\\031\\222!`\\032K\\330R\\3022$C\\200\\022\\266\\014rK\\206\\000%\\254\\204e\\3102\\310\\001%\\254\\204eH\\206\\240\\261\\244\\224f\\367\\364\\364\\264\\277\\365\\326[\\207\\266l\\331r\\365\\331g\\237\\275\\331\\332\\332\\232\\232\\232\\232RKK\\313wO?\\375\\364\\330K/\\275t~\\353\\326\\255\\357f\\353\\027\\006\\271\\245\\204eH\\206\\364-\\005\\011\\324\\373\\357\\277\\377\\366\\346\\315\\233ovtt\\2447\\336x#\\035?~<\\015\\014\\014\\244\\353\\327\\257\\247\\020\\177\\226J\\245\\364\\351\\247\\237\\246,x\\351\\271\\347\\236\\373\\356\\371\\347\\237\\277\\270r\\345\\312\\025\\006\\271e\\220\\313\\220\\014\\351[\\246I\\026\\240\\266W^y\\345\\306\\332\\265k\\313\\241\\271u\\353V\\032\\257S\\247N\\245u\\353\\326\\335joo\\357]\\262d\\311\\\\\\203\\3342\\310eH\\206\\306\\337\\267W\\256\\\\I\\357\\274\\363Ny/|\\336\\274y\\351\\241\\207\\036\\212\\377\\317\\364\\340\\203\\017\\2469s\\346\\244\\307\\036{,\\355\\330\\261#\\215\\214\\2144l\\337R\\335V\\341\\003\\273v\\355:\\360\\324SO\\245\\335\\273wOh\\200\\377\\330\\336\\275{S[[\\333h\\243l-*a%,C2\\224g\\337\\366\\367\\367\\247U\\253V\\225\\007v\\014\\3537\\337|3\\2359s&]\\276|\\271\\334\\2511\\270{{{\\323\\316\\235;\\323\\342\\305\\213\\313\\237\\027_;44\\324p}K\\025\\241:x\\360\\340\\337V\\257^\\235\\372\\372\\372\\322T\\270x\\361b\\004mt\\305\\212\\025\\2776\\310-\\203\\\\\\206d\\350\\356}\\273m\\333\\266\\364\\360\\303\\017\\2475k\\326\\244\\013\\027.\\214\\253_c\\200\\307\\347\\307\\036\\373\\253\\257\\276\\332P}\\313$\\305\\226a\\204*\\316\\301L\\245\\370\\373\\262\\255\\304k\\313\\226-k1\\310-\\203\\334{''C?\\354\\333\\030\\306q\\010=\\366\\276''#\\276\\356\\221G\\036)\\357\\235\\017\\016\\0166D\\3372\\311s4\\021\\202\\251\\332\\023\\277\\333\\236\\371\\343\\217?>\\222\\205k\\236An\\031\\344\\326L\\316\\320\\355}\\033C|\\376\\374\\371\\337\\037>\\237\\2548\\354\\276`\\301\\202\\3620o\\204\\276e\\342\\207xfo\\332\\264i,\\316\\321\\344i\\317\\236=\\243\\315\\315\\315\\237\\030\\344\\226An\\315\\324\\014\\335\\336\\267q8=\\366\\304\\253\\035\\342\\267\\017\\363\\3303\\217\\303\\354\\365\\336\\267L\\320\\007\\037|\\360\\207\\270Z\\362\\233o\\276Iy{\\346\\231g\\206\\353\\365\\220\\217\\022V\\3022$CS\\325\\267_~\\371e\\371\\234\\370d\\017\\247\\337\\3570{\\2343\\217\\363\\347\\365\\334\\267Lp\\3530\\356[\\214[\\036j\\341\\364\\351\\323c\\365\\272\\225\\250\\204\\225\\260\\014\\311\\320T\\365m\\\\\\235\\036\\207\\325\\363\\260n\\335\\272\\362!\\366z\\356[& \\236 \\024\\027\\\\Ts\\233\\331D\\265\\265\\265\\015755\\315)\\312\\367 \\333b\\335\\237\\255\\371JX\\011\\313\\220\\014\\345\\371\\376W\\3726\\356\\023\\217[\\307.]\\272\\224K\\307\\306\\336x\\374\\375q\\310\\276h}K\\016\\3421\\200\\333\\267oO\\265\\264m\\333\\266SY\\260\\326\\024\\345{\\020\\017]\\210\\025?\\214K\\227.\\375\\245\\0226\\310eH\\206\\362x\\377+}\\033\\017{Y\\270pa\\256=\\033\\367\\231\\307}\\350E\\353[r\\020\\317\\362\\215\\307\\000\\326\\322\\261c\\307.f\\301\\332]\\264\\022\\276m}t\\267\\255k%l\\220\\313\\220\\014U\\363\\376W\\3726\\206l<\\231-O\\361\\320\\230x\\250L\\321\\372\\226\\034\\304\\003\\371\\3430L-\\015\\017\\017\\227\\262`]*p\\011\\177\\277u}\\373\\017\\243\\0226\\310eH\\206\\252y\\377+};w\\356\\334)\\277\\310\\355\\307\\342\\011p\\3618\\327\\242\\365-9\\210\\337\\252Sy \\177\\255\\304\\277\\227\\005\\353z\\321K\\370\\366\\255\\3538\\\\\\246\\204\\015r\\031\\222\\241j\\336\\377J\\337\\306U\\345Su\\313\\331\\375nE\\213\\363\\344E\\353[r*\\240\\3510\\216\\340\\027n)\\341b-\\031\\262\\3521CaV\\371\\002\\366\\374U\\376\\235\\370wM\\273\\006\\366\\304\\023O|W\\353=\\362\\321\\321\\321\\341:\\331#?\\221mE/|\\364\\321G\\037pX\\324\\036\\271\\014\\311P\\265\\357\\177\\245ok\\271G^\\264\\276%\\007\\253W\\257\\036\\253\\3659\\362\\301\\301\\301\\177\\024\\374\\034\\371\\017~\\370\\212r~3\\266\\256\\357\\266\\212\\362\\272A^\\374\\014\\025-S\\015<\\310\\357\\372\\376W\\372\\266\\226\\347\\310\\213\\326\\267\\344`\\375\\372\\365\\347j}\\325zgg\\347_\\012z\\325\\372''\\313\\226-[\\364\\343\\037\\276"\\015\\362\\373}l\\272_7\\310\\213\\237\\241\\242e\\252\\001\\007\\371}\\337\\377J\\337\\326\\362\\252\\365\\242\\365-9x\\355\\265\\327\\266\\327\\372>\\362\\015\\0336\\354)\\330}\\344w\\335z6\\310\\015\\362F\\313\\220A\\236\\333 \\037\\327\\373_\\351\\333Z\\336G^\\264\\276%\\007/\\277\\374\\362\\317W\\255Z\\365m\\015\\237\\354v}\\371\\362\\345\\377\\252\\307''\\015\\031\\344\\006y\\275g\\310 \\237\\336\\014U\\372\\266VOv+\\225J7\\352\\265o\\231\\240\\027^x\\341\\237\\265z\\326zgg\\347\\273Y\\250\\216\\324\\343\\367\\311 7\\310\\015r\\203|\\252\\372\\266\\026\\317Z\\257\\347\\276e\\202\\236|\\362\\311%/\\276\\370\\342\\315\\032\\354\\225\\217d[\\207''\\375\\3663\\203\\334 7\\310g\\352 \\257\\364m\\177\\177\\177\\256\\277\\375lpp\\360j=\\367-\\223\\320\\336\\336\\336\\223\\367\\357#\\217\\363C\\261u\\370S\\347\\221\\224\\260An\\220\\033\\344\\215\\234\\241J\\337\\346\\371\\373\\310\\353\\275o\\231\\2048\\207\\322\\326\\3266\\332\\327\\327\\227\\313\\020\\357\\351\\351\\331\\225\\375\\033C\\331\\326\\341\\274z\\375\\036\\271\\375\\314\\355g\\2158\\310g\\271\\375lZ\\373\\266\\243\\243#\\315\\237?\\277\\352a\\036C|\\301\\202\\005i\\305\\212\\025\\015\\321\\267LRKKKs\\266\\245\\370\\337R\\2514\\245C\\274\\277\\277\\377\\350\\362\\345\\313\\277\\250\\367C<\\036\\346\\341\\20102$Cy\\364m\\014\\363\\3303\\237\\354a\\366\\370\\272\\330\\023\\217!\\376\\371\\347\\237\\177\\322\\010}K\\025\\232\\233\\233\\333V\\256\\\\ym\\252\\366\\314c\\3130B\\265t\\351\\322u\\365\\376\\275Q\\302JX\\206d(\\257\\276\\215\\303\\354qn;.\\200\\033\\357C\\272\\342\\363\\342\\302\\266\\370\\272\\315\\23377T\\337R\\245,\\004M\\331\\326\\342\\325\\017?\\374\\360\\353*.\\200\\033y\\375\\365\\327w\\304\\341\\235l\\2656\\302\\367E\\011+a\\031\\222\\241<\\3736.\\200\\213\\253\\331g\\317\\236]\\276\\317<\\036\\032\\023{\\333\\225\\303\\356q\\370<\\236\\330\\026\\017{\\211\\007\\320\\304\\000\\217\\275\\360\\270\\260\\255\\321\\372\\226):\\207\\223m\\331u\\267\\267\\267\\017\\237<yrt"\\367\\211\\357\\333\\267og\\026\\314\\023q\\241E#\\235\\243Q\\302JX\\206d\\250\\026}{\\355\\332\\265\\362\\020_\\264hQ\\371q\\2561\\260\\263O+\\337\\033\\036\\217]\\215s\\341\\361\\260\\227l\\200\\337h\\324\\276ej\\003\\2668\\002\\326\\332\\332Z\\332\\262e\\313\\331\\243G\\217~1000T\\371E+\\361@\\376x\\226oWW\\327\\2377n\\334\\370Qss\\363\\371\\010Tl\\0256\\332\\325\\222JX\\011\\313\\220\\014\\351[\\352V\\026\\230\\237e[{\\035Y`\\336\\313\\326\\205\\370m:\\377\\177\\266p\\374y)\\236\\345\\033\\217\\001l\\344''\\010)a%,C2\\244o\\301 \\267\\014rK\\206\\000%l\\031\\344\\226A\\016(a%,C2\\004\\030\\344\\226\\022\\226!\\031\\002\\224\\260e\\220[2\\004(a%,C\\226A\\016(a%,C2\\004\\030\\344\\226\\022\\226!\\031\\002\\224\\260e\\220[2\\004(a%,C\\226A\\016\\006\\271\\245\\204eH\\206\\000\\203\\3342\\310-\\031\\002\\224\\260\\022\\226!\\313 \\007\\224\\260\\022\\226!\\031\\002\\014rK\\011\\313\\220\\014\\001J\\3302\\310-\\031\\002\\224\\260\\022\\226!\\313 \\007\\224\\260\\022\\226!\\031\\002\\014rK\\011\\313\\220\\014\\001J\\3302\\310-\\203\\034P\\302JX\\206,\\203\\034f\\242\\356\\356n\\345W\\234u=+\\341\\2332d\\315\\264\\014\\001U8|\\370\\360P\\251TR\\200\\005X\\003\\003\\003\\177\\314J\\270W\\206\\254\\231\\226!\\240\\012\\007\\016\\034\\370\\325\\301\\203\\007\\257|\\365\\325W\\243\\212p\\372\\366\\242\\242\\200\\273\\272\\272\\276\\310\\326b\\031\\262fZ\\206\\200*e?\\370\\013\\263\\255\\370\\023qH.\\316\\257Y5_\\361}\\357\\255\\347\\002\\226!\\031\\002\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\000\\200\\373\\372\\037\\212\\307=h\\322\\321\\227O\\000\\000\\000\\000IEND\\256B`\\202', 1);

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ge_property";
CREATE TABLE "public"."act_ge_property" (
  "NAME_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "VALUE_" varchar(300) COLLATE "pg_catalog"."default",
  "REV_" int4
)
;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO "public"."act_ge_property" VALUES ('batch.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('cfg.execution-related-entities-count', 'true', 2);
INSERT INTO "public"."act_ge_property" VALUES ('cfg.task-related-entities-count', 'true', 2);
INSERT INTO "public"."act_ge_property" VALUES ('common.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('entitylink.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('eventsubscription.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('identitylink.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('job.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('next.dbid', '1', 1);
INSERT INTO "public"."act_ge_property" VALUES ('schema.history', 'create(6.5.0.6)', 1);
INSERT INTO "public"."act_ge_property" VALUES ('schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('task.schema.version', '6.5.0.6', 1);
INSERT INTO "public"."act_ge_property" VALUES ('variable.schema.version', '6.5.0.6', 1);

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_actinst";
CREATE TABLE "public"."act_hi_actinst" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "ACT_ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CALL_PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "ACT_TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ASSIGNEE_" varchar(255) COLLATE "pg_catalog"."default",
  "START_TIME_" timestamp(6) NOT NULL,
  "END_TIME_" timestamp(6),
  "DURATION_" int8,
  "DELETE_REASON_" varchar(4000) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406301734350850', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:02:26.005', '2020-09-22 22:02:26.318', 313, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406303806337026', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:02:26.499', '2020-09-22 22:02:26.499', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406304053800962', 2, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:02:26.558', '2020-09-22 22:02:29.247', 2689, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406316305362945', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:02:29.478', '2020-09-22 22:02:29.478', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406316791902210', 2, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:02:29.595', '2020-09-22 22:08:35.052', 365457, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406614050615297', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:03:40.467', '2020-09-22 22:03:41.535', 1068, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406619301883906', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:03:41.719', '2020-09-22 22:03:41.719', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406619561930754', 2, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:03:41.78', '2020-09-22 22:03:44.554', 2774, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406632182591490', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:03:44.789', '2020-09-22 22:03:44.789', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406632677519362', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:03:44.907', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406819621842946', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:04:29.478', '2020-09-22 22:04:29.827', 349, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406821853212673', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:04:30.01', '2020-09-22 22:04:30.01', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406822138425345', 2, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:04:30.078', '2020-09-22 22:04:32.721', 2643, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406834209632258', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:04:32.956', '2020-09-22 22:04:32.956', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308406834738114561', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-22 22:04:33.082', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308407850615320578', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:08:35.286', '2020-09-22 22:08:35.286', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308407851106054145', 3, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', NULL, '主管审批', 'userTask', '1280709549107552257', '2020-09-22 22:08:35.404', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583523564908545', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:46:38.981', '2020-09-23 09:46:39.248', 267, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583525452345345', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:39.432', '2020-09-23 09:46:39.432', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583525724975106', 2, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:46:39.496', '2020-09-23 09:46:42.21', 2714, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583538093977602', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:42.445', '2020-09-23 09:46:42.445', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583538588905473', 2, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:46:42.564', '2020-09-23 09:46:45.28', 2716, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583550957907969', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:45.513', '2020-09-23 09:46:45.513', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308583551444447233', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', NULL, '主管审批', 'userTask', '1280709549107552257', '2020-09-23 09:46:45.629', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586277431631873', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:57:35.554', '2020-09-23 09:57:36.067', 513, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586280283758593', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:57:36.234', '2020-09-23 09:57:36.234', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586280539611138', 2, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:57:36.296', '2020-09-23 09:57:38.701', 2405, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586291503521794', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:57:38.91', '2020-09-23 09:57:38.91', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586291956506625', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 09:57:39.018', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586686682456065', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:59:13.127', '2020-09-23 09:59:13.81', 683, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586690235031554', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:13.975', '2020-09-23 09:59:13.975', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586690486689794', 2, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:59:14.034', '2020-09-23 09:59:16.461', 2427, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586701551263745', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:16.673', '2020-09-23 09:59:16.673', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586702000054273', 2, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:59:16.78', '2020-09-23 09:59:19.134', 2354, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586712754249730', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:19.344', '2020-09-23 09:59:19.344', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586716319408130', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', NULL, '领导会签', 'userTask', '1275735541155614721', '2020-09-23 09:59:20.194', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586717904855041', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', NULL, '领导会签', 'userTask', '1280700700074041345', '2020-09-23 09:59:20.571', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308586719137980418', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', NULL, '领导会签', 'userTask', '1280709549107552257', '2020-09-23 09:59:20.866', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587452872744962', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:02:15.801', '2020-09-23 10:02:16.449', 648, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587456282714114', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:16.614', '2020-09-23 10:02:16.614', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587456551149569', 2, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:16.678', '2020-09-23 10:02:19.104', 2426, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587467590557698', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:19.311', '2020-09-23 10:02:19.311', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587468056125441', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:19.421', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587551543746561', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:02:39.328', '2020-09-23 10:02:39.612', 284, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587553410211842', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:39.771', '2020-09-23 10:02:39.771', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587553657675778', 2, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:39.83', '2020-09-23 10:02:42.148', 2318, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587564248293378', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:42.356', '2020-09-23 10:02:42.356', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587564709666818', 2, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:02:42.465', '2020-09-23 10:02:44.835', 2370, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587575518388225', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:45.043', '2020-09-23 10:02:45.043', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587575975567361', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', NULL, '宝山审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:45.151', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587713993334785', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:03:18.057', '2020-09-23 10:03:18.279', 222, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587715612336130', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:03:18.443', '2020-09-23 10:03:18.443', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587715863994370', 2, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:03:18.504', '2020-09-23 10:03:20.815', 2311, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587726433640449', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:03:21.024', '2020-09-23 10:03:21.024', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308587726920179714', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:03:21.14', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588719409946626', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:07:17.767', '2020-09-23 10:07:18.083', 316, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588721486127106', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:07:18.262', '2020-09-23 10:07:18.262', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588721754562561', 2, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:07:18.327', '2020-09-23 10:07:20.978', 2651, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588733838352385', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:07:21.208', '2020-09-23 10:07:21.208', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588734329085953', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:07:21.325', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588942660165634', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:08:10.995', '2020-09-23 10:08:11.292', 297, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588944648265730', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:08:11.468', '2020-09-23 10:08:11.468', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588944899923970', 2, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:08:11.529', '2020-09-23 10:08:14.154', 2625, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588956883050497', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:08:14.386', '2020-09-23 10:08:14.386', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308588957361201153', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:08:14.5', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308589269002182657', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:09:28.801', '2020-09-23 10:09:29.518', 717, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308589272768667649', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:09:29.698', '2020-09-23 10:09:29.698', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308589273020325890', 2, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:09:29.759', '2020-09-23 10:09:32.491', 2732, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308589285452242945', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:09:32.722', '2020-09-23 10:09:32.722', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308589285938782210', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:09:32.839', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308590489804693505', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:14:19.862', '2020-09-23 10:14:20.166', 304, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308590491771822082', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:14:20.331', '2020-09-23 10:14:20.331', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308590492027674626', 2, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:14:20.393', '2020-09-23 10:14:22.715', 2322, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308590502639263745', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:14:22.924', '2020-09-23 10:14:22.924', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308590503100637186', 2, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:14:23.033', '2020-09-23 10:18:24.49', 241457, 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1308591517623083009', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:18:24.914', NULL, NULL, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1354463469016223745', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, 'startEvent', NULL, '2021-01-28 00:17:10.384', '2021-01-28 00:17:11.108', 724, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1354463473504129025', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-01-28 00:17:11.46', '2021-01-28 00:17:11.46', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1354463474770808834', 2, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463476456919042', NULL, '填写申请单', 'userTask', '1265476890672672808', '2021-01-28 00:17:11.769', '2021-01-28 00:17:13.306', 1537, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1354463482802900993', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-01-28 00:17:13.671', '2021-01-28 00:17:13.671', 0, NULL, '');
INSERT INTO "public"."act_hi_actinst" VALUES ('1354463484451262466', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463485835382785', NULL, '领导审批', 'userTask', '1275735541155614721', '2021-01-28 00:17:14.07', NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_attachment";
CREATE TABLE "public"."act_hi_attachment" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(4000) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "URL_" varchar(4000) COLLATE "pg_catalog"."default",
  "CONTENT_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TIME_" timestamp(6)
)
;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_comment";
CREATE TABLE "public"."act_hi_comment" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "TIME_" timestamp(6) NOT NULL,
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACTION_" varchar(255) COLLATE "pg_catalog"."default",
  "MESSAGE_" varchar(4000) COLLATE "pg_catalog"."default",
  "FULL_MSG_" bytea
)
;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------
INSERT INTO "public"."act_hi_comment" VALUES ('1308407844994953218', 'comment', '2020-09-22 22:08:33.885', '1275735541155614721', '1308406317274247169', '1308406300706746370', 'AddComment', '俞宝山提交了任务，意见：我觉得可以;', E'\\344\\277\\236\\345\\256\\235\\345\\261\\261\\346\\217\\220\\344\\272\\244\\344\\272\\206\\344\\273\\273\\345\\212\\241\\357\\274\\214\\346\\204\\217\\350\\247\\201\\357\\274\\232\\346\\210\\221\\350\\247\\211\\345\\276\\227\\345\\217\\257\\344\\273\\245;');
INSERT INTO "public"."act_hi_comment" VALUES ('1308407861721837569', 'event', '2020-09-22 22:08:37.875', '1265476890672672808', '1308407851600982018', NULL, 'DeleteGroupLink', 'null_|_assignee', NULL);
INSERT INTO "public"."act_hi_comment" VALUES ('1308407866788556802', 'event', '2020-09-22 22:08:39.081', '1265476890672672808', '1308407851600982018', NULL, 'AddUserLink', '1280709549107552257_|_assignee', NULL);
INSERT INTO "public"."act_hi_comment" VALUES ('1308583546591637506', 'comment', '2020-09-23 09:46:44.411', '1275735541155614721', '1308583539075444738', '1308583522503749633', 'AddComment', '与上一步处理人相同，系统自动完成;', E'\\344\\270\\216\\344\\270\\212\\344\\270\\200\\346\\255\\245\\345\\244\\204\\347\\220\\206\\344\\272\\272\\347\\233\\270\\345\\220\\214\\357\\274\\214\\347\\263\\273\\347\\273\\237\\350\\207\\252\\345\\212\\250\\345\\256\\214\\346\\210\\220;');
INSERT INTO "public"."act_hi_comment" VALUES ('1308586708929044481', 'comment', '2020-09-23 09:59:18.374', '1275735541155614721', '1308586702457233410', '1308586685709377538', 'AddComment', '与上一步处理人相同，系统自动完成;', E'\\344\\270\\216\\344\\270\\212\\344\\270\\200\\346\\255\\245\\345\\244\\204\\347\\220\\206\\344\\272\\272\\347\\233\\270\\345\\220\\214\\357\\274\\214\\347\\263\\273\\347\\273\\237\\350\\207\\252\\345\\212\\250\\345\\256\\214\\346\\210\\220;');
INSERT INTO "public"."act_hi_comment" VALUES ('1308587571659628545', 'comment', '2020-09-23 10:02:44.062', '1280700700074041345', '1308587565158457345', '1308587550507753474', 'AddComment', '与上一步处理人相同，系统自动完成;', E'\\344\\270\\216\\344\\270\\212\\344\\270\\200\\346\\255\\245\\345\\244\\204\\347\\220\\206\\344\\272\\272\\347\\233\\270\\345\\220\\214\\357\\274\\214\\347\\263\\273\\347\\273\\237\\350\\207\\252\\345\\212\\250\\345\\256\\214\\346\\210\\220;');
INSERT INTO "public"."act_hi_comment" VALUES ('1308591513432973314', 'comment', '2020-09-23 10:18:23.857', '1280700700074041345', '1308590503566204930', '1308590488798060546', 'AddComment', '老俞退回任务到【填写申请单】，退回原因：跳什么舞，回家睡觉;', E'\\345\\206\\257\\347\\241\\225\\346\\245\\240\\351\\200\\200\\345\\233\\236\\344\\273\\273\\345\\212\\241\\345\\210\\260\\343\\200\\220\\345\\241\\253\\345\\206\\231\\347\\224\\263\\350\\257\\267\\345\\215\\225\\343\\200\\221\\357\\274\\214\\351\\200\\200\\345\\233\\236\\345\\216\\237\\345\\233\\240\\357\\274\\232\\350\\267\\263\\344\\273\\200\\344\\271\\210\\350\\210\\236\\357\\274\\214\\345\\233\\236\\345\\256\\266\\347\\235\\241\\350\\247\\211;');

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_detail";
CREATE TABLE "public"."act_hi_detail" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACT_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "VAR_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "REV_" int4,
  "TIME_" timestamp(6) NOT NULL,
  "BYTEARRAY_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000) COLLATE "pg_catalog"."default",
  "TEXT2_" varchar(4000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------
INSERT INTO "public"."act_hi_detail" VALUES ('1308406301990203394', 'FormProperty', '1308406300706746370', '1308406301486886914', NULL, '1308406301734350850', 'formData', NULL, NULL, '2020-09-22 22:02:26.005', NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308406614306467841', 'FormProperty', '1308406613064953858', '1308406613807345665', NULL, '1308406614050615297', 'formData', NULL, NULL, '2020-09-22 22:03:40.468', NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308406819877695490', 'FormProperty', '1308406818585849858', '1308406819361796097', NULL, '1308406819621842946', 'formData', NULL, NULL, '2020-09-22 22:04:29.478', NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308407847201157122', 'FormProperty', '1308406300706746370', '1308406301486886914', '1308406317274247169', '1308406316791902210', 'formData', NULL, NULL, '2020-09-22 22:08:34.348', NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308583523824955393', 'FormProperty', '1308583522503749633', '1308583523304861698', NULL, '1308583523564908545', 'formData', NULL, NULL, '2020-09-23 09:46:38.981', NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308586277687484418', 'FormProperty', '1308586276353695745', '1308586277171585026', NULL, '1308586277431631873', 'formData', NULL, NULL, '2020-09-23 09:57:35.554', NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308586686925725698', 'FormProperty', '1308586685709377538', '1308586686443380737', NULL, '1308586686682456065', 'formData', NULL, NULL, '2020-09-23 09:59:13.127', NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308587453116014594', 'FormProperty', '1308587451853529089', '1308587452633669633', NULL, '1308587452872744962', 'formData', NULL, NULL, '2020-09-23 10:02:15.801', NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308587551795404802', 'FormProperty', '1308587550507753474', '1308587551300476930', NULL, '1308587551543746561', 'formData', NULL, NULL, '2020-09-23 10:02:39.328', NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308587714240798722', 'FormProperty', '1308587712978313218', '1308587713737482242', NULL, '1308587713993334785', 'formData', NULL, NULL, '2020-09-23 10:03:18.057', NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308588719665799169', 'FormProperty', '1308588718357176322', '1308588719162482690', NULL, '1308588719409946626', 'formData', NULL, NULL, '2020-09-23 10:07:17.767', NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308588942920212481', 'FormProperty', '1308588941628366850', '1308588942400118785', NULL, '1308588942660165634', 'formData', NULL, NULL, '2020-09-23 10:08:10.995', NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308589269304172545', 'FormProperty', '1308589267949412354', '1308589268750524417', NULL, '1308589269002182657', 'formData', NULL, NULL, '2020-09-23 10:09:28.802', NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1308590490060546049', 'FormProperty', '1308590488798060546', '1308590489553035265', NULL, '1308590489804693505', 'formData', NULL, NULL, '2020-09-23 10:14:19.862', NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL);
INSERT INTO "public"."act_hi_detail" VALUES ('1354463470446481409', 'FormProperty', '1354463463303581698', '1354463467527245825', NULL, '1354463469016223745', 'formData', NULL, NULL, '2021-01-28 00:17:10.384', NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL);

-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_entitylink";
CREATE TABLE "public"."act_hi_entitylink" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "LINK_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "HIERARCHY_TYPE_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_identitylink";
CREATE TABLE "public"."act_hi_identitylink" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "GROUP_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406301226840066', NULL, 'starter', '1265476890672672808', NULL, '2020-09-22 22:02:25.883', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406304850718721', NULL, 'assignee', '1265476890672672808', '1308406304594866177', '2020-09-22 22:02:26.688', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406305358229505', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:02:26.868', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406313876860930', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:02:28.899', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406317517516801', NULL, 'assignee', '1275735541155614721', '1308406317274247169', '2020-09-22 22:02:29.71', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406318016638977', NULL, 'participant', '1275735541155614721', NULL, '2020-09-22 22:02:29.886', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406613555687426', NULL, 'starter', '1265476890672672808', NULL, '2020-09-22 22:03:40.349', '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406620316905474', NULL, 'assignee', '1265476890672672808', '1308406620056858626', '2020-09-22 22:03:41.899', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406620824416257', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:03:42.082', '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406629749895170', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:03:44.209', '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406633407328257', NULL, 'assignee', '1275735541155614721', '1308406633172447233', '2020-09-22 22:03:45.025', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406633906450433', NULL, 'participant', '1275735541155614721', NULL, '2020-09-22 22:03:45.2', '1308406613064953858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406819105943553', NULL, 'starter', '1265476890672672808', NULL, '2020-09-22 22:04:29.356', '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406822872428545', NULL, 'assignee', '1265476890672672808', '1308406822629158913', '2020-09-22 22:04:30.195', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406823371550722', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:04:30.372', '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406831776935937', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:04:32.376', '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406835497283586', NULL, 'assignee', '1280700700074041345', '1308406835233042433', '2020-09-22 22:04:33.2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308406836000600066', NULL, 'participant', '1280700700074041345', NULL, '2020-09-22 22:04:33.383', '1308406818585849858', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308407848664969218', NULL, 'participant', '1265476890672672808', NULL, '2020-09-22 22:08:34.821', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308407851844251650', NULL, 'assignee', '1280709549107552257', '1308407851600982018', '2020-09-22 22:08:35.522', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308407852334985218', NULL, 'participant', '1280709549107552257', NULL, '2020-09-22 22:08:35.697', '1308406300706746370', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308407861465985026', NULL, 'assignee', NULL, '1308407851600982018', '2020-09-22 22:08:37.814', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308407866041970690', NULL, 'assignee', '1280709549107552257', '1308407851600982018', '2020-09-22 22:08:38.906', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583523040620545', NULL, 'starter', '1275735541155614721', NULL, '2020-09-23 09:46:38.857', '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583526576418817', NULL, 'assignee', '1275735541155614721', '1308583526312177666', '2020-09-23 09:46:39.641', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583527075540994', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:46:39.818', '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583535636115457', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:46:41.86', '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583539327102977', NULL, 'assignee', '1275735541155614721', '1308583539075444738', '2020-09-23 09:46:42.681', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583548533600258', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:46:44.934', '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583552174256129', NULL, 'assignee', '1280709549107552257', '1308583551935180802', '2020-09-23 09:46:45.746', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308583552690155522', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 09:46:45.925', '1308583522503749633', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586276898955265', NULL, 'starter', '1275735541155614721', NULL, '2020-09-23 09:57:35.429', '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586281382666242', NULL, 'assignee', '1275735541155614721', '1308586281105842178', '2020-09-23 09:57:36.434', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586281839845377', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:57:36.606', '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586289326678017', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:57:38.39', '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586292665344001', NULL, 'assignee', '1280700700074041345', '1308586292422074369', '2020-09-23 09:57:39.129', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586293126717442', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 09:57:39.296', '1308586276353695745', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586686191722498', NULL, 'starter', '1275735541155614721', NULL, '2020-09-23 09:59:13.011', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586691203915778', NULL, 'assignee', '1275735541155614721', '1308586690956451842', '2020-09-23 09:59:14.147', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586691669483521', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:59:14.316', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586699412168705', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:59:16.163', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586702696308737', NULL, 'assignee', '1275735541155614721', '1308586702457233410', '2020-09-23 09:59:16.889', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586710615154689', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 09:59:18.833', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586717011468290', NULL, 'assignee', '1275735541155614721', '1308586716768198657', '2020-09-23 09:59:20.3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586718399782914', NULL, 'assignee', '1280700700074041345', '1308586718148124673', '2020-09-23 09:59:20.629', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586718647246849', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 09:59:20.749', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586719632908289', NULL, 'assignee', '1280709549107552257', '1308586719393832961', '2020-09-23 09:59:20.927', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308586719880372226', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 09:59:21.043', '1308586685709377538', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587452382011393', NULL, 'starter', '1280700700074041345', NULL, '2020-09-23 10:02:15.684', '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587457251598337', NULL, 'assignee', '1280700700074041345', '1308587457004134402', '2020-09-23 10:02:16.787', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587457721360385', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:02:16.958', '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587465472434177', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:02:18.806', '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587468764962817', NULL, 'assignee', '1275735541155614721', '1308587468509110274', '2020-09-23 10:02:19.531', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587469213753345', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 10:02:19.698', '1308587451853529089', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587551040430081', NULL, 'starter', '1280700700074041345', NULL, '2020-09-23 10:02:39.207', '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587554412650498', NULL, 'assignee', '1280700700074041345', '1308587554144215042', '2020-09-23 10:02:39.946', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587554878218241', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:02:40.121', '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587562130169857', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:02:41.85', '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587565401726978', NULL, 'assignee', '1280700700074041345', '1308587565158457345', '2020-09-23 10:02:42.574', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587573337350145', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:02:44.522', '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587576667627521', NULL, 'assignee', '1275735541155614721', '1308587576432746498', '2020-09-23 10:02:45.26', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587577120612354', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 10:02:45.425', '1308587550507753474', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587713485824002', NULL, 'starter', '1280700700074041345', NULL, '2020-09-23 10:03:17.938', '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587716581220354', NULL, 'assignee', '1280700700074041345', '1308587716329562114', '2020-09-23 10:03:18.615', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587717034205185', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:03:18.783', '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587724307128321', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:03:20.517', '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587727629017090', NULL, 'assignee', '1275735541155614721', '1308587727377358849', '2020-09-23 10:03:21.248', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308587728090390529', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 10:03:21.42', '1308587712978313218', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588718894047233', NULL, 'starter', '1280709549107552257', NULL, '2020-09-23 10:07:17.645', '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588722522120193', NULL, 'assignee', '1280709549107552257', '1308588722266267649', '2020-09-23 10:07:18.449', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588723096739842', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:07:18.648', '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588731435016194', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:07:20.636', '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588735113420801', NULL, 'assignee', '1280700700074041345', '1308588734824013825', '2020-09-23 10:07:21.443', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588735608348674', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:07:21.63', '1308588718357176322', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588942156849153', NULL, 'starter', '1280709549107552257', NULL, '2020-09-23 10:08:10.874', '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588945663287298', NULL, 'assignee', '1280709549107552257', '1308588945399046146', '2020-09-23 10:08:11.648', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588946162409474', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:08:11.829', '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588954462937089', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:08:13.81', '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588958086815745', NULL, 'assignee', '1275735541155614721', '1308588957851934722', '2020-09-23 10:08:14.616', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308588958577549314', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 10:08:14.79', '1308588941628366850', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589268490477570', NULL, 'starter', '1280709549107552257', NULL, '2020-09-23 10:09:28.678', '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589273775300610', NULL, 'assignee', '1280709549107552257', '1308589273519448066', '2020-09-23 10:09:29.878', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589274274422785', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:09:30.057', '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589283048906753', NULL, 'participant', '1280709549107552257', NULL, '2020-09-23 10:09:32.149', '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589286731505665', NULL, 'assignee', '1275735541155614721', '1308589286484041730', '2020-09-23 10:09:32.969', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308589287243210754', NULL, 'participant', '1275735541155614721', NULL, '2020-09-23 10:09:33.149', '1308589267949412354', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590489305571329', NULL, 'starter', '1265476890672672808', NULL, '2020-09-23 10:14:19.743', '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590492744900609', NULL, 'assignee', '1265476890672672808', '1308590492497436673', '2020-09-23 10:14:20.505', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590493223051265', NULL, 'participant', '1265476890672672808', NULL, '2020-09-23 10:14:20.677', '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590500516945922', NULL, 'participant', '1265476890672672808', NULL, '2020-09-23 10:14:22.417', '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590503809474562', NULL, 'assignee', '1280700700074041345', '1308590503566204930', '2020-09-23 10:14:23.143', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308590504275042305', NULL, 'participant', '1280700700074041345', NULL, '2020-09-23 10:14:23.312', '1308590488798060546', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1308591518612938753', NULL, 'assignee', '1265476890672672808', '1308591518118010881', '2020-09-23 10:18:25.09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463466017296385', NULL, 'starter', '1265476890672672808', NULL, '2021-01-28 00:17:09.669', '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463477811679234', NULL, 'assignee', '1265476890672672808', '1354463476456919042', '2021-01-28 00:17:12.164', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463479166439425', NULL, 'participant', '1265476890672672808', NULL, '2021-01-28 00:17:12.805', '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463481066459137', NULL, 'participant', '1265476890672672808', NULL, '2021-01-28 00:17:13.258', '1354463463303581698', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463487110451201', NULL, 'assignee', '1275735541155614721', '1354463485835382785', '2021-01-28 00:17:14.396', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_identitylink" VALUES ('1354463488700092417', NULL, 'participant', '1275735541155614721', NULL, '2021-01-28 00:17:15.078', '1354463463303581698', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_procinst";
CREATE TABLE "public"."act_hi_procinst" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "BUSINESS_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "START_TIME_" timestamp(6) NOT NULL,
  "END_TIME_" timestamp(6),
  "DURATION_" int8,
  "START_USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "START_ACT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "END_ACT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUPER_PROCESS_INSTANCE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DELETE_REASON_" varchar(4000) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "CALLBACK_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "CALLBACK_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "REFERENCE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REFERENCE_TYPE_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------
INSERT INTO "public"."act_hi_procinst" VALUES ('1308406300706746370', 2, '1308406300706746370', NULL, 'formal:1:1295553082574471169', '2020-09-22 22:02:25.698', NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308406613064953858', 2, '1308406613064953858', NULL, 'travel:1:1304341427379126274', '2020-09-22 22:03:40.172', NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308406818585849858', 2, '1308406818585849858', NULL, 'leave:1:1294922085572947969', '2020-09-22 22:04:29.165', NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308583522503749633', 2, '1308583522503749633', NULL, 'formal:1:1295553082574471169', '2020-09-23 09:46:38.668', NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308586276353695745', 2, '1308586276353695745', NULL, 'leave:1:1294922085572947969', '2020-09-23 09:57:35.235', NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308586685709377538', 2, '1308586685709377538', NULL, 'travel:1:1304341427379126274', '2020-09-23 09:59:12.834', NULL, NULL, '1275735541155614721', 'startEvent1', NULL, NULL, NULL, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308587451853529089', 2, '1308587451853529089', NULL, 'travel:1:1304341427379126274', '2020-09-23 10:02:15.495', NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:02:18发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308587550507753474', 2, '1308587550507753474', NULL, 'leave:1:1294922085572947969', '2020-09-23 10:02:39.011', NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:02:41发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308587712978313218', 2, '1308587712978313218', NULL, 'formal:1:1295553082574471169', '2020-09-23 10:03:17.754', NULL, NULL, '1280700700074041345', 'startEvent1', NULL, NULL, NULL, '', '老俞在2020-09-23 10:03:20发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308588718357176322', 2, '1308588718357176322', NULL, 'leave:1:1294922085572947969', '2020-09-23 10:07:17.446', NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308588941628366850', 2, '1308588941628366850', NULL, 'formal:1:1295553082574471169', '2020-09-23 10:08:10.679', NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308589267949412354', 2, '1308589267949412354', NULL, 'travel:1:1304341427379126274', '2020-09-23 10:09:28.481', NULL, NULL, '1280709549107552257', 'startEvent1', NULL, NULL, NULL, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1308590488798060546', 2, '1308590488798060546', NULL, 'leave:1:1294922085572947969', '2020-09-23 10:14:19.559', NULL, NULL, '1265476890672672808', 'startEvent1', NULL, NULL, NULL, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_hi_procinst" VALUES ('1354463463303581698', 2, '1354463463303581698', NULL, 'car_model:1:1354458538414739458', '2021-01-28 00:17:08.652', NULL, NULL, '1265476890672672808', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, '', '超级管理员在2021-01-28 00:17:12发起了用车申请', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_taskinst";
CREATE TABLE "public"."act_hi_taskinst" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_DEF_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "PROPAGATED_STAGE_INST_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "PARENT_TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(4000) COLLATE "pg_catalog"."default",
  "OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "ASSIGNEE_" varchar(255) COLLATE "pg_catalog"."default",
  "START_TIME_" timestamp(6) NOT NULL,
  "CLAIM_TIME_" timestamp(6),
  "END_TIME_" timestamp(6),
  "DURATION_" int8,
  "DELETE_REASON_" varchar(4000) COLLATE "pg_catalog"."default",
  "PRIORITY_" int4,
  "DUE_DATE_" timestamp(6),
  "FORM_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "LAST_UPDATED_TIME_" timestamp(6)
)
;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406304594866177', 2, 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2020-09-22 22:02:26.616', NULL, '2020-09-22 22:02:29.074', 2458, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:02:29.074');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406317274247169', 2, 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-22 22:02:29.653', NULL, '2020-09-22 22:08:34.938', 365285, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:08:34.938');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406620056858626', 2, 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406613064953858', '1308406613807345665', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2020-09-22 22:03:41.839', NULL, '2020-09-22 22:03:44.382', 2543, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:03:44.382');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406633172447233', 1, 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406613064953858', '1308406613807345665', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-22 22:03:44.966', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:03:45.025');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406822629158913', 2, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406818585849858', '1308406819361796097', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2020-09-22 22:04:30.136', NULL, '2020-09-22 22:04:32.549', 2413, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:04:32.549');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308406835233042433', 1, 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406818585849858', '1308406819361796097', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', '2020-09-22 22:04:33.14', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-22 22:04:33.2');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308407851600982018', 4, 'formal:1:1295553082574471169', NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308406300706746370', '1308406301486886914', NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, NULL, '1280709549107552257', '2020-09-22 22:08:35.463', NULL, NULL, NULL, NULL, 50, '2020-09-24 00:00:00', NULL, NULL, '', '2020-09-22 22:08:39.941');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308583526312177666', 2, 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:46:39.555', NULL, '2020-09-23 09:46:42.036', 2481, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:46:42.036');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308583539075444738', 2, 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:46:42.622', NULL, '2020-09-23 09:46:45.108', 2486, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:46:45.108');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308583551935180802', 1, 'formal:1:1295553082574471169', NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583522503749633', '1308583523304861698', NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, NULL, '1280709549107552257', '2020-09-23 09:46:45.688', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:46:45.746');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586281105842178', 2, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586276353695745', '1308586277171585026', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:57:36.347', NULL, '2020-09-23 09:57:38.539', 2192, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:57:38.539');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586292422074369', 1, 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586276353695745', '1308586277171585026', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 09:57:39.07', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:57:39.129');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586690956451842', 2, 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586685709377538', '1308586686443380737', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:59:14.085', NULL, '2020-09-23 09:59:16.313', 2228, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:59:16.313');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586702457233410', 2, 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586685709377538', '1308586686443380737', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:59:16.831', NULL, '2020-09-23 09:59:18.982', 2151, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:59:18.982');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586716768198657', 1, 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714415194113', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 09:59:20.244', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:59:20.3');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586718148124673', 1, 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714654269441', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 09:59:20.572', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:59:20.629');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308586719393832961', 1, 'travel:1:1304341427379126274', NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586685709377538', '1308586714893344770', NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, NULL, '1280709549107552257', '2020-09-23 09:59:20.867', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 09:59:20.927');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587457004134402', 2, 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587451853529089', '1308587452633669633', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:02:16.728', NULL, '2020-09-23 10:02:18.956', 2228, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:02:18.956');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587468509110274', 1, 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587451853529089', '1308587452633669633', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 10:02:19.471', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:02:19.531');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587554144215042', 2, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:02:39.881', NULL, '2020-09-23 10:02:41.999', 2118, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:02:41.999');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587565158457345', 2, 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:02:42.515', NULL, '2020-09-23 10:02:44.685', 2170, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:02:44.685');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587576432746498', 1, 'leave:1:1294922085572947969', NULL, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587550507753474', '1308587551300476930', NULL, NULL, NULL, NULL, NULL, '宝山审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 10:02:45.202', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:02:45.26');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587716329562114', 2, 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587712978313218', '1308587713737482242', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:03:18.555', NULL, '2020-09-23 10:03:20.667', 2112, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:03:20.667');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308587727377358849', 1, 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587712978313218', '1308587713737482242', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 10:03:21.19', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:03:21.248');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308588722266267649', 2, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588718357176322', '1308588719162482690', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', '2020-09-23 10:07:18.386', NULL, '2020-09-23 10:07:20.807', 2421, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:07:20.807');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308588734824013825', 1, 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588718357176322', '1308588719162482690', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:07:21.383', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:07:21.443');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308588945399046146', 2, 'formal:1:1295553082574471169', NULL, 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588941628366850', '1308588942400118785', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', '2020-09-23 10:08:11.586', NULL, '2020-09-23 10:08:13.983', 2397, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:08:13.983');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308588957851934722', 1, 'formal:1:1295553082574471169', NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588941628366850', '1308588942400118785', NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 10:08:14.558', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:08:14.616');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308589273519448066', 2, 'travel:1:1304341427379126274', NULL, 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589267949412354', '1308589268750524417', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1280709549107552257', '2020-09-23 10:09:29.817', NULL, '2020-09-23 10:09:32.321', 2504, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:09:32.321');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308589286484041730', 1, 'travel:1:1304341427379126274', NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589267949412354', '1308589268750524417', NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, NULL, '1275735541155614721', '2020-09-23 10:09:32.897', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:09:32.969');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308590492497436673', 2, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308590489553035265', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2020-09-23 10:14:20.444', NULL, '2020-09-23 10:14:22.567', 2123, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:14:22.567');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308590503566204930', 2, 'leave:1:1294922085572947969', NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590488798060546', '1308590489553035265', NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, NULL, '1280700700074041345', '2020-09-23 10:14:23.083', NULL, '2020-09-23 10:18:24.604', 241521, 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', 50, NULL, NULL, NULL, '', '2020-09-23 10:18:24.604');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1308591518118010881', 1, 'leave:1:1294922085572947969', NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590488798060546', '1308591517363036162', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2020-09-23 10:18:24.972', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2020-09-23 10:18:25.09');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1354463476456919042', 2, 'car_model:1:1354458538414739458', NULL, 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463463303581698', '1354463467527245825', NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, NULL, '1265476890672672808', '2021-01-28 00:17:11.771', NULL, '2021-01-28 00:17:13.262', 1491, NULL, 50, NULL, NULL, NULL, '', '2021-01-28 00:17:13.262');
INSERT INTO "public"."act_hi_taskinst" VALUES ('1354463485835382785', 1, 'car_model:1:1354458538414739458', NULL, 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463463303581698', '1354463467527245825', NULL, NULL, NULL, NULL, NULL, '领导审批', NULL, NULL, NULL, '1275735541155614721', '2021-01-28 00:17:14.073', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2021-01-28 00:17:14.396');

-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_tsk_log";
CREATE TABLE "public"."act_hi_tsk_log" (
  "ID_" int8 NOT NULL,
  "TYPE_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "TIME_STAMP_" timestamp(6) NOT NULL,
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "DATA_" varchar(4000) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_hi_tsk_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_hi_varinst";
CREATE TABLE "public"."act_hi_varinst" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "VAR_TYPE_" varchar(100) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "BYTEARRAY_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000) COLLATE "pg_catalog"."default",
  "TEXT2_" varchar(4000) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "LAST_UPDATED_TIME_" timestamp(6)
)
;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406300954210305', 0, '1308406300706746370', '1308406300706746370', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, '2020-09-22 22:02:25.822', '2020-09-22 22:02:25.822');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406302497714177', 1, '1308406300706746370', '1308406300706746370', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL, '2020-09-22 22:02:26.186', '2020-09-22 22:08:34.704');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406613316612097', 0, '1308406613064953858', '1308406613064953858', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, '2020-09-22 22:03:40.291', '2020-09-22 22:03:40.291');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406614793007106', 0, '1308406613064953858', '1308406613064953858', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL, '2020-09-22 22:03:40.645', '2020-09-22 22:03:40.645');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406617540276225', 0, '1308406613064953858', '1308406613064953858', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308406617791934466', NULL, NULL, NULL, NULL, '2020-09-22 22:03:41.3', '2020-09-22 22:03:41.3');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406618278473729', 0, '1308406613064953858', '1308406613064953858', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-22 22:03:41.476', '2020-09-22 22:03:41.476');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406818841702402', 0, '1308406818585849858', '1308406818585849858', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, '2020-09-22 22:04:29.294', '2020-09-22 22:04:29.294');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308406820372623362', 0, '1308406818585849858', '1308406818585849858', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL, '2020-09-22 22:04:29.658', '2020-09-22 22:04:29.658');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308583522767990785', 0, '1308583522503749633', '1308583522503749633', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, '2020-09-23 09:46:38.793', '2020-09-23 09:46:38.793');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308583524093390850', 0, '1308583522503749633', '1308583522503749633', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL, '2020-09-23 09:46:39.108', '2020-09-23 09:46:39.108');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586276622131202', 0, '1308586276353695745', '1308586276353695745', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, '2020-09-23 09:57:35.365', '2020-09-23 09:57:35.365');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586277955919874', 0, '1308586276353695745', '1308586276353695745', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL, '2020-09-23 09:57:35.679', '2020-09-23 09:57:35.679');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586685948452865', 0, '1308586685709377538', '1308586685709377538', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL, '2020-09-23 09:59:12.952', '2020-09-23 09:59:12.952');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586687177383938', 0, '1308586685709377538', '1308586685709377538', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL, '2020-09-23 09:59:13.246', '2020-09-23 09:59:13.246');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586688616030209', 0, '1308586685709377538', '1308586685709377538', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308586688863494145', NULL, NULL, NULL, NULL, '2020-09-23 09:59:13.589', '2020-09-23 09:59:13.589');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586689337450497', 0, '1308586685709377538', '1308586685709377538', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-23 09:59:13.76', '2020-09-23 09:59:13.76');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586713685385218', 0, '1308586685709377538', '1308586713228206081', NULL, 'nrOfInstances', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-23 09:59:19.566', '2020-09-23 09:59:19.566');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586713928654849', 0, '1308586685709377538', '1308586713228206081', NULL, 'nrOfCompletedInstances', 'integer', NULL, NULL, NULL, NULL, NULL, 0, '0', NULL, '2020-09-23 09:59:19.624', '2020-09-23 09:59:19.624');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586714167730178', 0, '1308586685709377538', '1308586713228206081', NULL, 'nrOfActiveInstances', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-23 09:59:19.68', '2020-09-23 09:59:19.68');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586715350523905', 0, '1308586685709377538', '1308586714415194113', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, 1275735541155614721, '1275735541155614721', NULL, '2020-09-23 09:59:19.963', '2020-09-23 09:59:19.963');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586715593793538', 0, '1308586685709377538', '1308586714654269441', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, 1280700700074041345, '1280700700074041345', NULL, '2020-09-23 09:59:20.021', '2020-09-23 09:59:20.021');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586715832868865', 0, '1308586685709377538', '1308586714893344770', NULL, 'per', 'long', NULL, NULL, NULL, NULL, NULL, 1280709549107552257, '1280709549107552257', NULL, '2020-09-23 09:59:20.078', '2020-09-23 09:59:20.078');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586716080332801', 0, '1308586685709377538', '1308586714415194113', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, 0, '0', NULL, '2020-09-23 09:59:20.136', '2020-09-23 09:59:20.136');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586717665779713', 0, '1308586685709377538', '1308586714654269441', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2020-09-23 09:59:20.515', '2020-09-23 09:59:20.515');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308586718903099393', 0, '1308586685709377538', '1308586714893344770', NULL, 'loopCounter', 'integer', NULL, NULL, NULL, NULL, NULL, 2, '2', NULL, '2020-09-23 09:59:20.809', '2020-09-23 09:59:20.809');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587452117770241', 0, '1308587451853529089', '1308587451853529089', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, '2020-09-23 10:02:15.622', '2020-09-23 10:02:15.622');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587453568999425', 0, '1308587451853529089', '1308587451853529089', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL, '2020-09-23 10:02:15.967', '2020-09-23 10:02:15.967');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587454676295682', 0, '1308587451853529089', '1308587451853529089', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308587454923759618', NULL, NULL, NULL, NULL, '2020-09-23 10:02:16.232', '2020-09-23 10:02:16.232');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587455368355841', 0, '1308587451853529089', '1308587451853529089', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-23 10:02:16.398', '2020-09-23 10:02:16.398');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587550784577538', 0, '1308587550507753474', '1308587550507753474', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, '2020-09-23 10:02:39.145', '2020-09-23 10:02:39.145');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587552252583938', 0, '1308587550507753474', '1308587550507753474', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL, '2020-09-23 10:02:39.495', '2020-09-23 10:02:39.495');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587713229971458', 0, '1308587712978313218', '1308587712978313218', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL, '2020-09-23 10:03:17.877', '2020-09-23 10:03:17.877');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308587714496651266', 0, '1308587712978313218', '1308587712978313218', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL, '2020-09-23 10:03:18.179', '2020-09-23 10:03:18.179');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308588718629806082', 0, '1308588718357176322', '1308588718357176322', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, '2020-09-23 10:07:17.582', '2020-09-23 10:07:17.582');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308588720164921345', 0, '1308588718357176322', '1308588718357176322', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL, '2020-09-23 10:07:17.947', '2020-09-23 10:07:17.947');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308588941900996610', 0, '1308588941628366850', '1308588941628366850', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, '2020-09-23 10:08:10.814', '2020-09-23 10:08:10.814');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308588943423528961', 0, '1308588941628366850', '1308588941628366850', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL, '2020-09-23 10:08:11.176', '2020-09-23 10:08:11.176');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308589268226236418', 0, '1308589267949412354', '1308589267949412354', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL, '2020-09-23 10:09:28.615', '2020-09-23 10:09:28.615');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308589269815877633', 0, '1308589267949412354', '1308589267949412354', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL, '2020-09-23 10:09:28.995', '2020-09-23 10:09:28.995');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308589271011254273', 0, '1308589267949412354', '1308589267949412354', NULL, 'pers', 'serializable', NULL, NULL, NULL, '1308589271267106818', NULL, NULL, NULL, NULL, '2020-09-23 10:09:29.279', '2020-09-23 10:09:29.279');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308589271770423297', 0, '1308589267949412354', '1308589267949412354', NULL, 'num', 'integer', NULL, NULL, NULL, NULL, NULL, 3, '3', NULL, '2020-09-23 10:09:29.461', '2020-09-23 10:09:29.461');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308590489049718785', 0, '1308590488798060546', '1308590488798060546', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, '2020-09-23 10:14:19.683', '2020-09-23 10:14:19.683');
INSERT INTO "public"."act_hi_varinst" VALUES ('1308590490513530881', 0, '1308590488798060546', '1308590488798060546', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL, '2020-09-23 10:14:20.031', '2020-09-23 10:14:20.031');
INSERT INTO "public"."act_hi_varinst" VALUES ('1354463464687702018', 0, '1354463463303581698', '1354463463303581698', NULL, 'INITIATOR', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL, '2021-01-28 00:17:09.354', '2021-01-28 00:17:09.354');
INSERT INTO "public"."act_hi_varinst" VALUES ('1354463471910293506', 0, '1354463463303581698', '1354463463303581698', NULL, 'formData', 'string', NULL, NULL, NULL, NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL, '2021-01-28 00:17:11.088', '2021-01-28 00:17:11.088');

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_bytearray";
CREATE TABLE "public"."act_id_bytearray" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "BYTES_" bytea
)
;

-- ----------------------------
-- Records of act_id_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_group";
CREATE TABLE "public"."act_id_group" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_info";
CREATE TABLE "public"."act_id_info" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "USER_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(64) COLLATE "pg_catalog"."default",
  "KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "VALUE_" varchar(255) COLLATE "pg_catalog"."default",
  "PASSWORD_" bytea,
  "PARENT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_membership";
CREATE TABLE "public"."act_id_membership" (
  "USER_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "GROUP_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_priv";
CREATE TABLE "public"."act_id_priv" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of act_id_priv
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_priv_mapping";
CREATE TABLE "public"."act_id_priv_mapping" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "PRIV_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "GROUP_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_id_priv_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_property";
CREATE TABLE "public"."act_id_property" (
  "NAME_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "VALUE_" varchar(300) COLLATE "pg_catalog"."default",
  "REV_" int4
)
;

-- ----------------------------
-- Records of act_id_property
-- ----------------------------
INSERT INTO "public"."act_id_property" VALUES ('schema.version', '6.5.0.6', 1);

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_token";
CREATE TABLE "public"."act_id_token" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TOKEN_VALUE_" varchar(255) COLLATE "pg_catalog"."default",
  "TOKEN_DATE_" timestamp(6) NOT NULL,
  "IP_ADDRESS_" varchar(255) COLLATE "pg_catalog"."default",
  "USER_AGENT_" varchar(255) COLLATE "pg_catalog"."default",
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TOKEN_DATA_" varchar(2000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_id_token
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_id_user";
CREATE TABLE "public"."act_id_user" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "FIRST_" varchar(255) COLLATE "pg_catalog"."default",
  "LAST_" varchar(255) COLLATE "pg_catalog"."default",
  "DISPLAY_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "EMAIL_" varchar(255) COLLATE "pg_catalog"."default",
  "PWD_" varchar(255) COLLATE "pg_catalog"."default",
  "PICTURE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_procdef_info";
CREATE TABLE "public"."act_procdef_info" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "INFO_JSON_ID_" varchar(64) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_re_deployment";
CREATE TABLE "public"."act_re_deployment" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOY_TIME_" timestamp(6),
  "DERIVED_FROM_" varchar(64) COLLATE "pg_catalog"."default",
  "DERIVED_FROM_ROOT_" varchar(64) COLLATE "pg_catalog"."default",
  "PARENT_DEPLOYMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ENGINE_VERSION_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------
INSERT INTO "public"."act_re_deployment" VALUES ('1294922083219943426', '请假流程', 'kaoqin', NULL, '', '2020-08-16 17:00:57.678', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_re_deployment" VALUES ('1295553080485707777', '转正流程', 'xingzheng', NULL, '', '2020-08-18 10:48:19.152', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_re_deployment" VALUES ('1304341425068064769', '出差流程', 'travel', NULL, '', '2020-09-11 16:50:03.823', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_re_deployment" VALUES ('1354458533096361986', '用车申请', 'approval', NULL, '', '2021-01-27 23:57:33.21', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_re_model";
CREATE TABLE "public"."act_re_model" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "LAST_UPDATE_TIME_" timestamp(6),
  "VERSION_" int4,
  "META_INFO_" varchar(4000) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EDITOR_SOURCE_VALUE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EDITOR_SOURCE_EXTRA_VALUE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_re_procdef";
CREATE TABLE "public"."act_re_procdef" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "KEY_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "VERSION_" int4 NOT NULL,
  "DEPLOYMENT_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "RESOURCE_NAME_" varchar(4000) COLLATE "pg_catalog"."default",
  "DGRM_RESOURCE_NAME_" varchar(4000) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(4000) COLLATE "pg_catalog"."default",
  "HAS_START_FORM_KEY_" int2,
  "HAS_GRAPHICAL_NOTATION_" int2,
  "SUSPENSION_STATE_" int4,
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ENGINE_VERSION_" varchar(255) COLLATE "pg_catalog"."default",
  "DERIVED_FROM_" varchar(64) COLLATE "pg_catalog"."default",
  "DERIVED_FROM_ROOT_" varchar(64) COLLATE "pg_catalog"."default",
  "DERIVED_VERSION_" int4 NOT NULL
)
;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------
INSERT INTO "public"."act_re_procdef" VALUES ('car_model:1:1354458538414739458', 2, 'approval', '用车申请', 'car_model', 1, '1354458533096361986', '用车申请.bpmn20.xml', '用车申请.car_model.png', '用车申请', 0, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO "public"."act_re_procdef" VALUES ('formal:1:1295553082574471169', 2, 'xingzheng', '转正流程', 'formal', 1, '1295553080485707777', '转正流程.bpmn20.xml', '转正流程.formal.png', '转正流程', 0, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO "public"."act_re_procdef" VALUES ('leave:1:1294922085572947969', 4, 'kaoqin', '请假流程', 'leave', 1, '1294922083219943426', '请假流程.bpmn20.xml', '请假流程.leave.png', '请假流程', 0, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO "public"."act_re_procdef" VALUES ('travel:1:1304341427379126274', 2, 'travel', '出差流程', 'travel', 1, '1304341425068064769', '出差流程.bpmn20.xml', '出差流程.travel.png', '出差流程', 0, 1, 1, '', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_actinst";
CREATE TABLE "public"."act_ru_actinst" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "ACT_ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CALL_PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "ACT_TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ASSIGNEE_" varchar(255) COLLATE "pg_catalog"."default",
  "START_TIME_" timestamp(6) NOT NULL,
  "END_TIME_" timestamp(6),
  "DURATION_" int8,
  "DELETE_REASON_" varchar(4000) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406301734350850', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:02:26.005', '2020-09-22 22:02:26.318', 313, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406303806337026', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:02:26.499', '2020-09-22 22:02:26.499', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406304053800962', 2, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308406304594866177', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:02:26.558', '2020-09-22 22:02:29.247', 2689, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406316305362945', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:02:29.478', '2020-09-22 22:02:29.478', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406316791902210', 2, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308406317274247169', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:02:29.595', '2020-09-22 22:08:35.052', 365457, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406614050615297', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:03:40.467', '2020-09-22 22:03:41.535', 1068, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406619301883906', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:03:41.719', '2020-09-22 22:03:41.719', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406619561930754', 2, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308406620056858626', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:03:41.78', '2020-09-22 22:03:44.554', 2774, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406632182591490', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:03:44.789', '2020-09-22 22:03:44.789', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406632677519362', 1, 'travel:1:1304341427379126274', '1308406613064953858', '1308406613807345665', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308406633172447233', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-22 22:03:44.907', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406819621842946', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-22 22:04:29.478', '2020-09-22 22:04:29.827', 349, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406821853212673', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:04:30.01', '2020-09-22 22:04:30.01', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406822138425345', 2, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308406822629158913', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-22 22:04:30.078', '2020-09-22 22:04:32.721', 2643, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406834209632258', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:04:32.956', '2020-09-22 22:04:32.956', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308406834738114561', 1, 'leave:1:1294922085572947969', '1308406818585849858', '1308406819361796097', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308406835233042433', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-22 22:04:33.082', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308407850615320578', 1, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-22 22:08:35.286', '2020-09-22 22:08:35.286', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308407851106054145', 3, 'formal:1:1295553082574471169', '1308406300706746370', '1308406301486886914', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308407851600982018', NULL, '主管审批', 'userTask', '1280709549107552257', '2020-09-22 22:08:35.404', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583523564908545', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:46:38.981', '2020-09-23 09:46:39.248', 267, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583525452345345', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:39.432', '2020-09-23 09:46:39.432', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583525724975106', 2, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308583526312177666', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:46:39.496', '2020-09-23 09:46:42.21', 2714, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583538093977602', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:42.445', '2020-09-23 09:46:42.445', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583538588905473', 2, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308583539075444738', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:46:42.564', '2020-09-23 09:46:45.28', 2716, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583550957907969', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-2E46C092-5AB1-4650-8A3A-F8EAEBEC3483', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:46:45.513', '2020-09-23 09:46:45.513', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308583551444447233', 1, 'formal:1:1295553082574471169', '1308583522503749633', '1308583523304861698', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '1308583551935180802', NULL, '主管审批', 'userTask', '1280709549107552257', '2020-09-23 09:46:45.629', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586277431631873', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:57:35.554', '2020-09-23 09:57:36.067', 513, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586280283758593', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:57:36.234', '2020-09-23 09:57:36.234', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586280539611138', 2, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308586281105842178', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:57:36.296', '2020-09-23 09:57:38.701', 2405, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586291503521794', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:57:38.91', '2020-09-23 09:57:38.91', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586291956506625', 1, 'leave:1:1294922085572947969', '1308586276353695745', '1308586277171585026', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308586292422074369', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 09:57:39.018', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586686682456065', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 09:59:13.127', '2020-09-23 09:59:13.81', 683, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586690235031554', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:13.975', '2020-09-23 09:59:13.975', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586690486689794', 2, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308586690956451842', NULL, '填写申请单', 'userTask', '1275735541155614721', '2020-09-23 09:59:14.034', '2020-09-23 09:59:16.461', 2427, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586701551263745', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:16.673', '2020-09-23 09:59:16.673', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586702000054273', 2, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308586702457233410', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 09:59:16.78', '2020-09-23 09:59:19.134', 2354, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586712754249730', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586686443380737', 'sid-B527FED6-7EDD-4D8F-9ECE-EA3BDA38E4FC', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 09:59:19.344', '2020-09-23 09:59:19.344', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586716319408130', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714415194113', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586716768198657', NULL, '领导会签', 'userTask', '1275735541155614721', '2020-09-23 09:59:20.194', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586717904855041', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714654269441', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586718148124673', NULL, '领导会签', 'userTask', '1280700700074041345', '2020-09-23 09:59:20.571', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308586719137980418', 1, 'travel:1:1304341427379126274', '1308586685709377538', '1308586714893344770', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '1308586719393832961', NULL, '领导会签', 'userTask', '1280709549107552257', '2020-09-23 09:59:20.866', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587452872744962', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:02:15.801', '2020-09-23 10:02:16.449', 648, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587456282714114', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:16.614', '2020-09-23 10:02:16.614', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587456551149569', 2, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308587457004134402', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:16.678', '2020-09-23 10:02:19.104', 2426, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587467590557698', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:19.311', '2020-09-23 10:02:19.311', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587468056125441', 1, 'travel:1:1304341427379126274', '1308587451853529089', '1308587452633669633', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308587468509110274', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:19.421', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587551543746561', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:02:39.328', '2020-09-23 10:02:39.612', 284, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587553410211842', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:39.771', '2020-09-23 10:02:39.771', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587553657675778', 2, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308587554144215042', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:02:39.83', '2020-09-23 10:02:42.148', 2318, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587564248293378', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:42.356', '2020-09-23 10:02:42.356', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587564709666818', 2, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308587565158457345', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:02:42.465', '2020-09-23 10:02:44.835', 2370, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587575518388225', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-85466395-9D76-459D-8A07-E235DA564B0D', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:02:45.043', '2020-09-23 10:02:45.043', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587575975567361', 1, 'leave:1:1294922085572947969', '1308587550507753474', '1308587551300476930', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '1308587576432746498', NULL, '宝山审批', 'userTask', '1275735541155614721', '2020-09-23 10:02:45.151', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587713993334785', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:03:18.057', '2020-09-23 10:03:18.279', 222, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587715612336130', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:03:18.443', '2020-09-23 10:03:18.443', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587715863994370', 2, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308587716329562114', NULL, '填写申请单', 'userTask', '1280700700074041345', '2020-09-23 10:03:18.504', '2020-09-23 10:03:20.815', 2311, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587726433640449', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:03:21.024', '2020-09-23 10:03:21.024', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308587726920179714', 1, 'formal:1:1295553082574471169', '1308587712978313218', '1308587713737482242', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308587727377358849', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:03:21.14', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588719409946626', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:07:17.767', '2020-09-23 10:07:18.083', 316, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588721486127106', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:07:18.262', '2020-09-23 10:07:18.262', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588721754562561', 2, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308588722266267649', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:07:18.327', '2020-09-23 10:07:20.978', 2651, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588733838352385', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:07:21.208', '2020-09-23 10:07:21.208', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588734329085953', 1, 'leave:1:1294922085572947969', '1308588718357176322', '1308588719162482690', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308588734824013825', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:07:21.325', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588942660165634', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:08:10.995', '2020-09-23 10:08:11.292', 297, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588944648265730', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-45446372-9BE6-4AB9-BB6D-D68E7CE9094F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:08:11.468', '2020-09-23 10:08:11.468', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588944899923970', 2, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '1308588945399046146', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:08:11.529', '2020-09-23 10:08:14.154', 2625, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588956883050497', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-171237EA-2EBF-40B5-90FB-B1452A10B5A8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:08:14.386', '2020-09-23 10:08:14.386', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308588957361201153', 1, 'formal:1:1295553082574471169', '1308588941628366850', '1308588942400118785', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '1308588957851934722', NULL, '部门经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:08:14.5', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308589269002182657', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:09:28.801', '2020-09-23 10:09:29.518', 717, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308589272768667649', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-170CF235-7CA9-4E7A-8392-75AA1F532611', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:09:29.698', '2020-09-23 10:09:29.698', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308589273020325890', 2, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '1308589273519448066', NULL, '填写申请单', 'userTask', '1280709549107552257', '2020-09-23 10:09:29.759', '2020-09-23 10:09:32.491', 2732, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308589285452242945', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-A9EF61BB-2CB2-404F-81A0-2E2F63956524', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:09:32.722', '2020-09-23 10:09:32.722', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308589285938782210', 1, 'travel:1:1304341427379126274', '1308589267949412354', '1308589268750524417', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '1308589286484041730', NULL, '经理审批', 'userTask', '1275735541155614721', '2020-09-23 10:09:32.839', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308590489804693505', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'startEvent1', NULL, NULL, '开始', 'startEvent', NULL, '2020-09-23 10:14:19.862', '2020-09-23 10:14:20.166', 304, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308590491771822082', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-62E95378-D6AA-42CD-83F8-93018A6D0AD8', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:14:20.331', '2020-09-23 10:14:20.331', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308590492027674626', 2, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308590492497436673', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:14:20.393', '2020-09-23 10:14:22.715', 2322, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308590502639263745', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A99E5D1C-210A-424B-BC98-FE18780C993F', NULL, NULL, NULL, 'sequenceFlow', NULL, '2020-09-23 10:14:22.924', '2020-09-23 10:14:22.924', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308590503100637186', 2, 'leave:1:1294922085572947969', '1308590488798060546', '1308590489553035265', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '1308590503566204930', NULL, '老俞审批', 'userTask', '1280700700074041345', '2020-09-23 10:14:23.033', '2020-09-23 10:18:24.49', 241457, 'Change activity to sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1308591517623083009', 1, 'leave:1:1294922085572947969', '1308590488798060546', '1308591517363036162', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '1308591518118010881', NULL, '填写申请单', 'userTask', '1265476890672672808', '2020-09-23 10:18:24.914', NULL, NULL, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1354463469016223745', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', NULL, NULL, NULL, 'startEvent', NULL, '2021-01-28 00:17:10.384', '2021-01-28 00:17:11.108', 724, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1354463473504129025', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-73A2336A-EF01-45E5-9E8E-9B8994017737', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-01-28 00:17:11.46', '2021-01-28 00:17:11.46', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1354463474770808834', 2, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '1354463476456919042', NULL, '填写申请单', 'userTask', '1265476890672672808', '2021-01-28 00:17:11.769', '2021-01-28 00:17:13.306', 1537, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1354463482802900993', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-B195B59F-DCA5-4425-A868-DAD125AD4B2A', NULL, NULL, NULL, 'sequenceFlow', NULL, '2021-01-28 00:17:13.671', '2021-01-28 00:17:13.671', 0, NULL, '');
INSERT INTO "public"."act_ru_actinst" VALUES ('1354463484451262466', 1, 'car_model:1:1354458538414739458', '1354463463303581698', '1354463467527245825', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '1354463485835382785', NULL, '领导审批', 'userTask', '1275735541155614721', '2021-01-28 00:17:14.07', NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_deadletter_job";
CREATE TABLE "public"."act_ru_deadletter_job" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "EXCLUSIVE_" int2,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROCESS_INSTANCE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ELEMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ELEMENT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "EXCEPTION_STACK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXCEPTION_MSG_" varchar(4000) COLLATE "pg_catalog"."default",
  "DUEDATE_" timestamp(6),
  "REPEAT_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_CFG_" varchar(4000) COLLATE "pg_catalog"."default",
  "CUSTOM_VALUES_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_deadletter_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_entitylink";
CREATE TABLE "public"."act_ru_entitylink" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "CREATE_TIME_" timestamp(6),
  "LINK_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "REF_SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "HIERARCHY_TYPE_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_event_subscr";
CREATE TABLE "public"."act_ru_event_subscr" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "EVENT_TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "EVENT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACTIVITY_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CONFIGURATION_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATED_" timestamp(6) NOT NULL,
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(64) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_execution";
CREATE TABLE "public"."act_ru_execution" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "BUSINESS_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "PARENT_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SUPER_EXEC_" varchar(64) COLLATE "pg_catalog"."default",
  "ROOT_PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ACT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "IS_ACTIVE_" int2,
  "IS_CONCURRENT_" int2,
  "IS_SCOPE_" int2,
  "IS_EVENT_SCOPE_" int2,
  "IS_MI_ROOT_" int2,
  "SUSPENSION_STATE_" int4,
  "CACHED_ENT_STATE_" int4,
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "START_ACT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "START_TIME_" timestamp(6),
  "START_USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "LOCK_TIME_" timestamp(6),
  "IS_COUNT_ENABLED_" int2,
  "EVT_SUBSCR_COUNT_" int4,
  "TASK_COUNT_" int4,
  "JOB_COUNT_" int4,
  "TIMER_JOB_COUNT_" int4,
  "SUSP_JOB_COUNT_" int4,
  "DEADLETTER_JOB_COUNT_" int4,
  "VAR_COUNT_" int4,
  "ID_LINK_COUNT_" int4,
  "CALLBACK_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "CALLBACK_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "REFERENCE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "REFERENCE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "PROPAGATED_STAGE_INST_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------
INSERT INTO "public"."act_ru_execution" VALUES ('1308406300706746370', 2, '1308406300706746370', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308406300706746370', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '超级管理员在2020-09-22 22:02:28发起了转正流程', 'startEvent1', '2020-09-22 22:02:25.698', '1265476890672672808', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308406301486886914', 3, '1308406300706746370', NULL, '1308406300706746370', 'formal:1:1295553082574471169', NULL, '1308406300706746370', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-22 22:02:25.886', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308406613064953858', 2, '1308406613064953858', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308406613064953858', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '超级管理员在2020-09-22 22:03:43发起了出差流程', 'startEvent1', '2020-09-22 22:03:40.172', '1265476890672672808', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308406613807345665', 2, '1308406613064953858', NULL, '1308406613064953858', 'travel:1:1304341427379126274', NULL, '1308406613064953858', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-22 22:03:40.349', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308406818585849858', 2, '1308406818585849858', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308406818585849858', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '超级管理员在2020-09-22 22:04:31发起了请假流程', 'startEvent1', '2020-09-22 22:04:29.165', '1265476890672672808', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308406819361796097', 2, '1308406818585849858', NULL, '1308406818585849858', 'leave:1:1294922085572947969', NULL, '1308406818585849858', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-22 22:04:29.356', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308583522503749633', 2, '1308583522503749633', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308583522503749633', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '俞宝山在2020-09-23 09:46:41发起了转正流程', 'startEvent1', '2020-09-23 09:46:38.668', '1275735541155614721', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308583523304861698', 3, '1308583522503749633', NULL, '1308583522503749633', 'formal:1:1295553082574471169', NULL, '1308583522503749633', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 09:46:38.858', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586276353695745', 2, '1308586276353695745', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308586276353695745', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '俞宝山在2020-09-23 09:57:37发起了请假流程', 'startEvent1', '2020-09-23 09:57:35.235', '1275735541155614721', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586277171585026', 2, '1308586276353695745', NULL, '1308586276353695745', 'leave:1:1294922085572947969', NULL, '1308586276353695745', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 09:57:35.43', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586685709377538', 2, '1308586685709377538', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308586685709377538', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '俞宝山在2020-09-23 09:59:15发起了出差流程', 'startEvent1', '2020-09-23 09:59:12.834', '1275735541155614721', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586713228206081', 1, '1308586685709377538', NULL, '1308586685709377538', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', 0, 0, 0, 0, 1, 1, NULL, '', NULL, NULL, '2020-09-23 09:59:19.345', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 3, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586714415194113', 1, '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 09:59:19.68', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586714654269441', 1, '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 09:59:19.739', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308586714893344770', 1, '1308586685709377538', NULL, '1308586713228206081', 'travel:1:1304341427379126274', NULL, '1308586685709377538', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 09:59:19.796', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 2, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587451853529089', 2, '1308587451853529089', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308587451853529089', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '老俞在2020-09-23 10:02:18发起了出差流程', 'startEvent1', '2020-09-23 10:02:15.495', '1280700700074041345', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587452633669633', 2, '1308587451853529089', NULL, '1308587451853529089', 'travel:1:1304341427379126274', NULL, '1308587451853529089', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:02:15.684', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587550507753474', 2, '1308587550507753474', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308587550507753474', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '老俞在2020-09-23 10:02:41发起了请假流程', 'startEvent1', '2020-09-23 10:02:39.011', '1280700700074041345', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587551300476930', 3, '1308587550507753474', NULL, '1308587550507753474', 'leave:1:1294922085572947969', NULL, '1308587550507753474', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:02:39.207', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587712978313218', 2, '1308587712978313218', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308587712978313218', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '老俞在2020-09-23 10:03:20发起了转正流程', 'startEvent1', '2020-09-23 10:03:17.754', '1280700700074041345', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308587713737482242', 2, '1308587712978313218', NULL, '1308587712978313218', 'formal:1:1295553082574471169', NULL, '1308587712978313218', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:03:17.938', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308588718357176322', 2, '1308588718357176322', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308588718357176322', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '徐玉祥在2020-09-23 10:07:20发起了请假流程', 'startEvent1', '2020-09-23 10:07:17.446', '1280709549107552257', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308588719162482690', 2, '1308588718357176322', NULL, '1308588718357176322', 'leave:1:1294922085572947969', NULL, '1308588718357176322', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:07:17.645', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308588941628366850', 2, '1308588941628366850', NULL, NULL, 'formal:1:1295553082574471169', NULL, '1308588941628366850', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '徐玉祥在2020-09-23 10:08:13发起了转正流程', 'startEvent1', '2020-09-23 10:08:10.679', '1280709549107552257', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308588942400118785', 2, '1308588941628366850', NULL, '1308588941628366850', 'formal:1:1295553082574471169', NULL, '1308588941628366850', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:08:10.874', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308589267949412354', 2, '1308589267949412354', NULL, NULL, 'travel:1:1304341427379126274', NULL, '1308589267949412354', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '徐玉祥在2020-09-23 10:09:31发起了出差流程', 'startEvent1', '2020-09-23 10:09:28.481', '1280709549107552257', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308589268750524417', 2, '1308589267949412354', NULL, '1308589267949412354', 'travel:1:1304341427379126274', NULL, '1308589267949412354', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:09:28.679', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308590488798060546', 2, '1308590488798060546', NULL, NULL, 'leave:1:1294922085572947969', NULL, '1308590488798060546', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '超级管理员在2020-09-23 10:14:21发起了请假流程', 'startEvent1', '2020-09-23 10:14:19.559', '1265476890672672808', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1308591517363036162', 1, '1308590488798060546', NULL, '1308590488798060546', 'leave:1:1294922085572947969', NULL, '1308590488798060546', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2020-09-23 10:18:24.721', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1354463463303581698', 2, '1354463463303581698', NULL, NULL, 'car_model:1:1354458538414739458', NULL, '1354463463303581698', NULL, 1, 0, 1, 0, 0, 1, NULL, '', '超级管理员在2021-01-28 00:17:12发起了用车申请', 'sid-E7523DDA-0BCE-4706-B34C-1C6EF690EF75', '2021-01-28 00:17:08.652', '1265476890672672808', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_execution" VALUES ('1354463467527245825', 2, '1354463463303581698', NULL, '1354463463303581698', 'car_model:1:1354458538414739458', NULL, '1354463463303581698', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2021-01-28 00:17:09.67', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_history_job";
CREATE TABLE "public"."act_ru_history_job" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "LOCK_EXP_TIME_" timestamp(6),
  "LOCK_OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "RETRIES_" int4,
  "EXCEPTION_STACK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXCEPTION_MSG_" varchar(4000) COLLATE "pg_catalog"."default",
  "HANDLER_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_CFG_" varchar(4000) COLLATE "pg_catalog"."default",
  "CUSTOM_VALUES_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ADV_HANDLER_CFG_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_history_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_identitylink";
CREATE TABLE "public"."act_ru_identitylink" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "GROUP_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "USER_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406301226840066', 1, NULL, 'starter', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406305358229505', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406313876860930', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406318016638977', 1, NULL, 'participant', '1275735541155614721', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406613555687426', 1, NULL, 'starter', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406620824416257', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406629749895170', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406633906450433', 1, NULL, 'participant', '1275735541155614721', NULL, '1308406613064953858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406819105943553', 1, NULL, 'starter', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406823371550722', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406831776935937', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308406836000600066', 1, NULL, 'participant', '1280700700074041345', NULL, '1308406818585849858', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308407848664969218', 1, NULL, 'participant', '1265476890672672808', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308407852334985218', 1, NULL, 'participant', '1280709549107552257', NULL, '1308406300706746370', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308583523040620545', 1, NULL, 'starter', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308583527075540994', 1, NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308583535636115457', 1, NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308583548533600258', 1, NULL, 'participant', '1275735541155614721', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308583552690155522', 1, NULL, 'participant', '1280709549107552257', NULL, '1308583522503749633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586276898955265', 1, NULL, 'starter', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586281839845377', 1, NULL, 'participant', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586289326678017', 1, NULL, 'participant', '1275735541155614721', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586293126717442', 1, NULL, 'participant', '1280700700074041345', NULL, '1308586276353695745', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586686191722498', 1, NULL, 'starter', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586691669483521', 1, NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586699412168705', 1, NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586710615154689', 1, NULL, 'participant', '1275735541155614721', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586718647246849', 1, NULL, 'participant', '1280700700074041345', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308586719880372226', 1, NULL, 'participant', '1280709549107552257', NULL, '1308586685709377538', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587452382011393', 1, NULL, 'starter', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587457721360385', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587465472434177', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587469213753345', 1, NULL, 'participant', '1275735541155614721', NULL, '1308587451853529089', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587551040430081', 1, NULL, 'starter', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587554878218241', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587562130169857', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587573337350145', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587577120612354', 1, NULL, 'participant', '1275735541155614721', NULL, '1308587550507753474', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587713485824002', 1, NULL, 'starter', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587717034205185', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587724307128321', 1, NULL, 'participant', '1280700700074041345', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308587728090390529', 1, NULL, 'participant', '1275735541155614721', NULL, '1308587712978313218', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588718894047233', 1, NULL, 'starter', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588723096739842', 1, NULL, 'participant', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588731435016194', 1, NULL, 'participant', '1280709549107552257', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588735608348674', 1, NULL, 'participant', '1280700700074041345', NULL, '1308588718357176322', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588942156849153', 1, NULL, 'starter', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588946162409474', 1, NULL, 'participant', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588954462937089', 1, NULL, 'participant', '1280709549107552257', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308588958577549314', 1, NULL, 'participant', '1275735541155614721', NULL, '1308588941628366850', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308589268490477570', 1, NULL, 'starter', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308589274274422785', 1, NULL, 'participant', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308589283048906753', 1, NULL, 'participant', '1280709549107552257', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308589287243210754', 1, NULL, 'participant', '1275735541155614721', NULL, '1308589267949412354', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308590489305571329', 1, NULL, 'starter', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308590493223051265', 1, NULL, 'participant', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308590500516945922', 1, NULL, 'participant', '1265476890672672808', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1308590504275042305', 1, NULL, 'participant', '1280700700074041345', NULL, '1308590488798060546', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1354463466017296385', 1, NULL, 'starter', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1354463479166439425', 1, NULL, 'participant', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1354463481066459137', 1, NULL, 'participant', '1265476890672672808', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_identitylink" VALUES ('1354463488700092417', 1, NULL, 'participant', '1275735541155614721', NULL, '1354463463303581698', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_job";
CREATE TABLE "public"."act_ru_job" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "LOCK_EXP_TIME_" timestamp(6),
  "LOCK_OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "EXCLUSIVE_" int2,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROCESS_INSTANCE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ELEMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ELEMENT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RETRIES_" int4,
  "EXCEPTION_STACK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXCEPTION_MSG_" varchar(4000) COLLATE "pg_catalog"."default",
  "DUEDATE_" timestamp(6),
  "REPEAT_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_CFG_" varchar(4000) COLLATE "pg_catalog"."default",
  "CUSTOM_VALUES_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_suspended_job";
CREATE TABLE "public"."act_ru_suspended_job" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "EXCLUSIVE_" int2,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROCESS_INSTANCE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ELEMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ELEMENT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RETRIES_" int4,
  "EXCEPTION_STACK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXCEPTION_MSG_" varchar(4000) COLLATE "pg_catalog"."default",
  "DUEDATE_" timestamp(6),
  "REPEAT_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_CFG_" varchar(4000) COLLATE "pg_catalog"."default",
  "CUSTOM_VALUES_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_suspended_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_task";
CREATE TABLE "public"."act_ru_task" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "PROPAGATED_STAGE_INST_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "PARENT_TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(4000) COLLATE "pg_catalog"."default",
  "TASK_DEF_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "ASSIGNEE_" varchar(255) COLLATE "pg_catalog"."default",
  "DELEGATION_" varchar(64) COLLATE "pg_catalog"."default",
  "PRIORITY_" int4,
  "CREATE_TIME_" timestamp(6),
  "DUE_DATE_" timestamp(6),
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "SUSPENSION_STATE_" int4,
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "FORM_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "CLAIM_TIME_" timestamp(6),
  "IS_COUNT_ENABLED_" int2,
  "VAR_COUNT_" int4,
  "ID_LINK_COUNT_" int4,
  "SUB_TASK_COUNT_" int4
)
;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------
INSERT INTO "public"."act_ru_task" VALUES ('1308406633172447233', 1, '1308406613807345665', '1308406613064953858', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, 50, '2020-09-22 22:03:44.966', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308406835233042433', 1, '1308406819361796097', '1308406818585849858', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, 50, '2020-09-22 22:04:33.14', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308407851600982018', 4, '1308406301486886914', '1308406300706746370', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, '1280709549107552257', NULL, 50, '2020-09-22 22:08:35.463', '2020-09-24 00:00:00', NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308583551935180802', 1, '1308583523304861698', '1308583522503749633', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '主管审批', NULL, NULL, 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', NULL, '1280709549107552257', NULL, 50, '2020-09-23 09:46:45.688', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308586292422074369', 1, '1308586277171585026', '1308586276353695745', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, 50, '2020-09-23 09:57:39.07', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308586716768198657', 1, '1308586714415194113', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1275735541155614721', NULL, 50, '2020-09-23 09:59:20.244', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308586718148124673', 1, '1308586714654269441', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1280700700074041345', NULL, 50, '2020-09-23 09:59:20.572', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308586719393832961', 1, '1308586714893344770', '1308586685709377538', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '领导会签', NULL, NULL, 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', NULL, '1280709549107552257', NULL, 50, '2020-09-23 09:59:20.867', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308587468509110274', 1, '1308587452633669633', '1308587451853529089', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, 50, '2020-09-23 10:02:19.471', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308587576432746498', 1, '1308587551300476930', '1308587550507753474', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '宝山审批', NULL, NULL, 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', NULL, '1275735541155614721', NULL, 50, '2020-09-23 10:02:45.202', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308587727377358849', 1, '1308587713737482242', '1308587712978313218', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, '1275735541155614721', NULL, 50, '2020-09-23 10:03:21.19', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308588734824013825', 1, '1308588719162482690', '1308588718357176322', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '老俞审批', NULL, NULL, 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', NULL, '1280700700074041345', NULL, 50, '2020-09-23 10:07:21.383', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308588957851934722', 1, '1308588942400118785', '1308588941628366850', 'formal:1:1295553082574471169', NULL, NULL, NULL, NULL, NULL, NULL, '部门经理审批', NULL, NULL, 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', NULL, '1275735541155614721', NULL, 50, '2020-09-23 10:08:14.558', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308589286484041730', 1, '1308589268750524417', '1308589267949412354', 'travel:1:1304341427379126274', NULL, NULL, NULL, NULL, NULL, NULL, '经理审批', NULL, NULL, 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', NULL, '1275735541155614721', NULL, 50, '2020-09-23 10:09:32.897', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1308591518118010881', 1, '1308591517363036162', '1308590488798060546', 'leave:1:1294922085572947969', NULL, NULL, NULL, NULL, NULL, NULL, '填写申请单', NULL, NULL, 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', NULL, '1265476890672672808', NULL, 50, '2020-09-23 10:18:24.972', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);
INSERT INTO "public"."act_ru_task" VALUES ('1354463485835382785', 1, '1354463467527245825', '1354463463303581698', 'car_model:1:1354458538414739458', NULL, NULL, NULL, NULL, NULL, NULL, '领导审批', NULL, NULL, 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', NULL, '1275735541155614721', NULL, 50, '2021-01-28 00:17:14.073', NULL, NULL, 1, '', NULL, NULL, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_timer_job";
CREATE TABLE "public"."act_ru_timer_job" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "LOCK_EXP_TIME_" timestamp(6),
  "LOCK_OWNER_" varchar(255) COLLATE "pg_catalog"."default",
  "EXCLUSIVE_" int2,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROCESS_INSTANCE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_DEF_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "ELEMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "ELEMENT_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_DEFINITION_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RETRIES_" int4,
  "EXCEPTION_STACK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "EXCEPTION_MSG_" varchar(4000) COLLATE "pg_catalog"."default",
  "DUEDATE_" timestamp(6),
  "REPEAT_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "HANDLER_CFG_" varchar(4000) COLLATE "pg_catalog"."default",
  "CUSTOM_VALUES_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_timer_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS "public"."act_ru_variable";
CREATE TABLE "public"."act_ru_variable" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "EXECUTION_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "PROC_INST_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TASK_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(255) COLLATE "pg_catalog"."default",
  "BYTEARRAY_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "DOUBLE_" float8,
  "LONG_" int8,
  "TEXT_" varchar(4000) COLLATE "pg_catalog"."default",
  "TEXT2_" varchar(4000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------
INSERT INTO "public"."act_ru_variable" VALUES ('1308406300954210305', 1, 'string', 'INITIATOR', '1308406300706746370', '1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406302497714177', 1, 'string', 'formData', '1308406300706746370', '1308406300706746370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"超级管理员","appyDate":"2020-09-22","applyDept":"总公司","applyPosition":"老总","entryDate":"2020-09-22","formalDate":"2020-09-22"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406613316612097', 1, 'string', 'INITIATOR', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406614793007106', 1, 'string', 'formData', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-01","2020-09-22"],"trafficList":[{"startPlace":"北京","endPlace":"成都","traffic":"飞机","money":1000,"key":1600783367583},{"startPlace":"成都","endPlace":"昆明","traffic":"火车","money":800,"key":1600783379936},{"startPlace":"昆明","endPlace":"西双版纳","traffic":"汽车","money":320,"key":1600783388839},{"startPlace":"西双版纳","endPlace":"北京","traffic":"飞机","money":1600,"key":1600783402408}]}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406617540276225', 1, 'serializable', 'pers', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, '1308406617288617986', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406618278473729', 1, 'integer', 'num', '1308406613064953858', '1308406613064953858', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406818841702402', 1, 'string', 'INITIATOR', '1308406818585849858', '1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308406820372623362', 1, 'string', 'formData', '1308406818585849858', '1308406818585849858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-22","2020-09-25"],"type":"1","remark":"心情不好，想跳三天舞"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308583522767990785', 1, 'string', 'INITIATOR', '1308583522503749633', '1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308583524093390850', 1, 'string', 'formData', '1308583522503749633', '1308583522503749633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586276622131202', 1, 'string', 'INITIATOR', '1308586276353695745', '1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586277955919874', 1, 'string', 'formData', '1308586276353695745', '1308586276353695745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","deptName":"研发部","time":["2020-09-23","2020-09-24"],"type":"1","remark":"产品要上线了，请求回家跳一天舞"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586685948452865', 1, 'string', 'INITIATOR', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1275735541155614721', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586687177383938', 1, 'string', 'formData', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"俞宝山","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"天山","traffic":"火车","money":340,"key":1600826323124},{"startPlace":"天山","endPlace":"乌鲁木齐","traffic":"火车","money":340,"key":1600826343146}]}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586688616030209', 1, 'serializable', 'pers', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, '1308586688364371969', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586689337450497', 1, 'integer', 'num', '1308586685709377538', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586713685385218', 1, 'integer', 'nrOfInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586713928654849', 1, 'integer', 'nrOfCompletedInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586714167730178', 1, 'integer', 'nrOfActiveInstances', '1308586713228206081', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586715350523905', 1, 'long', 'per', '1308586714415194113', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 1275735541155614721, '1275735541155614721', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586715593793538', 1, 'long', 'per', '1308586714654269441', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 1280700700074041345, '1280700700074041345', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586715832868865', 1, 'long', 'per', '1308586714893344770', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 1280709549107552257, '1280709549107552257', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586716080332801', 1, 'integer', 'loopCounter', '1308586714415194113', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586717665779713', 1, 'integer', 'loopCounter', '1308586714654269441', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308586718903099393', 1, 'integer', 'loopCounter', '1308586714893344770', '1308586685709377538', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587452117770241', 1, 'string', 'INITIATOR', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587453568999425', 1, 'string', 'formData', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","dept":"研发部","travelDate":["2020-09-24","2020-09-27"],"trafficList":[{"startPlace":"北京","endPlace":"石家庄","traffic":"火车","money":230,"key":1600826515851},{"startPlace":"石家庄","endPlace":"北京","traffic":"火车","money":230,"key":1600826526978}]}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587454676295682', 1, 'serializable', 'pers', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, '1308587454428831745', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587455368355841', 1, 'integer', 'num', '1308587451853529089', '1308587451853529089', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587550784577538', 1, 'string', 'INITIATOR', '1308587550507753474', '1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587552252583938', 1, 'string', 'formData', '1308587550507753474', '1308587550507753474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"回家跳舞"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587713229971458', 1, 'string', 'INITIATOR', '1308587712978313218', '1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280700700074041345', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308587714496651266', 1, 'string', 'formData', '1308587712978313218', '1308587712978313218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-22"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308588718629806082', 1, 'string', 'INITIATOR', '1308588718357176322', '1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308588720164921345', 1, 'string', 'formData', '1308588718357176322', '1308588718357176322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","deptName":"研发部","time":["2020-10-01","2020-10-19"],"type":"1","remark":"国庆逢中秋，必须出去嗨"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308588941900996610', 1, 'string', 'INITIATOR', '1308588941628366850', '1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308588943423528961', 1, 'string', 'formData', '1308588941628366850', '1308588941628366850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308589268226236418', 1, 'string', 'INITIATOR', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280709549107552257', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308589269815877633', 1, 'string', 'formData', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-09-24","2020-10-01"],"trafficList":[{"startPlace":"成都","endPlace":"昆明","traffic":"飞机","money":1300,"key":1600826934163},{"startPlace":"昆明","endPlace":"攀枝花","traffic":"火车","money":400,"key":1600826947547},{"startPlace":"攀枝花","endPlace":"成都","traffic":"火车","money":1200,"key":1600826955187}]}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308589271011254273', 1, 'serializable', 'pers', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, '1308589270763790337', NULL, NULL, NULL, NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308589271770423297', 1, 'integer', 'num', '1308589267949412354', '1308589267949412354', NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308590489049718785', 1, 'string', 'INITIATOR', '1308590488798060546', '1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1308590490513530881', 1, 'string', 'formData', '1308590488798060546', '1308590488798060546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"超级管理员","deptName":"总公司","time":["2020-09-24","2020-10-14"],"type":"1","remark":"跳舞跳舞跳舞！！！！！！！！！！"}', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1354463464687702018', 1, 'string', 'INITIATOR', '1354463463303581698', '1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1265476890672672808', NULL);
INSERT INTO "public"."act_ru_variable" VALUES ('1354463471910293506', 1, 'string', 'formData', '1354463463303581698', '1354463463303581698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"inputVal":"输入","clearVal":"清除","textareaVal":"文本","selectVal":"2","selectMultVal":["2"],"radioVal":"3","checkboxVal":["2"],"dateVal":"2021-01-28"}', NULL);

-- ----------------------------
-- Table structure for flw_button
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_button";
CREATE TABLE "public"."flw_button" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_name" varchar(255) COLLATE "pg_catalog"."default",
  "submit" char(1) COLLATE "pg_catalog"."default",
  "save" char(1) COLLATE "pg_catalog"."default",
  "back" char(1) COLLATE "pg_catalog"."default",
  "turn" char(1) COLLATE "pg_catalog"."default",
  "next" char(1) COLLATE "pg_catalog"."default",
  "entrust" char(1) COLLATE "pg_catalog"."default",
  "end" char(1) COLLATE "pg_catalog"."default",
  "trace" char(1) COLLATE "pg_catalog"."default",
  "suspend" char(1) COLLATE "pg_catalog"."default",
  "jump" char(1) COLLATE "pg_catalog"."default",
  "add_sign" char(1) COLLATE "pg_catalog"."default",
  "delete_sign" char(1) COLLATE "pg_catalog"."default",
  "version" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_button"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_button"."process_definition_id" IS '流程实例id';
COMMENT ON COLUMN "public"."flw_button"."act_id" IS '活动节点id';
COMMENT ON COLUMN "public"."flw_button"."act_name" IS '活动节点名称';
COMMENT ON COLUMN "public"."flw_button"."submit" IS '提交（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."save" IS '保存（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."back" IS '退回（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."turn" IS '转办（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."next" IS '指定（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."entrust" IS '委托（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."end" IS '终止（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."trace" IS '追踪（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."suspend" IS '挂起（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."jump" IS '跳转（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."add_sign" IS '加签（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."delete_sign" IS '减签（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_button"."version" IS '版本';
COMMENT ON COLUMN "public"."flw_button"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_button"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_button"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_button"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_button" IS '流程节点按钮表';

-- ----------------------------
-- Records of flw_button
-- ----------------------------
INSERT INTO "public"."flw_button" VALUES (1294925235696578561, 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, '2020-08-16 17:13:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1294925267078361090, 'leave:1:1294922085572947969', 'sid-15C39F16-3D98-4D85-9A62-D66DC755FF45', '宝山审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, '2020-08-16 17:13:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1295542179338616834, 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, '2020-08-18 10:05:00', 1265476890672672808, '2020-09-09 20:14:49', 1265476890672672808);
INSERT INTO "public"."flw_button" VALUES (1295542245906415618, 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, '2020-08-18 10:05:16', 1265476890672672808, '2020-09-22 21:17:56', 1265476890672672808);
INSERT INTO "public"."flw_button" VALUES (1295542270900273153, 'formal:1:1295553082574471169', 'sid-89217BDA-FD8F-47C8-A4A9-1E4D1D71F4A2', '部门经理审批', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, '2020-08-18 10:05:22', 1265476890672672808, '2020-08-18 10:06:41', 1265476890672672808);
INSERT INTO "public"."flw_button" VALUES (1295542365045620738, 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', NULL, '2020-08-18 10:05:44', 1265476890672672808, '2020-08-18 10:06:52', 1265476890672672808);
INSERT INTO "public"."flw_button" VALUES (1295542516766179329, 'formal:1:1295553082574471169', 'sid-9E68149F-D1A0-4A3A-A447-63CBDDF89431', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N', 'N', NULL, '2020-08-18 10:06:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1304341611609735169, 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, '2020-09-11 16:50:48', 1265476890672672808, '2020-09-22 21:18:55', 1265476890672672808);
INSERT INTO "public"."flw_button" VALUES (1304341640323940353, 'travel:1:1304341427379126274', 'sid-87E4C091-BC12-4D6F-A85B-FA7164AA4D13', '经理审批', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', NULL, '2020-09-11 16:50:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1304341958755500033, 'travel:1:1304341427379126274', 'sid-64A789A3-6EDA-4C69-836E-C233B7269859', '领导会签', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y', NULL, '2020-09-11 16:52:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1304342034198446081, 'travel:1:1304341427379126274', 'sid-6D4A69E7-A765-49EC-94C6-C238AF325027', '总经理审批', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', NULL, '2020-09-11 16:52:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1354458652785020929, 'car_model:1:1354458538414739458', 'sid-BB070528-C3E8-423E-B409-F6D72DA3D869', '填写申请单', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', NULL, '2021-01-27 23:58:02', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_button" VALUES (1354458710733524994, 'car_model:1:1354458538414739458', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '领导审批', 'Y', 'N', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N', 'N', 'N', NULL, '2021-01-27 23:58:16', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_category";
CREATE TABLE "public"."flw_category" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_category"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_category"."name" IS '名称';
COMMENT ON COLUMN "public"."flw_category"."code" IS '编码';
COMMENT ON COLUMN "public"."flw_category"."sort" IS '排序';
COMMENT ON COLUMN "public"."flw_category"."remark" IS '描述';
COMMENT ON COLUMN "public"."flw_category"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."flw_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_category"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_category"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_category" IS '流程分类表';

-- ----------------------------
-- Records of flw_category
-- ----------------------------
INSERT INTO "public"."flw_category" VALUES (1290140237082759170, '考勤类', 'kaoqin', 100, '考勤类', 0, '2020-08-03 12:19:37', 1265476890672672808, '2020-08-06 16:18:18', 1265476890672672808);
INSERT INTO "public"."flw_category" VALUES (1290670559956320258, '行政类', 'xingzheng', 100, '行政类', 0, '2020-08-04 23:26:56', 1265476890672672808, '2020-08-06 16:13:59', 1265476890672672808);
INSERT INTO "public"."flw_category" VALUES (1308401074679459841, '差旅类', 'travel', 100, '差旅类', 0, '2020-09-22 21:41:40', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_category" VALUES (1354458450737008641, '审批类', 'approval', 100, '审批类', 0, '2021-01-27 23:57:14', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_channel_definition
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_channel_definition";
CREATE TABLE "public"."flw_channel_definition" (
  "ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "VERSION_" int4,
  "KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RESOURCE_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_channel_definition
-- ----------------------------

-- ----------------------------
-- Table structure for flw_draft
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_draft";
CREATE TABLE "public"."flw_draft" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "form_json" text COLLATE "pg_catalog"."default" NOT NULL,
  "form_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "process_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "category_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_draft"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_draft"."process_definition_id" IS '流程定义id';
COMMENT ON COLUMN "public"."flw_draft"."form_json" IS '表单布局数据';
COMMENT ON COLUMN "public"."flw_draft"."form_data" IS '表单填写数据';
COMMENT ON COLUMN "public"."flw_draft"."process_name" IS '流程名称';
COMMENT ON COLUMN "public"."flw_draft"."category" IS '分类编码';
COMMENT ON COLUMN "public"."flw_draft"."category_name" IS '分类名称';
COMMENT ON COLUMN "public"."flw_draft"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_draft"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_draft"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."flw_draft"."update_user" IS '修改人';
COMMENT ON TABLE "public"."flw_draft" IS '申请草稿表';

-- ----------------------------
-- Records of flw_draft
-- ----------------------------
INSERT INTO "public"."flw_draft" VALUES (1308407141660504066, 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"超级管理员","dept":"总公司","travelDate":["2020-09-10","2020-09-19"],"trafficList":[{"startPlace":"俄罗斯","endPlace":"纽约","traffic":"飞机","money":3200,"key":1600783500495},{"startPlace":"纽约","endPlace":"北京","traffic":"飞机","money":1800,"key":1600783512343},{"startPlace":"北京","endPlace":"东京","traffic":"飞机","money":1500,"key":1600783521559},{"startPlace":"东京","endPlace":"大阪","traffic":"火车","money":400,"key":1600783534784}]}', '出差申请', 'travel', '差旅类', '2020-09-22 22:05:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308407262112526337, 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"超级管理员","deptName":"总公司","time":["2020-09-30","2020-10-01"],"type":"1","remark":"放假了，请求回家吃烤肉"}', '请假申请', 'kaoqin', '考勤类', '2020-09-22 22:06:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308407362373169154, 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"超级管理员","appyDate":"2020-09-23","applyDept":"总公司","applyPosition":"老大","entryDate":"2020-09-08","formalDate":"2020-09-30"}', '转正申请', 'xingzheng', '行政类', '2020-09-22 22:06:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308586063039782913, 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"俞宝山","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"前端开发工程师","entryDate":"2020-09-09","formalDate":"2020-09-23"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 09:56:44', 1275735541155614721, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308586445610639361, 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"俞宝山","deptName":"研发部","time":["2020-09-24","2020-09-25"],"type":"1","remark":"一天跳舞没跳够，再来一天"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 09:58:16', 1275735541155614721, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308586966652248065, 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"俞宝山","dept":"研发部","travelDate":["2020-10-21","2020-10-29"],"trafficList":[{"startPlace":"乌鲁木齐","endPlace":"新加坡","traffic":"飞机","money":1440,"key":1600826393108},{"startPlace":"新加坡","endPlace":"乌鲁木齐","traffic":"飞机","money":1440,"key":1600826411250}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:00:20', 1275735541155614721, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308587986744729601, 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"老俞","dept":"研发部","travelDate":["2020-09-30","2020-10-11"],"trafficList":[{"startPlace":"北京","endPlace":"青岛","traffic":"飞机","money":1200,"key":1600826633299},{"startPlace":"青岛","endPlace":"南通","traffic":"火车","money":640,"key":1600826646459},{"startPlace":"南通","endPlace":"北京","traffic":"飞机","money":1600,"key":1600826655203}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:04:23', 1280700700074041345, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308588109390372865, 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"老俞","deptName":"研发部","time":["2020-09-25","2020-09-27"],"type":"1","remark":"项目上线，需庆祝"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 10:04:52', 1280700700074041345, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308588188574638082, 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"老俞","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"主管","entryDate":"2020-09-01","formalDate":"2020-09-23"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 10:05:11', 1280700700074041345, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308588839165714434, 'leave:1:1294922085572947969', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"徐玉祥","deptName":"研发部","time":["2020-09-27","2020-10-20"],"type":"3","remark":"回家结婚"}', '请假申请', 'kaoqin', '考勤类', '2020-09-23 10:07:46', 1280709549107552257, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308589063913299970, 'formal:1:1295553082574471169', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"applyUserName":"徐玉祥","appyDate":"2020-09-23","applyDept":"研发部","applyPosition":"后端开发工程师","entryDate":"2020-09-01","formalDate":"2020-09-25"}', '转正申请', 'xingzheng', '行政类', '2020-09-23 10:08:40', 1280709549107552257, NULL, NULL);
INSERT INTO "public"."flw_draft" VALUES (1308589423692308482, 'travel:1:1304341427379126274', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', '{"name":"徐玉祥","dept":"研发部","travelDate":["2020-10-01","2020-10-23"],"trafficList":[{"startPlace":"成都","endPlace":"绵阳","traffic":"火车","money":250,"key":1600826986325},{"startPlace":"绵阳","endPlace":"成都","traffic":"火车","money":250,"key":1600826996492}]}', '出差申请', 'travel', '差旅类', '2020-09-23 10:10:06', 1280709549107552257, NULL, NULL);

-- ----------------------------
-- Table structure for flw_ev_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_ev_databasechangelog";
CREATE TABLE "public"."flw_ev_databasechangelog" (
  "ID" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "AUTHOR" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "FILENAME" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "DATEEXECUTED" timestamp(6) NOT NULL,
  "ORDEREXECUTED" int4 NOT NULL,
  "EXECTYPE" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "MD5SUM" varchar(35) COLLATE "pg_catalog"."default",
  "DESCRIPTION" varchar(255) COLLATE "pg_catalog"."default",
  "COMMENTS" varchar(255) COLLATE "pg_catalog"."default",
  "TAG" varchar(255) COLLATE "pg_catalog"."default",
  "LIQUIBASE" varchar(20) COLLATE "pg_catalog"."default",
  "CONTEXTS" varchar(255) COLLATE "pg_catalog"."default",
  "LABELS" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_ev_databasechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ev_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_ev_databasechangeloglock";
CREATE TABLE "public"."flw_ev_databasechangeloglock" (
  "ID" int4 NOT NULL,
  "LOCKED" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "LOCKGRANTED" timestamp(6),
  "LOCKEDBY" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_ev_databasechangeloglock
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_event";
CREATE TABLE "public"."flw_event" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_id" varchar(64) COLLATE "pg_catalog"."default",
  "act_name" varchar(255) COLLATE "pg_catalog"."default",
  "node_type" int2 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "script" text COLLATE "pg_catalog"."default" NOT NULL,
  "exec_sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_event"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_event"."process_definition_id" IS '流程定义id';
COMMENT ON COLUMN "public"."flw_event"."act_id" IS '活动节点id';
COMMENT ON COLUMN "public"."flw_event"."act_name" IS '活动节点名称';
COMMENT ON COLUMN "public"."flw_event"."node_type" IS '事件节点类型（字典 1全局 2节点）';
COMMENT ON COLUMN "public"."flw_event"."name" IS '名称';
COMMENT ON COLUMN "public"."flw_event"."type" IS '类型（字典 见事件类型字典）';
COMMENT ON COLUMN "public"."flw_event"."script" IS '脚本';
COMMENT ON COLUMN "public"."flw_event"."exec_sort" IS '执行顺序';
COMMENT ON COLUMN "public"."flw_event"."remark" IS '备注';
COMMENT ON COLUMN "public"."flw_event"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_event"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_event"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_event"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_event" IS '流程事件配置表';

-- ----------------------------
-- Records of flw_event
-- ----------------------------
INSERT INTO "public"."flw_event" VALUES (1294925374511263745, 'leave:1:1294922085572947969', '', '', 1, '启动时打印一句话', 'PROCESS_STARTED', 'System.out.println("这是打印的内容");', 100, '启动时打印一句话', '2020-08-16 17:14:02', 1265476890672672808, '2020-08-24 09:51:09', 1265476890672672808);
INSERT INTO "public"."flw_event" VALUES (1295536105399222273, 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', 2, '任务完成时打印一句话', 'TASK_COMPLETED', 'System.out.println("这是打印的内容");', 100, '任务完成时打印一句话', '2020-08-18 09:40:52', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_event" VALUES (1304342885814124545, 'travel:1:1304341427379126274', '', '', 1, '流程启动时设置会签人员参数', 'PROCESS_STARTED', 'import cn.hutool.core.collection.CollectionUtil;
import vip.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', 100, '流程启动时设置会签人员参数', '2020-09-11 16:55:52', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_event_definition
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_event_definition";
CREATE TABLE "public"."flw_event_definition" (
  "ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "VERSION_" int4,
  "KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RESOURCE_NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "DESCRIPTION_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_event_definition
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event_deployment
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_event_deployment";
CREATE TABLE "public"."flw_event_deployment" (
  "ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "CATEGORY_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOY_TIME_" timestamp(6),
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "PARENT_DEPLOYMENT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_event_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for flw_event_resource
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_event_resource";
CREATE TABLE "public"."flw_event_resource" (
  "ID_" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "NAME_" varchar(255) COLLATE "pg_catalog"."default",
  "DEPLOYMENT_ID_" varchar(255) COLLATE "pg_catalog"."default",
  "RESOURCE_BYTES_" bytea
)
;

-- ----------------------------
-- Records of flw_event_resource
-- ----------------------------

-- ----------------------------
-- Table structure for flw_form
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_form";
CREATE TABLE "public"."flw_form" (
  "id" int8 NOT NULL,
  "form_id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "act_id" varchar(64) COLLATE "pg_catalog"."default",
  "act_name" varchar(255) COLLATE "pg_catalog"."default",
  "node_type" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_form"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_form"."form_id" IS '表单id';
COMMENT ON COLUMN "public"."flw_form"."process_definition_id" IS '流程定义id';
COMMENT ON COLUMN "public"."flw_form"."act_id" IS '活动节点id';
COMMENT ON COLUMN "public"."flw_form"."act_name" IS '活动节点名称';
COMMENT ON COLUMN "public"."flw_form"."node_type" IS '表单节点类型（字典 1全局 2节点）';
COMMENT ON COLUMN "public"."flw_form"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_form"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_form"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_form"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_form" IS '流程表单配置表';

-- ----------------------------
-- Records of flw_form
-- ----------------------------
INSERT INTO "public"."flw_form" VALUES (1289833421153099778, 1294922455393120258, 'leave:1:1294922085572947969', 'sid-A2D6A2CC-F596-471D-9CC1-FCF67491AAB4', '老俞审批', 3, '2020-08-16 17:43:20', 1265476890672672808, '2020-08-17 20:29:58', 1265476890672672808);
INSERT INTO "public"."flw_form" VALUES (1295301986463330305, 1294922365303664641, 'leave:1:1294922085572947969', '', '', 1, '2020-08-17 18:10:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1295387809110192130, 1294922455393120258, 'leave:1:1294922085572947969', '', '', 2, '2020-08-17 23:51:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1295553303433936897, 1295542814805032961, 'formal:1:1295553082574471169', '', '', 1, '2020-08-18 10:49:12', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1295553341874733058, 1295542814805032961, 'formal:1:1295553082574471169', 'sid-123D4D44-47BF-4F35-A03B-6E98CA4806B4', '填写申请单', 3, '2020-08-18 10:49:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1295553371952087042, 1295542994690342913, 'formal:1:1295553082574471169', '', '', 2, '2020-08-18 10:49:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1296623909172662273, 1295542814805032962, 'formal:1:1295553082574471169', 'sid-B1FFFBD7-57AE-4371-BC7F-8A0C2F99733D', '主管审批', 3, '2020-08-21 09:43:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1304342082042871810, 1304313274803888130, 'travel:1:1304341427379126274', '', '', 1, '2020-09-11 16:52:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1304342120999567362, 1304313274803888130, 'travel:1:1304341427379126274', 'sid-14E807D7-6B9F-4AEC-8625-B8E649679ED7', '填写申请单', 3, '2020-09-11 16:52:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1304342154944069633, 1304317596870582274, 'travel:1:1304341427379126274', '', '', 2, '2020-09-11 16:52:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1308592009845628929, 1294922365303664641, 'leave:1:1294922085572947969', 'sid-54572B0C-206E-423B-AA4A-170EA2547C2F', '填写申请单', 3, '2020-09-23 10:20:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1354458802618142721, 1354453645117394946, 'car_model:1:1354458538414739458', '', '', 1, '2021-01-27 23:58:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_form" VALUES (1354468741201842177, 1354468627381014530, 'car_model:1:1354458538414739458', 'sid-D8CADB7F-1CC4-40EE-9D4B-9ABC9C1E7330', '领导审批', 3, '2021-01-28 00:38:07', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_form_resource
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_form_resource";
CREATE TABLE "public"."flw_form_resource" (
  "id" int8 NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2,
  "category" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "form_json" text COLLATE "pg_catalog"."default",
  "form_url" varchar(100) COLLATE "pg_catalog"."default",
  "app_form_url" varchar(100) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_form_resource"."id" IS '主键id';
COMMENT ON COLUMN "public"."flw_form_resource"."code" IS '表单编码';
COMMENT ON COLUMN "public"."flw_form_resource"."name" IS '表单名称';
COMMENT ON COLUMN "public"."flw_form_resource"."type" IS '表单类型（字典 1自行开发 2在线设计）';
COMMENT ON COLUMN "public"."flw_form_resource"."category" IS '表单分类';
COMMENT ON COLUMN "public"."flw_form_resource"."form_json" IS 'PC端表单数据，适用于在线设计表单';
COMMENT ON COLUMN "public"."flw_form_resource"."form_url" IS 'PC端表单URL。适用于自行开发的表单';
COMMENT ON COLUMN "public"."flw_form_resource"."app_form_url" IS '移动端表单URL';
COMMENT ON COLUMN "public"."flw_form_resource"."remark" IS '描述';
COMMENT ON COLUMN "public"."flw_form_resource"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."flw_form_resource"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_form_resource"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_form_resource"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."flw_form_resource"."update_user" IS '修改人';
COMMENT ON TABLE "public"."flw_form_resource" IS '流程脚本表';

-- ----------------------------
-- Records of flw_form_resource
-- ----------------------------
INSERT INTO "public"."flw_form_resource" VALUES (1294922365303664641, 'leaveFormWrite', '请假填写单', 2, 'kaoqin', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680070926"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1597568614214","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"deptName","key":"input_1597568763728","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":false,"hidden":false,"defaultValue":"1","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569035169","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '请假填写单', 0, '2020-08-16 17:02:05', 1265476890672672808, '2020-08-18 09:42:32', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1294922455393120258, 'leaveFormRead', '请假只读单', 2, 'kaoqin', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":2,"list":[{"type":"html","label":"HTML","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">请假申请单</p>"},"key":"html_1597568556394"}]}]},{"tds":[]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597680134338"},{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1597568614214","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"deptName","key":"input_1597568763728","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"请假时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"time","key":"date_1597568665026","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"radio","label":"请假类型","icon":"icon-danxuan-cuxiantiao","options":{"disabled":true,"hidden":false,"defaultValue":"","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"事假"},{"value":"2","label":"病假"},{"value":"3","label":"婚假"},{"value":"4","label":"丧假"},{"value":"5","label":"产假"},{"value":"6","label":"陪产假"}]},"model":"type","key":"radio_1597569102078","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"textarea","label":"备注","icon":"icon-edit","options":{"width":"100%","minRows":4,"maxRows":6,"maxLength":null,"defaultValue":"","clearable":false,"hidden":false,"disabled":true,"placeholder":"请输入"},"model":"remark","key":"textarea_1597568894122","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597568752172"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '请假只读单', 0, '2020-08-16 17:02:27', 1265476890672672808, '2020-08-18 10:41:24', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1295542814805032961, 'formalFormWrite', '转正填写单', 2, 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyDept","key":"input_1597716702769","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正填写单', 0, '2020-08-18 10:07:32', 1265476890672672808, '2020-08-23 10:06:06', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1295542814805032962, 'formalFormWriteWithAssess', '转正填写单_主管填写', 2, 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":true,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正填写单_主管填写', 0, '2020-08-18 10:07:32', 1265476890672672808, '2020-08-24 09:35:18', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1295542994690342913, 'formalFormRead', '转正只读单', 2, 'xingzheng', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">转正申请单</p>"},"key":"html_1597716603199"}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"基础信息","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716627935"}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"申请人","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyUserName","key":"input_1597716641999","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"申请日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"appyDate","key":"date_1597716651343","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyDept","key":"input_1597716702769","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"input","label":"职位","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"applyPosition","key":"input_1597716704432","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"入职日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"entryDate","key":"date_1597716762482","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"原定转正日期","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":false,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"formalDate","key":"date_1597716764298","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":4,"rowspan":1,"list":[{"type":"text","label":"主管意见","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716917249"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评价因素","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716936582"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"评价要点","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716938115"}]},{"colspan":1,"rowspan":1,"list":[{"type":"text","label":"评分","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597716939964"}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"勤务态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717056583"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.严格遵守工作制度，有效利用工作时间","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717074899"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA1","key":"select_1597717139965","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.对新工作持积极态度","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717087514"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB1","key":"select_1597717207246","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.忠于职守、坚守岗位","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717092168"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC1","key":"select_1597717210999","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.以协作精神工作，协助上级，配合同事","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597717114348"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD1","key":"select_1597717214390","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":1,"rowspan":4,"list":[{"type":"text","label":"工作效率","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718178533"}]},{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"A.工作速度快，不误工期","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718183341"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreA2","key":"select_1597718199894","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"B.业务处置得当，经常保持良好成绩","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718189309"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreB2","key":"select_1597718202917","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"C.工作方法合理，时间和经费的使用十分有效","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718192222"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreC2","key":"select_1597718205853","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"text","label":"D.工作中没有半途而废，不了了之和造成后遗症的现象","icon":"icon-zihao","options":{"textAlign":"left","hidden":false,"showRequiredMark":false},"key":"text_1597718195214"}]},{"colspan":1,"rowspan":1,"list":[{"type":"select","label":"","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":true,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"1","label":"1"},{"value":"2","label":"2"},{"value":"3","label":"3"},{"value":"4","label":"4"},{"value":"5","label":"5"}],"showSearch":false},"model":"scoreD2","key":"select_1597718208718","rules":[{"required":false,"message":"必填项"}]}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1597716599116"}],"config":{"layout":"vertical","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '转正只读单', 0, '2020-08-18 10:08:15', 1265476890672672808, '2020-08-24 09:35:51', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1304313274803888130, 'travelWrite', '出差填写单', 2, 'travel', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"name","key":"input_1599807772599","rules":[{"required":true,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"dept","key":"input_1599807774961","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":false,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":true,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":false,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '出差填写单', 0, '2020-09-11 14:58:12', 1265476890672672808, '2020-09-11 15:14:56', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1304317596870582274, 'travelRead', '出差只读单', 2, 'travel', '{"list":[{"type":"table","label":"表格布局","trs":[{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"html","label":"HTML","icon":"icon-ai-code","options":{"hidden":false,"defaultValue":"<p style=\"text-align:center;font-size:32px;font-weight:bolder;margin-bottom:0px\">出差申请单</p>"},"key":"html_1599807751285"}]}]},{"tds":[{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"姓名","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"name","key":"input_1599807772599","rules":[{"required":false,"message":"必填项"}]}]},{"colspan":1,"rowspan":1,"list":[{"type":"input","label":"部门","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":true},"model":"dept","key":"input_1599807774961","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"date","label":"出差时间","icon":"icon-calendar","options":{"width":"100%","defaultValue":"","rangeDefaultValue":[],"range":true,"showTime":false,"disabled":true,"hidden":false,"clearable":false,"placeholder":"请选择","rangePlaceholder":["开始时间","结束时间"],"format":"YYYY-MM-DD"},"model":"travelDate","key":"date_1599807843566","rules":[{"required":false,"message":"必填项"}]}]}]},{"tds":[{"colspan":2,"rowspan":1,"list":[{"type":"batch","label":"交通费","icon":"icon-biaoge","list":[{"type":"input","label":"出发地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"startPlace","key":"input_1599807902416","rules":[{"required":false,"message":"必填项"}]},{"type":"input","label":"到达地","icon":"icon-write","options":{"type":"text","width":"100%","defaultValue":"","placeholder":"请输入","clearable":false,"maxLength":null,"hidden":false,"disabled":false},"model":"endPlace","key":"input_1599807905299","rules":[{"required":false,"message":"必填项"}]},{"type":"select","label":"交通工具","icon":"icon-xiala","options":{"width":"100%","multiple":false,"disabled":false,"clearable":false,"hidden":false,"placeholder":"请选择","dynamicKey":"","dynamic":false,"options":[{"value":"飞机","label":"飞机"},{"value":"火车","label":"火车"},{"value":"汽车","label":"汽车"}],"showSearch":false},"model":"traffic","key":"select_1599807912449","rules":[{"required":false,"message":"必填项"}]},{"type":"number","label":"金额","icon":"icon-number","options":{"width":"100%","defaultValue":0,"min":null,"max":null,"precision":null,"step":1,"hidden":false,"disabled":false,"placeholder":"请输入"},"model":"money","key":"number_1599807922017","rules":[{"required":false,"message":"必填项"}]}],"options":{"scrollY":0,"disabled":true,"hidden":false,"showLabel":false,"hideSequence":false,"width":"100%"},"model":"trafficList","key":"batch_1599807855999"}]}]}],"options":{"width":"100%","bordered":true,"bright":false,"small":true,"customStyle":""},"key":"table_1599807746899"}],"config":{"layout":"horizontal","labelCol":{"span":4},"wrapperCol":{"span":18},"hideRequiredMark":false,"customStyle":""}}', NULL, NULL, '出差只读单', 0, '2020-09-11 15:15:23', 1265476890672672808, '2020-09-11 15:16:17', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1354453645117394946, 'tests_codes', '用车申请单', 1, 'approval', NULL, 'carApplyForm', NULL, '用车申请单', 0, '2021-01-27 23:38:08', 1265476890672672808, '2021-01-28 00:36:55', 1265476890672672808);
INSERT INTO "public"."flw_form_resource" VALUES (1354468627381014530, 'tests_codes_readonly', '用车审批单', 1, 'approval', NULL, 'carApplyFormReadOnly', NULL, '用车审批单', 0, '2021-01-28 00:37:40', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_option";
CREATE TABLE "public"."flw_option" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "jump_first" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "smart_complete" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "version" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_option"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_option"."process_definition_id" IS '流程定义id';
COMMENT ON COLUMN "public"."flw_option"."title" IS '标题规则';
COMMENT ON COLUMN "public"."flw_option"."jump_first" IS '自动完成第一个任务（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_option"."smart_complete" IS '跳过相同处理人（Y-是，N-否）';
COMMENT ON COLUMN "public"."flw_option"."version" IS '版本';
COMMENT ON COLUMN "public"."flw_option"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_option"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_option"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_option"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_option" IS '流程选项配置表';

-- ----------------------------
-- Records of flw_option
-- ----------------------------
INSERT INTO "public"."flw_option" VALUES (1294922087854649346, 'leave:1:1294922085572947969', 'user在time发起了title', 'Y', 'Y', NULL, '2020-08-16 17:00:59', 1265476890672672808, '2020-08-18 00:05:38', 1265476890672672808);
INSERT INTO "public"."flw_option" VALUES (1295553085309157378, 'formal:1:1295553082574471169', 'user在time发起了title', 'Y', 'Y', NULL, '2020-08-18 10:48:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_option" VALUES (1304341429899902977, 'travel:1:1304341427379126274', NULL, 'Y', 'Y', NULL, '2020-09-11 16:50:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_option" VALUES (1354458538599288833, 'car_model:1:1354458538414739458', NULL, 'Y', 'Y', NULL, '2021-01-27 23:57:35', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for flw_ru_batch
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_ru_batch";
CREATE TABLE "public"."flw_ru_batch" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "TYPE_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "SEARCH_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "SEARCH_KEY2_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6) NOT NULL,
  "COMPLETE_TIME_" timestamp(6),
  "STATUS_" varchar(255) COLLATE "pg_catalog"."default",
  "BATCH_DOC_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_ru_batch
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ru_batch_part
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_ru_batch_part";
CREATE TABLE "public"."flw_ru_batch_part" (
  "ID_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "REV_" int4,
  "BATCH_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TYPE_" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "SCOPE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SUB_SCOPE_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "SCOPE_TYPE_" varchar(64) COLLATE "pg_catalog"."default",
  "SEARCH_KEY_" varchar(255) COLLATE "pg_catalog"."default",
  "SEARCH_KEY2_" varchar(255) COLLATE "pg_catalog"."default",
  "CREATE_TIME_" timestamp(6) NOT NULL,
  "COMPLETE_TIME_" timestamp(6),
  "STATUS_" varchar(255) COLLATE "pg_catalog"."default",
  "RESULT_DOC_ID_" varchar(64) COLLATE "pg_catalog"."default",
  "TENANT_ID_" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of flw_ru_batch_part
-- ----------------------------

-- ----------------------------
-- Table structure for flw_script
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_script";
CREATE TABLE "public"."flw_script" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "lang" int2 NOT NULL,
  "content" text COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_script"."id" IS '主键id';
COMMENT ON COLUMN "public"."flw_script"."name" IS '脚本名称';
COMMENT ON COLUMN "public"."flw_script"."type" IS '脚本类别（字典 1流程脚本 2系统脚本）';
COMMENT ON COLUMN "public"."flw_script"."lang" IS '脚本语言（字典1 groovy)';
COMMENT ON COLUMN "public"."flw_script"."content" IS '脚本内容';
COMMENT ON COLUMN "public"."flw_script"."remark" IS '描述';
COMMENT ON COLUMN "public"."flw_script"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."flw_script"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_script"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_script"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."flw_script"."update_user" IS '修改人';
COMMENT ON TABLE "public"."flw_script" IS '流程脚本表';

-- ----------------------------
-- Records of flw_script
-- ----------------------------
INSERT INTO "public"."flw_script" VALUES (1294898800718163970, '打印内容', 1, 1, 'System.out.println("这是打印的内容");', '打印内容', 0, '2020-08-16 15:28:27', 1265476890672672808, '2020-08-16 18:23:26', 1265476890672672808);
INSERT INTO "public"."flw_script" VALUES (1304322960072609794, '设置会签人员', 1, 1, 'import cn.hutool.core.collection.CollectionUtil;
import vip.xiaonuo.flowable.core.utils.BpmScriptUtil;

List<Long> userIdList = CollectionUtil.newArrayList();
userIdList.add(1275735541155614721);
userIdList.add(1280700700074041345);
userIdList.add(1280709549107552257);

//调用脚本工具类，给执行实例设置会签人员
BpmScriptUtil.setVariableForInstance(execution, "pers", userIdList);
//调用脚本工具类，给执行实例设置多实例基数为会签人员数量
BpmScriptUtil.setVariableForInstance(execution, "num", 3);', '流程启动时给流程实例设置会签人员', 0, '2020-09-11 15:36:41', 1265476890672672808, '2020-09-11 16:55:02', 1265476890672672808);

-- ----------------------------
-- Table structure for flw_shortcut
-- ----------------------------
DROP TABLE IF EXISTS "public"."flw_shortcut";
CREATE TABLE "public"."flw_shortcut" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "category_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "version" int2 NOT NULL,
  "icon" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."flw_shortcut"."id" IS '主键';
COMMENT ON COLUMN "public"."flw_shortcut"."process_definition_id" IS '流程定义id';
COMMENT ON COLUMN "public"."flw_shortcut"."name" IS '名称';
COMMENT ON COLUMN "public"."flw_shortcut"."category" IS '分类';
COMMENT ON COLUMN "public"."flw_shortcut"."category_name" IS '分类名称';
COMMENT ON COLUMN "public"."flw_shortcut"."description" IS '描述';
COMMENT ON COLUMN "public"."flw_shortcut"."version" IS '定义版本';
COMMENT ON COLUMN "public"."flw_shortcut"."icon" IS '图标';
COMMENT ON COLUMN "public"."flw_shortcut"."sort" IS '排序';
COMMENT ON COLUMN "public"."flw_shortcut"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."flw_shortcut"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."flw_shortcut"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."flw_shortcut"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."flw_shortcut"."update_user" IS '更新人';
COMMENT ON TABLE "public"."flw_shortcut" IS '流程申请入口表';

-- ----------------------------
-- Records of flw_shortcut
-- ----------------------------
INSERT INTO "public"."flw_shortcut" VALUES (1295307482717040642, 'leave:1:1294922085572947969', '请假申请', 'kaoqin', '考勤类', '请假申请', 1, 'profile', 100, 0, '2020-08-17 18:32:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_shortcut" VALUES (1295934105837555714, 'formal:1:1295553082574471169', '转正申请', 'xingzheng', '行政类', '转正申请', 1, 'block', 100, 0, '2020-08-19 12:02:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_shortcut" VALUES (1304343307362648066, 'travel:1:1304341427379126274', '出差申请', 'travel', '差旅类', '出差申请', 1, 'thunderbolt', 100, 0, '2020-09-11 16:57:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."flw_shortcut" VALUES (1354458994553688065, 'car_model:1:1354458538414739458', '用车申请', 'approval', '审批类', '用车申请', 1, 'car', 100, 0, '2021-01-27 23:59:24', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for pay_ali_trade_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_ali_trade_history";
CREATE TABLE "public"."pay_ali_trade_history" (
  "id" int8 NOT NULL,
  "out_trade_no" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "trade_no" varchar(100) COLLATE "pg_catalog"."default",
  "bill_date" timestamp(6) NOT NULL,
  "amount" numeric(10,2) NOT NULL,
  "subject" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "body" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."pay_ali_trade_history"."id" IS '主键id';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."out_trade_no" IS '商家订单号';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."trade_no" IS '支付宝订单号';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."bill_date" IS '交易时间';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."amount" IS '交易金额';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."subject" IS '商品名称';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."body" IS '商品描述';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."status" IS '状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."pay_ali_trade_history"."update_user" IS '修改人';

-- ----------------------------
-- Records of pay_ali_trade_history
-- ----------------------------
INSERT INTO "public"."pay_ali_trade_history" VALUES (1308743504209526785, '1308743503441969153', '2020092322001400230504748834', '2020-09-23 20:22:21', 1.00, 'Snowy快速开发平台PC支付测试商品', 'Snowy快速开发平台PC支付测试商品', 1, '2020-09-23 20:22:21', -1, NULL, NULL);
INSERT INTO "public"."pay_ali_trade_history" VALUES (1308752588191268865, '1308752588027691009', NULL, '2020-09-23 20:58:27', 1.00, 'Snowy快速开发平台WAP支付测试商品', 'Snowy快速开发平台WAP支付测试商品', 0, '2020-09-23 20:58:27', -1, NULL, NULL);
INSERT INTO "public"."pay_ali_trade_history" VALUES (1308754130948579329, '1308754130894053377', NULL, '2020-09-23 21:04:35', 1.00, 'Snowy快速开发平台扫码支付测试商品', 'Snowy快速开发平台扫码支付测试商品', 1, '2020-09-23 21:04:35', -1, NULL, NULL);
INSERT INTO "public"."pay_ali_trade_history" VALUES (1308759207155326978, '1308759206559735810', NULL, '2020-09-23 21:24:45', 1.00, 'Snowy快速开发平台PC支付测试商品', 'Snowy快速开发平台PC支付测试商品', 0, '2020-09-23 21:24:45', -1, NULL, NULL);
INSERT INTO "public"."pay_ali_trade_history" VALUES (1308760139100315649, '1308760138500530177', '2020092322001400230504749933', '2020-09-23 21:28:27', 1.00, 'Snowy快速开发平台PC支付测试商品', 'Snowy快速开发平台PC支付测试商品', 1, '2020-09-23 21:28:27', -1, NULL, NULL);

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_app";
CREATE TABLE "public"."sys_app" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "active" varchar(1) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_app"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_app"."name" IS '应用名称';
COMMENT ON COLUMN "public"."sys_app"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_app"."active" IS '是否默认激活（Y-是，N-否）';
COMMENT ON COLUMN "public"."sys_app"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_app"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_app"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_app"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_app"."update_user" IS '修改人';
COMMENT ON TABLE "public"."sys_app" IS '系统应用表';

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO "public"."sys_app" VALUES (1265476890672672821, '系统应用', 'system', 'Y', 0, '2020-03-25 19:07:00', 1265476890672672808, '2020-08-15 15:23:05', 1280709549107552257);
INSERT INTO "public"."sys_app" VALUES (1265476890672672822, '业务应用', 'business', 'N', 2, '2020-03-26 08:40:33', 1265476890672672808, '2020-09-23 22:00:01', 1265476890672672808);
INSERT INTO "public"."sys_app" VALUES (1265476890672672823, '在线办公', 'office', 'N', 0, '2020-04-02 15:48:43', 1265476890672672808, '2020-09-23 22:00:15', 1265476890672672808);
INSERT INTO "public"."sys_app" VALUES (1290262474351808514, '高级体验', 'experience', 'N', 0, '2020-08-03 20:25:20', 1265476890672672808, '2020-08-15 15:46:12', 1265476890672672808);
INSERT INTO "public"."sys_app" VALUES (1342451550318694401, '系统工具', 'system_tool', 'N', 0, '2020-12-25 20:46:06', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_area";
CREATE TABLE "public"."sys_area" (
  "id" int8 NOT NULL,
  "level" int2 NOT NULL,
  "parent_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "area_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "zip_code" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "city_code" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "short_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "merger_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "pinyin" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "lng" numeric(10,6) NOT NULL,
  "lat" numeric(10,6) NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_area"."level" IS '层级';
COMMENT ON COLUMN "public"."sys_area"."parent_code" IS '父级行政代码';
COMMENT ON COLUMN "public"."sys_area"."area_code" IS '行政代码';
COMMENT ON COLUMN "public"."sys_area"."zip_code" IS '邮政编码';
COMMENT ON COLUMN "public"."sys_area"."city_code" IS '区号';
COMMENT ON COLUMN "public"."sys_area"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_area"."short_name" IS '简称';
COMMENT ON COLUMN "public"."sys_area"."merger_name" IS '组合名';
COMMENT ON COLUMN "public"."sys_area"."pinyin" IS '拼音';
COMMENT ON COLUMN "public"."sys_area"."lng" IS '经度';
COMMENT ON COLUMN "public"."sys_area"."lat" IS '纬度';
COMMENT ON TABLE "public"."sys_area" IS '中国行政地区表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------

-- ----------------------------
-- Table structure for sys_code_generate
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_code_generate";
CREATE TABLE "public"."sys_code_generate" (
  "id" int8 NOT NULL,
  "author_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "class_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "table_prefix" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "generate_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "table_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "package_name" varchar(255) COLLATE "pg_catalog"."default",
  "bus_name" varchar(255) COLLATE "pg_catalog"."default",
  "table_comment" varchar(255) COLLATE "pg_catalog"."default",
  "create_user" int8,
  "create_time" timestamp(6),
  "update_user" int8,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_code_generate"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_code_generate"."author_name" IS '作者姓名';
COMMENT ON COLUMN "public"."sys_code_generate"."class_name" IS '类名';
COMMENT ON COLUMN "public"."sys_code_generate"."table_prefix" IS '是否移除表前缀';
COMMENT ON COLUMN "public"."sys_code_generate"."generate_type" IS '生成位置类型';
COMMENT ON COLUMN "public"."sys_code_generate"."table_name" IS '数据库表名';
COMMENT ON COLUMN "public"."sys_code_generate"."package_name" IS '包名称';
COMMENT ON COLUMN "public"."sys_code_generate"."bus_name" IS '业务名';
COMMENT ON COLUMN "public"."sys_code_generate"."table_comment" IS '功能名';
COMMENT ON COLUMN "public"."sys_code_generate"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_code_generate"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_code_generate"."update_user" IS '更新人';
COMMENT ON COLUMN "public"."sys_code_generate"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_code_generate" IS '代码生成基础配置';

-- ----------------------------
-- Records of sys_code_generate
-- ----------------------------
INSERT INTO "public"."sys_code_generate" VALUES (1362310959781744641, 'yubaoshan、xuyuxiang、dongxiayu', 'CodeGenTest', 'Y', '2', 'xn_code_gen_test', 'vip.xiaonuo', 'codegentest', '测试', 1265476890672672808, '2021-02-18 16:00:18', NULL, NULL);

-- ----------------------------
-- Table structure for sys_code_generate_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_code_generate_config";
CREATE TABLE "public"."sys_code_generate_config" (
  "id" int8 NOT NULL,
  "code_gen_id" int8,
  "column_name" varchar(255) COLLATE "pg_catalog"."default",
  "java_name" varchar(255) COLLATE "pg_catalog"."default",
  "data_type" varchar(255) COLLATE "pg_catalog"."default",
  "column_comment" varchar(255) COLLATE "pg_catalog"."default",
  "java_type" varchar(255) COLLATE "pg_catalog"."default",
  "effect_type" varchar(255) COLLATE "pg_catalog"."default",
  "dict_type_code" varchar(255) COLLATE "pg_catalog"."default",
  "whether_table" varchar(255) COLLATE "pg_catalog"."default",
  "whether_add_update" varchar(255) COLLATE "pg_catalog"."default",
  "whether_retract" varchar(255) COLLATE "pg_catalog"."default",
  "whether_required" varchar(255) COLLATE "pg_catalog"."default",
  "query_whether" varchar(255) COLLATE "pg_catalog"."default",
  "query_type" varchar(255) COLLATE "pg_catalog"."default",
  "column_key" varchar(255) COLLATE "pg_catalog"."default",
  "column_key_name" varchar(255) COLLATE "pg_catalog"."default",
  "whether_common" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_code_generate_config"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_code_generate_config"."code_gen_id" IS '代码生成主表ID';
COMMENT ON COLUMN "public"."sys_code_generate_config"."column_name" IS '数据库字段名';
COMMENT ON COLUMN "public"."sys_code_generate_config"."java_name" IS 'java类字段名';
COMMENT ON COLUMN "public"."sys_code_generate_config"."data_type" IS '物理类型';
COMMENT ON COLUMN "public"."sys_code_generate_config"."column_comment" IS '字段描述';
COMMENT ON COLUMN "public"."sys_code_generate_config"."java_type" IS 'java类型';
COMMENT ON COLUMN "public"."sys_code_generate_config"."effect_type" IS '作用类型（字典）';
COMMENT ON COLUMN "public"."sys_code_generate_config"."dict_type_code" IS '字典code';
COMMENT ON COLUMN "public"."sys_code_generate_config"."whether_table" IS '列表展示';
COMMENT ON COLUMN "public"."sys_code_generate_config"."whether_add_update" IS '增改';
COMMENT ON COLUMN "public"."sys_code_generate_config"."whether_retract" IS '列表是否缩进（字典）';
COMMENT ON COLUMN "public"."sys_code_generate_config"."whether_required" IS '是否必填（字典）';
COMMENT ON COLUMN "public"."sys_code_generate_config"."query_whether" IS '是否是查询条件';
COMMENT ON COLUMN "public"."sys_code_generate_config"."query_type" IS '查询方式';
COMMENT ON COLUMN "public"."sys_code_generate_config"."column_key" IS '主键';
COMMENT ON COLUMN "public"."sys_code_generate_config"."column_key_name" IS '主外键名称';
COMMENT ON COLUMN "public"."sys_code_generate_config"."whether_common" IS '是否是通用字段';
COMMENT ON COLUMN "public"."sys_code_generate_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_code_generate_config"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_code_generate_config"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_code_generate_config"."update_user" IS '修改人';
COMMENT ON TABLE "public"."sys_code_generate_config" IS '代码生成详细配置';

-- ----------------------------
-- Records of sys_code_generate_config
-- ----------------------------
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310959903379458, 1362310959781744641, 'id', 'id', 'bigint', '主键', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', 'PRI', 'Id', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310959941128193, 1362310959781744641, 'name', 'name', 'varchar', '姓名', 'String', 'input', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'like', '', 'Name', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310959978876929, 1362310959781744641, 'age', 'age', 'int', '年龄', 'Integer', 'input', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Age', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960008237058, 1362310959781744641, 'interest', 'interest', 'varchar', '兴趣', 'String', 'checkbox', 'sex', 'Y', 'Y', 'N', 'Y', 'N', 'eq', '', 'Interest', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960033402881, 1362310959781744641, 'switchTest', 'switchtest', 'varchar', '开关', 'String', 'radio', 'yes_or_no', 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Switchtest', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960062763009, 1362310959781744641, 'birthday', 'birthday', 'date', '日期', 'Date', 'datepicker', NULL, 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Birthday', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960096317442, 1362310959781744641, 'whether', 'whether', 'varchar', '是否已婚', 'String', 'select', 'yes_or_no', 'Y', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Whether', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960121483266, 1362310959781744641, 'explainTest', 'explaintest', 'varchar', '简介', 'String', 'textarea', NULL, 'N', 'Y', 'N', 'Y', 'Y', 'eq', '', 'Explaintest', 'N', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960150843393, 1362310959781744641, 'create_time', 'createTime', 'datetime', '创建时间', 'Date', 'datepicker', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'CreateTime', 'Y', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960176009218, 1362310959781744641, 'create_user', 'createUser', 'bigint', '', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'CreateUser', 'Y', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960201175041, 1362310959781744641, 'update_time', 'updateTime', 'datetime', '', 'Date', 'datepicker', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'UpdateTime', 'Y', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);
INSERT INTO "public"."sys_code_generate_config" VALUES (1362310960234729473, 1362310959781744641, 'update_user', 'updateUser', 'bigint', '', 'Long', 'input', NULL, 'N', 'N', 'N', 'N', 'N', 'eq', '', 'UpdateUser', 'Y', '2021-02-18 16:00:18', 1265476890672672808, '2021-02-18 16:02:31', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sys_flag" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "group_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_config"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_config"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_config"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_config"."value" IS '值';
COMMENT ON COLUMN "public"."sys_config"."sys_flag" IS '是否是系统参数（Y-是，N-否）';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_config"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_config"."group_code" IS '常量所属分类的编码，来自于“常量的分类”字典';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_config" IS '系统参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "public"."sys_config" VALUES (1265117443880853504, '验证码开关', 'SNOWY_CAPTCHA_OPEN', 'true', 'Y', '登录验证码开关 false关闭 true打开', 0, 'DEFAULT', '2020-04-14 23:30:14', 1265476890672672808, '2021-02-18 16:19:01', 1265476890672672808);
INSERT INTO "public"."sys_config" VALUES (1265117443880853506, 'jwt密钥', 'SNOWY_JWT_SECRET', 'xiaonuo', 'Y', '（重要）jwt密钥，默认为空，自行设置', 0, 'DEFAULT', '2020-05-26 06:35:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1265117443880853507, '默认密码', 'SNOWY_DEFAULT_PASSWORD', '123456', 'Y', '默认密码', 0, 'DEFAULT', '2020-05-26 06:37:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1265117443880853508, 'token过期时间', 'SNOWY_TOKEN_EXPIRE', '86400', 'Y', 'token过期时间（单位：秒）', 0, 'DEFAULT', '2020-05-27 11:54:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1265117443880853509, 'session会话过期时间', 'SNOWY_SESSION_EXPIRE', '7200', 'Y', 'session会话过期时间（单位：秒）', 0, 'DEFAULT', '2020-05-27 11:54:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1265117443880853519, '阿里云短信keyId', 'SNOWY_ALIYUN_SMS_ACCESSKEY_ID', '你的keyId', 'Y', '阿里云短信keyId', 0, 'ALIYUN_SMS', '2020-06-07 16:27:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269547042242371585, '阿里云短信secret', 'SNOWY_ALIYUN_SMS_ACCESSKEY_SECRET', '你的secret', 'Y', '阿里云短信secret', 0, 'ALIYUN_SMS', '2020-06-07 16:29:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269547130041737217, '阿里云短信签名', 'SNOWY_ALIYUN_SMS_SIGN_NAME', 'Snowy快速开发平台', 'Y', '阿里云短信签名', 0, 'ALIYUN_SMS', '2020-06-07 16:29:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269547279530926081, '阿里云短信-登录模板号', 'SNOWY_ALIYUN_SMS_LOGIN_TEMPLATE_CODE', 'SMS_1877123456', 'Y', '阿里云短信-登录模板号', 0, 'ALIYUN_SMS', '2020-06-07 16:30:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269547410879750145, '阿里云短信默认失效时间', 'SNOWY_ALIYUN_SMS_INVALIDATE_MINUTES', '5', 'Y', '阿里云短信默认失效时间（单位：分钟）', 0, 'ALIYUN_SMS', '2020-06-07 16:31:04', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269575927357071361, '腾讯云短信secretId', 'SNOWY_TENCENT_SMS_SECRET_ID', '你的secretId', 'Y', '腾讯云短信secretId', 0, 'TENCENT_SMS', '2020-06-07 18:24:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269575991693500418, '腾讯云短信secretKey', 'SNOWY_TENCENT_SMS_SECRET_KEY', '你的secretkey', 'Y', '腾讯云短信secretKey', 0, 'TENCENT_SMS', '2020-06-07 18:24:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269576044084551682, '腾讯云短信sdkAppId', 'SNOWY_TENCENT_SMS_SDK_APP_ID', '1400375123', 'Y', '腾讯云短信sdkAppId', 0, 'TENCENT_SMS', '2020-06-07 18:24:51', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1269576089294954497, '腾讯云短信签名', 'SNOWY_TENCENT_SMS_SIGN', 'Snowy快速开发平台', 'Y', '腾讯云短信签名', 0, 'TENCENT_SMS', '2020-06-07 18:25:02', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270378172860403713, '邮箱host', 'SNOWY_EMAIL_HOST', 'smtp.126.com', 'Y', '邮箱host', 0, 'EMAIL', '2020-06-09 23:32:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270378295543795714, '邮箱用户名', 'SNOWY_EMAIL_USERNAME', 'test@126.com', 'Y', '邮箱用户名', 0, 'EMAIL', '2020-06-09 23:32:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270378340510928897, '邮箱密码', 'SNOWY_EMAIL_PASSWORD', '你的邮箱密码', 'Y', '邮箱密码', 0, 'EMAIL', '2020-06-09 23:32:54', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270378527358783489, '邮箱端口', 'SNOWY_EMAIL_PORT', '465', 'Y', '邮箱端口', 0, 'EMAIL', '2020-06-09 23:33:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270378790035460097, '邮箱是否开启ssl', 'SNOWY_EMAIL_SSL', 'true', 'Y', '邮箱是否开启ssl', 0, 'EMAIL', '2020-06-09 23:34:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270380786649972737, '邮箱发件人', 'SNOWY_EMAIL_FROM', 'test@126.com', 'Y', '邮箱发件人', 0, 'EMAIL', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270380786649972738, 'win本地上传文件路径', 'SNOWY_FILE_UPLOAD_PATH_FOR_WINDOWS', 'd:/tmp', 'Y', 'win本地上传文件路径', 0, 'FILE_PATH', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270380786649972739, 'linux/mac本地上传文件路径', 'SNOWY_FILE_UPLOAD_PATH_FOR_LINUX', '/tmp', 'Y', 'linux/mac本地上传文件路径', 0, 'FILE_PATH', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270380786649982740, 'Snowy演示环境', 'SNOWY_DEMO_ENV_FLAG', 'false', 'Y', 'Snowy演示环境的开关，true-打开，false-关闭，如果演示环境开启，则只能读数据不能写数据', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, '2020-09-03 14:38:17', 1265476890672672808);
INSERT INTO "public"."sys_config" VALUES (1270380786649982741, 'Snowy放开XSS过滤的接口', 'SNOWY_UN_XSS_FILTER_URL', '/demo/xssfilter,/demo/unxss', 'Y', '多个url可以用英文逗号隔开', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1270380786649982742, '单用户登陆的开关', 'SNOWY_ENABLE_SINGLE_LOGIN', 'false', 'Y', '单用户登陆的开关，true-打开，false-关闭，如果一个人登录两次，就会将上一次登陆挤下去', 0, 'DEFAULT', '2020-06-09 23:42:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1280694183769792514, 'druid监控登录账号', 'SNOWY_DRUID_USERNAME', 'superAdmin', 'Y', 'druid监控登录账号', 0, 'DEFAULT', '2020-07-08 10:44:22', 1265476890672672808, '2021-02-18 16:18:30', 1265476890672672808);
INSERT INTO "public"."sys_config" VALUES (1280694281648070658, 'druid监控界面登录密码', 'SNOWY_DRUID_PASSWORD', '123456', 'Y', 'druid监控登录密码', 0, 'DEFAULT', '2020-07-08 10:44:46', 1265476890672672808, '2021-02-18 16:18:36', 1265476890672672808);
INSERT INTO "public"."sys_config" VALUES (1280694281648070659, '阿里云定位api接口地址', 'SNOWY_IP_GEO_API', 'http://api01.aliyun.venuscn.com/ip?ip=%s', 'Y', '阿里云定位api接口地址', 0, 'DEFAULT', '2020-07-20 10:44:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1280694281648070660, '阿里云定位appCode', 'SNOWY_IP_GEO_APP_CODE', '461535aabeae4f34861884d392f5d452', 'Y', '阿里云定位appCode', 0, 'DEFAULT', '2020-07-20 10:44:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288309751255412737, 'Oauth用户登录的开关', 'SNOWY_ENABLE_OAUTH_LOGIN', 'true', 'Y', 'Oauth用户登录的开关', 0, 'OAUTH', '2020-07-29 11:05:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288310043346743297, 'Oauth码云登录ClientId', 'SNOWY_OAUTH_GITEE_CLIENT_ID', '你的clientId', 'Y', 'Oauth码云登录ClientId', 0, 'OAUTH', '2020-07-29 11:07:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288310157876408321, 'Oauth码云登录ClientSecret', 'SNOWY_OAUTH_GITEE_CLIENT_SECRET', '你的clientSecret', 'Y', 'Oauth码云登录ClientSecret', 0, 'OAUTH', '2020-07-29 11:07:32', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288310280056483841, 'Oauth码云登录回调地址', 'SNOWY_OAUTH_GITEE_REDIRECT_URI', 'http://127.0.0.1:82/oauth/callback/gitee', 'Y', 'Oauth码云登录回调地址', 0, 'OAUTH', '2020-07-29 11:08:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288358228593221633, '前端项目地址', 'SNOWY_WEB_URL', 'http://localhost:8080', 'Y', '前端项目地址', 0, 'DEFAULT', '2020-07-29 14:18:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288358228593221634, '支付宝支付跳转地址', 'SNOWY_ALIPAY_RETURN_URL', 'http://localhost:8080/pay/index', 'Y', '支付宝支付跳转地址', 0, 'DEFAULT', '2020-07-29 14:18:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_config" VALUES (1288358228593221635, '是否开启多租户', 'SNOWY_TENANT_OPEN', 'true', 'Y', '是否开启多租户', 0, 'DEFAULT', '2020-09-03 17:45:58', 1265476890672672808, '2021-02-16 00:09:24', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_database_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_database_info";
CREATE TABLE "public"."sys_database_info" (
  "id" int8 NOT NULL,
  "db_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "jdbc_driver" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "user_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "jdbc_url" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL,
  "remarks" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_database_info"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_database_info"."db_name" IS '数据库名称（英文名称）';
COMMENT ON COLUMN "public"."sys_database_info"."jdbc_driver" IS 'jdbc的驱动类型';
COMMENT ON COLUMN "public"."sys_database_info"."user_name" IS '数据库连接的账号';
COMMENT ON COLUMN "public"."sys_database_info"."password" IS '数据库连接密码';
COMMENT ON COLUMN "public"."sys_database_info"."jdbc_url" IS 'jdbc的url';
COMMENT ON COLUMN "public"."sys_database_info"."remarks" IS '备注，摘要';
COMMENT ON COLUMN "public"."sys_database_info"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_database_info" IS '数据库信息表';

-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO "public"."sys_database_info" VALUES (1380424104192102401, 'master', 'com.mysql.cj.jdbc.Driver', 'root', '123456', 'jdbc:mysql://localhost:3306/xiaonuo-vue?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT&nullCatalogMeansCurrent=true', '主数据源，项目启动数据源！', '2021-04-09 15:35:28');

-- ----------------------------
-- Table structure for sys_demo_leave
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_demo_leave";
CREATE TABLE "public"."sys_demo_leave" (
  "id" int8 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "org_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "begin_time" timestamp(6) NOT NULL,
  "end_time" timestamp(6) NOT NULL,
  "days" int2 NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8,
  "flw_process_status" int2,
  "flw_start_user_id" int8,
  "flw_start_user_name" varchar(100) COLLATE "pg_catalog"."default",
  "flw_start_org_id" int8,
  "flw_start_org_name" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_demo_leave"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_demo_leave"."name" IS '姓名';
COMMENT ON COLUMN "public"."sys_demo_leave"."org_name" IS '部门名';
COMMENT ON COLUMN "public"."sys_demo_leave"."type" IS '请假类型（字典 1事假 2病假 3婚假 4丧假 5产假 6其他）';
COMMENT ON COLUMN "public"."sys_demo_leave"."begin_time" IS '请假开始时间';
COMMENT ON COLUMN "public"."sys_demo_leave"."end_time" IS '请假结束时间';
COMMENT ON COLUMN "public"."sys_demo_leave"."days" IS '请假天数';
COMMENT ON COLUMN "public"."sys_demo_leave"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_demo_leave"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_demo_leave"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_demo_leave"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_demo_leave"."update_user" IS '更新人';
COMMENT ON COLUMN "public"."sys_demo_leave"."flw_process_status" IS '流程状态（字典 0草稿 1审核中 2已退回 3已完成）';
COMMENT ON COLUMN "public"."sys_demo_leave"."flw_start_user_id" IS '发起人id';
COMMENT ON COLUMN "public"."sys_demo_leave"."flw_start_user_name" IS '发起人姓名';
COMMENT ON COLUMN "public"."sys_demo_leave"."flw_start_org_id" IS '发起人所属机构id';
COMMENT ON COLUMN "public"."sys_demo_leave"."flw_start_org_name" IS '发起人所属机构名称';

-- ----------------------------
-- Records of sys_demo_leave
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "id" int8 NOT NULL,
  "type_id" int8 NOT NULL,
  "value" text COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_dict_data"."type_id" IS '字典类型id';
COMMENT ON COLUMN "public"."sys_dict_data"."value" IS '值';
COMMENT ON COLUMN "public"."sys_dict_data"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_dict_data"."sort" IS '排序';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_dict_data" IS '系统字典值表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087357, 1265216211667636234, '男', '1', 100, '男性', 0, '2020-04-01 10:23:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087358, 1265216211667636234, '女', '2', 100, '女性', 0, '2020-04-01 10:23:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087359, 1265216211667636234, '未知', '3', 100, '未知性别', 0, '2020-04-01 10:24:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087361, 1265216211667636235, '默认常量', 'DEFAULT', 100, '默认常量，都以SNOWY_开头的', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087363, 1265216211667636235, '阿里云短信', 'ALIYUN_SMS', 100, '阿里云短信配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087364, 1265216211667636235, '腾讯云短信', 'TENCENT_SMS', 100, '腾讯云短信', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087365, 1265216211667636235, '邮件配置', 'EMAIL', 100, '邮箱配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087366, 1265216211667636235, '文件上传路径', 'FILE_PATH', 100, '文件上传路径', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216536659087367, 1265216211667636235, 'Oauth配置', 'OAUTH', 100, 'Oauth配置', 0, '2020-04-14 23:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216617500102656, 1265216211667636226, '正常', '0', 100, '正常', 0, '2020-05-26 17:41:44', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216617500102657, 1265216211667636226, '停用', '1', 100, '停用', 0, '2020-05-26 17:42:03', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265216938389524482, 1265216211667636226, '删除', '2', 100, '删除', 0, '2020-05-26 17:43:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265217669028892673, 1265217074079453185, '否', 'N', 100, '否', 0, '2020-05-26 17:46:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265217706584690689, 1265217074079453185, '是', 'Y', 100, '是', 0, '2020-05-26 17:46:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265220776437731330, 1265217846770913282, '登录', '1', 100, '登录', 0, '2020-05-26 17:58:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265220806070489090, 1265217846770913282, '登出', '2', 100, '登出', 0, '2020-05-26 17:58:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265221129564573697, 1265221049302372354, '目录', '0', 100, '目录', 0, '2020-05-26 17:59:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265221163119005697, 1265221049302372354, '菜单', '1', 100, '菜单', 0, '2020-05-26 18:00:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265221188091891713, 1265221049302372354, '按钮', '2', 100, '按钮', 0, '2020-05-26 18:00:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466389204967426, 1265466149622128641, '未发送', '0', 100, '未发送', 0, '2020-05-27 10:14:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466432670539778, 1265466149622128641, '发送成功', '1', 100, '发送成功', 0, '2020-05-27 10:14:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466486097584130, 1265466149622128641, '发送失败', '2', 100, '发送失败', 0, '2020-05-27 10:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466530477514754, 1265466149622128641, '失效', '3', 100, '失效', 0, '2020-05-27 10:15:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466835009150978, 1265466752209395713, '无', '0', 100, '无', 0, '2020-05-27 10:16:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466874758569986, 1265466752209395713, '组件', '1', 100, '组件', 0, '2020-05-27 10:16:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466925476093953, 1265466752209395713, '内链', '2', 100, '内链', 0, '2020-05-27 10:16:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265466962209808385, 1265466752209395713, '外链', '3', 100, '外链', 0, '2020-05-27 10:16:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467428423475202, 1265467337566461954, '系统权重', '1', 100, '系统权重', 0, '2020-05-27 10:18:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467503090475009, 1265467337566461954, '业务权重', '2', 100, '业务权重', 0, '2020-05-27 10:18:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467709110493186, 1265467629167058946, '事假', '1', 100, '事假', 0, '2020-05-27 10:19:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467745013735426, 1265467629167058946, '病假', '2', 100, '病假', 0, '2020-05-27 10:19:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467785253888001, 1265467629167058946, '婚假', '3', 100, '婚假', 0, '2020-05-27 10:20:06', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467823426248706, 1265467629167058946, '丧假', '4', 100, '丧假', 0, '2020-05-27 10:20:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467855781109762, 1265467629167058946, '产假', '5', 100, '产假', 0, '2020-05-27 10:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265467895782187010, 1265467629167058946, '其他', '6', 100, '其他', 0, '2020-05-27 10:20:32', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468138431062018, 1265468028632571905, '全部数据', '1', 100, '全部数据', 0, '2020-05-27 10:21:30', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468194928336897, 1265468028632571905, '本部门及以下数据', '2', 100, '本部门及以下数据', 0, '2020-05-27 10:21:44', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468241992622082, 1265468028632571905, '本部门数据', '3', 100, '本部门数据', 0, '2020-05-27 10:21:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468273634451457, 1265468028632571905, '仅本人数据', '4', 100, '仅本人数据', 0, '2020-05-27 10:22:02', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468302046666753, 1265468028632571905, '自定义数据', '5', 100, '自定义数据', 0, '2020-05-27 10:22:09', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468508100239362, 1265468437904367618, 'app', '1', 100, 'app', 0, '2020-05-27 10:22:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468543433056258, 1265468437904367618, 'pc', '2', 100, 'pc', 0, '2020-05-27 10:23:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468576874242050, 1265468437904367618, '其他', '3', 100, '其他', 0, '2020-05-27 10:23:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468839764828161, 1265468761230680066, 'Integer', '1', 100, 'Integer', 0, '2020-05-27 10:24:17', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468871641538562, 1265468761230680066, 'String', '2', 100, 'String', 0, '2020-05-27 10:24:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468898896125954, 1265468761230680066, 'Long', '3', 100, 'Long', 0, '2020-05-27 10:24:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468922275176450, 1265468761230680066, 'Double', '4', 100, 'Double', 0, '2020-05-27 10:24:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468946648276993, 1265468761230680066, 'Boolean', '5', 100, 'Boolean', 0, '2020-05-27 10:24:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468970450952193, 1265468761230680066, 'Date', '6', 100, 'Date', 0, '2020-05-27 10:24:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265468970450952194, 1265468761230680066, 'List', '7', 100, 'List', 0, '2020-05-27 10:24:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469305756196865, 1265469198583341057, '流程脚本', '1', 100, '流程脚本', 0, '2020-05-27 10:26:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469330859106306, 1265469198583341057, '系统脚本', '2', 100, '系统脚本', 0, '2020-05-27 10:26:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469526330449922, 1265469441454514178, 'groovy', '1', 100, 'groovy', 0, '2020-05-27 10:27:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469753078718464, 1265469702042427393, '启动', '1', 100, '启动', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469753078718465, 1265469702042427393, '全局', '2', 100, '全局', 0, '2020-05-27 10:27:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265469779460890626, 1265469702042427393, '节点', '3', 100, '节点', 0, '2020-05-27 10:28:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470046877130753, 1265469962873610241, '流程启动', 'PROCESS_STARTED', 100, '流程启动', 0, '2020-05-27 10:29:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470074517594113, 1265469962873610241, '流程完成', 'PROCESS_COMPLETED', 100, '流程完成', 0, '2020-05-27 10:29:12', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470103152107521, 1265469962873610241, '流程取消', 'PROCESS_CANCELLED', 100, '流程取消', 0, '2020-05-27 10:29:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470125725851649, 1265469962873610241, '活动开始', 'ACTIVITY_STARTED', 100, '活动开始', 0, '2020-05-27 10:29:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470153416646657, 1265469962873610241, '活动完成', 'ACTIVITY_COMPLETED', 100, '活动完成', 0, '2020-05-27 10:29:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470179165478913, 1265469962873610241, '活动取消', 'ACTIVITY_CANCELLED', 100, '活动取消', 0, '2020-05-27 10:29:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470207363784705, 1265469962873610241, '任务分配', 'TASK_ASSIGNED', 100, '任务分配', 0, '2020-05-27 10:29:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470236853936130, 1265469962873610241, '任务创建', 'TASK_CREATED', 100, '任务创建', 0, '2020-05-27 10:29:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470266780295170, 1265469962873610241, '任务完成', 'TASK_COMPLETED', 100, '任务完成', 0, '2020-05-27 10:29:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470296446607361, 1265469962873610241, '连接线', 'SEQUENCEFLOW_TAKEN', 100, '连接线', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470296446607362, 1265469962873610242, '全局', '1', 100, '全局', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470296446607363, 1265469962873610242, '节点', '2', 100, '节点', 0, '2020-05-27 10:30:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470526197997569, 1265470456631271426, '草稿', '0', 100, '草稿', 0, '2020-05-27 10:30:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470552823439361, 1265470456631271426, '审核中', '1', 100, '审核中', 0, '2020-05-27 10:31:06', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470575615287297, 1265470456631271426, '已退回', '2', 100, '已退回', 0, '2020-05-27 10:31:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1265470607588466690, 1265470456631271426, '已完成', '3', 100, '已完成', 0, '2020-05-27 10:31:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617233011335170, 1275617093517172738, '其它', '0', 100, '其它', 0, '2020-06-24 10:30:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617295355469826, 1275617093517172738, '增加', '1', 100, '增加', 0, '2020-06-24 10:30:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617348610547714, 1275617093517172738, '删除', '2', 100, '删除', 0, '2020-06-24 10:30:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617395515449346, 1275617093517172738, '编辑', '3', 100, '编辑', 0, '2020-06-24 10:31:02', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617433612312577, 1275617093517172738, '更新', '4', 100, '更新', 0, '2020-06-24 10:31:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617472707420161, 1275617093517172738, '查询', '5', 100, '查询', 0, '2020-06-24 10:31:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617502973517826, 1275617093517172738, '详情', '6', 100, '详情', 0, '2020-06-24 10:31:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617536959963137, 1275617093517172738, '树', '7', 100, '树', 0, '2020-06-24 10:31:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617619524837377, 1275617093517172738, '导入', '8', 100, '导入', 0, '2020-06-24 10:31:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617651816783873, 1275617093517172738, '导出', '9', 100, '导出', 0, '2020-06-24 10:32:03', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617683475390465, 1275617093517172738, '授权', '10', 100, '授权', 0, '2020-06-24 10:32:10', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617709928865793, 1275617093517172738, '强退', '11', 100, '强退', 0, '2020-06-24 10:32:17', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617739091861505, 1275617093517172738, '清空', '12', 100, '清空', 0, '2020-06-24 10:32:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1275617788601425921, 1275617093517172738, '修改状态', '13', 100, '修改状态', 0, '2020-06-24 10:32:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1277774590944317441, 1277774529430654977, '阿里云', '1', 100, '阿里云', 0, '2020-06-30 09:22:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1277774666055913474, 1277774529430654977, '腾讯云', '2', 100, '腾讯云', 0, '2020-06-30 09:23:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1277774695168577538, 1277774529430654977, 'minio', '3', 100, 'minio', 0, '2020-06-30 09:23:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1277774726835572737, 1277774529430654977, '本地', '4', 100, '本地', 0, '2020-06-30 09:23:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278607123583868929, 1278606951432855553, '运行', '1', 100, '运行', 0, '2020-07-02 16:31:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278607162943217666, 1278606951432855553, '停止', '2', 100, '停止', 0, '2020-07-02 16:31:18', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939265862004738, 1278911800547147777, '通知', '1', 100, '通知', 0, '2020-07-03 14:30:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939319922388994, 1278911800547147777, '公告', '2', 100, '公告', 0, '2020-07-03 14:31:10', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939399001796609, 1278911952657776642, '草稿', '0', 100, '草稿', 0, '2020-07-03 14:31:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939432686252034, 1278911952657776642, '发布', '1', 100, '发布', 0, '2020-07-03 14:31:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939458804183041, 1278911952657776642, '撤回', '2', 100, '撤回', 0, '2020-07-03 14:31:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278939485878415362, 1278911952657776642, '删除', '3', 100, '删除', 0, '2020-07-03 14:31:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278992343223025665, 1278992276965605377, '委托中', '0', 90, '委托中', 0, '2020-07-03 18:01:52', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278992370066571266, 1278992276965605377, '委托结束', '1', 100, '委托结束', 0, '2020-07-03 18:01:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1278992396788482050, 1278992276965605377, '未委托', '2', 100, '未委托', 0, '2020-07-03 18:02:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291390260160299009, 1291390159941599233, '是', 'true', 100, '是', 2, '2020-08-06 23:06:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291390315437031426, 1291390159941599233, '否', 'false', 100, '否', 2, '2020-08-06 23:06:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291391148769738754, 1291391077990858754, '是', 'true', 100, '是', 0, '2020-08-06 23:10:17', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291391205719998465, 1291391077990858754, '否', 'false', 100, '否', 0, '2020-08-06 23:10:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291393684314587138, 1291393441594408961, '是', 'true', 100, '已结束', 0, '2020-08-06 23:20:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1291393766048989186, 1291393441594408961, '否', 'false', 100, '未结束', 0, '2020-08-06 23:20:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300767954291433474, 1300767512828354562, 'Mysql', 'com.mysql.cj.jdbc.Driver', 100, 'Mysql数据库驱动', 0, '2020-09-01 20:10:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768214854180866, 1300767512828354562, 'Oracle', 'oracle.jdbc.OracleDriver', 100, 'Oracle数据库驱动', 0, '2020-09-01 20:11:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196417, 1300767512828354562, 'Sqlserver', 'com.microsoft.jdbc.sqlserver.SQLServerDriver', 100, 'Sqlserver数据库', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196418, 1300767512828354563, '未支付', '0', 100, '未支付', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196419, 1300767512828354563, '已支付', '1', 100, '已支付', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196420, 1300767512828354563, '已退款', '2', 100, '已退款', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196421, 1300767512828354563, '已关闭', '3', 100, '已关闭', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1300768392747196422, 1300767512828354563, '已关闭有退款', '4', 100, '已关闭有退款', 0, '2020-09-01 20:12:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1342451445578534913, 1342451383595110402, '下载压缩包', '1', 100, '下载压缩包', 0, '2020-12-25 20:45:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1342451490893795329, 1342451383595110402, '生成到本项目', '2', 100, '生成到本项目', 0, '2020-12-25 20:45:52', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1354106182690942978, 1354106042974482433, '自行开发', '1', 100, '自行开发', 0, '2021-01-27 00:37:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1354106244473040897, 1354106042974482433, '在线设计', '2', 100, '在线设计', 0, '2021-01-27 00:37:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358094655567454210, 1358094419419750401, '输入框', 'input', 100, '输入框', 0, '2021-02-07 00:46:13', 1265476890672672808, '2021-02-08 01:01:28', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358094740510498817, 1358094419419750401, '时间选择', 'datepicker', 100, '时间选择', 0, '2021-02-07 00:46:33', 1265476890672672808, '2021-02-08 01:04:07', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358094793149014017, 1358094419419750401, '下拉框', 'select', 100, '下拉框', 0, '2021-02-07 00:46:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358095496009506817, 1358094419419750401, '单选框', 'radio', 100, '单选框', 0, '2021-02-07 00:49:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358095673084633090, 1358094419419750401, '开关', 'switch', 100, '开关', 2, '2021-02-07 00:50:15', 1265476890672672808, '2021-02-11 19:07:18', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358458689433190402, 1358457818733428737, '等于', 'eq', 1, '等于', 0, '2021-02-08 00:52:45', 1265476890672672808, '2021-02-13 23:35:36', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358458785168179202, 1358457818733428737, '模糊', 'like', 2, '模糊', 0, '2021-02-08 00:53:08', 1265476890672672808, '2021-02-13 23:35:46', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358460475682406401, 1358094419419750401, '多选框', 'checkbox', 100, '多选框', 0, '2021-02-08 00:59:51', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358460819019743233, 1358094419419750401, '数字输入框', 'inputnumber', 100, '数字输入框', 0, '2021-02-08 01:01:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358470210267725826, 1358470065111252994, 'Long', 'Long', 100, 'Long', 0, '2021-02-08 01:38:32', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358470239351029762, 1358470065111252994, 'String', 'String', 100, 'String', 0, '2021-02-08 01:38:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358470265640927233, 1358470065111252994, 'Date', 'Date', 100, 'Date', 0, '2021-02-08 01:38:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358470300168437761, 1358470065111252994, 'Integer', 'Integer', 100, 'Integer', 0, '2021-02-08 01:38:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358470697377415169, 1358470065111252994, 'boolean', 'boolean', 100, 'boolean', 0, '2021-02-08 01:40:28', 1265476890672672808, '2021-02-08 01:40:47', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358471133434036226, 1358470065111252994, 'int', 'int', 100, 'int', 0, '2021-02-08 01:42:12', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358471188291338241, 1358470065111252994, 'double', 'double', 100, 'double', 0, '2021-02-08 01:42:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1358756511688761346, 1358457818733428737, '大于', 'gt', 3, '大于', 0, '2021-02-08 20:36:12', 1265476890672672808, '2021-02-13 23:45:24', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358756547159990274, 1358457818733428737, '小于', 'lt', 4, '大于', 0, '2021-02-08 20:36:20', 1265476890672672808, '2021-02-13 23:45:29', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358756609990664193, 1358457818733428737, '不等于', 'ne', 7, '不等于', 0, '2021-02-08 20:36:35', 1265476890672672808, '2021-02-13 23:45:46', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358756685030957057, 1358457818733428737, '大于等于', 'ge', 5, '大于等于', 0, '2021-02-08 20:36:53', 1265476890672672808, '2021-02-13 23:45:35', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1358756800525312001, 1358457818733428737, '小于等于', 'le', 6, '小于等于', 0, '2021-02-08 20:37:20', 1265476890672672808, '2021-02-13 23:45:40', 1265476890672672808);
INSERT INTO "public"."sys_dict_data" VALUES (1360529773814083586, 1358094419419750401, '文本域', 'textarea', 100, '文本域', 0, '2021-02-13 18:02:30', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_data" VALUES (1360606105914732545, 1358457818733428737, '不为空', 'isNotNull', 8, '不为空', 0, '2021-02-13 23:05:49', 1265476890672672808, '2021-02-13 23:45:50', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_dict_type"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_dict_type"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_dict_type"."sort" IS '排序';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_dict_type" IS '系统字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1265216211667636226, '通用状态', 'common_status', 100, '通用状态', 0, '2020-05-26 17:40:26', 1265476890672672808, '2020-06-08 11:31:47', 1265476890672672808);
INSERT INTO "public"."sys_dict_type" VALUES (1265216211667636234, '性别', 'sex', 100, '性别字典', 0, '2020-04-01 10:12:30', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265216211667636235, '常量的分类', 'consts_type', 100, '常量的分类，用于区别一组配置', 0, '2020-04-14 23:24:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265217074079453185, '是否', 'yes_or_no', 100, '是否', 0, '2020-05-26 17:43:52', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265217846770913282, '访问类型', 'vis_type', 100, '访问类型', 0, '2020-05-26 17:46:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265221049302372354, '菜单类型', 'menu_type', 100, '菜单类型', 0, '2020-05-26 17:59:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265466149622128641, '发送类型', 'send_type', 100, '发送类型', 0, '2020-05-27 10:13:36', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265466752209395713, '打开方式', 'open_type', 100, '打开方式', 0, '2020-05-27 10:16:00', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265467337566461954, '菜单权重', 'menu_weight', 100, '菜单权重', 0, '2020-05-27 10:18:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265467629167058946, '请假类型', 'leave_type', 100, '请假类型', 0, '2020-05-27 10:19:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265468028632571905, '数据范围类型', 'data_scope_type', 100, '数据范围类型', 0, '2020-05-27 10:21:04', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265468437904367618, '短信发送来源', 'sms_send_source', 100, '短信发送来源', 0, '2020-05-27 10:22:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265468761230680066, '字段类型', 'filed_type', 100, '字段类型', 0, '2020-05-27 10:23:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265469198583341057, '脚本类型', 'script_type', 100, '脚本类型', 0, '2020-05-27 10:25:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265469441454514178, '脚本语言类型', 'script_language_type', 100, '脚本语言类型', 0, '2020-05-27 10:26:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265469702042427393, '表单类型', 'form_type', 100, '表单类型', 0, '2020-05-27 10:27:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265469962873610241, '事件类型', 'event_type', 100, '事件类型', 0, '2020-05-27 10:28:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265469962873610242, '事件节点类型', 'event_node_type', 100, '事件节点类型', 0, '2020-05-27 10:28:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1265470456631271426, '流程状态', 'process_status', 100, '流程状态', 0, '2020-05-27 10:30:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1275617093517172738, '操作类型', 'op_type', 100, '操作类型', 0, '2020-06-24 10:29:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1277774529430654977, '文件存储位置', 'file_storage_location', 100, '文件存储位置', 0, '2020-06-30 09:22:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1278606951432855553, '运行状态', 'run_status', 100, '定时任务运行状态', 0, '2020-07-02 16:30:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1278911800547147777, '通知公告类型', 'notice_type', 100, '通知公告类型', 0, '2020-07-03 12:41:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1278911952657776642, '通知公告状态', 'notice_status', 100, '通知公告状态', 0, '2020-07-03 12:42:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1278992276965605377, '委托状态', 'delegate_status', 100, '委托状态', 0, '2020-07-03 18:01:36', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1291390159941599233, '是否boolean', 'yes_true_false', 100, '是否boolean', 2, '2020-08-06 23:06:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1291391077990858754, '流程是否挂起', 'suspended_status', 100, '流程是否挂起', 0, '2020-08-06 23:10:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1291393441594408961, '是否结束', 'ended_status', 100, '是否结束', 0, '2020-08-06 23:19:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1300767512828354562, 'JDBC驱动类型', 'jdbc_driver', 100, 'JDBC驱动类型', 0, '2020-09-01 20:08:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1300767512828354563, '支付宝交易状态', 'alipay_trade_status', 100, '支付宝交易状态', 0, '2020-09-23 10:36:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1342451383595110402, '代码生成方式', 'code_gen_create_type', 100, '代码生成方式', 0, '2020-12-25 20:45:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1354106042974482433, '流程表单类型', 'form_resource_type', 100, '流程表单类型', 0, '2021-01-27 00:36:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1358094419419750401, '代码生成作用类型', 'code_gen_effect_type', 100, '代码生成作用类型', 0, '2021-02-07 00:45:16', 1265476890672672808, '2021-02-08 00:47:48', 1265476890672672808);
INSERT INTO "public"."sys_dict_type" VALUES (1358457818733428737, '代码生成查询类型', 'code_gen_query_type', 100, '代码生成查询类型', 0, '2021-02-08 00:49:18', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_dict_type" VALUES (1358470065111252994, '代码生成java类型', 'code_gen_java_type', 100, '代码生成java类型', 0, '2021-02-08 01:37:57', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_emp
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_emp";
CREATE TABLE "public"."sys_emp" (
  "id" int8 NOT NULL,
  "job_num" varchar(100) COLLATE "pg_catalog"."default",
  "org_id" int8 NOT NULL,
  "org_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_emp"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_emp"."job_num" IS '工号';
COMMENT ON COLUMN "public"."sys_emp"."org_id" IS '所属机构id';
COMMENT ON COLUMN "public"."sys_emp"."org_name" IS '所属机构名称';
COMMENT ON TABLE "public"."sys_emp" IS '员工表';

-- ----------------------------
-- Records of sys_emp
-- ----------------------------
INSERT INTO "public"."sys_emp" VALUES (1275735541155614721, '102', 1265476890672672769, '华夏集团北京分公司');
INSERT INTO "public"."sys_emp" VALUES (1280700700074041345, '110', 1265476890672672771, '研发部');
INSERT INTO "public"."sys_emp" VALUES (1280709549107552257, '100', 1265476890672672770, '华夏集团成都分公司');

-- ----------------------------
-- Table structure for sys_emp_ext_org_pos
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_emp_ext_org_pos";
CREATE TABLE "public"."sys_emp_ext_org_pos" (
  "id" int8 NOT NULL,
  "emp_id" int8 NOT NULL,
  "org_id" int8 NOT NULL,
  "pos_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_emp_ext_org_pos"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_emp_ext_org_pos"."emp_id" IS '员工id';
COMMENT ON COLUMN "public"."sys_emp_ext_org_pos"."org_id" IS '机构id';
COMMENT ON COLUMN "public"."sys_emp_ext_org_pos"."pos_id" IS '岗位id';
COMMENT ON TABLE "public"."sys_emp_ext_org_pos" IS '员工附属机构岗位表';

-- ----------------------------
-- Records of sys_emp_ext_org_pos
-- ----------------------------

-- ----------------------------
-- Table structure for sys_emp_pos
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_emp_pos";
CREATE TABLE "public"."sys_emp_pos" (
  "id" int8 NOT NULL,
  "emp_id" int8 NOT NULL,
  "pos_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_emp_pos"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_emp_pos"."emp_id" IS '员工id';
COMMENT ON COLUMN "public"."sys_emp_pos"."pos_id" IS '职位id';
COMMENT ON TABLE "public"."sys_emp_pos" IS '员工职位关联表';

-- ----------------------------
-- Records of sys_emp_pos
-- ----------------------------
INSERT INTO "public"."sys_emp_pos" VALUES (1280710811995709441, 1275735541155614721, 1265476890672672787);
INSERT INTO "public"."sys_emp_pos" VALUES (1280710828479324161, 1280700700074041345, 1265476890672672790);
INSERT INTO "public"."sys_emp_pos" VALUES (1281042262003867649, 1280709549107552257, 1265476890672672787);

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_file_info";
CREATE TABLE "public"."sys_file_info" (
  "id" int8 NOT NULL,
  "file_location" int2 NOT NULL,
  "file_bucket" varchar(1000) COLLATE "pg_catalog"."default",
  "file_origin_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "file_suffix" varchar(50) COLLATE "pg_catalog"."default",
  "file_size_kb" int8,
  "file_size_info" varchar(100) COLLATE "pg_catalog"."default",
  "file_object_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "file_path" varchar(1000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_file_info"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_file_info"."file_location" IS '文件存储位置（1:阿里云，2:腾讯云，3:minio，4:本地）';
COMMENT ON COLUMN "public"."sys_file_info"."file_bucket" IS '文件仓库';
COMMENT ON COLUMN "public"."sys_file_info"."file_origin_name" IS '文件名称（上传时候的文件名）';
COMMENT ON COLUMN "public"."sys_file_info"."file_suffix" IS '文件后缀';
COMMENT ON COLUMN "public"."sys_file_info"."file_size_kb" IS '文件大小kb';
COMMENT ON COLUMN "public"."sys_file_info"."file_size_info" IS '文件大小信息，计算后的';
COMMENT ON COLUMN "public"."sys_file_info"."file_object_name" IS '存储到bucket的名称（文件唯一标识id）';
COMMENT ON COLUMN "public"."sys_file_info"."file_path" IS '存储路径';
COMMENT ON COLUMN "public"."sys_file_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_file_info"."create_user" IS '创建用户';
COMMENT ON COLUMN "public"."sys_file_info"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_file_info"."update_user" IS '修改用户';
COMMENT ON TABLE "public"."sys_file_info" IS '文件信息表';

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "id" int8 NOT NULL,
  "pid" int8 NOT NULL,
  "pids" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "icon" varchar(255) COLLATE "pg_catalog"."default",
  "router" varchar(255) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "permission" varchar(255) COLLATE "pg_catalog"."default",
  "application" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "open_type" int2 NOT NULL,
  "visible" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "link" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" varchar(255) COLLATE "pg_catalog"."default",
  "weight" int2,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_menu"."pid" IS '父id';
COMMENT ON COLUMN "public"."sys_menu"."pids" IS '父ids';
COMMENT ON COLUMN "public"."sys_menu"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_menu"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_menu"."type" IS '菜单类型（字典 0目录 1菜单 2按钮）';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '图标';
COMMENT ON COLUMN "public"."sys_menu"."router" IS '路由地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件地址';
COMMENT ON COLUMN "public"."sys_menu"."permission" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."application" IS '应用分类（应用编码）';
COMMENT ON COLUMN "public"."sys_menu"."open_type" IS '打开方式（字典 0无 1组件 2内链 3外链）';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '是否可见（Y-是，N-否）';
COMMENT ON COLUMN "public"."sys_menu"."link" IS '链接地址';
COMMENT ON COLUMN "public"."sys_menu"."redirect" IS '重定向地址';
COMMENT ON COLUMN "public"."sys_menu"."weight" IS '权重（字典 1系统权重 2业务权重）';
COMMENT ON COLUMN "public"."sys_menu"."sort" IS '排序';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_menu"."update_user" IS '修改人';
COMMENT ON TABLE "public"."sys_menu" IS '系统菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1264622039642255311, 0, '[0],', '主控面板', 'system_index', 0, 'home', '/', 'RouteView', NULL, 'system', 0, 'Y', NULL, '/analysis', 1, 1, NULL, 0, '2020-05-25 02:19:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255321, 1264622039642255311, '[0],[1264622039642255311],', '分析页', 'system_index_dashboard', 1, NULL, 'analysis', 'system/dashboard/Analysis', NULL, 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-25 02:21:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255331, 1264622039642255311, '[0],[1264622039642255311],', '工作台', 'system_index_workplace', 1, NULL, 'workplace', 'system/dashboard/Workplace', NULL, 'system', 0, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-05-25 02:23:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255341, 0, '[0],', '组织架构', 'sys_mgr', 0, 'team', '/sys', 'PageView', NULL, 'system', 0, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-03-27 15:58:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255351, 1264622039642255341, '[0],[1264622039642255341],', '用户管理', 'sys_user_mgr', 1, NULL, '/mgr_user', 'system/user/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 3, NULL, 0, '2020-03-27 16:10:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255361, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户查询', 'sys_user_mgr_page', 2, NULL, NULL, NULL, 'sysUser:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:36:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255371, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户编辑', 'sys_user_mgr_edit', 2, NULL, NULL, NULL, 'sysUser:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255381, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户增加', 'sys_user_mgr_add', 2, NULL, NULL, NULL, 'sysUser:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:37:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255391, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户删除', 'sys_user_mgr_delete', 2, NULL, NULL, NULL, 'sysUser:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:37:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255401, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户详情', 'sys_user_mgr_detail', 2, NULL, NULL, NULL, 'sysUser:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:38:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255411, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户导出', 'sys_user_mgr_export', 2, NULL, NULL, NULL, 'sysUser:export', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:21:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255421, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户选择器', 'sys_user_mgr_selector', 2, NULL, NULL, NULL, 'sysUser:selector', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-03 13:30:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255431, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户授权角色', 'sys_user_mgr_grant_role', 2, NULL, NULL, NULL, 'sysUser:grantRole', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:22:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255441, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户拥有角色', 'sys_user_mgr_own_role', 2, NULL, NULL, NULL, 'sysUser:ownRole', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:27:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255451, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户授权数据', 'sys_user_mgr_grant_data', 2, NULL, NULL, NULL, 'sysUser:grantData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:22:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255461, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户拥有数据', 'sys_user_mgr_own_data', 2, NULL, NULL, NULL, 'sysUser:ownData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:27:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255471, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户更新信息', 'sys_user_mgr_update_info', 2, NULL, NULL, NULL, 'sysUser:updateInfo', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 16:19:32', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255481, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改密码', 'sys_user_mgr_update_pwd', 2, NULL, NULL, NULL, 'sysUser:updatePwd', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 16:20:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255491, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改状态', 'sys_user_mgr_change_status', 2, NULL, NULL, NULL, 'sysUser:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:13:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255501, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户修改头像', 'sys_user_mgr_update_avatar', 2, NULL, NULL, NULL, 'sysUser:updateAvatar', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:21:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255511, 1264622039642255351, '[0],[1264622039642255341],[1264622039642255351],', '用户重置密码', 'sys_user_mgr_reset_pwd', 2, NULL, NULL, NULL, 'sysUser:resetPwd', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:01:51', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255521, 1264622039642255341, '[0],[1264622039642255341],', '机构管理', 'sys_org_mgr', 1, NULL, '/org', 'system/org/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 4, NULL, 0, '2020-03-27 17:15:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255531, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构查询', 'sys_org_mgr_page', 2, NULL, NULL, NULL, 'sysOrg:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:17:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255541, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构列表', 'sys_org_mgr_list', 2, NULL, NULL, NULL, 'sysOrg:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:54:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255551, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构增加', 'sys_org_mgr_add', 2, NULL, NULL, NULL, 'sysOrg:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:19:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255561, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构编辑', 'sys_org_mgr_edit', 2, NULL, NULL, NULL, 'sysOrg:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:54:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255571, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构删除', 'sys_org_mgr_delete', 2, NULL, NULL, NULL, 'sysOrg:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:20:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255581, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构详情', 'sys_org_mgr_detail', 2, NULL, NULL, NULL, 'sysOrg:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:21:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255591, 1264622039642255521, '[0],[1264622039642255341],[1264622039642255521]', '机构树', 'sys_org_mgr_tree', 2, NULL, NULL, NULL, 'sysOrg:tree', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:21:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255601, 1264622039642255341, '[0],[1264622039642255341],', '职位管理', 'sys_pos_mgr', 1, NULL, '/pos', 'system/pos/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 5, NULL, 0, '2020-03-27 18:38:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255611, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位查询', 'sys_pos_mgr_page', 2, NULL, NULL, NULL, 'sysPos:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:41:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255621, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位列表', 'sys_pos_mgr_list', 2, NULL, NULL, NULL, 'sysPos:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:55:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255631, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位增加', 'sys_pos_mgr_add', 2, NULL, NULL, NULL, 'sysPos:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:42:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255641, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位编辑', 'sys_pos_mgr_edit', 2, NULL, NULL, NULL, 'sysPos:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:56:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255651, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位删除', 'sys_pos_mgr_delete', 2, NULL, NULL, NULL, 'sysPos:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:42:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255661, 1264622039642255601, '[0],[1264622039642255341],[1264622039642255601],', '职位详情', 'sys_pos_mgr_detail', 2, NULL, NULL, NULL, 'sysPos:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:43:00', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255671, 0, '[0],', '权限管理', 'auth_manager', 0, 'safety-certificate', '/auth', 'PageView', NULL, 'system', 0, 'Y', NULL, NULL, 1, 3, NULL, 0, '2020-07-15 15:51:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255681, 1264622039642255671, '[0],[1264622039642255671],', '应用管理', 'sys_app_mgr', 1, NULL, '/app', 'system/app/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 6, NULL, 0, '2020-03-27 16:40:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255691, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用查询', 'sys_app_mgr_page', 2, NULL, NULL, NULL, 'sysApp:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:41:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255701, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用列表', 'sys_app_mgr_list', 2, NULL, NULL, NULL, 'sysApp:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 10:04:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255711, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用增加', 'sys_app_mgr_add', 2, NULL, NULL, NULL, 'sysApp:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 16:44:10', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255721, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用编辑', 'sys_app_mgr_edit', 2, NULL, NULL, NULL, 'sysApp:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 10:04:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255731, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用删除', 'sys_app_mgr_delete', 2, NULL, NULL, NULL, 'sysApp:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255741, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '应用详情', 'sys_app_mgr_detail', 2, NULL, NULL, NULL, 'sysApp:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255751, 1264622039642255681, '[0],[1264622039642255671],[1264622039642255681],', '设为默认应用', 'sys_app_mgr_set_as_default', 2, NULL, NULL, NULL, 'sysApp:setAsDefault', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 17:14:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255761, 1264622039642255671, '[0],[1264622039642255671],', '菜单管理', 'sys_menu_mgr', 1, NULL, '/menu', 'system/menu/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 7, NULL, 0, '2020-03-27 18:44:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255771, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单列表', 'sys_menu_mgr_list', 2, NULL, NULL, NULL, 'sysMenu:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:45:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255781, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单增加', 'sys_menu_mgr_add', 2, NULL, NULL, NULL, 'sysMenu:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:45:37', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255791, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单编辑', 'sys_menu_mgr_edit', 2, NULL, NULL, NULL, 'sysMenu:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:52:00', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255801, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单删除', 'sys_menu_mgr_delete', 2, NULL, NULL, NULL, 'sysMenu:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:46:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255811, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单详情', 'sys_menu_mgr_detail', 2, NULL, NULL, NULL, 'sysMenu:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:46:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255821, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单授权树', 'sys_menu_mgr_grant_tree', 2, NULL, NULL, NULL, 'sysMenu:treeForGrant', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-03 09:50:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255831, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单树', 'sys_menu_mgr_tree', 2, NULL, NULL, NULL, 'sysMenu:tree', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-27 18:47:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255841, 1264622039642255761, '[0],[1264622039642255671],[1264622039642255761],', '菜单切换', 'sys_menu_mgr_change', 2, NULL, NULL, NULL, 'sysMenu:change', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-03 09:51:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255851, 1264622039642255671, '[0],[1264622039642255671],', '角色管理', 'sys_role_mgr', 1, NULL, '/role', 'system/role/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 8, NULL, 0, '2020-03-28 16:01:09', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255861, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色查询', 'sys_role_mgr_page', 2, NULL, NULL, NULL, 'sysRole:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:09', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255871, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色增加', 'sys_role_mgr_add', 2, NULL, NULL, NULL, 'sysRole:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255881, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色编辑', 'sys_role_mgr_edit', 2, NULL, NULL, NULL, 'sysRole:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:57:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255891, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色删除', 'sys_role_mgr_delete', 2, NULL, NULL, NULL, 'sysRole:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:02:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255901, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色详情', 'sys_role_mgr_detail', 2, NULL, NULL, NULL, 'sysRole:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-03-28 16:03:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255911, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色下拉', 'sys_role_mgr_drop_down', 2, NULL, NULL, NULL, 'sysRole:dropDown', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:45:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255921, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色授权菜单', 'sys_role_mgr_grant_menu', 2, NULL, NULL, NULL, 'sysRole:grantMenu', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:16:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255931, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色拥有菜单', 'sys_role_mgr_own_menu', 2, NULL, NULL, NULL, 'sysRole:ownMenu', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:21:54', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255941, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色授权数据', 'sys_role_mgr_grant_data', 2, NULL, NULL, NULL, 'sysRole:grantData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 09:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255951, 1264622039642255851, '[0],[1264622039642255671],[1264622039642255851],', '角色拥有数据', 'sys_role_mgr_own_data', 2, NULL, NULL, NULL, 'sysRole:ownData', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 14:23:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255961, 0, '[0],', '开发管理', 'system_tools', 0, 'euro', '/tools', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 4, NULL, 0, '2020-05-25 02:10:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255971, 1264622039642255961, '[0],[1264622039642255961],', '系统配置', 'system_tools_config', 1, NULL, '/config', 'system/config/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 9, NULL, 0, '2020-05-25 02:12:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255981, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置查询', 'system_tools_config_page', 2, NULL, NULL, NULL, 'sysConfig:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642255991, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置列表', 'system_tools_config_list', 2, NULL, NULL, NULL, 'sysConfig:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256001, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置增加', 'system_tools_config_add', 2, NULL, NULL, NULL, 'sysConfig:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256011, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置编辑', 'system_tools_config_edit', 2, NULL, NULL, NULL, 'sysConfig:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256021, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置删除', 'system_tools_config_delete', 2, NULL, NULL, NULL, 'sysConfig:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:03:44', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256031, 1264622039642255971, '[0],[1264622039642255961],[1264622039642255971],', '配置详情', 'system_tools_config_detail', 2, NULL, NULL, NULL, 'sysConfig:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 17:02:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256041, 1264622039642255961, '[0],[1264622039642255961],', '邮件发送', 'sys_email_mgr', 1, NULL, '/email', 'system/email/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 10, NULL, 0, '2020-07-02 11:44:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256051, 1264622039642256041, '[0],[1264622039642255961],[1264622039642256041],', '发送文本邮件', 'sys_email_mgr_send_email', 2, NULL, NULL, NULL, 'email:sendEmail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:45:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256061, 1264622039642256041, '[0],[1264622039642255961],[1264622039642256041],', '发送html邮件', 'sys_email_mgr_send_email_html', 2, NULL, NULL, NULL, 'email:sendEmailHtml', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 11:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256071, 1264622039642255961, '[0],[1264622039642255961],', '短信管理', 'sys_sms_mgr', 1, NULL, '/sms', 'system/sms/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 11, NULL, 0, '2020-07-02 12:00:12', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256081, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '短信发送查询', 'sys_sms_mgr_page', 2, NULL, NULL, NULL, 'sms:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256091, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '发送验证码短信', 'sys_sms_mgr_send_login_message', 2, NULL, NULL, NULL, 'sms:sendLoginMessage', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:02:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256101, 1264622039642256071, '[0],[1264622039642255961],[1264622039642256071],', '验证短信验证码', 'sys_sms_mgr_validate_message', 2, NULL, NULL, NULL, 'sms:validateMessage', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 12:02:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256111, 1264622039642255961, '[0],[1264622039642255961],', '字典管理', 'sys_dict_mgr', 1, NULL, '/dict', 'system/dict/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 12, NULL, 0, '2020-04-01 11:17:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256121, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型查询', 'sys_dict_mgr_dict_type_page', 2, NULL, NULL, NULL, 'sysDictType:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:20:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256131, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型列表', 'sys_dict_mgr_dict_type_list', 2, NULL, NULL, NULL, 'sysDictType:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-29 15:12:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256141, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型增加', 'sys_dict_mgr_dict_type_add', 2, NULL, NULL, NULL, 'sysDictType:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:19:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256151, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型删除', 'sys_dict_mgr_dict_type_delete', 2, NULL, NULL, NULL, 'sysDictType:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:21:30', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256161, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型编辑', 'sys_dict_mgr_dict_type_edit', 2, NULL, NULL, NULL, 'sysDictType:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:21:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256171, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型详情', 'sys_dict_mgr_dict_type_detail', 2, NULL, NULL, NULL, 'sysDictType:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:06', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256181, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型下拉', 'sys_dict_mgr_dict_type_drop_down', 2, NULL, NULL, NULL, 'sysDictType:dropDown', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256191, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典类型修改状态', 'sys_dict_mgr_dict_type_change_status', 2, NULL, NULL, NULL, 'sysDictType:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:15:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256201, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值查询', 'sys_dict_mgr_dict_page', 2, NULL, NULL, NULL, 'sysDictData:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:23:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256211, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值列表', 'sys_dict_mgr_dict_list', 2, NULL, NULL, NULL, 'sysDictData:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256221, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值增加', 'sys_dict_mgr_dict_add', 2, NULL, NULL, NULL, 'sysDictData:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:22:51', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256231, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值删除', 'sys_dict_mgr_dict_delete', 2, NULL, NULL, NULL, 'sysDictData:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:23:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256241, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值编辑', 'sys_dict_mgr_dict_edit', 2, NULL, NULL, NULL, 'sysDictData:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256251, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值详情', 'sys_dict_mgr_dict_detail', 2, NULL, NULL, NULL, 'sysDictData:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-04-01 11:24:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256261, 1264622039642256111, '[0],[1264622039642255961],[1264622039642256111],', '字典值修改状态', 'sys_dict_mgr_dict_change_status', 2, NULL, NULL, NULL, 'sysDictData:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-23 11:17:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256271, 1264622039642255961, '[0],[1264622039642255961],', '接口文档', 'sys_swagger_mgr', 1, NULL, '/swagger', 'Iframe', NULL, 'system', 2, 'Y', 'http://localhost:82/doc.html', NULL, 1, 13, NULL, 0, '2020-07-02 12:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256281, 0, '[0],', '日志管理', 'sys_log_mgr', 0, 'read', '/log', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 5, NULL, 0, '2020-04-01 09:25:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256291, 1264622039642256281, '[0],[1264622039642256281],', '访问日志', 'sys_log_mgr_vis_log', 1, NULL, '/vislog', 'system/log/vislog/index', NULL, 'system', 0, 'Y', NULL, NULL, 1, 14, NULL, 0, '2020-04-01 09:26:40', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256301, 1264622039642256291, '[0],[1264622039642256281],[1264622039642256291],', '访问日志查询', 'sys_log_mgr_vis_log_page', 2, NULL, NULL, NULL, 'sysVisLog:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:55:51', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256311, 1264622039642256291, '[0],[1264622039642256281],[1264622039642256291],', '访问日志清空', 'sys_log_mgr_vis_log_delete', 2, NULL, NULL, NULL, 'sysVisLog:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:56:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256321, 1264622039642256281, '[0],[1264622039642256281],', '操作日志', 'sys_log_mgr_op_log', 1, NULL, '/oplog', 'system/log/oplog/index', NULL, 'system', 0, 'Y', NULL, NULL, 1, 15, NULL, 0, '2020-04-01 09:26:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256331, 1264622039642256321, '[0],[1264622039642256281],[1264622039642256321],', '操作日志查询', 'sys_log_mgr_op_log_page', 2, NULL, NULL, NULL, 'sysOpLog:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:57:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256341, 1264622039642256321, '[0],[1264622039642256281],[1264622039642256321],', '操作日志清空', 'sys_log_mgr_op_log_delete', 2, NULL, NULL, NULL, 'sysOpLog:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 09:58:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256351, 0, '[0],', '系统监控', 'sys_monitor_mgr', 0, 'deployment-unit', '/monitor', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 6, NULL, 0, '2020-06-05 16:00:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256361, 1264622039642256351, '[0],[1264622039642256351],', '服务监控', 'sys_monitor_mgr_machine_monitor', 1, NULL, '/machine', 'system/machine/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 16, NULL, 0, '2020-06-05 16:02:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256371, 1264622039642256361, '[0],[1264622039642256351],[1264622039642256361],', '服务监控查询', 'sys_monitor_mgr_machine_monitor_query', 2, NULL, NULL, NULL, 'sysMachine:query', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:05:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256381, 1264622039642256351, '[0],[1264622039642256351],', '在线用户', 'sys_monitor_mgr_online_user', 1, NULL, '/onlineUser', 'system/onlineUser/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 17, NULL, 0, '2020-06-05 16:01:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256391, 1264622039642256381, '[0],[1264622039642256351],[1264622039642256381],', '在线用户列表', 'sys_monitor_mgr_online_user_list', 2, NULL, NULL, NULL, 'sysOnlineUser:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:03:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256401, 1264622039642256381, '[0],[1264622039642256351],[1264622039642256381],', '在线用户强退', 'sys_monitor_mgr_online_user_force_exist', 2, NULL, NULL, NULL, 'sysOnlineUser:forceExist', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-05 16:04:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256411, 1264622039642256351, '[0],[1264622039642256351],', '数据监控', 'sys_monitor_mgr_druid', 1, NULL, '/druid', 'Iframe', NULL, 'system', 2, 'Y', 'http://localhost:82/druid/login.html', NULL, 1, 18, NULL, 0, '2020-06-28 16:15:07', 1265476890672672808, '2020-09-13 09:39:10', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256421, 0, '[0],', '通知公告', 'sys_notice', 0, 'sound', '/notice', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 7, NULL, 0, '2020-06-29 15:41:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256431, 1264622039642256421, '[0],[1264622039642256421],', '公告管理', 'sys_notice_mgr', 1, NULL, '/notice', 'system/notice/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 19, NULL, 0, '2020-06-29 15:44:24', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256441, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告查询', 'sys_notice_mgr_page', 2, NULL, NULL, NULL, 'sysNotice:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:45:30', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256451, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告增加', 'sys_notice_mgr_add', 2, NULL, NULL, NULL, 'sysNotice:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256461, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告编辑', 'sys_notice_mgr_edit', 2, NULL, NULL, NULL, 'sysNotice:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256471, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告删除', 'sys_notice_mgr_delete', 2, NULL, NULL, NULL, 'sysNotice:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256481, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告查看', 'sys_notice_mgr_detail', 2, NULL, NULL, NULL, 'sysNotice:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256491, 1264622039642256431, '[0],[1264622039642256421],[1264622039642256431],', '公告修改状态', 'sys_notice_mgr_changeStatus', 2, NULL, NULL, NULL, 'sysNotice:changeStatus', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 15:46:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256501, 1264622039642256421, '[0],[1264622039642256421],', '已收公告', 'sys_notice_mgr_received', 1, NULL, '/noticeReceived', 'system/noticeReceived/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 20, NULL, 0, '2020-06-29 16:32:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256511, 1264622039642256501, '[0],[1264622039642256421],[1264622039642256501],', '已收公告查询', 'sys_notice_mgr_received_page', 2, NULL, NULL, NULL, 'sysNotice:received', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-29 16:33:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256521, 0, '[0],', '文件管理', 'sys_file_mgr', 0, 'file', '/file', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 8, NULL, 0, '2020-06-24 17:31:10', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256531, 1264622039642256521, '[0],[1264622039642256521],', '系统文件', 'sys_file_mgr_sys_file', 1, NULL, '/file', 'system/file/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 21, NULL, 0, '2020-06-24 17:32:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256541, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件查询', 'sys_file_mgr_sys_file_page', 2, NULL, NULL, NULL, 'sysFileInfo:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256551, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件列表', 'sys_file_mgr_sys_file_list', 2, NULL, NULL, NULL, 'sysFileInfo:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256561, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件删除', 'sys_file_mgr_sys_file_delete', 2, NULL, NULL, NULL, 'sysFileInfo:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:36:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256571, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件详情', 'sys_file_mgr_sys_file_detail', 2, NULL, NULL, NULL, 'sysFileInfo:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:36:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256581, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件上传', 'sys_file_mgr_sys_file_upload', 2, NULL, NULL, NULL, 'sysFileInfo:upload', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:34:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256591, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '文件下载', 'sys_file_mgr_sys_file_download', 2, NULL, NULL, NULL, 'sysFileInfo:download', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:34:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256601, 1264622039642256531, '[0],[1264622039642256521],[1264622039642256531],', '图片预览', 'sys_file_mgr_sys_file_preview', 2, NULL, NULL, NULL, 'sysFileInfo:preview', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-06-24 17:35:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256611, 0, '[0],', '定时任务', 'sys_timers', 0, 'dashboard', '/timers', 'PageView', NULL, 'system', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:17:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256621, 1264622039642256611, '[0],[1264622039642256611],', '任务管理', 'sys_timers_mgr', 1, NULL, '/timers', 'system/timers/index', NULL, 'system', 1, 'Y', NULL, NULL, 1, 22, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256631, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务查询', 'sys_timers_mgr_page', 2, NULL, NULL, NULL, 'sysTimers:page', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:19:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256641, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务列表', 'sys_timers_mgr_list', 2, NULL, NULL, NULL, 'sysTimers:list', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:19:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256651, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务详情', 'sys_timers_mgr_detail', 2, NULL, NULL, NULL, 'sysTimers:detail', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:10', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256661, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务增加', 'sys_timers_mgr_add', 2, NULL, NULL, NULL, 'sysTimers:add', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256671, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务删除', 'sys_timers_mgr_delete', 2, NULL, NULL, NULL, 'sysTimers:delete', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:33', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256681, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务编辑', 'sys_timers_mgr_edit', 2, NULL, NULL, NULL, 'sysTimers:edit', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:20:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256691, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务可执行列表', 'sys_timers_mgr_get_action_classes', 2, NULL, NULL, NULL, 'sysTimers:getActionClasses', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256701, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务启动', 'sys_timers_mgr_start', 2, NULL, NULL, NULL, 'sysTimers:start', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:32', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256711, 1264622039642256621, '[0],[1264622039642256611],[1264622039642256621],', '定时任务关闭', 'sys_timers_mgr_stop', 2, NULL, NULL, NULL, 'sysTimers:stop', 'system', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:22:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256721, 0, '[0],', '业务流程', 'sys_flw_mgr', 0, 'cluster', '/flw', 'PageView', NULL, 'office', 1, 'Y', NULL, NULL, 0, 9, NULL, 0, '2020-05-27 15:04:59', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256731, 1264622039642256721, '[0],[1264622039642256721],', '模型设计', 'sys_flw_model_designer', 1, NULL, '/designer', 'Iframe', NULL, 'office', 2, 'Y', 'http://localhost:82/designer/index.html?token=', NULL, 0, 23, NULL, 2, '2020-05-27 15:08:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256732, 1264622039642256721, '[0],[1264622039642256721],', '模型管理', 'sys_flw_model_mgr', 1, NULL, '/model', 'flowable/model/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 24, NULL, 0, '2020-05-27 15:21:16', 1265476890672672808, '2020-08-17 21:32:34', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256733, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型列表', 'sys_flw_model_mgr_model_list', 2, NULL, NULL, NULL, 'flowableModel:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256734, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型增加', 'sys_flw_model_mgr_model_add', 2, NULL, NULL, NULL, 'flowableModel:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256735, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型删除', 'sys_flw_model_mgr_model_delete', 2, NULL, NULL, NULL, 'flowableModel:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256736, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型编辑', 'sys_flw_model_mgr_model_edit', 2, NULL, NULL, NULL, 'flowableModel:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256737, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型预览', 'sys_flw_model_mgr_model_preview', 2, NULL, NULL, NULL, 'flowableModel:preview', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256738, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型版本', 'sys_flw_model_mgr_model_version', 2, NULL, NULL, NULL, 'flowableModel:version', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256739, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型设为新版本', 'sys_flw_model_mgr_model_set_as_new', 2, NULL, NULL, NULL, 'flowableModel:setAsNew', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256740, 1264622039642256732, '[0],[1264622039642256721],[1264622039642256732],', '模型导入', 'sys_flw_model_mgr_model_import_model', 2, NULL, NULL, NULL, 'flowableModel:importModel', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256741, 1264622039642256721, '[0],[1264622039642256721],', '定义管理', 'sys_flw_definition_mgr', 1, NULL, '/defenition', 'flowable/defenition/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 24, NULL, 0, '2020-05-27 15:21:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256751, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义查询', 'sys_flw_definition_mgr_page', 2, NULL, NULL, NULL, 'flowableDefinition:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:22:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256761, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义部署', 'sys_flw_definition_mgr_deploy', 2, NULL, NULL, NULL, 'flowableDefinition:deploy', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:22:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256771, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义删除', 'sys_flw_definition_mgr_delete', 2, NULL, NULL, NULL, 'flowableDefinition:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:06', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256781, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义导出', 'sys_flw_definition_mgr_export', 2, NULL, NULL, NULL, 'flowableDefinition:export', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:21', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256791, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义映射', 'sys_flw_definition_mgr_mapping', 2, NULL, NULL, NULL, 'flowableDefinition:mapping', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:40', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256801, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义挂起', 'sys_flw_definition_mgr_suspend', 2, NULL, NULL, NULL, 'flowableDefinition:suspend', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:23:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256811, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义激活', 'sys_flw_definition_mgr_active', 2, NULL, NULL, NULL, 'flowableDefinition:active', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:24:09', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256821, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '定义追踪', 'sys_flw_definition_mgr_trace', 2, NULL, NULL, NULL, 'flowableDefinition:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:24:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256831, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '任务节点', 'sys_flw_definition_mgr_userTasks', 2, NULL, NULL, NULL, 'flowableDefinition:userTasks', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:25:04', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256841, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项编辑', 'sys_flw_definition_mgr_option_edit', 2, NULL, NULL, NULL, 'flowableOption:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:26:39', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256851, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项查看', 'sys_flw_definition_mgr_option_detail', 2, NULL, NULL, NULL, 'flowableOption:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:26:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256861, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '选项列表', 'sys_flw_definition_mgr_option_list', 2, NULL, NULL, NULL, 'flowableOption:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:27:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256871, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮增加', 'sys_flw_definition_mgr_button_add', 2, NULL, NULL, NULL, 'flowableButton:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:05:54', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256881, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮删除', 'sys_flw_definition_mgr_button_delete', 2, NULL, NULL, NULL, 'flowableButton:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256891, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮编辑', 'sys_flw_definition_mgr_button_edit', 2, NULL, NULL, NULL, 'flowableButton:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:20', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256901, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮查看', 'sys_flw_definition_mgr_button_detail', 2, NULL, NULL, NULL, 'flowableButton:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256911, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮列表', 'sys_flw_definition_mgr_button_list', 2, NULL, NULL, NULL, 'flowableButton:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256912, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '按钮追踪', 'sys_flw_definition_mgr_button_trace', 2, NULL, NULL, NULL, 'flowableButton:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:06:47', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256921, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件增加', 'sys_flw_definition_mgr_event_add', 2, NULL, NULL, NULL, 'flowableEvent:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256931, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件删除', 'sys_flw_definition_mgr_event_delete', 2, NULL, NULL, NULL, 'flowableEvent:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256941, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件编辑', 'sys_flw_definition_mgr_event_edit', 2, NULL, NULL, NULL, 'flowableEvent:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:07:50', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256951, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件查看', 'sys_flw_definition_mgr_event_detail', 2, NULL, NULL, NULL, 'flowableEvent:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:14', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256961, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '事件列表', 'sys_flw_definition_mgr_event_list', 2, NULL, NULL, NULL, 'flowableEvent:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256971, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '表单列表', 'sys_flw_definition_mgr_form_list', 2, NULL, NULL, NULL, 'flowableForm:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256981, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单增加', 'sys_flw_definition_mgr_form_add', 2, NULL, NULL, NULL, 'flowableForm:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642256991, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单删除', 'sys_flw_definition_mgr_form_delete', 2, NULL, NULL, NULL, 'flowableForm:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257001, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单编辑', 'sys_flw_definition_mgr_form_edit', 2, NULL, NULL, NULL, 'flowableForm:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257011, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程表单查看', 'sys_flw_definition_mgr_form_detail', 2, NULL, NULL, NULL, 'flowableForm:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257021, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程启动表单', 'sys_flw_definition_mgr_form_start_form_data', 2, NULL, NULL, NULL, 'flowableForm:startFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257022, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程全局表单', 'sys_flw_definition_mgr_form_global_form_data', 2, NULL, NULL, NULL, 'flowableForm:globalFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257031, 1264622039642256741, '[0],[1264622039642256721],[1264622039642256741],', '流程任务表单', 'sys_flw_definition_mgr_form_task_form_data', 2, NULL, NULL, NULL, 'flowableForm:taskFormData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257041, 1264622039642256721, '[0],[1264622039642256721],', '分类管理', 'sys_flw_category_mgr', 1, NULL, '/category', 'flowable/category/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 25, NULL, 0, '2020-05-27 15:10:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257051, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类查询', 'sys_flw_category_mgr_page', 2, NULL, NULL, NULL, 'flowableCategory:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 12:24:58', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257061, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类列表', 'sys_flw_category_mgr_list', 2, NULL, NULL, NULL, 'flowableCategory:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:13:47', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257071, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类增加', 'sys_flw_category_mgr_add', 2, NULL, NULL, NULL, 'flowableCategory:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:14:18', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257081, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类删除', 'sys_flw_category_mgr_delete', 2, NULL, NULL, NULL, 'flowableCategory:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:16:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257091, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类编辑', 'sys_flw_category_mgr_edit', 2, NULL, NULL, NULL, 'flowableCategory:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:17:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257101, 1264622039642257041, '[0],[1264622039642256721],[1264622039642257041],', '分类详情', 'sys_flw_category_mgr_detail', 2, NULL, NULL, NULL, 'flowableCategory:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 15:17:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257111, 1264622039642256721, '[0],[1264622039642256721],', '表单管理', 'sys_flw_form_resource_mgr', 1, NULL, '/form', 'flowable/form/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 26, NULL, 0, '2020-05-27 16:43:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257121, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单查询', 'sys_flw_form_resource_mgr_form_page', 2, NULL, NULL, NULL, 'flowableFormResource:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257131, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单增加', 'sys_flw_form_resource_mgr_form_add', 2, NULL, NULL, NULL, 'flowableFormResource:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257141, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单删除', 'sys_flw_form_resource_mgr_form_delete', 2, NULL, NULL, NULL, 'flowableFormResource:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257151, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单编辑', 'sys_flw_form_resource_mgr_form_edit', 2, NULL, NULL, NULL, 'flowableFormResource:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257161, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单查看', 'sys_flw_form_resource_mgr_form_detail', 2, NULL, NULL, NULL, 'flowableFormResource:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257162, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单设计', 'sys_flw_form_resource_mgr_form_design', 2, NULL, NULL, NULL, 'flowableFormResource:design', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257163, 1264622039642257111, '[0],[1264622039642256721],[1264622039642257111],', '表单列表', 'sys_flw_form_resource_mgr_form_list', 2, NULL, NULL, NULL, 'flowableFormResource:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:08:27', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257171, 1264622039642256721, '[0],[1264622039642256721],', '脚本管理', 'sys_flw_script_mgr', 1, NULL, '/script', 'flowable/script/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 27, NULL, 0, '2020-05-27 16:43:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257181, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本查询', 'sys_flw_script_mgr_page', 2, NULL, NULL, NULL, 'flowableScript:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257191, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本列表', 'sys_flw_script_mgr_list', 2, NULL, NULL, NULL, 'flowableScript:list', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:25', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257201, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本增加', 'sys_flw_script_mgr_add', 2, NULL, NULL, NULL, 'flowableScript:add', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:43', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257211, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本删除', 'sys_flw_script_mgr_delete', 2, NULL, NULL, NULL, 'flowableScript:delete', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:45:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257221, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本编辑', 'sys_flw_script_mgr_edit', 2, NULL, NULL, NULL, 'flowableScript:edit', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:46:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257231, 1264622039642257171, '[0],[1264622039642256721],[1264622039642257171],', '脚本查看', 'sys_flw_script_mgr_detail', 2, NULL, NULL, NULL, 'flowableScript:detail', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:46:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257232, 1264622039642256721, '[0],[1264622039642256721],', '入口管理', 'sys_flw_shortcut_mgr', 1, NULL, '/shortcut', 'flowable/shortcut/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 28, NULL, 0, '2020-05-27 16:46:26', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257233, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口查询', 'sys_flw_shortcut_mgr_page', 2, NULL, NULL, NULL, 'flowableShortcut:page', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:05', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257234, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口增加', 'sys_flw_shortcut_mgr_add', 2, NULL, NULL, NULL, 'flowableShortcut:add', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257235, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口删除', 'sys_flw_shortcut_mgr_delete', 2, NULL, NULL, NULL, 'flowableShortcut:delete', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:45', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257236, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口编辑', 'sys_flw_shortcut_mgr_edit', 2, NULL, NULL, NULL, 'flowableShortcut:edit', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257237, 1264622039642257232, '[0],[1264622039642256721],[1264622039642257232]', '入口详情', 'sys_flw_shortcut_mgr_detail', 2, NULL, NULL, NULL, 'flowableShortcut:detail', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:26:09', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257241, 1264622039642256721, '[0],[1264622039642256721],', '实例管理', 'sys_flw_instance_mgr', 1, NULL, '/instance', 'flowable/instance/index', NULL, 'office', 1, 'Y', NULL, NULL, 0, 29, NULL, 0, '2020-05-27 16:10:07', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257251, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例查询', 'sys_flw_instance_mgr_page', 2, NULL, NULL, NULL, 'flowableInstance:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:10:55', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257261, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例历史用户任务节点', 'sys_flw_instance_mgr_his_user_tasks', 2, NULL, NULL, NULL, 'flowableInstance:hisUserTasks', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:12', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257271, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例追踪', 'sys_flw_instance_mgr_trace', 2, NULL, NULL, NULL, 'flowableInstance:trace', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:31', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257281, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例挂起', 'sys_flw_instance_mgr_suspend', 2, NULL, NULL, NULL, 'flowableInstance:suspend', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:11:48', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257291, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例激活', 'sys_flw_instance_mgr_active', 2, NULL, NULL, NULL, 'flowableInstance:active', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:12:00', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257301, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例历史审批记录', 'sys_flw_instance_mgr_comment_history', 2, NULL, NULL, NULL, 'flowableInstance:commentHistory', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:12:13', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257311, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例任务查询', 'sys_flw_instance_mgr_task_page', 2, NULL, NULL, NULL, 'flowableInstanceTask:page', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257312, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '实例表单数据', 'sys_flw_instance_mgr_form_data', 2, NULL, NULL, NULL, 'flowableInstance:formData', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257313, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '加签用户选择器', 'sys_flw_instance_mgr_add_sign_user_selector', 2, NULL, NULL, NULL, 'flowableInstance:addSignUserSelector', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257314, 1264622039642257241, '[0],[1264622039642256721],[1264622039642257241],', '减签用户选择器', 'sys_flw_instance_mgr_delete_sign_user_selector', 2, NULL, NULL, NULL, 'flowableInstance:deleteSignUserSelector', 'office', 0, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-05-27 16:13:41', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257321, 0, '[0],', '在线办公', 'sys_flw_office', 0, 'laptop', '/handle', 'PageView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 10, NULL, 0, '2020-05-27 16:55:15', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257331, 1264622039642257321, '[0],[1264622039642257321],', '我的任务', 'sys_flw_task_mgr', 0, NULL, '/task', 'RouteView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 30, NULL, 0, '2020-05-27 16:16:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257341, 1264622039642257331, '[0],[1264622039642257321],[1264622039642257331],', '待办任务', 'sys_flw_task_mgr_todo_task', 1, NULL, '/todoTask', 'flowable/task/todoTask/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 1, NULL, 0, '2020-05-27 16:18:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257351, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务查询', 'sys_flw_task_mgr_todo_task_page', 2, NULL, NULL, NULL, 'flowableTodoTask:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:19:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257361, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '流程发起', 'sys_flw_task_mgr_todo_task_start', 2, NULL, NULL, NULL, 'flowableHandleTask:start', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257371, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务提交', 'sys_flw_task_mgr_todo_task_submit', 2, NULL, NULL, NULL, 'flowableHandleTask:submit', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257381, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务保存', 'sys_flw_task_mgr_todo_task_save', 2, NULL, NULL, NULL, 'flowableHandleTask:save', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257391, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务退回', 'sys_flw_task_mgr_todo_task_back', 2, NULL, NULL, NULL, 'flowableHandleTask:back', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257401, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务转办', 'sys_flw_task_mgr_todo_task_turn', 2, NULL, NULL, NULL, 'flowableHandleTask:turn', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:39:46', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257411, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务委托', 'sys_flw_task_mgr_todo_task_entrust', 2, NULL, NULL, NULL, 'flowableHandleTask:entrust', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:03', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257421, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务终止', 'sys_flw_task_mgr_todo_task_end', 2, NULL, NULL, NULL, 'flowableHandleTask:end', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257431, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务挂起', 'sys_flw_task_mgr_todo_task_suspend', 2, NULL, NULL, NULL, 'flowableHandleTask:suspend', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:40', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257441, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务跳转', 'sys_flw_task_mgr_todo_task_jump', 2, NULL, NULL, NULL, 'flowableHandleTask:jump', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:40:52', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257451, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务加签', 'sys_flw_task_mgr_todo_task_add_sign', 2, NULL, NULL, NULL, 'flowableHandleTask:addSign', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:03', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257461, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务减签', 'sys_flw_task_mgr_todo_task_delete_sign', 2, NULL, NULL, NULL, 'flowableHandleTask:deleteSign', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257462, 1264622039642257341, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257341],', '任务数据', 'sys_flw_task_mgr_todo_task_task_data', 2, NULL, NULL, NULL, 'flowableHandleTask:taskData', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:41:16', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257471, 1264622039642257331, '[0],[1264622039642257321],[1264622039642257331],', '已办任务', 'sys_flw_task_mgr_done_task', 1, NULL, '/doneTask', 'flowable/task/doneTask/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 2, NULL, 0, '2020-05-27 16:19:29', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257481, 1264622039642257471, '[0],[1264622039642257321],[1264622039642257331],[1264622039642257471],', '已办任务查询', 'sys_flw_task_mgr_done_task_page', 2, NULL, NULL, NULL, 'flowableDoneTask:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257491, 1264622039642257321, '[0],[1264622039642257321],', '我的申请', 'sys_flw_apply_mgr', 0, NULL, '/myapply', 'RouteView', NULL, 'office', 1, 'Y', NULL, NULL, 1, 31, NULL, 0, '2020-07-02 14:22:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257501, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '起草申请', 'sys_flw_apply_mgr_draft_apply_mgr', 1, NULL, '/drafapply', 'flowable/draftapply/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 14:24:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257511, 1264622039642257501, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257501],', '起草入口列表', 'sys_flw_apply_mgr_draft_apply_mgr_list', 2, NULL, NULL, NULL, 'flowableShortcut:list', 'office', 1, 'Y', NULL, NULL, 0, 100, NULL, 0, '2020-07-02 14:25:19', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257521, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '起草表单填写', 'sys_flw_apply_mgr_draft_apply_mgr_apply_form', 1, NULL, '/draftapply/form', 'flowable/draftapply/form', NULL, 'office', 1, 'N', NULL, NULL, 1, 1, NULL, 2, '2020-08-21 22:33:38', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257522, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '申请草稿', 'sys_flw_mgr_draft_mgr', 1, NULL, '/draft', 'flowable/draft/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-09 15:32:40', 1265476890672672808, '2020-09-09 23:47:48', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257523, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿查询', 'sys_flw_mgr_draft_mgr_page', 2, NULL, NULL, NULL, 'flowableDraft:page', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257524, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿添加或编辑', 'sys_flw_mgr_draft_mgr_add_or_update', 2, NULL, NULL, NULL, 'flowableDraft:addOrUpdate', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257525, 1264622039642257522, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257522],', '申请草稿删除', 'sys_flw_mgr_draft_mgr_delete', 2, NULL, NULL, NULL, 'flowableDraft:delete', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257531, 1264622039642257491, '[0],[1264622039642257321],[1264622039642257491],', '已发申请', 'sys_flw_apply_mgr_applyed_mgr', 1, NULL, '/applyed', 'flowable/applyed/index', NULL, 'office', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-02 14:24:22', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257532, 1264622039642257531, '[0],[1264622039642257321],[1264622039642257491],[1264622039642257531],', '已发申请查询', 'sys_flw_apply_mgr_applyed_mgr_page', 2, NULL, NULL, NULL, 'flowableInstance:my', 'office', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257641, 0, '[0],', '多数据源', 'dbs_databaseInfo', 0, 'sliders', '/database', 'PageView', NULL, 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 00:53:28', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257642, 1264622039642257641, '[0],[1264622039642257641],', '数据源管理', 'dbs_databaseInfo_mgr', 1, NULL, '/databaseInfo', 'dbs/databaseInfo/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257643, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源查询', 'dbs_databaseInfo_mgr_page', 2, NULL, NULL, NULL, 'databaseInfo:page', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257644, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源增加', 'dbs_databaseInfo_mgr_add', 2, NULL, NULL, NULL, 'databaseInfo:add', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257645, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源编辑', 'dbs_databaseInfo_mgr_edit', 2, NULL, NULL, NULL, 'databaseInfo:edit', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257646, 1264622039642257642, '[0],[1264622039642257641],[1264622039642257642],', '数据源删除', 'dbs_databaseInfo_mgr_delete', 2, NULL, NULL, NULL, 'databaseInfo:delete', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:32', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257651, 0, '[0],', 'SaaS租户', 'tenant_tenantInfo', 0, 'switcher', '/tenant', 'PageView', NULL, 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 00:53:28', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257652, 1264622039642257651, '[0],[1264622039642256611],', '租户管理', 'tenant_tenantInfo_mgr', 1, NULL, '/tenantInfo', 'tenant/tenantInfo/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-07-01 17:18:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257653, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户查询', 'tenant_tenantInfo_mgr_page', 2, NULL, NULL, NULL, 'tenantInfo:page', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257654, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户新增', 'tenant_tenantInfo_mgr_add', 2, NULL, NULL, NULL, 'tenantInfo:add', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257655, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户编辑', 'tenant_tenantInfo_mgr_edit', 2, NULL, NULL, NULL, 'tenantInfo:edit', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257656, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户删除', 'tenant_tenantInfo_mgr_delete', 2, NULL, NULL, NULL, 'tenantInfo:delete', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257657, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户查看', 'tenant_tenantInfo_mgr_detail', 2, NULL, NULL, NULL, 'tenantInfo:detail', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257658, 1264622039642257652, '[0],[1264622039642257651],[1264622039642257652],', '租户列表', 'tenant_tenantInfo_mgr_list', 2, NULL, NULL, NULL, 'tenantInfo:list', 'experience', 0, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-05-27 16:20:01', 1265476890672672808, '2020-09-23 22:00:39', 1265476890672672808);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257671, 0, '[0],', '支付管理', 'pay_manage', 0, 'strikethrough', '/paymanage', 'PageView', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-03 00:35:34', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257681, 1264622039642257671, '[0],[1264622039642257671],', '支付体验', 'pay_manage_index', 1, '', '/pay/index', 'pay/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-26 14:55:08', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257691, 1264622039642257671, '[0],[1264622039642257671],', '支付订单', 'pay_manage_order', 1, NULL, '/pay/alipay/index', 'pay/alipay/index', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-09-03 00:39:56', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1264622039642257701, 0, '[0],', '设计表单', 'form_design', 1, 'pic-left', '/formdesign', 'formDesign', NULL, 'experience', 1, 'Y', NULL, NULL, 1, 100, NULL, 0, '2020-08-15 15:48:23', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1342451789402411009, 0, '[0],', '代码生成', 'code_gen', 1, 'thunderbolt', '/codeGenerate/index', 'gen/codeGenerate/index', '', 'system_tool', 1, 'Y', NULL, '', 1, 100, '代码生成', 0, '2020-12-25 20:47:03', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (1359406155611545602, 0, '[0],', '测试菜单', 'tests_gen_codes', 1, 'play-circle', '/codegentest', 'main/codegentest/index', '', 'system_tool', 1, 'Y', NULL, '', 1, 100, NULL, 0, '2021-02-10 15:37:39', 1265476890672672808, '2021-02-18 16:04:22', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "id" int8 NOT NULL,
  "title" varchar(1000) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "type" int2 NOT NULL,
  "public_user_id" int8 NOT NULL,
  "public_user_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "public_org_id" int8,
  "public_org_name" varchar(50) COLLATE "pg_catalog"."default",
  "public_time" timestamp(6),
  "cancel_time" timestamp(6),
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_notice"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_notice"."title" IS '标题';
COMMENT ON COLUMN "public"."sys_notice"."content" IS '内容';
COMMENT ON COLUMN "public"."sys_notice"."type" IS '类型（字典 1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."public_user_id" IS '发布人id';
COMMENT ON COLUMN "public"."sys_notice"."public_user_name" IS '发布人姓名';
COMMENT ON COLUMN "public"."sys_notice"."public_org_id" IS '发布机构id';
COMMENT ON COLUMN "public"."sys_notice"."public_org_name" IS '发布机构名称';
COMMENT ON COLUMN "public"."sys_notice"."public_time" IS '发布时间';
COMMENT ON COLUMN "public"."sys_notice"."cancel_time" IS '撤回时间';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '状态（字典 0草稿 1发布 2撤回 3删除）';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_notice"."update_user" IS '修改人';
COMMENT ON TABLE "public"."sys_notice" IS '通知表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "public"."sys_notice" VALUES (1304960081456066561, 'qqqq', 'qqqqqq<p></p>', 1, 1265476890672672808, '超级管理员', NULL, NULL, '2020-09-13 09:48:23', '2020-09-13 09:52:26', 3, '2020-09-13 09:48:23', 1265476890672672808, '2020-09-13 09:52:27', 1280700700074041345);
INSERT INTO "public"."sys_notice" VALUES (1304960124862918657, '123123123', '<p>23123123123123</p>', 2, 1265476890672672808, '超级管理员', NULL, NULL, '2020-09-13 09:48:33', '2020-09-13 09:52:28', 3, '2020-09-13 09:48:33', 1265476890672672808, '2020-09-13 09:52:40', 1280700700074041345);
INSERT INTO "public"."sys_notice" VALUES (1304961721068220417, '北京的秋天', '<p><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972071688&amp;di=9d692807717018e9f36dc209b8f2a290&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></p>', 1, 1280700700074041345, '老俞', 1265476890672672771, '研发部', '2020-09-13 09:54:54', NULL, 1, '2020-09-13 09:54:54', 1280700700074041345, NULL, NULL);
INSERT INTO "public"."sys_notice" VALUES (1304964964817104898, '北京的秋天', '<div style="text-align: center;"><img src="https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1599972936240&amp;di=0c65610a70a7f8de26e84f51da77604f&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D3178869736%2C1430240761%26fm%3D214%26gp%3D0.jpg">&nbsp;&nbsp;<br></div><p></p>', 1, 1265476890672672808, '超级管理员', NULL, NULL, '2020-09-13 10:07:47', NULL, 1, '2020-09-13 10:07:47', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice_user";
CREATE TABLE "public"."sys_notice_user" (
  "id" int8 NOT NULL,
  "notice_id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "status" int2 NOT NULL,
  "read_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_notice_user"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_notice_user"."notice_id" IS '通知公告id';
COMMENT ON COLUMN "public"."sys_notice_user"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_notice_user"."status" IS '状态（字典 0未读 1已读）';
COMMENT ON COLUMN "public"."sys_notice_user"."read_time" IS '阅读时间';
COMMENT ON TABLE "public"."sys_notice_user" IS '系统用户数据范围表';

-- ----------------------------
-- Records of sys_notice_user
-- ----------------------------
INSERT INTO "public"."sys_notice_user" VALUES (1304960081539952642, 1304960081456066561, 1280700700074041345, 0, NULL);
INSERT INTO "public"."sys_notice_user" VALUES (1304960124934221825, 1304960124862918657, 1280700700074041345, 1, '2020-09-13 09:49:02');
INSERT INTO "public"."sys_notice_user" VALUES (1304961721131134977, 1304961721068220417, 1280700700074041345, 1, '2020-09-13 09:54:56');
INSERT INTO "public"."sys_notice_user" VALUES (1304964964875825153, 1304964964817104898, 1280700700074041345, 0, NULL);

-- ----------------------------
-- Table structure for sys_oauth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oauth_user";
CREATE TABLE "public"."sys_oauth_user" (
  "id" int8 NOT NULL,
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token" varchar(255) COLLATE "pg_catalog"."default",
  "nick_name" varchar(255) COLLATE "pg_catalog"."default",
  "avatar" varchar(500) COLLATE "pg_catalog"."default",
  "blog" varchar(255) COLLATE "pg_catalog"."default",
  "company" varchar(255) COLLATE "pg_catalog"."default",
  "location" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "gender" varchar(50) COLLATE "pg_catalog"."default",
  "source" varchar(255) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_oauth_user"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_oauth_user"."uuid" IS '第三方平台的用户唯一id';
COMMENT ON COLUMN "public"."sys_oauth_user"."access_token" IS '用户授权的token';
COMMENT ON COLUMN "public"."sys_oauth_user"."nick_name" IS '昵称';
COMMENT ON COLUMN "public"."sys_oauth_user"."avatar" IS '头像';
COMMENT ON COLUMN "public"."sys_oauth_user"."blog" IS '用户网址';
COMMENT ON COLUMN "public"."sys_oauth_user"."company" IS '所在公司';
COMMENT ON COLUMN "public"."sys_oauth_user"."location" IS '位置';
COMMENT ON COLUMN "public"."sys_oauth_user"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_oauth_user"."gender" IS '性别';
COMMENT ON COLUMN "public"."sys_oauth_user"."source" IS '用户来源';
COMMENT ON COLUMN "public"."sys_oauth_user"."remark" IS '用户备注（各平台中的用户个人介绍）';
COMMENT ON COLUMN "public"."sys_oauth_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_oauth_user"."create_user" IS '创建用户';
COMMENT ON COLUMN "public"."sys_oauth_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_oauth_user"."update_user" IS '更新用户';
COMMENT ON TABLE "public"."sys_oauth_user" IS '第三方认证用户信息表';

-- ----------------------------
-- Records of sys_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_op_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_op_log";
CREATE TABLE "public"."sys_op_log" (
  "id" int8 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "op_type" int2,
  "success" char(1) COLLATE "pg_catalog"."default",
  "message" text COLLATE "pg_catalog"."default",
  "ip" varchar(255) COLLATE "pg_catalog"."default",
  "location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(255) COLLATE "pg_catalog"."default",
  "os" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(500) COLLATE "pg_catalog"."default",
  "class_name" varchar(500) COLLATE "pg_catalog"."default",
  "method_name" varchar(500) COLLATE "pg_catalog"."default",
  "req_method" varchar(255) COLLATE "pg_catalog"."default",
  "param" text COLLATE "pg_catalog"."default",
  "result" text COLLATE "pg_catalog"."default",
  "op_time" timestamp(6),
  "account" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_op_log"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_op_log"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_op_log"."op_type" IS '操作类型';
COMMENT ON COLUMN "public"."sys_op_log"."success" IS '是否执行成功（Y-是，N-否）';
COMMENT ON COLUMN "public"."sys_op_log"."message" IS '具体消息';
COMMENT ON COLUMN "public"."sys_op_log"."ip" IS 'ip';
COMMENT ON COLUMN "public"."sys_op_log"."location" IS '地址';
COMMENT ON COLUMN "public"."sys_op_log"."browser" IS '浏览器';
COMMENT ON COLUMN "public"."sys_op_log"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_op_log"."url" IS '请求地址';
COMMENT ON COLUMN "public"."sys_op_log"."class_name" IS '类名称';
COMMENT ON COLUMN "public"."sys_op_log"."method_name" IS '方法名称';
COMMENT ON COLUMN "public"."sys_op_log"."req_method" IS '请求方式（GET POST PUT DELETE)';
COMMENT ON COLUMN "public"."sys_op_log"."param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_op_log"."result" IS '返回结果';
COMMENT ON COLUMN "public"."sys_op_log"."op_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_op_log"."account" IS '操作账号';
COMMENT ON TABLE "public"."sys_op_log" IS '系统操作日志表';

-- ----------------------------
-- Records of sys_op_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_org";
CREATE TABLE "public"."sys_org" (
  "id" int8 NOT NULL,
  "pid" int8 NOT NULL,
  "pids" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_org"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_org"."pid" IS '父id';
COMMENT ON COLUMN "public"."sys_org"."pids" IS '父ids';
COMMENT ON COLUMN "public"."sys_org"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_org"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_org"."sort" IS '排序';
COMMENT ON COLUMN "public"."sys_org"."remark" IS '描述';
COMMENT ON COLUMN "public"."sys_org"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_org"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_org"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_org"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_org"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_org" IS '系统组织机构表';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO "public"."sys_org" VALUES (1265476890651701250, 0, '[0],', '华夏集团', 'hxjt', 100, '华夏集团总公司', 0, '2020-03-26 16:50:53', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672769, 1265476890651701250, '[0],[1265476890651701250],', '华夏集团北京分公司', 'hxjt_bj', 100, '华夏集团北京分公司', 0, '2020-03-26 16:55:42', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672770, 1265476890651701250, '[0],[1265476890651701250],', '华夏集团成都分公司', 'hxjt_cd', 100, '华夏集团成都分公司', 0, '2020-03-26 16:56:02', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672771, 1265476890672672769, '[0],[1265476890651701250],[1265476890672672769],', '研发部', 'hxjt_bj_yfb', 100, '华夏集团北京分公司研发部', 0, '2020-03-26 16:56:36', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672772, 1265476890672672769, '[0],[1265476890651701250],[1265476890672672769],', '企划部', 'hxjt_bj_qhb', 100, '华夏集团北京分公司企划部', 0, '2020-03-26 16:57:06', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672773, 1265476890672672770, '[0],[1265476890651701250],[1265476890672672770],', '市场部', 'hxjt_cd_scb', 100, '华夏集团成都分公司市场部', 0, '2020-03-26 16:57:35', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672774, 1265476890672672770, '[0],[1265476890651701250],[1265476890672672770],', '财务部', 'hxjt_cd_cwb', 100, '华夏集团成都分公司财务部', 0, '2020-03-26 16:58:01', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_org" VALUES (1265476890672672775, 1265476890672672773, '[0],[1265476890651701250],[1265476890672672770],[1265476890672672773],', '市场部二部', 'hxjt_cd_scb_2b', 100, '华夏集团成都分公司市场部二部', 0, '2020-04-06 15:36:50', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_pos
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_pos";
CREATE TABLE "public"."sys_pos" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_pos"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_pos"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_pos"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_pos"."sort" IS '排序';
COMMENT ON COLUMN "public"."sys_pos"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_pos"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_pos"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_pos"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_pos"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_pos"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_pos" IS '系统职位表';

-- ----------------------------
-- Records of sys_pos
-- ----------------------------
INSERT INTO "public"."sys_pos" VALUES (1265476890672672787, '总经理', 'zjl', 100, '总经理职位', 0, '2020-03-26 19:28:54', 1265476890672672808, '2020-06-02 21:01:04', 1265476890672672808);
INSERT INTO "public"."sys_pos" VALUES (1265476890672672788, '副总经理', 'fzjl', 100, '副总经理职位', 0, '2020-03-26 19:29:57', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_pos" VALUES (1265476890672672789, '部门经理', 'bmjl', 100, '部门经理职位', 0, '2020-03-26 19:31:49', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."sys_pos" VALUES (1265476890672672790, '工作人员', 'gzry', 100, '工作人员职位', 0, '2020-05-27 11:32:00', 1265476890672672808, '2020-06-01 10:51:35', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "data_scope_type" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_role"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_role"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_role"."code" IS '编码';
COMMENT ON COLUMN "public"."sys_role"."sort" IS '序号';
COMMENT ON COLUMN "public"."sys_role"."data_scope_type" IS '数据范围类型（字典 1全部数据 2本部门及以下数据 3本部门数据 4仅本人数据 5自定义数据）';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_role"."status" IS '状态（字典 0正常 1停用 2删除）';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_role" IS '系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1265476890672672817, '组织架构管理员', 'ent_manager_role', 100, 1, '组织架构管理员', 0, '2020-04-02 19:27:26', 1265476890672672808, '2020-09-12 15:54:07', 1265476890672672808);
INSERT INTO "public"."sys_role" VALUES (1265476890672672818, '权限管理员', 'auth_role', 101, 5, '权限管理员', 0, '2020-04-02 19:28:40', 1265476890672672808, '2020-07-16 10:52:21', 1265476890672672808);
INSERT INTO "public"."sys_role" VALUES (1265476890672672819, '公告发布员', 'notice_produce_role', 102, 5, '公告发布员', 0, '2020-05-29 15:48:11', 1265476890672672808, '2020-08-08 19:28:34', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_data_scope";
CREATE TABLE "public"."sys_role_data_scope" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "org_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_data_scope"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_role_data_scope"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_role_data_scope"."org_id" IS '机构id';
COMMENT ON TABLE "public"."sys_role_data_scope" IS '系统角色数据范围表';

-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435908822102018, 1265476890672672818, 1265476890651701250);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435909635796993, 1265476890672672818, 1265476890672672769);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435910432714754, 1265476890672672818, 1265476890672672771);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435911233826818, 1265476890672672818, 1265476890672672772);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435912018161666, 1265476890672672818, 1265476890672672770);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435912810885122, 1265476890672672818, 1265476890672672773);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435913595219970, 1265476890672672818, 1265476890672672775);
INSERT INTO "public"."sys_role_data_scope" VALUES (1277435914392137730, 1265476890672672818, 1265476890672672774);
INSERT INTO "public"."sys_role_data_scope" VALUES (1292060127645429762, 1265476890672672819, 1265476890672672774);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单id';
COMMENT ON TABLE "public"."sys_role_menu" IS '系统角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (1304366872187256834, 1265476890672672818, 1264622039642255671);
INSERT INTO "public"."sys_role_menu" VALUES (1304366872602492929, 1265476890672672818, 1264622039642255681);
INSERT INTO "public"."sys_role_menu" VALUES (1304366873026117634, 1265476890672672818, 1264622039642255761);
INSERT INTO "public"."sys_role_menu" VALUES (1304366873449742337, 1265476890672672818, 1264622039642255851);
INSERT INTO "public"."sys_role_menu" VALUES (1304366873864978433, 1265476890672672818, 1264622039642255691);
INSERT INTO "public"."sys_role_menu" VALUES (1304366874284408834, 1265476890672672818, 1264622039642255701);
INSERT INTO "public"."sys_role_menu" VALUES (1304366874703839233, 1265476890672672818, 1264622039642255711);
INSERT INTO "public"."sys_role_menu" VALUES (1304366875119075330, 1265476890672672818, 1264622039642255721);
INSERT INTO "public"."sys_role_menu" VALUES (1304366875538505730, 1265476890672672818, 1264622039642255731);
INSERT INTO "public"."sys_role_menu" VALUES (1304366875962130433, 1265476890672672818, 1264622039642255741);
INSERT INTO "public"."sys_role_menu" VALUES (1304366876377366529, 1265476890672672818, 1264622039642255751);
INSERT INTO "public"."sys_role_menu" VALUES (1304366876800991233, 1265476890672672818, 1264622039642255771);
INSERT INTO "public"."sys_role_menu" VALUES (1304366877216227330, 1265476890672672818, 1264622039642255781);
INSERT INTO "public"."sys_role_menu" VALUES (1304366877639852033, 1265476890672672818, 1264622039642255791);
INSERT INTO "public"."sys_role_menu" VALUES (1304366878067671041, 1265476890672672818, 1264622039642255801);
INSERT INTO "public"."sys_role_menu" VALUES (1304366878487101441, 1265476890672672818, 1264622039642255811);
INSERT INTO "public"."sys_role_menu" VALUES (1304366878898143233, 1265476890672672818, 1264622039642255821);
INSERT INTO "public"."sys_role_menu" VALUES (1304366879325962242, 1265476890672672818, 1264622039642255831);
INSERT INTO "public"."sys_role_menu" VALUES (1304366879745392641, 1265476890672672818, 1264622039642255841);
INSERT INTO "public"."sys_role_menu" VALUES (1304366880160628738, 1265476890672672818, 1264622039642255881);
INSERT INTO "public"."sys_role_menu" VALUES (1304366880580059138, 1265476890672672818, 1264622039642255891);
INSERT INTO "public"."sys_role_menu" VALUES (1304366880999489537, 1265476890672672818, 1264622039642255901);
INSERT INTO "public"."sys_role_menu" VALUES (1304366881423114242, 1265476890672672818, 1264622039642255911);
INSERT INTO "public"."sys_role_menu" VALUES (1304366881838350338, 1265476890672672818, 1264622039642255921);
INSERT INTO "public"."sys_role_menu" VALUES (1304366882261975042, 1265476890672672818, 1264622039642255931);
INSERT INTO "public"."sys_role_menu" VALUES (1304366882685599745, 1265476890672672818, 1264622039642255941);
INSERT INTO "public"."sys_role_menu" VALUES (1304366883100835842, 1265476890672672818, 1264622039642255951);
INSERT INTO "public"."sys_role_menu" VALUES (1304366883520266242, 1265476890672672818, 1264622039642255861);
INSERT INTO "public"."sys_role_menu" VALUES (1304366883939696642, 1265476890672672818, 1264622039642255871);
INSERT INTO "public"."sys_role_menu" VALUES (1304366884363321346, 1265476890672672818, 1264622039642257021);
INSERT INTO "public"."sys_role_menu" VALUES (1304366884782751746, 1265476890672672818, 1264622039642257031);
INSERT INTO "public"."sys_role_menu" VALUES (1304366885197987842, 1265476890672672818, 1264622039642256831);
INSERT INTO "public"."sys_role_menu" VALUES (1304366885617418242, 1265476890672672818, 1264622039642257261);
INSERT INTO "public"."sys_role_menu" VALUES (1304366886045237250, 1265476890672672818, 1264622039642257271);
INSERT INTO "public"."sys_role_menu" VALUES (1304366886473056258, 1265476890672672818, 1264622039642257301);
INSERT INTO "public"."sys_role_menu" VALUES (1304366886884098050, 1265476890672672818, 1264622039642257321);
INSERT INTO "public"."sys_role_menu" VALUES (1304366887307722754, 1265476890672672818, 1264622039642257331);
INSERT INTO "public"."sys_role_menu" VALUES (1304366887722958850, 1265476890672672818, 1264622039642257471);
INSERT INTO "public"."sys_role_menu" VALUES (1304366888142389250, 1265476890672672818, 1264622039642257481);
INSERT INTO "public"."sys_role_menu" VALUES (1304366888566013954, 1265476890672672818, 1264622039642257341);
INSERT INTO "public"."sys_role_menu" VALUES (1304366888981250049, 1265476890672672818, 1264622039642257411);
INSERT INTO "public"."sys_role_menu" VALUES (1304366889404874754, 1265476890672672818, 1264622039642257421);
INSERT INTO "public"."sys_role_menu" VALUES (1304366889820110850, 1265476890672672818, 1264622039642257431);
INSERT INTO "public"."sys_role_menu" VALUES (1304366890235346946, 1265476890672672818, 1264622039642257441);
INSERT INTO "public"."sys_role_menu" VALUES (1304366890663165954, 1265476890672672818, 1264622039642257451);
INSERT INTO "public"."sys_role_menu" VALUES (1304366891082596354, 1265476890672672818, 1264622039642257461);
INSERT INTO "public"."sys_role_menu" VALUES (1304366891506221057, 1265476890672672818, 1264622039642257351);
INSERT INTO "public"."sys_role_menu" VALUES (1304366891925651458, 1265476890672672818, 1264622039642257361);
INSERT INTO "public"."sys_role_menu" VALUES (1304366892345081858, 1265476890672672818, 1264622039642257371);
INSERT INTO "public"."sys_role_menu" VALUES (1304366892764512258, 1265476890672672818, 1264622039642257381);
INSERT INTO "public"."sys_role_menu" VALUES (1304366893183942658, 1265476890672672818, 1264622039642257391);
INSERT INTO "public"."sys_role_menu" VALUES (1304366893607567361, 1265476890672672818, 1264622039642257401);
INSERT INTO "public"."sys_role_menu" VALUES (1304366894031192065, 1265476890672672818, 1264622039642257491);
INSERT INTO "public"."sys_role_menu" VALUES (1304366894446428162, 1265476890672672818, 1264622039642257501);
INSERT INTO "public"."sys_role_menu" VALUES (1304366894865858562, 1265476890672672818, 1264622039642257511);
INSERT INTO "public"."sys_role_menu" VALUES (1304366895285288961, 1265476890672672818, 1264622039642255591);
INSERT INTO "public"."sys_role_menu" VALUES (1304366895708913665, 1265476890672672818, 1264622039642257061);
INSERT INTO "public"."sys_role_menu" VALUES (1304366896132538369, 1265476890672672818, 1264622039642257462);
INSERT INTO "public"."sys_role_menu" VALUES (1304366896556163074, 1265476890672672818, 1264622039642256912);
INSERT INTO "public"."sys_role_menu" VALUES (1304366896979787777, 1265476890672672818, 1264622039642255421);
INSERT INTO "public"."sys_role_menu" VALUES (1304366897399218178, 1265476890672672818, 1264622039642257022);
INSERT INTO "public"."sys_role_menu" VALUES (1304366897827037185, 1265476890672672818, 1264622039642256821);
INSERT INTO "public"."sys_role_menu" VALUES (1304366898242273282, 1265476890672672818, 1264622039642257311);
INSERT INTO "public"."sys_role_menu" VALUES (1304366898670092290, 1265476890672672818, 1264622039642257312);
INSERT INTO "public"."sys_role_menu" VALUES (1304366899089522690, 1265476890672672818, 1264622039642257313);
INSERT INTO "public"."sys_role_menu" VALUES (1304366899508953089, 1265476890672672818, 1264622039642257314);
INSERT INTO "public"."sys_role_menu" VALUES (1304366899932577793, 1265476890672672818, 1264622039642257522);
INSERT INTO "public"."sys_role_menu" VALUES (1304366900352008193, 1265476890672672818, 1264622039642257523);
INSERT INTO "public"."sys_role_menu" VALUES (1304366900771438594, 1265476890672672818, 1264622039642257524);
INSERT INTO "public"."sys_role_menu" VALUES (1304366901190868994, 1265476890672672818, 1264622039642257525);
INSERT INTO "public"."sys_role_menu" VALUES (1304366901610299394, 1265476890672672818, 1264622039642257531);
INSERT INTO "public"."sys_role_menu" VALUES (1304366902033924097, 1265476890672672818, 1264622039642257532);
INSERT INTO "public"."sys_role_menu" VALUES (1307864773769273346, 1265476890672672819, 1264622039642256431);
INSERT INTO "public"."sys_role_menu" VALUES (1307864774197092353, 1265476890672672819, 1264622039642256421);
INSERT INTO "public"."sys_role_menu" VALUES (1307864774624911362, 1265476890672672819, 1264622039642256441);
INSERT INTO "public"."sys_role_menu" VALUES (1307864775048536065, 1265476890672672819, 1264622039642256451);
INSERT INTO "public"."sys_role_menu" VALUES (1307864775467966465, 1265476890672672819, 1264622039642256461);
INSERT INTO "public"."sys_role_menu" VALUES (1307864775887396866, 1265476890672672819, 1264622039642256471);
INSERT INTO "public"."sys_role_menu" VALUES (1307864776311021570, 1265476890672672819, 1264622039642256481);
INSERT INTO "public"."sys_role_menu" VALUES (1307864776730451969, 1265476890672672819, 1264622039642256491);
INSERT INTO "public"."sys_role_menu" VALUES (1307864777154076673, 1265476890672672819, 1264622039642256501);
INSERT INTO "public"."sys_role_menu" VALUES (1307864777573507074, 1265476890672672819, 1264622039642256511);
INSERT INTO "public"."sys_role_menu" VALUES (1307864778005520386, 1265476890672672819, 1264622039642255421);
INSERT INTO "public"."sys_role_menu" VALUES (1307864778424950785, 1265476890672672819, 1264622039642257321);
INSERT INTO "public"."sys_role_menu" VALUES (1307864778840186881, 1265476890672672819, 1264622039642257331);
INSERT INTO "public"."sys_role_menu" VALUES (1307864779263811585, 1265476890672672819, 1264622039642257021);
INSERT INTO "public"."sys_role_menu" VALUES (1307864779683241986, 1265476890672672819, 1264622039642257011);
INSERT INTO "public"."sys_role_menu" VALUES (1307864780106866689, 1265476890672672819, 1264622039642256831);
INSERT INTO "public"."sys_role_menu" VALUES (1307864780530491393, 1265476890672672819, 1264622039642257061);
INSERT INTO "public"."sys_role_menu" VALUES (1307864780945727489, 1265476890672672819, 1264622039642257501);
INSERT INTO "public"."sys_role_menu" VALUES (1307864781369352193, 1265476890672672819, 1264622039642257491);
INSERT INTO "public"."sys_role_menu" VALUES (1307864781792976897, 1265476890672672819, 1264622039642257511);
INSERT INTO "public"."sys_role_menu" VALUES (1307864782216601602, 1265476890672672819, 1264622039642257271);
INSERT INTO "public"."sys_role_menu" VALUES (1307864782631837697, 1265476890672672819, 1264622039642257261);
INSERT INTO "public"."sys_role_menu" VALUES (1307864783063851009, 1265476890672672819, 1264622039642257301);
INSERT INTO "public"."sys_role_menu" VALUES (1307864783483281410, 1265476890672672819, 1264622039642257471);
INSERT INTO "public"."sys_role_menu" VALUES (1307864783902711809, 1265476890672672819, 1264622039642257341);
INSERT INTO "public"."sys_role_menu" VALUES (1307864784322142210, 1265476890672672819, 1264622039642257481);
INSERT INTO "public"."sys_role_menu" VALUES (1307864784745766913, 1265476890672672819, 1264622039642257411);
INSERT INTO "public"."sys_role_menu" VALUES (1307864785169391618, 1265476890672672819, 1264622039642257431);
INSERT INTO "public"."sys_role_menu" VALUES (1307864785588822018, 1265476890672672819, 1264622039642257421);
INSERT INTO "public"."sys_role_menu" VALUES (1307864786012446722, 1265476890672672819, 1264622039642257441);
INSERT INTO "public"."sys_role_menu" VALUES (1307864786436071426, 1265476890672672819, 1264622039642257451);
INSERT INTO "public"."sys_role_menu" VALUES (1307864786859696130, 1265476890672672819, 1264622039642257461);
INSERT INTO "public"."sys_role_menu" VALUES (1307864787274932225, 1265476890672672819, 1264622039642257351);
INSERT INTO "public"."sys_role_menu" VALUES (1307864787702751233, 1265476890672672819, 1264622039642257361);
INSERT INTO "public"."sys_role_menu" VALUES (1307864788113793026, 1265476890672672819, 1264622039642257371);
INSERT INTO "public"."sys_role_menu" VALUES (1307864788541612034, 1265476890672672819, 1264622039642257381);
INSERT INTO "public"."sys_role_menu" VALUES (1307864788961042433, 1265476890672672819, 1264622039642257391);
INSERT INTO "public"."sys_role_menu" VALUES (1307864789384667138, 1265476890672672819, 1264622039642257401);
INSERT INTO "public"."sys_role_menu" VALUES (1307864789808291841, 1265476890672672819, 1264622039642257462);
INSERT INTO "public"."sys_role_menu" VALUES (1307864790227722241, 1265476890672672819, 1264622039642257031);
INSERT INTO "public"."sys_role_menu" VALUES (1307864790659735554, 1265476890672672819, 1264622039642256912);
INSERT INTO "public"."sys_role_menu" VALUES (1307864791079165953, 1265476890672672819, 1264622039642257022);
INSERT INTO "public"."sys_role_menu" VALUES (1307864791494402050, 1265476890672672819, 1264622039642257311);
INSERT INTO "public"."sys_role_menu" VALUES (1307864791913832450, 1265476890672672819, 1264622039642257312);
INSERT INTO "public"."sys_role_menu" VALUES (1307864792345845762, 1265476890672672819, 1264622039642257313);
INSERT INTO "public"."sys_role_menu" VALUES (1307864792769470465, 1265476890672672819, 1264622039642257314);
INSERT INTO "public"."sys_role_menu" VALUES (1307864793193095169, 1265476890672672819, 1264622039642257522);
INSERT INTO "public"."sys_role_menu" VALUES (1307864793612525570, 1265476890672672819, 1264622039642257523);
INSERT INTO "public"."sys_role_menu" VALUES (1307864794027761665, 1265476890672672819, 1264622039642257524);
INSERT INTO "public"."sys_role_menu" VALUES (1307864794459774978, 1265476890672672819, 1264622039642257525);
INSERT INTO "public"."sys_role_menu" VALUES (1307864794875011073, 1265476890672672819, 1264622039642257532);
INSERT INTO "public"."sys_role_menu" VALUES (1307864795307024385, 1265476890672672819, 1264622039642257531);
INSERT INTO "public"."sys_role_menu" VALUES (1307864795722260482, 1265476890672672819, 1264622039642256821);
INSERT INTO "public"."sys_role_menu" VALUES (1307864929906434049, 1265476890672672817, 1264622039642255311);
INSERT INTO "public"."sys_role_menu" VALUES (1307864930338447362, 1265476890672672817, 1264622039642255331);
INSERT INTO "public"."sys_role_menu" VALUES (1307864930753683457, 1265476890672672817, 1264622039642255321);
INSERT INTO "public"."sys_role_menu" VALUES (1307864931181502465, 1265476890672672817, 1264622039642255341);
INSERT INTO "public"."sys_role_menu" VALUES (1307864931596738561, 1265476890672672817, 1264622039642255351);
INSERT INTO "public"."sys_role_menu" VALUES (1307864932020363266, 1265476890672672817, 1264622039642255361);
INSERT INTO "public"."sys_role_menu" VALUES (1307864932439793666, 1265476890672672817, 1264622039642255371);
INSERT INTO "public"."sys_role_menu" VALUES (1307864932863418369, 1265476890672672817, 1264622039642255381);
INSERT INTO "public"."sys_role_menu" VALUES (1307864933287043073, 1265476890672672817, 1264622039642255391);
INSERT INTO "public"."sys_role_menu" VALUES (1307864933706473474, 1265476890672672817, 1264622039642255401);
INSERT INTO "public"."sys_role_menu" VALUES (1307864934130098177, 1265476890672672817, 1264622039642255411);
INSERT INTO "public"."sys_role_menu" VALUES (1307864934553722881, 1265476890672672817, 1264622039642255421);
INSERT INTO "public"."sys_role_menu" VALUES (1307864934973153281, 1265476890672672817, 1264622039642255431);
INSERT INTO "public"."sys_role_menu" VALUES (1307864935392583681, 1265476890672672817, 1264622039642255441);
INSERT INTO "public"."sys_role_menu" VALUES (1307864935820402689, 1265476890672672817, 1264622039642255451);
INSERT INTO "public"."sys_role_menu" VALUES (1307864936239833090, 1265476890672672817, 1264622039642255461);
INSERT INTO "public"."sys_role_menu" VALUES (1307864936663457793, 1265476890672672817, 1264622039642255471);
INSERT INTO "public"."sys_role_menu" VALUES (1307864937087082498, 1265476890672672817, 1264622039642255481);
INSERT INTO "public"."sys_role_menu" VALUES (1307864937506512898, 1265476890672672817, 1264622039642255491);
INSERT INTO "public"."sys_role_menu" VALUES (1307864937938526210, 1265476890672672817, 1264622039642255501);
INSERT INTO "public"."sys_role_menu" VALUES (1307864938357956610, 1265476890672672817, 1264622039642255511);
INSERT INTO "public"."sys_role_menu" VALUES (1307864938777387010, 1265476890672672817, 1264622039642255521);
INSERT INTO "public"."sys_role_menu" VALUES (1307864939201011713, 1265476890672672817, 1264622039642255531);
INSERT INTO "public"."sys_role_menu" VALUES (1307864939624636418, 1265476890672672817, 1264622039642255541);
INSERT INTO "public"."sys_role_menu" VALUES (1307864940044066817, 1265476890672672817, 1264622039642255551);
INSERT INTO "public"."sys_role_menu" VALUES (1307864940467691522, 1265476890672672817, 1264622039642255561);
INSERT INTO "public"."sys_role_menu" VALUES (1307864940933259265, 1265476890672672817, 1264622039642255571);
INSERT INTO "public"."sys_role_menu" VALUES (1307864941356883970, 1265476890672672817, 1264622039642255581);
INSERT INTO "public"."sys_role_menu" VALUES (1307864941776314369, 1265476890672672817, 1264622039642255591);
INSERT INTO "public"."sys_role_menu" VALUES (1307864942195744769, 1265476890672672817, 1264622039642255601);
INSERT INTO "public"."sys_role_menu" VALUES (1307864942619369473, 1265476890672672817, 1264622039642255621);
INSERT INTO "public"."sys_role_menu" VALUES (1307864943042994178, 1265476890672672817, 1264622039642255631);
INSERT INTO "public"."sys_role_menu" VALUES (1307864943462424577, 1265476890672672817, 1264622039642255641);
INSERT INTO "public"."sys_role_menu" VALUES (1307864943886049282, 1265476890672672817, 1264622039642255651);
INSERT INTO "public"."sys_role_menu" VALUES (1307864944309673986, 1265476890672672817, 1264622039642255661);
INSERT INTO "public"."sys_role_menu" VALUES (1307864944733298690, 1265476890672672817, 1264622039642255611);
INSERT INTO "public"."sys_role_menu" VALUES (1307864945156923393, 1265476890672672817, 1264622039642257321);
INSERT INTO "public"."sys_role_menu" VALUES (1307864945576353793, 1265476890672672817, 1264622039642257331);
INSERT INTO "public"."sys_role_menu" VALUES (1307864945999978497, 1265476890672672817, 1264622039642257471);
INSERT INTO "public"."sys_role_menu" VALUES (1307864946423603201, 1265476890672672817, 1264622039642257481);
INSERT INTO "public"."sys_role_menu" VALUES (1307864946847227905, 1265476890672672817, 1264622039642257341);
INSERT INTO "public"."sys_role_menu" VALUES (1307864947266658305, 1265476890672672817, 1264622039642257411);
INSERT INTO "public"."sys_role_menu" VALUES (1307864947681894402, 1265476890672672817, 1264622039642257421);
INSERT INTO "public"."sys_role_menu" VALUES (1307864948109713409, 1265476890672672817, 1264622039642257431);
INSERT INTO "public"."sys_role_menu" VALUES (1307864948529143810, 1265476890672672817, 1264622039642257441);
INSERT INTO "public"."sys_role_menu" VALUES (1307864948952768513, 1265476890672672817, 1264622039642257451);
INSERT INTO "public"."sys_role_menu" VALUES (1307864949380587522, 1265476890672672817, 1264622039642257461);
INSERT INTO "public"."sys_role_menu" VALUES (1307864949804212225, 1265476890672672817, 1264622039642257351);
INSERT INTO "public"."sys_role_menu" VALUES (1307864950223642626, 1265476890672672817, 1264622039642257361);
INSERT INTO "public"."sys_role_menu" VALUES (1307864950638878721, 1265476890672672817, 1264622039642257371);
INSERT INTO "public"."sys_role_menu" VALUES (1307864951066697729, 1265476890672672817, 1264622039642257381);
INSERT INTO "public"."sys_role_menu" VALUES (1307864951490322433, 1265476890672672817, 1264622039642257391);
INSERT INTO "public"."sys_role_menu" VALUES (1307864951913947137, 1265476890672672817, 1264622039642257401);
INSERT INTO "public"."sys_role_menu" VALUES (1307864952329183233, 1265476890672672817, 1264622039642257491);
INSERT INTO "public"."sys_role_menu" VALUES (1307864952757002241, 1265476890672672817, 1264622039642257501);
INSERT INTO "public"."sys_role_menu" VALUES (1307864953176432642, 1265476890672672817, 1264622039642257511);
INSERT INTO "public"."sys_role_menu" VALUES (1307864953600057346, 1265476890672672817, 1264622039642256831);
INSERT INTO "public"."sys_role_menu" VALUES (1307864954019487746, 1265476890672672817, 1264622039642257031);
INSERT INTO "public"."sys_role_menu" VALUES (1307864954447306754, 1265476890672672817, 1264622039642257021);
INSERT INTO "public"."sys_role_menu" VALUES (1307864954870931458, 1265476890672672817, 1264622039642257061);
INSERT INTO "public"."sys_role_menu" VALUES (1307864955290361857, 1265476890672672817, 1264622039642257261);
INSERT INTO "public"."sys_role_menu" VALUES (1307864955709792258, 1265476890672672817, 1264622039642257301);
INSERT INTO "public"."sys_role_menu" VALUES (1307864956133416962, 1265476890672672817, 1264622039642257271);
INSERT INTO "public"."sys_role_menu" VALUES (1307864956557041665, 1265476890672672817, 1264622039642257462);
INSERT INTO "public"."sys_role_menu" VALUES (1307864956976472066, 1265476890672672817, 1264622039642256912);
INSERT INTO "public"."sys_role_menu" VALUES (1307864957400096770, 1265476890672672817, 1264622039642255911);
INSERT INTO "public"."sys_role_menu" VALUES (1307864957861470210, 1265476890672672817, 1264622039642257522);
INSERT INTO "public"."sys_role_menu" VALUES (1307864958280900610, 1265476890672672817, 1264622039642257523);
INSERT INTO "public"."sys_role_menu" VALUES (1307864958704525314, 1265476890672672817, 1264622039642257524);
INSERT INTO "public"."sys_role_menu" VALUES (1307864959132344321, 1265476890672672817, 1264622039642257525);
INSERT INTO "public"."sys_role_menu" VALUES (1307864959555969026, 1265476890672672817, 1264622039642257532);
INSERT INTO "public"."sys_role_menu" VALUES (1307864959975399425, 1265476890672672817, 1264622039642257531);
INSERT INTO "public"."sys_role_menu" VALUES (1307864960399024129, 1265476890672672817, 1264622039642257311);
INSERT INTO "public"."sys_role_menu" VALUES (1307864960822648833, 1265476890672672817, 1264622039642257312);
INSERT INTO "public"."sys_role_menu" VALUES (1307864961242079233, 1265476890672672817, 1264622039642257313);
INSERT INTO "public"."sys_role_menu" VALUES (1307864961657315330, 1265476890672672817, 1264622039642257314);
INSERT INTO "public"."sys_role_menu" VALUES (1307864962085134337, 1265476890672672817, 1264622039642256821);
INSERT INTO "public"."sys_role_menu" VALUES (1307864962504564737, 1265476890672672817, 1264622039642257022);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_sms";
CREATE TABLE "public"."sys_sms" (
  "id" int8 NOT NULL,
  "phone_numbers" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "validate_code" varchar(255) COLLATE "pg_catalog"."default",
  "template_code" varchar(255) COLLATE "pg_catalog"."default",
  "biz_id" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "source" int2 NOT NULL,
  "invalid_time" timestamp(6),
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_sms"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_sms"."phone_numbers" IS '手机号';
COMMENT ON COLUMN "public"."sys_sms"."validate_code" IS '短信验证码';
COMMENT ON COLUMN "public"."sys_sms"."template_code" IS '短信模板ID';
COMMENT ON COLUMN "public"."sys_sms"."biz_id" IS '回执id，可根据该id查询具体的发送状态';
COMMENT ON COLUMN "public"."sys_sms"."status" IS '发送状态（字典 0 未发送，1 发送成功，2 发送失败，3 失效）';
COMMENT ON COLUMN "public"."sys_sms"."source" IS '来源（字典 1 app， 2 pc， 3 其他）';
COMMENT ON COLUMN "public"."sys_sms"."invalid_time" IS '失效时间';
COMMENT ON COLUMN "public"."sys_sms"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_sms"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_sms"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_sms"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_sms" IS '短信信息发送表';

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_tenant_info";
CREATE TABLE "public"."sys_tenant_info" (
  "id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "db_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_tenant_info"."id" IS '主键id';
COMMENT ON COLUMN "public"."sys_tenant_info"."name" IS '租户名称';
COMMENT ON COLUMN "public"."sys_tenant_info"."code" IS '租户的编码';
COMMENT ON COLUMN "public"."sys_tenant_info"."db_name" IS '关联的数据库名称';
COMMENT ON COLUMN "public"."sys_tenant_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_tenant_info"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_tenant_info"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_tenant_info"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_tenant_info" IS '租户表';

-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------
INSERT INTO "public"."sys_tenant_info" VALUES (1301724123547000811, '总公司（管理单位）', 'default', 'master', '2020-09-04 11:29:51', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Table structure for sys_timers
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_timers";
CREATE TABLE "public"."sys_timers" (
  "id" int8 NOT NULL,
  "timer_name" varchar(255) COLLATE "pg_catalog"."default",
  "action_class" varchar(255) COLLATE "pg_catalog"."default",
  "cron" varchar(255) COLLATE "pg_catalog"."default",
  "job_status" int2,
  "remark" varchar(1000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_timers"."id" IS '定时器id';
COMMENT ON COLUMN "public"."sys_timers"."timer_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_timers"."action_class" IS '执行任务的class的类名（实现了TimerTaskRunner接口的类的全称）';
COMMENT ON COLUMN "public"."sys_timers"."cron" IS '定时任务表达式';
COMMENT ON COLUMN "public"."sys_timers"."job_status" IS '状态（字典 1运行  2停止）';
COMMENT ON COLUMN "public"."sys_timers"."remark" IS '备注信息';
COMMENT ON COLUMN "public"."sys_timers"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_timers"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_timers"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_timers"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_timers" IS '定时任务';

-- ----------------------------
-- Records of sys_timers
-- ----------------------------
INSERT INTO "public"."sys_timers" VALUES (1288760324837851137, '定时同步缓存常量', 'vip.xiaonuo.sys.modular.timer.tasks.RefreshConstantsTaskRunner', '0 0/1 * * * ?', 1, '定时同步sys_config表的数据到缓存常量中', '2020-07-30 16:56:20', 1265476890672672808, '2020-07-30 16:58:52', 1265476890672672808);
INSERT INTO "public"."sys_timers" VALUES (1304971718170832898, '定时打印一句话', 'vip.xiaonuo.sys.modular.timer.tasks.SystemOutTaskRunner', '0 0 * * * ? *', 2, '定时打印一句话', '2020-09-13 10:34:37', 1265476890672672808, '2020-09-23 20:37:48', 1265476890672672808);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "id" int8 NOT NULL,
  "account" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" int8,
  "birthday" date,
  "sex" int2 NOT NULL,
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "phone" varchar(50) COLLATE "pg_catalog"."default",
  "tel" varchar(50) COLLATE "pg_catalog"."default",
  "last_login_ip" varchar(100) COLLATE "pg_catalog"."default",
  "last_login_time" timestamp(6),
  "admin_type" int2 NOT NULL,
  "status" int2 NOT NULL,
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."sys_user"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_user"."account" IS '账号';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '昵称';
COMMENT ON COLUMN "public"."sys_user"."name" IS '姓名';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像';
COMMENT ON COLUMN "public"."sys_user"."birthday" IS '生日';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '性别(字典 1男 2女 3未知)';
COMMENT ON COLUMN "public"."sys_user"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_user"."phone" IS '手机';
COMMENT ON COLUMN "public"."sys_user"."tel" IS '电话';
COMMENT ON COLUMN "public"."sys_user"."last_login_ip" IS '最后登陆IP';
COMMENT ON COLUMN "public"."sys_user"."last_login_time" IS '最后登陆时间';
COMMENT ON COLUMN "public"."sys_user"."admin_type" IS '管理员类型（0超级管理员 1非管理员）';
COMMENT ON COLUMN "public"."sys_user"."status" IS '状态（字典 0正常 1冻结 2删除）';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."create_user" IS '创建人';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."update_user" IS '更新人';
COMMENT ON TABLE "public"."sys_user" IS '系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1265476890672672808, 'superAdmin', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '超级管理员', '超级管理员', NULL, '2020-03-18', 1, 'superAdmin@qq.com', '15228937093', '1234567890', '127.0.0.1', '2021-01-28 00:42:28', 1, 0, '2020-05-29 16:39:28', -1, '2021-01-28 00:42:28', -1);
INSERT INTO "public"."sys_user" VALUES (1275735541155614721, 'yubaoshan', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '俞宝山', '俞宝山', NULL, '1992-10-03', 1, 'await183@qq.com', '18200001102', '', '127.0.0.1', '2021-01-28 00:38:34', 2, 0, '2020-06-24 18:20:30', 1265476890672672808, '2021-01-28 00:38:34', -1);
INSERT INTO "public"."sys_user" VALUES (1280700700074041345, 'laoyu', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', 'laoyu', '老俞', NULL, '2020-07-01', 1, NULL, '18200001103', NULL, '127.0.0.1', '2020-09-23 10:17:27', 2, 0, '2020-07-08 11:10:16', 1265476890672672808, '2020-09-23 10:17:27', -1);
INSERT INTO "public"."sys_user" VALUES (1280709549107552257, 'xuyuxiang', '$2a$09$PiCiFNspSlTBE9CakVs8ZOqx0xa03X9wOm01gMasHch4929TpEWCC', '就是那个锅', '徐玉祥', NULL, '2020-07-01', 1, NULL, '18200001100', NULL, '127.0.0.1', '2020-09-23 10:16:54', 2, 0, '2020-07-08 11:45:26', 1265476890672672808, '2020-09-23 10:16:54', -1);

-- ----------------------------
-- Table structure for sys_user_data_scope
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_data_scope";
CREATE TABLE "public"."sys_user_data_scope" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "org_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_data_scope"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_user_data_scope"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_data_scope"."org_id" IS '机构id';
COMMENT ON TABLE "public"."sys_user_data_scope" IS '系统用户数据范围表';

-- ----------------------------
-- Records of sys_user_data_scope
-- ----------------------------
INSERT INTO "public"."sys_user_data_scope" VALUES (1277459951742840834, 1266277099455635457, 1265476890672672770);
INSERT INTO "public"."sys_user_data_scope" VALUES (1277459952577507330, 1266277099455635457, 1265476890672672773);
INSERT INTO "public"."sys_user_data_scope" VALUES (1277459953424756737, 1266277099455635457, 1265476890672672775);
INSERT INTO "public"."sys_user_data_scope" VALUES (1277459954267811841, 1266277099455635457, 1265476890672672774);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043527249922, 1265476890672672809, 1265476890651701250);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043535638529, 1265476890672672809, 1265476890672672769);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043535638530, 1265476890672672809, 1265476890672672771);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043535638531, 1265476890672672809, 1265476890672672772);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043544027137, 1265476890672672809, 1265476890672672770);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043544027138, 1265476890672672809, 1265476890672672773);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043552415746, 1265476890672672809, 1265476890672672775);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712043552415747, 1265476890672672809, 1265476890672672774);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712071570366466, 1275735541155614721, 1265476890672672769);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712071570366467, 1275735541155614721, 1265476890672672771);
INSERT INTO "public"."sys_user_data_scope" VALUES (1280712071578755074, 1275735541155614721, 1265476890672672772);
INSERT INTO "public"."sys_user_data_scope" VALUES (1285129189085609986, 1280700700074041345, 1265476890672672770);
INSERT INTO "public"."sys_user_data_scope" VALUES (1285129189093998594, 1280700700074041345, 1265476890672672773);
INSERT INTO "public"."sys_user_data_scope" VALUES (1285129189102387201, 1280700700074041345, 1265476890672672775);
INSERT INTO "public"."sys_user_data_scope" VALUES (1285129189106581505, 1280700700074041345, 1265476890672672774);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_user_role" IS '系统用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (1283596900713574402, 1275735541155614721, 1265476890672672817);
INSERT INTO "public"."sys_user_role" VALUES (1283596920384860162, 1280700700074041345, 1265476890672672819);
INSERT INTO "public"."sys_user_role" VALUES (1283596949627547649, 1280709549107552257, 1265476890672672818);

-- ----------------------------
-- Table structure for sys_vis_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_vis_log";
CREATE TABLE "public"."sys_vis_log" (
  "id" int8 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "success" char(1) COLLATE "pg_catalog"."default",
  "message" text COLLATE "pg_catalog"."default",
  "ip" varchar(255) COLLATE "pg_catalog"."default",
  "location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(255) COLLATE "pg_catalog"."default",
  "os" varchar(255) COLLATE "pg_catalog"."default",
  "vis_type" int2 NOT NULL,
  "vis_time" timestamp(6),
  "account" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_vis_log"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_vis_log"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_vis_log"."success" IS '是否执行成功（Y-是，N-否）';
COMMENT ON COLUMN "public"."sys_vis_log"."message" IS '具体消息';
COMMENT ON COLUMN "public"."sys_vis_log"."ip" IS 'ip';
COMMENT ON COLUMN "public"."sys_vis_log"."location" IS '地址';
COMMENT ON COLUMN "public"."sys_vis_log"."browser" IS '浏览器';
COMMENT ON COLUMN "public"."sys_vis_log"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_vis_log"."vis_type" IS '操作类型（字典 1登入 2登出）';
COMMENT ON COLUMN "public"."sys_vis_log"."vis_time" IS '访问时间';
COMMENT ON COLUMN "public"."sys_vis_log"."account" IS '访问账号';
COMMENT ON TABLE "public"."sys_vis_log" IS '系统访问日志表';

-- ----------------------------
-- Records of sys_vis_log
-- ----------------------------

-- ----------------------------
-- Table structure for xn_code_gen_test
-- ----------------------------
DROP TABLE IF EXISTS "public"."xn_code_gen_test";
CREATE TABLE "public"."xn_code_gen_test" (
  "id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "age" int4,
  "interest" varchar(255) COLLATE "pg_catalog"."default",
  "switchTest" varchar(255) COLLATE "pg_catalog"."default",
  "birthday" date,
  "whether" varchar(255) COLLATE "pg_catalog"."default",
  "explain_test" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "create_user" int8,
  "update_time" timestamp(6),
  "update_user" int8
)
;
COMMENT ON COLUMN "public"."xn_code_gen_test"."id" IS '主键';
COMMENT ON COLUMN "public"."xn_code_gen_test"."name" IS '姓名';
COMMENT ON COLUMN "public"."xn_code_gen_test"."age" IS '年龄';
COMMENT ON COLUMN "public"."xn_code_gen_test"."interest" IS '兴趣';
COMMENT ON COLUMN "public"."xn_code_gen_test"."switchTest" IS '开关';
COMMENT ON COLUMN "public"."xn_code_gen_test"."birthday" IS '日期';
COMMENT ON COLUMN "public"."xn_code_gen_test"."whether" IS '是否已婚';
COMMENT ON COLUMN "public"."xn_code_gen_test"."explain_test" IS '简介';
COMMENT ON COLUMN "public"."xn_code_gen_test"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."xn_code_gen_test" IS '测试';

-- ----------------------------
-- Records of xn_code_gen_test
-- ----------------------------
INSERT INTO "public"."xn_code_gen_test" VALUES (1362314704808611841, '俞宝山', 28, '["2","3","1"]', 'Y', '2021-02-18', 'Y', '测试简介', '2021-02-18 16:15:11', 1265476890672672808, NULL, NULL);
INSERT INTO "public"."xn_code_gen_test" VALUES (1362314845863055361, '徐玉祥', 26, '["3","2"]', 'Y', '2021-02-18', 'Y', '玉祥也测试', '2021-02-18 16:15:44', 1265476890672672808, '2021-02-18 16:16:24', 1265476890672672808);
INSERT INTO "public"."xn_code_gen_test" VALUES (1362314976637259777, '董夏雨', 27, '["3"]', 'N', '2021-02-18', 'Y', '都测试', '2021-02-18 16:16:16', 1265476890672672808, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table act_de_databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."act_de_databasechangeloglock" ADD CONSTRAINT "act_de_databasechangeloglock_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table act_de_model
-- ----------------------------
CREATE INDEX "idx_proc_mod_created" ON "public"."act_de_model" USING btree (
  "created_by" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_de_model
-- ----------------------------
ALTER TABLE "public"."act_de_model" ADD CONSTRAINT "act_de_model_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_de_model_history
-- ----------------------------
CREATE INDEX "idx_proc_mod_history_proc" ON "public"."act_de_model_history" USING btree (
  "model_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_de_model_history
-- ----------------------------
ALTER TABLE "public"."act_de_model_history" ADD CONSTRAINT "act_de_model_history_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table act_de_model_relation
-- ----------------------------
CREATE INDEX "fk_relation_child" ON "public"."act_de_model_relation" USING btree (
  "model_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "fk_relation_parent" ON "public"."act_de_model_relation" USING btree (
  "parent_model_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "public"."act_de_model_relation" ADD CONSTRAINT "act_de_model_relation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table act_evt_log
-- ----------------------------
ALTER TABLE "public"."act_evt_log" ADD CONSTRAINT "act_evt_log_pkey" PRIMARY KEY ("LOG_NR_");

-- ----------------------------
-- Indexes structure for table act_ge_bytearray
-- ----------------------------
CREATE INDEX "ACT_FK_BYTEARR_DEPL" ON "public"."act_ge_bytearray" USING btree (
  "DEPLOYMENT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "public"."act_ge_bytearray" ADD CONSTRAINT "act_ge_bytearray_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_ge_property
-- ----------------------------
ALTER TABLE "public"."act_ge_property" ADD CONSTRAINT "act_ge_property_pkey" PRIMARY KEY ("NAME_");

-- ----------------------------
-- Indexes structure for table act_hi_actinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_ACT_INST_END" ON "public"."act_hi_actinst" USING btree (
  "END_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_EXEC" ON "public"."act_hi_actinst" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "ACT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_PROCINST" ON "public"."act_hi_actinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "ACT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_ACT_INST_START" ON "public"."act_hi_actinst" USING btree (
  "START_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_actinst
-- ----------------------------
ALTER TABLE "public"."act_hi_actinst" ADD CONSTRAINT "act_hi_actinst_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_attachment
-- ----------------------------
ALTER TABLE "public"."act_hi_attachment" ADD CONSTRAINT "act_hi_attachment_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_comment
-- ----------------------------
ALTER TABLE "public"."act_hi_comment" ADD CONSTRAINT "act_hi_comment_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_detail
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_DETAIL_ACT_INST" ON "public"."act_hi_detail" USING btree (
  "ACT_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_DETAIL_NAME" ON "public"."act_hi_detail" USING btree (
  "NAME_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_DETAIL_PROC_INST" ON "public"."act_hi_detail" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_DETAIL_TASK_ID" ON "public"."act_hi_detail" USING btree (
  "TASK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_DETAIL_TIME" ON "public"."act_hi_detail" USING btree (
  "TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_detail
-- ----------------------------
ALTER TABLE "public"."act_hi_detail" ADD CONSTRAINT "act_hi_detail_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_entitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_ENT_LNK_SCOPE" ON "public"."act_hi_entitylink" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "LINK_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_ENT_LNK_SCOPE_DEF" ON "public"."act_hi_entitylink" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "LINK_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_entitylink
-- ----------------------------
ALTER TABLE "public"."act_hi_entitylink" ADD CONSTRAINT "act_hi_entitylink_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_identitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_PROCINST" ON "public"."act_hi_identitylink" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SCOPE" ON "public"."act_hi_identitylink" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SCOPE_DEF" ON "public"."act_hi_identitylink" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_SUB_SCOPE" ON "public"."act_hi_identitylink" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_TASK" ON "public"."act_hi_identitylink" USING btree (
  "TASK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_IDENT_LNK_USER" ON "public"."act_hi_identitylink" USING btree (
  "USER_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_identitylink
-- ----------------------------
ALTER TABLE "public"."act_hi_identitylink" ADD CONSTRAINT "act_hi_identitylink_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_procinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_PRO_INST_END" ON "public"."act_hi_procinst" USING btree (
  "END_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_PRO_I_BUSKEY" ON "public"."act_hi_procinst" USING btree (
  "BUSINESS_KEY_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PROC_INST_ID_" ON "public"."act_hi_procinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_procinst
-- ----------------------------
ALTER TABLE "public"."act_hi_procinst" ADD CONSTRAINT "act_hi_procinst_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_taskinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_TASK_INST_PROCINST" ON "public"."act_hi_taskinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_TASK_SCOPE" ON "public"."act_hi_taskinst" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_TASK_SCOPE_DEF" ON "public"."act_hi_taskinst" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_TASK_SUB_SCOPE" ON "public"."act_hi_taskinst" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_taskinst
-- ----------------------------
ALTER TABLE "public"."act_hi_taskinst" ADD CONSTRAINT "act_hi_taskinst_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_hi_tsk_log
-- ----------------------------
ALTER TABLE "public"."act_hi_tsk_log" ADD CONSTRAINT "act_hi_tsk_log_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_hi_varinst
-- ----------------------------
CREATE INDEX "ACT_IDX_HI_PROCVAR_EXE" ON "public"."act_hi_varinst" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_NAME_TYPE" ON "public"."act_hi_varinst" USING btree (
  "NAME_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "VAR_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_PROC_INST" ON "public"."act_hi_varinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_PROCVAR_TASK_ID" ON "public"."act_hi_varinst" USING btree (
  "TASK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_VAR_SCOPE_ID_TYPE" ON "public"."act_hi_varinst" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_HI_VAR_SUB_ID_TYPE" ON "public"."act_hi_varinst" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_hi_varinst
-- ----------------------------
ALTER TABLE "public"."act_hi_varinst" ADD CONSTRAINT "act_hi_varinst_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_bytearray
-- ----------------------------
ALTER TABLE "public"."act_id_bytearray" ADD CONSTRAINT "act_id_bytearray_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_group
-- ----------------------------
ALTER TABLE "public"."act_id_group" ADD CONSTRAINT "act_id_group_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_info
-- ----------------------------
ALTER TABLE "public"."act_id_info" ADD CONSTRAINT "act_id_info_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_id_membership
-- ----------------------------
CREATE INDEX "ACT_FK_MEMB_GROUP" ON "public"."act_id_membership" USING btree (
  "GROUP_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_id_membership
-- ----------------------------
ALTER TABLE "public"."act_id_membership" ADD CONSTRAINT "act_id_membership_pkey" PRIMARY KEY ("USER_ID_", "GROUP_ID_");

-- ----------------------------
-- Indexes structure for table act_id_priv
-- ----------------------------
CREATE INDEX "ACT_UNIQ_PRIV_NAME" ON "public"."act_id_priv" USING btree (
  "NAME_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_id_priv
-- ----------------------------
ALTER TABLE "public"."act_id_priv" ADD CONSTRAINT "act_id_priv_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_id_priv_mapping
-- ----------------------------
CREATE INDEX "ACT_FK_PRIV_MAPPING" ON "public"."act_id_priv_mapping" USING btree (
  "PRIV_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_PRIV_GROUP" ON "public"."act_id_priv_mapping" USING btree (
  "GROUP_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_PRIV_USER" ON "public"."act_id_priv_mapping" USING btree (
  "USER_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "public"."act_id_priv_mapping" ADD CONSTRAINT "act_id_priv_mapping_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_property
-- ----------------------------
ALTER TABLE "public"."act_id_property" ADD CONSTRAINT "act_id_property_pkey" PRIMARY KEY ("NAME_");

-- ----------------------------
-- Primary Key structure for table act_id_token
-- ----------------------------
ALTER TABLE "public"."act_id_token" ADD CONSTRAINT "act_id_token_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_id_user
-- ----------------------------
ALTER TABLE "public"."act_id_user" ADD CONSTRAINT "act_id_user_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_procdef_info
-- ----------------------------
CREATE INDEX "ACT_FK_INFO_JSON_BA" ON "public"."act_procdef_info" USING btree (
  "INFO_JSON_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_INFO_PROCDEF" ON "public"."act_procdef_info" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_UNIQ_INFO_PROCDEF" ON "public"."act_procdef_info" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "public"."act_procdef_info" ADD CONSTRAINT "act_procdef_info_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_re_deployment
-- ----------------------------
ALTER TABLE "public"."act_re_deployment" ADD CONSTRAINT "act_re_deployment_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_re_model
-- ----------------------------
CREATE INDEX "ACT_FK_MODEL_DEPLOYMENT" ON "public"."act_re_model" USING btree (
  "DEPLOYMENT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_MODEL_SOURCE" ON "public"."act_re_model" USING btree (
  "EDITOR_SOURCE_VALUE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_MODEL_SOURCE_EXTRA" ON "public"."act_re_model" USING btree (
  "EDITOR_SOURCE_EXTRA_VALUE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_re_model
-- ----------------------------
ALTER TABLE "public"."act_re_model" ADD CONSTRAINT "act_re_model_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_re_procdef
-- ----------------------------
CREATE INDEX "ACT_UNIQ_PROCDEF" ON "public"."act_re_procdef" USING btree (
  "KEY_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "VERSION_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "DERIVED_VERSION_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "TENANT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_re_procdef
-- ----------------------------
ALTER TABLE "public"."act_re_procdef" ADD CONSTRAINT "act_re_procdef_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_actinst
-- ----------------------------
CREATE INDEX "ACT_IDX_RU_ACTI_END" ON "public"."act_ru_actinst" USING btree (
  "END_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_ACTI_EXEC" ON "public"."act_ru_actinst" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_ACTI_EXEC_ACT" ON "public"."act_ru_actinst" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "ACT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_ACTI_PROC" ON "public"."act_ru_actinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_ACTI_PROC_ACT" ON "public"."act_ru_actinst" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "ACT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_ACTI_START" ON "public"."act_ru_actinst" USING btree (
  "START_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_actinst
-- ----------------------------
ALTER TABLE "public"."act_ru_actinst" ADD CONSTRAINT "act_ru_actinst_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_deadletter_job
-- ----------------------------
CREATE INDEX "ACT_FK_DEADLETTER_JOB_EXECUTION" ON "public"."act_ru_deadletter_job" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE" ON "public"."act_ru_deadletter_job" USING btree (
  "PROCESS_INSTANCE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_DEADLETTER_JOB_PROC_DEF" ON "public"."act_ru_deadletter_job" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID" ON "public"."act_ru_deadletter_job" USING btree (
  "CUSTOM_VALUES_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID" ON "public"."act_ru_deadletter_job" USING btree (
  "EXCEPTION_STACK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_DJOB_SCOPE" ON "public"."act_ru_deadletter_job" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_DJOB_SCOPE_DEF" ON "public"."act_ru_deadletter_job" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_DJOB_SUB_SCOPE" ON "public"."act_ru_deadletter_job" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "act_ru_deadletter_job_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_entitylink
-- ----------------------------
CREATE INDEX "ACT_IDX_ENT_LNK_SCOPE" ON "public"."act_ru_entitylink" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "LINK_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_ENT_LNK_SCOPE_DEF" ON "public"."act_ru_entitylink" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "LINK_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_entitylink
-- ----------------------------
ALTER TABLE "public"."act_ru_entitylink" ADD CONSTRAINT "act_ru_entitylink_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_event_subscr
-- ----------------------------
CREATE INDEX "ACT_FK_EVENT_EXEC" ON "public"."act_ru_event_subscr" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_EVENT_SUBSCR_CONFIG_" ON "public"."act_ru_event_subscr" USING btree (
  "CONFIGURATION_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "public"."act_ru_event_subscr" ADD CONSTRAINT "act_ru_event_subscr_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_execution
-- ----------------------------
CREATE INDEX "ACT_FK_EXE_PARENT" ON "public"."act_ru_execution" USING btree (
  "PARENT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_EXE_PROCDEF" ON "public"."act_ru_execution" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_EXE_PROCINST" ON "public"."act_ru_execution" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_EXE_SUPER" ON "public"."act_ru_execution" USING btree (
  "SUPER_EXEC_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDC_EXEC_ROOT" ON "public"."act_ru_execution" USING btree (
  "ROOT_PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_EXEC_BUSKEY" ON "public"."act_ru_execution" USING btree (
  "BUSINESS_KEY_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "public"."act_ru_execution" ADD CONSTRAINT "act_ru_execution_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table act_ru_history_job
-- ----------------------------
ALTER TABLE "public"."act_ru_history_job" ADD CONSTRAINT "act_ru_history_job_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_identitylink
-- ----------------------------
CREATE INDEX "ACT_FK_IDL_PROCINST" ON "public"."act_ru_identitylink" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_TSKASS_TASK" ON "public"."act_ru_identitylink" USING btree (
  "TASK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_ATHRZ_PROCEDEF" ON "public"."act_ru_identitylink" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_IDENT_LNK_GROUP" ON "public"."act_ru_identitylink" USING btree (
  "GROUP_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_IDENT_LNK_SCOPE" ON "public"."act_ru_identitylink" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_IDENT_LNK_SCOPE_DEF" ON "public"."act_ru_identitylink" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_IDENT_LNK_SUB_SCOPE" ON "public"."act_ru_identitylink" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_IDENT_LNK_USER" ON "public"."act_ru_identitylink" USING btree (
  "USER_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "public"."act_ru_identitylink" ADD CONSTRAINT "act_ru_identitylink_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_job
-- ----------------------------
CREATE INDEX "ACT_FK_JOB_EXECUTION" ON "public"."act_ru_job" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_JOB_PROCESS_INSTANCE" ON "public"."act_ru_job" USING btree (
  "PROCESS_INSTANCE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_JOB_PROC_DEF" ON "public"."act_ru_job" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_JOB_CUSTOM_VALUES_ID" ON "public"."act_ru_job" USING btree (
  "CUSTOM_VALUES_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_JOB_EXCEPTION_STACK_ID" ON "public"."act_ru_job" USING btree (
  "EXCEPTION_STACK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_JOB_SCOPE" ON "public"."act_ru_job" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_JOB_SCOPE_DEF" ON "public"."act_ru_job" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_JOB_SUB_SCOPE" ON "public"."act_ru_job" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_job
-- ----------------------------
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "act_ru_job_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_suspended_job
-- ----------------------------
CREATE INDEX "ACT_FK_SUSPENDED_JOB_EXECUTION" ON "public"."act_ru_suspended_job" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE" ON "public"."act_ru_suspended_job" USING btree (
  "PROCESS_INSTANCE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_SUSPENDED_JOB_PROC_DEF" ON "public"."act_ru_suspended_job" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_SJOB_SCOPE" ON "public"."act_ru_suspended_job" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_SJOB_SCOPE_DEF" ON "public"."act_ru_suspended_job" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_SJOB_SUB_SCOPE" ON "public"."act_ru_suspended_job" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID" ON "public"."act_ru_suspended_job" USING btree (
  "CUSTOM_VALUES_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID" ON "public"."act_ru_suspended_job" USING btree (
  "EXCEPTION_STACK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "act_ru_suspended_job_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_task
-- ----------------------------
CREATE INDEX "ACT_FK_TASK_EXE" ON "public"."act_ru_task" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_TASK_PROCDEF" ON "public"."act_ru_task" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_TASK_PROCINST" ON "public"."act_ru_task" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TASK_CREATE" ON "public"."act_ru_task" USING btree (
  "CREATE_TIME_" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TASK_SCOPE" ON "public"."act_ru_task" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TASK_SCOPE_DEF" ON "public"."act_ru_task" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TASK_SUB_SCOPE" ON "public"."act_ru_task" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_task
-- ----------------------------
ALTER TABLE "public"."act_ru_task" ADD CONSTRAINT "act_ru_task_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_timer_job
-- ----------------------------
CREATE INDEX "ACT_FK_TIMER_JOB_EXECUTION" ON "public"."act_ru_timer_job" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_TIMER_JOB_PROCESS_INSTANCE" ON "public"."act_ru_timer_job" USING btree (
  "PROCESS_INSTANCE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_TIMER_JOB_PROC_DEF" ON "public"."act_ru_timer_job" USING btree (
  "PROC_DEF_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID" ON "public"."act_ru_timer_job" USING btree (
  "CUSTOM_VALUES_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID" ON "public"."act_ru_timer_job" USING btree (
  "EXCEPTION_STACK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TJOB_SCOPE" ON "public"."act_ru_timer_job" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TJOB_SCOPE_DEF" ON "public"."act_ru_timer_job" USING btree (
  "SCOPE_DEFINITION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_TJOB_SUB_SCOPE" ON "public"."act_ru_timer_job" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "act_ru_timer_job_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table act_ru_variable
-- ----------------------------
CREATE INDEX "ACT_FK_VAR_BYTEARRAY" ON "public"."act_ru_variable" USING btree (
  "BYTEARRAY_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_VAR_EXE" ON "public"."act_ru_variable" USING btree (
  "EXECUTION_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_FK_VAR_PROCINST" ON "public"."act_ru_variable" USING btree (
  "PROC_INST_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_VAR_SCOPE_ID_TYPE" ON "public"."act_ru_variable" USING btree (
  "SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_RU_VAR_SUB_ID_TYPE" ON "public"."act_ru_variable" USING btree (
  "SUB_SCOPE_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "SCOPE_TYPE_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ACT_IDX_VARIABLE_TASK_ID" ON "public"."act_ru_variable" USING btree (
  "TASK_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "public"."act_ru_variable" ADD CONSTRAINT "act_ru_variable_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_button
-- ----------------------------
ALTER TABLE "public"."flw_button" ADD CONSTRAINT "flw_button_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_category
-- ----------------------------
ALTER TABLE "public"."flw_category" ADD CONSTRAINT "flw_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table flw_channel_definition
-- ----------------------------
CREATE INDEX "ACT_IDX_CHANNEL_DEF_UNIQ" ON "public"."flw_channel_definition" USING btree (
  "KEY_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "VERSION_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "TENANT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table flw_channel_definition
-- ----------------------------
ALTER TABLE "public"."flw_channel_definition" ADD CONSTRAINT "flw_channel_definition_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_draft
-- ----------------------------
ALTER TABLE "public"."flw_draft" ADD CONSTRAINT "flw_draft_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_ev_databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."flw_ev_databasechangeloglock" ADD CONSTRAINT "flw_ev_databasechangeloglock_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table flw_event
-- ----------------------------
ALTER TABLE "public"."flw_event" ADD CONSTRAINT "flw_event_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table flw_event_definition
-- ----------------------------
CREATE INDEX "ACT_IDX_EVENT_DEF_UNIQ" ON "public"."flw_event_definition" USING btree (
  "KEY_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "VERSION_" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "TENANT_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table flw_event_definition
-- ----------------------------
ALTER TABLE "public"."flw_event_definition" ADD CONSTRAINT "flw_event_definition_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_event_deployment
-- ----------------------------
ALTER TABLE "public"."flw_event_deployment" ADD CONSTRAINT "flw_event_deployment_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_event_resource
-- ----------------------------
ALTER TABLE "public"."flw_event_resource" ADD CONSTRAINT "flw_event_resource_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_form
-- ----------------------------
ALTER TABLE "public"."flw_form" ADD CONSTRAINT "flw_form_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_form_resource
-- ----------------------------
ALTER TABLE "public"."flw_form_resource" ADD CONSTRAINT "flw_form_resource_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_option
-- ----------------------------
ALTER TABLE "public"."flw_option" ADD CONSTRAINT "flw_option_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_ru_batch
-- ----------------------------
ALTER TABLE "public"."flw_ru_batch" ADD CONSTRAINT "flw_ru_batch_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Indexes structure for table flw_ru_batch_part
-- ----------------------------
CREATE INDEX "FLW_IDX_BATCH_PART" ON "public"."flw_ru_batch_part" USING btree (
  "BATCH_ID_" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE "public"."flw_ru_batch_part" ADD CONSTRAINT "flw_ru_batch_part_pkey" PRIMARY KEY ("ID_");

-- ----------------------------
-- Primary Key structure for table flw_script
-- ----------------------------
ALTER TABLE "public"."flw_script" ADD CONSTRAINT "flw_script_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table flw_shortcut
-- ----------------------------
ALTER TABLE "public"."flw_shortcut" ADD CONSTRAINT "flw_shortcut_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_ali_trade_history
-- ----------------------------
ALTER TABLE "public"."pay_ali_trade_history" ADD CONSTRAINT "pay_ali_trade_history_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_app
-- ----------------------------
ALTER TABLE "public"."sys_app" ADD CONSTRAINT "sys_app_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_area
-- ----------------------------
CREATE INDEX "idx_parent_code" ON "public"."sys_area" USING btree (
  "parent_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "uk_code" ON "public"."sys_area" USING btree (
  "area_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_area
-- ----------------------------
ALTER TABLE "public"."sys_area" ADD CONSTRAINT "sys_area_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_code_generate
-- ----------------------------
ALTER TABLE "public"."sys_code_generate" ADD CONSTRAINT "sys_code_generate_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_code_generate_config
-- ----------------------------
ALTER TABLE "public"."sys_code_generate_config" ADD CONSTRAINT "sys_code_generate_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_database_info
-- ----------------------------
CREATE INDEX "NAME_UNIQUE" ON "public"."sys_database_info" USING btree (
  "db_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_database_info
-- ----------------------------
ALTER TABLE "public"."sys_database_info" ADD CONSTRAINT "sys_database_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_demo_leave
-- ----------------------------
ALTER TABLE "public"."sys_demo_leave" ADD CONSTRAINT "sys_demo_leave_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_emp
-- ----------------------------
ALTER TABLE "public"."sys_emp" ADD CONSTRAINT "sys_emp_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_emp_ext_org_pos
-- ----------------------------
ALTER TABLE "public"."sys_emp_ext_org_pos" ADD CONSTRAINT "sys_emp_ext_org_pos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_emp_pos
-- ----------------------------
ALTER TABLE "public"."sys_emp_pos" ADD CONSTRAINT "sys_emp_pos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_file_info
-- ----------------------------
ALTER TABLE "public"."sys_file_info" ADD CONSTRAINT "sys_file_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_notice_user
-- ----------------------------
ALTER TABLE "public"."sys_notice_user" ADD CONSTRAINT "sys_notice_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_oauth_user
-- ----------------------------
ALTER TABLE "public"."sys_oauth_user" ADD CONSTRAINT "sys_oauth_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_op_log
-- ----------------------------
ALTER TABLE "public"."sys_op_log" ADD CONSTRAINT "sys_op_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_org
-- ----------------------------
ALTER TABLE "public"."sys_org" ADD CONSTRAINT "sys_org_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sys_pos
-- ----------------------------
CREATE INDEX "CODE_UNI" ON "public"."sys_pos" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_pos
-- ----------------------------
ALTER TABLE "public"."sys_pos" ADD CONSTRAINT "sys_pos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_data_scope
-- ----------------------------
ALTER TABLE "public"."sys_role_data_scope" ADD CONSTRAINT "sys_role_data_scope_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_sms
-- ----------------------------
ALTER TABLE "public"."sys_sms" ADD CONSTRAINT "sys_sms_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_tenant_info
-- ----------------------------
ALTER TABLE "public"."sys_tenant_info" ADD CONSTRAINT "sys_tenant_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_timers
-- ----------------------------
ALTER TABLE "public"."sys_timers" ADD CONSTRAINT "sys_timers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_data_scope
-- ----------------------------
ALTER TABLE "public"."sys_user_data_scope" ADD CONSTRAINT "sys_user_data_scope_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_vis_log
-- ----------------------------
ALTER TABLE "public"."sys_vis_log" ADD CONSTRAINT "sys_vis_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xn_code_gen_test
-- ----------------------------
ALTER TABLE "public"."xn_code_gen_test" ADD CONSTRAINT "xn_code_gen_test_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table act_de_model_relation
-- ----------------------------
ALTER TABLE "public"."act_de_model_relation" ADD CONSTRAINT "act_de_model_relation_ibfk_1" FOREIGN KEY ("model_id") REFERENCES "public"."act_de_model" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_de_model_relation" ADD CONSTRAINT "act_de_model_relation_ibfk_2" FOREIGN KEY ("parent_model_id") REFERENCES "public"."act_de_model" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ge_bytearray
-- ----------------------------
ALTER TABLE "public"."act_ge_bytearray" ADD CONSTRAINT "ACT_FK_BYTEARR_DEPL" FOREIGN KEY ("DEPLOYMENT_ID_") REFERENCES "public"."act_re_deployment" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_id_membership
-- ----------------------------
ALTER TABLE "public"."act_id_membership" ADD CONSTRAINT "ACT_FK_MEMB_GROUP" FOREIGN KEY ("GROUP_ID_") REFERENCES "public"."act_id_group" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_id_membership" ADD CONSTRAINT "ACT_FK_MEMB_USER" FOREIGN KEY ("USER_ID_") REFERENCES "public"."act_id_user" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_id_priv_mapping
-- ----------------------------
ALTER TABLE "public"."act_id_priv_mapping" ADD CONSTRAINT "ACT_FK_PRIV_MAPPING" FOREIGN KEY ("PRIV_ID_") REFERENCES "public"."act_id_priv" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_procdef_info
-- ----------------------------
ALTER TABLE "public"."act_procdef_info" ADD CONSTRAINT "ACT_FK_INFO_JSON_BA" FOREIGN KEY ("INFO_JSON_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_procdef_info" ADD CONSTRAINT "ACT_FK_INFO_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_re_model
-- ----------------------------
ALTER TABLE "public"."act_re_model" ADD CONSTRAINT "ACT_FK_MODEL_DEPLOYMENT" FOREIGN KEY ("DEPLOYMENT_ID_") REFERENCES "public"."act_re_deployment" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_re_model" ADD CONSTRAINT "ACT_FK_MODEL_SOURCE" FOREIGN KEY ("EDITOR_SOURCE_VALUE_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_re_model" ADD CONSTRAINT "ACT_FK_MODEL_SOURCE_EXTRA" FOREIGN KEY ("EDITOR_SOURCE_EXTRA_VALUE_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_deadletter_job
-- ----------------------------
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_deadletter_job" ADD CONSTRAINT "ACT_FK_DEADLETTER_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_event_subscr
-- ----------------------------
ALTER TABLE "public"."act_ru_event_subscr" ADD CONSTRAINT "ACT_FK_EVENT_EXEC" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_execution
-- ----------------------------
ALTER TABLE "public"."act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_PARENT" FOREIGN KEY ("PARENT_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_execution" ADD CONSTRAINT "ACT_FK_EXE_SUPER" FOREIGN KEY ("SUPER_EXEC_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_identitylink
-- ----------------------------
ALTER TABLE "public"."act_ru_identitylink" ADD CONSTRAINT "ACT_FK_ATHRZ_PROCEDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_identitylink" ADD CONSTRAINT "ACT_FK_IDL_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_identitylink" ADD CONSTRAINT "ACT_FK_TSKASS_TASK" FOREIGN KEY ("TASK_ID_") REFERENCES "public"."act_ru_task" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_job
-- ----------------------------
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "ACT_FK_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "ACT_FK_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "ACT_FK_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "ACT_FK_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_job" ADD CONSTRAINT "ACT_FK_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_suspended_job
-- ----------------------------
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_suspended_job" ADD CONSTRAINT "ACT_FK_SUSPENDED_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_task
-- ----------------------------
ALTER TABLE "public"."act_ru_task" ADD CONSTRAINT "ACT_FK_TASK_EXE" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_task" ADD CONSTRAINT "ACT_FK_TASK_PROCDEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_task" ADD CONSTRAINT "ACT_FK_TASK_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_timer_job
-- ----------------------------
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "ACT_FK_TIMER_JOB_CUSTOM_VALUES" FOREIGN KEY ("CUSTOM_VALUES_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "ACT_FK_TIMER_JOB_EXCEPTION" FOREIGN KEY ("EXCEPTION_STACK_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "ACT_FK_TIMER_JOB_EXECUTION" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "ACT_FK_TIMER_JOB_PROCESS_INSTANCE" FOREIGN KEY ("PROCESS_INSTANCE_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_timer_job" ADD CONSTRAINT "ACT_FK_TIMER_JOB_PROC_DEF" FOREIGN KEY ("PROC_DEF_ID_") REFERENCES "public"."act_re_procdef" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table act_ru_variable
-- ----------------------------
ALTER TABLE "public"."act_ru_variable" ADD CONSTRAINT "ACT_FK_VAR_BYTEARRAY" FOREIGN KEY ("BYTEARRAY_ID_") REFERENCES "public"."act_ge_bytearray" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_variable" ADD CONSTRAINT "ACT_FK_VAR_EXE" FOREIGN KEY ("EXECUTION_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."act_ru_variable" ADD CONSTRAINT "ACT_FK_VAR_PROCINST" FOREIGN KEY ("PROC_INST_ID_") REFERENCES "public"."act_ru_execution" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table flw_ru_batch_part
-- ----------------------------
ALTER TABLE "public"."flw_ru_batch_part" ADD CONSTRAINT "FLW_FK_BATCH_PART_PARENT" FOREIGN KEY ("BATCH_ID_") REFERENCES "public"."flw_ru_batch" ("ID_") ON DELETE NO ACTION ON UPDATE NO ACTION;
