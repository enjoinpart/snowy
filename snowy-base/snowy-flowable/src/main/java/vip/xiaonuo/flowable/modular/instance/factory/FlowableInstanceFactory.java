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
package vip.xiaonuo.flowable.modular.instance.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import vip.xiaonuo.flowable.modular.task.handletask.factory.FlowableAssigneeFactory;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.history.HistoricProcessInstance;
import org.flowable.engine.runtime.ProcessInstance;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.core.util.PastTimeFormatUtil;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;

import java.util.List;

/**
 * 流程实例工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/4/20 14:41
 */
public class FlowableInstanceFactory {

    private static final FlowableDefinitionService flowableDefinitionService = SpringUtil.getBean(FlowableDefinitionService.class);
    private static final RuntimeService runtimeService = SpringUtil.getBean(RuntimeService.class);

    /**
     * 根据流程实例集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/4/20 14:45
     */
    public static PageResult<FlowableInstanceResult> pageResult(List<HistoricProcessInstance> historicProcessInstanceList,
                                                                Page<FlowableInstanceResult> defaultPage) {
        List<FlowableInstanceResult> flowableInstanceResultList =
                convertToFlowableInstanceResultList(historicProcessInstanceList);
        return new PageResult<>(defaultPage, flowableInstanceResultList);
    }

    /**
     * 将流程实例结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/20 14:45
     */
    private static List<FlowableInstanceResult> convertToFlowableInstanceResultList(List<HistoricProcessInstance> historicProcessInstanceList) {
        List<FlowableInstanceResult> flowableInstanceResultList = CollectionUtil.newArrayList();
        historicProcessInstanceList.forEach(historicProcessInstance -> {
            FlowableInstanceResult flowableInstanceResult = convertToFlowableInstanceResult(historicProcessInstance);
            flowableInstanceResultList.add(flowableInstanceResult);
        });
        return flowableInstanceResultList;
    }

    /**
     * 将单个流程实例结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/21 9:50
     */
    public static FlowableInstanceResult convertToFlowableInstanceResult(HistoricProcessInstance historicProcessInstance) {
        FlowableInstanceResult flowableInstanceResult = new FlowableInstanceResult();
        flowableInstanceResult.setId(historicProcessInstance.getId());
        flowableInstanceResult.setName(historicProcessInstance.getName());
        flowableInstanceResult.setBusinessKey(historicProcessInstance.getBusinessKey());
        flowableInstanceResult.setStartTime(historicProcessInstance.getStartTime());
        flowableInstanceResult.setFormatStartTime(PastTimeFormatUtil.formatPastTime(historicProcessInstance.getStartTime()));
        flowableInstanceResult.setStartUserId(historicProcessInstance.getStartUserId());
        //调试时存在申请人id为空的情况
        if (ObjectUtil.isNotEmpty(historicProcessInstance.getStartUserId())) {
            flowableInstanceResult.setStartUserName(FlowableAssigneeFactory.getAssigneeNameByUserId(historicProcessInstance.getStartUserId()));
        }
        //此处采用判断结束时间是否为空来决定流程是否结束
        flowableInstanceResult.setEnded(ObjectUtil.isNotEmpty(historicProcessInstance.getEndTime()));
        flowableInstanceResult.setEndTime(historicProcessInstance.getEndTime());
        //流程实例是否挂起，如果已经结束了，则肯定没挂起，如果没结束，则查询状态
        if (flowableInstanceResult.getEnded()) {
            flowableInstanceResult.setSuspended(false);
            flowableInstanceResult.setFormatEndTime(PastTimeFormatUtil.formatPastTime(historicProcessInstance.getEndTime()));
        } else {
            ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
                    .processInstanceId(flowableInstanceResult.getId()).singleResult();
            //如果流程不在运行中，则没挂起
            if (ObjectUtil.isNull(processInstance)) {
                flowableInstanceResult.setSuspended(false);
            } else {
                flowableInstanceResult.setSuspended(processInstance.isSuspended());
            }
        }
        FlowableDefinitionResult procDef = flowableDefinitionService.detail(historicProcessInstance.getProcessDefinitionId());
        flowableInstanceResult.setProcDef(procDef);
        return flowableInstanceResult;
    }
}
