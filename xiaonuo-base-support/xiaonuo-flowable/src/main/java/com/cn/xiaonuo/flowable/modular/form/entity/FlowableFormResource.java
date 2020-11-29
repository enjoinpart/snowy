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
     * 表单分类
     */
    private String category;

    /**
     * 表单json数据
     */
    private String formJson;

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
