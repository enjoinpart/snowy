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
package vip.xiaonuo.flowable.modular.task.handletask.enums;

import vip.xiaonuo.core.annotion.ExpEnumType;
import vip.xiaonuo.core.exception.enums.abs.AbstractBaseExceptionEnum;
import vip.xiaonuo.core.factory.ExpEnumCodeFactory;
import vip.xiaonuo.flowable.core.consts.FlowExpEnumConstant;

/**
 * 待办任务相关异常枚举
 *
 * @author xuyuxiang
 * @date 2020/4/29 15:39
 */
@ExpEnumType(module = FlowExpEnumConstant.SNOWY_FLOW_MODULE_EXP_CODE, kind = FlowExpEnumConstant.FLOWABLE_TODO_TASK_EXCEPTION_ENUM)
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
