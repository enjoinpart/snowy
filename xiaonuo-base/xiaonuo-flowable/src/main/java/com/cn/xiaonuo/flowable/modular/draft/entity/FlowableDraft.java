package com.cn.xiaonuo.flowable.modular.draft.entity;

import com.cn.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 申请草稿实体
 *
 * @author xuyuxiang
 * @date 2020/9/9 14:58
 **/
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_draft")
public class FlowableDraft extends BaseEntity {

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
     * 表单布局数据
     */
    private String formJson;

    /**
     * 表单填写数据
     */
    private String formData;

    /**
     * 流程名称
     */
    private String processName;

    /**
     * 分类编码
     */
    private String category;

    /**
     * 分类名称
     */
    private String categoryName;
}
