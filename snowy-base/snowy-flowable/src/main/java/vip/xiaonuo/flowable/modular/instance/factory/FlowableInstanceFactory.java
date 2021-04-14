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
