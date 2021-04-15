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
package vip.xiaonuo.flowable.modular.definition.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotEmpty;

/**
 * 流程定义参数
 *
 * @author xuyuxiang
 * @date 2020/4/14 19:28
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableDefinitionParam extends BaseParam {

    /**
     * 模型id
     */
    @NotEmpty(message = "模型id不能为空，请检查modelId参数", groups = {deploy.class})
    private String modelId;

    /**
     * 流程分类编码
     */
    @NotEmpty(message = "流程分类不能为空，请检查category参数", groups = {deploy.class})
    private String category;

    /**
     * 流程定义id
     */
    @NotEmpty(message = "流程定义id不能为空，请检查id参数",
            groups = {delete.class, export.class, mapping.class, suspend.class, active.class, trace.class, list.class})
    private String id;

    /**
     * 流程定义key
     */
    private String key;

    /**
     * 流程定义名称
     */
    private String name;

    /**
     * 流程定义版本
     */
    private Integer version;

    /**
     * 是否是最新版
     */
    private Boolean lastedVersion = true;

    /**
     * 流程定义是否挂起
     */
    private Boolean suspended = false;
}
