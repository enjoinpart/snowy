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

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.flowable.modular.task.handletask.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.exception.enums.ServerExceptionEnum;
import vip.xiaonuo.flowable.core.utils.BpmCommentUtil;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import vip.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.handletask.operator.FlowableCommonOperator;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableAddSignTaskService;
import org.flowable.common.engine.api.FlowableException;
import org.flowable.engine.RuntimeService;
import org.flowable.task.api.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 任务加签service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/4 21:31
 */
@Service
public class FlowableAddSignTaskServiceImpl implements FlowableAddSignTaskService {

    @Resource
    private FlowableDefinitionService flowableDefinitionService;

    @Resource
    private RuntimeService runtimeService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addSign(String taskId, List<String> assigneeList, String comment) {
        //校验任务是否存在
        Task task = FlowableCommonOperator.me().queryTask(taskId);
        //流程定义id
        String processDefinitionId = task.getProcessDefinitionId();
        //流程实例id
        String processInstanceId = task.getProcessInstanceId();
        //当前活动节点id
        String currentActId = task.getTaskDefinitionKey();
        //当前活动节点名称（任务名称）
        String currentActName = task.getName();
        //多实例用户任务节点的元素变量名
        String multiInstanceActAssigneeParam = flowableDefinitionService
                .getMultiInstanceActAssigneeParam(processDefinitionId, currentActId);
        //如果元素变量名为空则表示该节点不是会签节点
        if (ObjectUtil.isEmpty(multiInstanceActAssigneeParam)) {
            throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_ADD_SIGN_ERROR);
        }
        //加签人的姓名
        List<String> assigneeNameList = CollectionUtil.newArrayList();
        //遍历要加签的人
        assigneeList.forEach(assignee -> {
            //获取加签人名称
            String assigneeName = FlowableAssigneeFactory.getAssigneeNameByUserId(assignee);
            assigneeNameList.add(assigneeName);
            //定义参数
            Map<String, Object> assigneeVariables = CollectionUtil.newHashMap();
            //根据获取的变量名加参数
            assigneeVariables.put(multiInstanceActAssigneeParam, assignee);
            //执行加签操作
            try {
                runtimeService.addMultiInstanceExecution(currentActId, processInstanceId, assigneeVariables);
            } catch (FlowableException e) {
                //抛异常加签失败
                throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_ADD_SIGN_ERROR);
            } catch (Exception e) {
                //否则的话，可能出现服务器内部异常
                e.printStackTrace();
                throw new ServiceException(ServerExceptionEnum.SERVER_ERROR);
            }
        });
        //当前办理人姓名
        String name = LoginContextHolder.me().getSysLoginUser().getName();
        //生成加签意见（此处在加签后添加意见，无影响）
        comment = BpmCommentUtil.genAddSignComment(name, assigneeNameList, currentActName, comment);
        //保存意见
        FlowableCommonOperator.me().addComment(taskId, comment);
    }
}
