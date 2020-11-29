package com.cn.xiaonuo.flowable.modular.button.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 活动节点按钮参数
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:59
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableButtonParam extends BaseParam {

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
    @NotBlank(message = "活动节点id不能为空，请检查actId参数", groups = {add.class, edit.class, trace.class})
    private String actId;

    /**
     * 活动节点名称
     */
    @NotBlank(message = "活动节点名称不能为空，请检查actName参数", groups = {add.class, edit.class})
    private String actName;

    /**
     * 提交（Y-是，N-否）
     */
    private String submit;

    /**
     * 保存（Y-是，N-否）
     */
    private String save;

    /**
     * 退回（Y-是，N-否）
     */
    private String back;

    /**
     * 转办（Y-是，N-否）
     */
    private String turn;

    /**
     * 指定（Y-是，N-否）
     */
    private String next;

    /**
     * 委托（Y-是，N-否）
     */
    private String entrust;

    /**
     * 终止（Y-是，N-否）
     */
    private String end;

    /**
     * 追踪（Y-是，N-否）
     */
    private String trace;

    /**
     * 挂起（Y-是，N-否）
     */
    private String suspend;

    /**
     * 跳转（Y-是，N-否）
     */
    private String jump;

    /**
     * 加签（Y-是，N-否）
     */
    private String addSign;

    /**
     * 减签（Y-是，N-否）
     */
    private String deleteSign;
}
