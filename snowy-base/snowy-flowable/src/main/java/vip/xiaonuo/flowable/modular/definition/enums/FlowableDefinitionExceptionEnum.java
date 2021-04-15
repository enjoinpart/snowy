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
package vip.xiaonuo.flowable.modular.definition.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 流程定义相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/14 20:01
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_DEFINITION_EXCEPTION_ENUM)
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
