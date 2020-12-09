package com.cn.xiaonuo.flowable.modular.category.result;

import lombok.Data;

/**
 * 流程分类结果集
 *
 * @author xuyuxiang
 * @date 2020/4/13 11:23
 */
@Data
public class FlowableCategoryResult {

    /**
     * 主键
     */
    private Long id;

    /**
     * 名称
     */
    private String name;

    /**
     * 编码
     */
    private String code;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 备注
     */
    private String remark;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    private Integer status;

    /**
     * 是否可编辑名称编码，当该分类下有流程定义时不可编辑
     */
    private boolean writable;
}
