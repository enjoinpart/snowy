package com.cn.xiaonuo.flowable.core.enums;

import lombok.Getter;

/**
 * 流程事件类型枚举
 *
 * @author xuyuxiang
 * @date 2020/5/28 16:46
 */
@Getter
public enum EventTypeEnum {

    /**
     * 流程启动
     */
    PROCESS_STARTED("PROCESS_STARTED", "流程启动"),

    /**
     * 流程完成
     */
    PROCESS_COMPLETED("PROCESS_COMPLETED", "流程完成"),

    /**
     * 流程取消
     */
    PROCESS_CANCELLED("PROCESS_CANCELLED", "流程取消"),

    /**
     * 活动开始
     */
    ACTIVITY_STARTED("ACTIVITY_STARTED", "活动开始"),

    /**
     * 活动完成
     */
    ACTIVITY_COMPLETED("ACTIVITY_COMPLETED", "活动完成"),

    /**
     * 活动取消
     */
    ACTIVITY_CANCELLED("ACTIVITY_CANCELLED", "活动取消"),

    /**
     * 任务分配
     */
    TASK_ASSIGNED("TASK_ASSIGNED", "任务分配"),

    /**
     * 任务创建
     */
    TASK_CREATED("TASK_CREATED", "任务创建"),

    /**
     * 任务完成
     */
    TASK_COMPLETED("TASK_COMPLETED", "任务完成"),

    /**
     * 连接线事件
     */
    SEQUENCEFLOW_TAKEN("SEQUENCEFLOW_TAKEN", "连接线事件");


    private final String code;

    private final String message;

    EventTypeEnum(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
