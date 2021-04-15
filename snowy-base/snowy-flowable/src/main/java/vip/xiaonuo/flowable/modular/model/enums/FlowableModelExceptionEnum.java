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
package vip.xiaonuo.flowable.modular.model.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 表单管理相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_MODEL_EXCEPTION_ENUM)
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
