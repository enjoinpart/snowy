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
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableDataTaskService;
import vip.xiaonuo.flowable.modular.task.handletask.enums.FlowableHandleTaskExceptionEnum;
import vip.xiaonuo.flowable.modular.task.handletask.service.FlowableDataTaskService;
import org.flowable.engine.HistoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.task.api.Task;
import org.flowable.task.api.history.HistoricTaskInstance;
import org.flowable.variable.api.history.HistoricVariableInstance;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 获取任务数据Service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/16 17:57
 */
@Service
public class FlowableDataTaskServiceImpl implements FlowableDataTaskService {

    private final String FORM_DATA_VARIABLE_NAME = "formData";

    @Resource
    private RuntimeService runtimeService;

    @Resource
    private TaskService taskService;

    @Resource
    private HistoryService historyService;

    @Override
    public Map<String, Object> taskData(String taskId) {
        Map<String, Object> variables = CollectionUtil.newHashMap();
        //获取运行中的任务
        Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
        //如果运行中的任务不存在，则表示任务已结束，通过historyService获取
        if (ObjectUtil.isNull(task)) {
            HistoricTaskInstance historicTaskInstance = historyService.createHistoricTaskInstanceQuery().taskId(taskId).singleResult();
            //如果历史的任务也不存在，则抛异常
            if (ObjectUtil.isNull(historicTaskInstance)) {
                throw new ServiceException(FlowableHandleTaskExceptionEnum.TASK_NOT_EXIST);
            }
            //获取流程实例id
            String processInstanceId = historicTaskInstance.getProcessInstanceId();
            //获取其历史变量集合
            List<HistoricVariableInstance> historicVariableInstanceList = historyService.createHistoricVariableInstanceQuery().processInstanceId(processInstanceId)
                    .list();
            historicVariableInstanceList.forEach(historicVariableInstance -> {
                if (FORM_DATA_VARIABLE_NAME.equals(historicVariableInstance.getVariableName())) {
                    variables.put(historicVariableInstance.getVariableName(), historicVariableInstance.getValue());
                }
            });
        } else {
            //获取流程实例id
            String processInstanceId = task.getProcessInstanceId();
            Map<String, Object> runtimeVariables = runtimeService.getVariables(processInstanceId);
            runtimeVariables.forEach((key, value) -> {
                if (FORM_DATA_VARIABLE_NAME.equals(key)) {
                    variables.put(key, value);
                }
            });
        }
        return variables;
    }
}
