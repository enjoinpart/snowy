package com.cn.xiaonuo.flowable.modular.definition.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotEmpty;

/**
 * 流程定义参数
 *
 * @author xuyuxiang
 * @date 2020/4/14 19:28
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableDefinitionParam extends BaseParam {

    /**
     * 模型id
     */
    @NotEmpty(message = "模型id不能为空，请检查modelId参数", groups = {deploy.class})
    private String modelId;

    /**
     * 流程分类编码
     */
    @NotEmpty(message = "流程分类不能为空，请检查category参数", groups = {deploy.class})
    private String category;

    /**
     * 流程定义id
     */
    @NotEmpty(message = "流程定义id不能为空，请检查id参数",
            groups = {delete.class, export.class, mapping.class, suspend.class, active.class, trace.class, list.class})
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
     * 流程定义版本
     */
    private Integer version;

    /**
     * 是否是最新版
     */
    private Boolean lastedVersion = true;

    /**
     * 流程定义是否挂起
     */
    private Boolean suspended = false;
}
