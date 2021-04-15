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
package vip.xiaonuo.flowable.modular.task.handletask.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

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
