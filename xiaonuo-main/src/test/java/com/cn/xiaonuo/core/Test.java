/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

XiaoNuo采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改XiaoNuo源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuo/xiaonuo-vue
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuo/xiaonuo-vue
6.若您的项目无法满足以上几点，可申请商业授权，获取XiaoNuo商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package com.cn.xiaonuo.core;

import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.flowable.modular.form.service.FlowableFormService;
import org.flowable.engine.FormService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.form.api.FormRepositoryService;
import org.flowable.ui.modeler.serviceapi.ModelService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;

/**
 * v
 * 测试类
 *
 * @author xuyuxiang
 * @date 2020/3/16 11:25
 */
public class Test extends BaseJunit {

    @Resource
    private RuntimeService runtimeService;

    @Resource
    private TaskService taskService;

    @Autowired
    private FormService formService;

    @Autowired
    private org.flowable.form.api.FormService apiFormService;

    @Autowired
    private FlowableFormService flowableFormService;

    @Resource
    private ModelService modelService;

    @Resource
    private FormRepositoryService formRepositoryService;

    @org.junit.Test
    public void test() {
       /* FormInfo formModel = runtimeService.getStartFormModel("leave:1:1288681074511163393", "1288681738897305601");
        System.out.println(formModel);
        Model model = modelService.getModel("140e7ec6-d17e-11ea-9315-e0d55e485056");
        String modelEditorJson = model.getModelEditorJson();
        FormDeploymentBuilder formDeploymentBuilder = formRepositoryService.createDeployment();
        formDeploymentBuilder.name(model.getName()).category("kaoqin").addFormDefinition(model.getName() + ".form", modelEditorJson).deploy();
        System.out.println("部署成功");*/
        /*String processDefinitionId = "leave:1:1288773148833062913";
        String outcome = "同意";
        Map<String, Object> formProperties = new HashMap<>();
        formProperties.put("type", 3);
        formProperties.put("orgName", "成都分公司");
        formProperties.put("beginTime", new Date().toString());
        formProperties.put("endTime", new Date().toString());
        formProperties.put("days", "5");
        formProperties.put("name", "徐玉祥");
        String processInstanceName = "请假流程";
        runtimeService.startProcessInstanceWithForm(processDefinitionId, outcome, formProperties, processInstanceName);*/
        /*StartFormData startFormData = formService.getStartFormData("leave:1:1288773148833062913");
        FormInfo formInfo = runtimeService.getStartFormModel("leave:1:1288773148833062913", "1288773908127834113");
        System.out.println(formInfo);*/
        /*Map<String, String> formProperties = new HashMap<>();
        formProperties.put("type", "3");
        formProperties.put("orgName", "成都分公司");
        formProperties.put("beginTime", new Date().toString());
        formProperties.put("endTime", new Date().toString());
        formProperties.put("days", "5");
        formProperties.put("name", "徐玉祥");
        ProcessInstance processInstance = formService.submitStartFormData("leave:1:1289010387831832577", "23333", formProperties);
        FormInfo formInfo = runtimeService.getStartFormModel("leave:1:1289010387831832577", processInstance.getProcessInstanceId());*/
        /*runtimeService.startProcessInstanceById();
        System.out.println(renderedStartForm);*/
        // 提交开始节点的表单
       /* Map<String,String> formProperties = new HashMap<>();
        formProperties.put("type", "3");
        formProperties.put("orgName", "成都分公司");
        formProperties.put("beginTime", new Date().toString());
        formProperties.put("endTime", new Date().toString());
        formProperties.put("days", "5");
        formProperties.put("name", "徐玉祥");
        ProcessInstance processInstance = formService.submitStartFormData("leave:1:1289045403831934977",formProperties);*/

       /* FlowableFormParam flowableFormParam = new FlowableFormParam();
        flowableFormParam.setModelId("140e7ec6-d17e-11ea-9315-e0d55e485056");
        flowableFormParam.setCategory("kaoqin");
        flowableFormService.deploy(flowableFormParam);
        */
        /*FlowableFormParam flowableFormParam2 = new FlowableFormParam();
        flowableFormParam2.setModelId("82513abb-d2e0-11ea-a8be-e0d55e485056");
        flowableFormParam2.setCategory("kaoqin");
        flowableFormService.deploy(flowableFormParam2);*/

       /* StartFormData startFormData = formService.getStartFormData("leave:1:1289045403831934977");
        FormInfo info = formRepositoryService.getFormModelByKey(startFormData.getFormKey());*/

        /*FormInfo startFormModel = runtimeService.getStartFormModel("leave:1:1289045403831934977", "1289045701300355073");
        System.out.println(startFormModel);*/

       /* TaskFormData taskFormData = formService.getTaskFormData("1290467765076910081");
        FormInfo formInfo = formRepositoryService.getFormModelByKey(taskFormData.getFormKey());
        FormModel formModel = formInfo.getFormModel();
        System.out.println(formModel);*/

        /*Map<String,String> formProperties = new HashMap<>();
        formProperties.put("name", "徐玉祥");
        formProperties.put("age", "25");
        formProperties.put("startTime", new Date().toString());
        formProperties.put("remark", "测试申请");
        ProcessInstance processInstance = formService.submitStartFormData("leave:2:1290499771529699329",formProperties);
        System.out.println(processInstance);*/
        taskService.getIdentityLinksForTask("1292747536100204545").forEach(identityLink -> {
            String type = identityLink.getType();
            if ("candidate".equals(type)) {
                String groupId = identityLink.getGroupId();
                if (ObjectUtil.isNotEmpty(groupId)) {
                    taskService.deleteCandidateGroup("1292747536100204545", groupId);
                }
                String userId = identityLink.getUserId();
                if (ObjectUtil.isNotEmpty(userId)) {
                    taskService.deleteCandidateUser("1292747536100204545", userId);
                }
            }
        });
        taskService.deleteUserIdentityLink("1292747536100204545", "1265476890672672808", "assignee");
    }
}
