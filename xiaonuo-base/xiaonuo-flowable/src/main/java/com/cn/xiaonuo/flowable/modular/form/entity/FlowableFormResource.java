package com.cn.xiaonuo.flowable.modular.form.entity;

import com.cn.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 表单资源实体
 *
 * @author xuyuxiang
 * @date 2020/8/14 14:41
 **/
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_form_resource")
public class FlowableFormResource extends BaseEntity {

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 表单编码
     */
    private String code;

    /**
     * 表单名称
     */
    private String name;

    /**
     * 表单类型（1自行开发 2在线设计）
     */
    private Integer type;

    /**
     * 表单分类
     */
    private String category;

    /**
     * PC端表单数据，适用于在线设计的表单
     */
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
    @TableField(insertStrategy = FieldStrategy.IGNORED, updateStrategy = FieldStrategy.IGNORED)
    private String remark;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    private Integer status;
}
