package com.cn.xiaonuo.flowable.modular.task.handletask.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.Map;

/**
 * 任务办理参数
 *
 * @author xuyuxiang
 * @date 2020/4/22 9:55
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableHandleTaskParam extends BaseParam {

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id为空，请检查processDefinitionId参数", groups = {start.class})
    private String processDefinitionId;

    /**
     * 任务id
     */
    @NotBlank(message = "任务id为空，请检查taskId参数", groups = {submit.class, add.class, back.class, turn.class, entrust.class,
            end.class, jump.class, suspend.class, addSign.class, deleteSign.class, trace.class})
    private String taskId;

    /**
     * 意见（可以是同意意见，委托原因，转办原因等，通用此字段）
     */
    @NotBlank(message = "意见为空，请检查comment参数", groups = {submit.class, back.class, entrust.class, end.class,
            jump.class, addSign.class, deleteSign.class})
    private String comment;

    /**
     * 委托人
     */
    @NotBlank(message = "委托人为空，请检查assignee参数", groups = {entrust.class})
    private String assignee;

    /**
     * 转办人，加签人，减签人，通用此字段
     */
    @NotNull(message = "操作人为空，请检查assigneeList参数", groups = {turn.class, addSign.class, deleteSign.class})
    private List<String> assigneeList;

    /**
     * 目标活动节点id，当跳转或退回或加签减签时使用
     */
    @NotBlank(message = "目标活动节点id为空，请检查targetActId参数", groups = {back.class, jump.class})
    private String targetActId;

    /**
     * 目标活动节点名称，当跳转或退回或加签减签时使用
     */
    @NotBlank(message = "目标活动节点名称为空，请检查targetActName参数", groups = {back.class, jump.class})
    private String targetActName;

    /**
     * 流程参数，包含启动参数，提交任务参数等，通用此字段
     */
    private Map<String, String> variables;

    /**
     * 下一步完成限期
     */
    private String nextAssignee;

    /**
     * 下一步完成限期
     */
    private String nextDueDate;

    /**
     * 下一步优先级
     */
    private Integer nextPriority;
}
