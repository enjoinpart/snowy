package com.cn.xiaonuo.flowable.modular.definition.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程定义相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/14 20:01
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_DEFINITION_EXCEPTION_ENUM)
public enum FlowableDefinitionExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 流程模型不存在
     */
    MODEL_NOT_EXIST(1, "流程模型不存在"),

    /**
     * 流程模型无资源
     */
    MODEL_HAS_NO_RESOURCE(2, "流程模型无资源"),

    /**
     * 流程定义不存在
     */
    DEFINITION_NOT_EXIST(3, "流程定义不存在"),

    /**
     * 流程部署失败
     */
    DEPLOYMENT_ERROR(4, "流程部署失败"),

    /**
     * 流程部署不存在
     */
    DEPLOYMENT_NOT_EXIST(5, "流程部署不存在"),

    /**
     * 流程文件导出失败
     */
    RESOURCE_EXPORT_ERROR(6, "流程导出失败，请联系管理员"),

    /**
     * 该流程定义已处于挂起状态
     */
    DEFINITION_SUSPEND(7, "该流程定义已处于挂起状态"),

    /**
     * 该流程定义已处于激活状态
     */
    DEFINITION_ACTIVE(8, "该流程定义已处于激活状态");

    private final Integer code;

    private final String message;

    FlowableDefinitionExceptionEnum(Integer code, String message) {
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
