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
package vip.xiaonuo.flowable.modular.form.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 表单管理参数
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableFormResourceParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class, force.class})
    private Long id;

    /**
     * 表单编码
     */
    @NotBlank(message = "表单编码不能为空，请检查code参数", groups = {add.class, edit.class})
    private String code;

    /**
     * 表单名称
     */
    @NotBlank(message = "表单名称不能为空，请检查name参数", groups = {add.class, edit.class})
    private String name;

    /**
     * 表单类型（字典1 自行开发 2在线设计）
     */
    @NotNull(message = "表单类型不能为空，请检查type参数", groups = {add.class, edit.class})
    private Integer type;

    /**
     * 表单分类
     */
    @NotBlank(message = "表单分类不能为空，请检查category参数", groups = {add.class, edit.class})
    private String category;

    /**
     * PC端表单数据，适用于在线设计的表单
     */
    @NotBlank(message = "表单json数据不能为空，请检查formJson参数", groups = {force.class})
    private String formJson;

    /**
     * PC端表单url，适用于自行开发的表单
     */
    private String formUrl;

    /**
     * 移动端表单url
     */
    private String appFormUrl;

    /**
     * 备注
     */
    private String remark;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    @NotNull(message = "状态不能为空，请检查status参数", groups = changeStatus.class)
    private Integer status;

}
