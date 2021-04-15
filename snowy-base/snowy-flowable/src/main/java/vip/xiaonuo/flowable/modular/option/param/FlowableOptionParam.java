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
package vip.xiaonuo.flowable.modular.option.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.validation.flag.FlagValue;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 流程事件参数
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:58
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableOptionParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class})
    private Long id;

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id不能为空，请检查processDefinitionId参数", groups = {edit.class, list.class})
    private String processDefinitionId;

    /**
     * 标题规则
     */
    private String title;

    /**
     * 自动完成第一个任务（Y-是，N-否）
     */
    @NotBlank(message = "自动完成第一个任务不能为空，请检查jumpFirst参数", groups = {edit.class})
    @FlagValue(message = "自动完成第一个任务格式错误，正确格式应该Y或者N，请检查jumpFirst参数", groups = {edit.class})
    private String jumpFirst;

    /**
     * 跳过相同处理人（Y-是，N-否）
     */
    @NotBlank(message = "跳过相同处理人不能为空，请检查smartComplete参数", groups = {edit.class})
    @FlagValue(message = "跳过相同处理人格式错误，正确格式应该Y或者N，请检查smartComplete参数", groups = {edit.class})
    private String smartComplete;
}
