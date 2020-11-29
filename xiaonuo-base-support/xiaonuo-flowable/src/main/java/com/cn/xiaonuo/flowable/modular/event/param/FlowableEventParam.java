package com.cn.xiaonuo.flowable.modular.event.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
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
public class FlowableEventParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class})
    private Long id;

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id不能为空，请检查processDefinitionId参数", groups = {add.class, edit.class, list.class})
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
     * 事件节点类型（字典 1全局 2节点）
     */
    @NotNull(message = "节点类型不能为空，请检查nodeType参数", groups = {add.class, edit.class})
    private Integer nodeType;

    /**
     * 名称
     */
    @NotBlank(message = "名称不能为空，请检查name参数", groups = {add.class, edit.class})
    private String name;

    /**
     * 类型（字典 见事件类型字典）
     */
    @NotBlank(message = "类型不能为空，请检查type参数", groups = {add.class, edit.class})
    private String type;

    /**
     * 脚本
     */
    @NotBlank(message = "脚本不能为空，请检查script参数", groups = {add.class, edit.class})
    private String script;

    /**
     * 执行顺序（越小越先执行）
     */
    @NotNull(message = "执行顺序不能为空，请检查execSort参数", groups = {add.class, edit.class})
    private Integer execSort;

    /**
     * 备注
     */
    private String remark;
}
