package com.cn.xiaonuo.flowable.modular.task.todotask.result;

import com.cn.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 待办任务结果集
 *
 * @author xuyuxiang
 * @date 2020/4/20 9:58
 */
@Data
public class FlowableTodoTaskResult {

    /**
     * 任务id
     */
    private String id;

    /**
     * 任务名称
     */
    private String name;

    /**
     * 活动节点id
     */
    private String activityId;

    /**
     * 执行id
     */
    private String executionId;

    /**
     * 任务所属人
     */
    private String owner;

    /**
     * 任务所属人名称
     */
    private String ownerName;

    /**
     * 办理人
     */
    private String assignee;

    /**
     * 办理人姓名
     */
    private String assigneeName;

    /**
     * 办理人信息（自定义格式）
     */
    private String assigneeInfo;

    /**
     * 优先级
     */
    private Integer priority;

    /**
     * 任务创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 格式化后的任务创建时间（如3分钟前）
     */
    private String formatCreateTime;

    /**
     * 任务签收时间（限指定多个人时，其中一个人签收）
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date claimTime;

    /**
     * 任务期限
     */
    private Date dueDate;

    /**
     * 委托状态（0委托中 1委托结束 2未委托）
     */
    private Integer delegationState;

    /**
     * 流程实例相关信息(包含了流程定义相关信息）
     */
    private FlowableInstanceResult procIns;
}
