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
package vip.xiaonuo.flowable.modular.button.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.entity.BaseEntity;

/**
 * 活动节点按钮表
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:01
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_button")
public class FlowableButton extends BaseEntity {

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 流程定义id
     */
    private String processDefinitionId;

    /**
     * 活动节点id
     */
    private String actId;

    /**
     * 活动节点名称
     */
    private String actName;

    /**
     * 提交（Y-是，N-否）
     */
    private String submitBtn;

    /**
     * 保存（Y-是，N-否）
     */
    private String saveBtn;

    /**
     * 退回（Y-是，N-否）
     */
    private String backBtn;

    /**
     * 转办（Y-是，N-否）
     */
    private String turnBtn;

    /**
     * 指定（Y-是，N-否）
     */
    private String nextBtn;

    /**
     * 委托（Y-是，N-否）
     */
    private String entrustBtn;

    /**
     * 终止（Y-是，N-否）
     */
    private String endBtn;

    /**
     * 追踪（Y-是，N-否）
     */
    private String traceBtn;

    /**
     * 挂起（Y-是，N-否）
     */
    private String suspendBtn;

    /**
     * 跳转（Y-是，N-否）
     */
    private String jumpBtn;

    /**
     * 加签（Y-是，N-否）
     */
    private String addSignBtn;

    /**
     * 减签（Y-是，N-否）
     */
    private String deleteSignBtn;
}
