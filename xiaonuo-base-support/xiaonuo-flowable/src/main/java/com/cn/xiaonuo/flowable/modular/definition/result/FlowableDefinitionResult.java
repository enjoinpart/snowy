package com.cn.xiaonuo.flowable.modular.definition.result;

import lombok.Data;

/**
 * 流程定义结果集
 *
 * @author xuyuxiang
 * @date 2020/4/14 19:28
 */
@Data
public class FlowableDefinitionResult {

    /**
     * 流程定义id
     */
    private String id;

    /**
     * 流程定义key
     */
    private String key;

    /**
     * 流程定义名称
     */
    private String name;

    /**
     * 流程定义分类
     */
    private String category;

    /**
     * 流程定义分类名称
     */
    private String categoryName;

    /**
     * 流程定义描述
     */
    private String description;

    /**
     * 流程定义版本
     */
    private Integer version;

    /**
     * 流程定义是否挂起
     */
    private Boolean suspended;

    /**
     * 流程部署id
     */
    private String deploymentId;
}
