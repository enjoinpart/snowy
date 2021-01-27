package com.cn.xiaonuo.flowable.modular.instance.service;

import cn.hutool.core.lang.Dict;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;
import com.cn.xiaonuo.flowable.modular.instance.param.FlowableInstanceParam;
import com.cn.xiaonuo.flowable.modular.instance.result.FlowableCommentHistoryResult;
import com.cn.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import com.cn.xiaonuo.flowable.modular.instance.result.FlowableCommentHistoryResult;
import com.cn.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import com.fasterxml.jackson.databind.JsonNode;

import java.util.List;
import java.util.Map;

/**
 * 流程实例service接口
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:35
 */
public interface FlowableInstanceService {

    /**
     * 查询流程实例
     *
     * @param flowableInstanceParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/4/20 12:00
     */
    PageResult<FlowableInstanceResult> page(FlowableInstanceParam flowableInstanceParam);

    /**
     * 根据流程实例id获取流程实例详情
     *
     * @param processInstanceId 流程实例id
     * @return 实例结果
     * @author xuyuxiang
     * @date 2020/4/21 9:46
     */
    FlowableInstanceResult detail(String processInstanceId);

    /**
     * 流程实例的历史任务节点，用于退回时选择节点
     *
     * @param flowableInstanceParam 查询参数
     * @return 历史任务节点
     * @author xuyuxiang
     * @date 2020/4/27 15:10
     */
    List<FlowableUserTaskResult> hisUserTasks(FlowableInstanceParam flowableInstanceParam);

    /**
     * 流程实例的流程图，显示当前节点和走过的节点
     *
     * @param flowableInstanceParam 查询参数
     * @return 流程图数据
     * @author xuyuxiang
     * @date 2020/4/28 14:28
     */
    JsonNode trace(FlowableInstanceParam flowableInstanceParam);

    /**
     * 激活/挂起流程实例
     *
     * @param flowableInstanceParam 查询参数
     * @param isSuspend             是否挂起
     * @author xuyuxiang
     * @date 2020/4/29 15:44
     */
    void activeOrSuspend(FlowableInstanceParam flowableInstanceParam, boolean isSuspend);

    /**
     * 流程实例的审批记录
     *
     * @param flowableInstanceParam 查询参数
     * @return 审批记录
     * @author xuyuxiang
     * @date 2020/4/29 16:24
     */
    List<FlowableCommentHistoryResult> commentHistory(FlowableInstanceParam flowableInstanceParam);

    /**
     * 终止流程实例
     *
     * @param flowableInstanceParam 终止参数
     * @author xuyuxiang
     * @date 2020/8/11 14:22
     **/
    void end(FlowableInstanceParam flowableInstanceParam);

    /**
     * 删除流程实例
     *
     * @param flowableInstanceParamList 删除参数
     * @author xuyuxiang
     * @date 2020/8/11 14:22
     **/
    void delete(List<FlowableInstanceParam> flowableInstanceParamList);

    /**
     * 获取流程实例中表单填写的数据
     *
     * @param flowableInstanceParam 获取参数
     * @return 任务数据
     * @author xuyuxiang
     * @date 2020/8/16 17:54
     */
    Map<String, Object> formData(FlowableInstanceParam flowableInstanceParam);

    /**
     * 加签人员选择器
     *
     * @param flowableInstanceParam 查询参数
     * @return java.util.List<Dict>
     * @author xuyuxiang
     * @date 2020/9/11 17:45
     **/
    List<Dict> addSignUserSelector(FlowableInstanceParam flowableInstanceParam);

    /**
     * 减签人员选择器
     *
     * @param flowableInstanceParam 查询参数
     * @return java.util.List<Dict>
     * @author xuyuxiang
     * @date 2020/9/11 17:45
     **/
    List<Dict> deleteSignUserSelector(FlowableInstanceParam flowableInstanceParam);
}
