package com.cn.xiaonuo.flowable.modular.task.handletask.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 待办任务相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/29 15:39
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_TODO_TASK_EXCEPTION_ENUM)
public enum FlowableHandleTaskExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 任务不存在
     */
    TASK_NOT_EXIST(1, "任务不存在"),

    /**
     * 签收失败，任务已被其他人办理
     */
    TASK_HAS_BEEN_HANDLE(2, "签收失败，任务已被其他人办理"),

    /**
     * 任务委托状态异常
     */
    TASK_DELEGATE_STATUS_ERROR(3, "任务委托状态异常"),

    /**
     * 活动节点id与任务id不匹配
     */
    TASK_ACT_ID_ERROR(4, "活动节点id与任务id不匹配，请检查targetActId参数"),

    /**
     * 加签失败，该任务非会签（或签）任务
     */
    TASK_ADD_SIGN_ERROR(5, "加签失败，该任务不是会签（或签）任务或节点配置错误"),

    /**
     * 减签失败，该任务非会签（或签）任务
     */
    TASK_DELETE_SIGN_ERROR(6, "减签失败，该任务不是会签（或签）任务或节点配置错误"),

    /**
     * 任务id为空
     */
    TASK_ID_EMPTY(7, "任务id为空，请检查actId参数"),

    /**
     * 流程定义id为空
     */
    PROCESS_DEFINITION_ID_EMPTY(8, "流程定义id为空，请检查processDefinitionId参数"),

    /**
     * 流程状态不正确
     */
    CAN_NOT_START(9, "流程状态不正确，无法发起申请");

    private final Integer code;

    private final String message;

    FlowableHandleTaskExceptionEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public Integer getCode() {
        return ExpEnumCodeFactory.getExpEnumCode(this.getClass(), code);
    }

    @Override
    public String getMessage() {
        return message;
    }

}
