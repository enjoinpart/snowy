package com.cn.xiaonuo.flowable.modular.button.entity;

import com.cn.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

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
