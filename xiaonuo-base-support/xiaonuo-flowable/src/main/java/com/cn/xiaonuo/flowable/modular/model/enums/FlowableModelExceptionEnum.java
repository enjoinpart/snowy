package com.cn.xiaonuo.flowable.modular.model.enums;

import com.cn.xiaonuo.core.annotion.ExpEnumType;
import com.cn.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import com.cn.xiaonuo.core.factory.ExpEnumCodeFactory;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import com.cn.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 表单管理相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@ExpEnumType(module = FlowExpEnumConstant.XIAONUO_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_MODEL_EXCEPTION_ENUM)
public enum FlowableModelExceptionEnum implements AbstractBaseExceptionEnum {

    /**
     * 表单不存在
     */
    MODEL_NOT_EXIST(1, "模型不存在"),

    /**
     * 模型编码重复
     */
    MODEL_KEY_REPEAT(2, "模型编码重复，请检查key参数"),

    /**
     * 模型名称重复
     */
    MODEL_NAME_REPEAT(3, "模型名称重复，请检查name参数"),

    /**
     * 模型编辑失败
     */
    MODEL_EDIT_ERROR(4, "模型编辑失败"),

    /**
     * 要导入的流程模型文件不存在
     */
    MODEL_FILE_EMPTY(5, "要导入的流程模型文件不存在，请检查file参数"),

    /**
     * 要导入的流程模型文件格式不正确
     */
    MODEL_FILE_SUFFIX_ERROR(6, "要导入的流程模型文件格式不正确，请选择.bpmn或.bpmn20.xml文件"),

    /**
     * 流程模型文件无资源
     */
    MODEL_IMPORT_NO_RESOURCE(7, "流程模型文件无资源"),

    /**
     * 模型导入失败
     */
    MODEL_IMPORT_ERROR(8, "模型导入失败");

    private final Integer code;

    private final String message;

    FlowableModelExceptionEnum(Integer code, String message) {
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
