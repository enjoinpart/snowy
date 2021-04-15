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
package vip.xiaonuo.flowable.modular.task.instancetask.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.BetweenFormater;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;
import org.flowable.task.api.history.HistoricTaskInstance;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.modular.task.instancetask.result.FlowableInstanceTaskResult;

import java.util.List;

/**
 * 实例任务工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:31
 */
public class FlowableInstanceTaskFactory {

    /**
     * 根据实例任务集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:33
     */
    public static PageResult<FlowableInstanceTaskResult> pageResult(List<HistoricTaskInstance> taskList,
                                                                    Page<FlowableInstanceTaskResult> defaultPage) {
        List<FlowableInstanceTaskResult> flowableInstanceTaskResultList =
                convertToFlowableInstanceTaskResultList(taskList);
        return new PageResult<>(defaultPage, flowableInstanceTaskResultList);
    }

    /**
     * 将实例任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:34
     */
    private static List<FlowableInstanceTaskResult> convertToFlowableInstanceTaskResultList(List<HistoricTaskInstance> taskList) {
        List<FlowableInstanceTaskResult> flowableInstanceTaskResultList = CollectionUtil.newArrayList();
        taskList.forEach(historicTaskInstance -> {
            FlowableInstanceTaskResult flowableInstanceTaskResult = convertToFlowableInstanceTaskResult(historicTaskInstance);
            flowableInstanceTaskResultList.add(flowableInstanceTaskResult);
        });
        return flowableInstanceTaskResultList;
    }

    /**
     * 将单个实例任务结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/5/25 17:34
     */
    private static FlowableInstanceTaskResult convertToFlowableInstanceTaskResult(HistoricTaskInstance historicTaskInstance) {
        FlowableInstanceTaskResult flowableInstanceTaskResult = new FlowableInstanceTaskResult();
        flowableInstanceTaskResult.setId(historicTaskInstance.getId());
        flowableInstanceTaskResult.setName(historicTaskInstance.getName());
        flowableInstanceTaskResult.setActivityId(historicTaskInstance.getTaskDefinitionKey());
        flowableInstanceTaskResult.setProcessInstanceId(historicTaskInstance.getProcessInstanceId());
        flowableInstanceTaskResult.setExecutionId(historicTaskInstance.getExecutionId());
        flowableInstanceTaskResult.setAssignee(historicTaskInstance.getAssignee());
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getAssignee())) {
            flowableInstanceTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByUserId(historicTaskInstance.getAssignee()));
            flowableInstanceTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByUserId(historicTaskInstance.getAssignee()));
        } else {
            //任务办理人为空，即没有指定具体的人，则可能是候选人或候选组，则设置候选人或候选组名字
            flowableInstanceTaskResult.setAssigneeName(FlowableAssigneeFactory.getAssigneeNameByTaskId(historicTaskInstance.getId()));
            flowableInstanceTaskResult.setAssigneeInfo(FlowableAssigneeFactory.getAssigneeInfoByTaskId(historicTaskInstance.getId()));
        }
        flowableInstanceTaskResult.setPriority(historicTaskInstance.getPriority());
        flowableInstanceTaskResult.setCreateTime(historicTaskInstance.getCreateTime());
        flowableInstanceTaskResult.setFormatCreateTime(PastTimeFormatUtil.formatPastTime(historicTaskInstance.getCreateTime()));
        flowableInstanceTaskResult.setEndTime(historicTaskInstance.getEndTime());
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getEndTime())) {
            flowableInstanceTaskResult.setFormatEndTime(PastTimeFormatUtil.formatPastTime(historicTaskInstance.getEndTime()));
            flowableInstanceTaskResult.setEnded(true);
        } else {
            flowableInstanceTaskResult.setEnded(false);
        }
        if (ObjectUtil.isNotEmpty(historicTaskInstance.getDurationInMillis())) {
            flowableInstanceTaskResult.setDuration(DateUtil.formatBetween(historicTaskInstance.getDurationInMillis(), BetweenFormater.Level.SECOND));
        }
        flowableInstanceTaskResult.setDueDate(historicTaskInstance.getDueDate());

        return flowableInstanceTaskResult;
    }
}
