package com.cn.xiaonuo.flowable.modular.form.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 流程表单参数
 *
 * @author xuyuxiang
 * @date 2020/8/3 14:17
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableFormParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class})
    private Long id;

    /**
     * 表单id
     */
    @NotNull(message = " 表单id不能为空，请检查formId参数", groups = {add.class, edit.class, delete.class, detail.class})
    private Long formId;

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id不能为空，请检查processDefinitionId参数", groups = {list.class, trace.class, force.class})
    private String processDefinitionId;

    /**
     * 活动节点id
     */
    @NotBlank(message = "活动节点id不能为空，请检查actId参数", groups = {force.class})
    private String actId;

    /**
     * 活动节点名称
     */
    private String actName;

    /**
     * 表单节点类型（字典 1启动 2全局 3节点）
     */
    @NotNull(message = " 表单节点类型不能为空，请检查nodeType参数", groups = {add.class, edit.class})
    private Integer nodeType;

}
