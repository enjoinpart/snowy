package vip.xiaonuo.flowable.modular.form.result;

import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import lombok.Data;

/**
 * 流程表单结果集
 *
 * @author xuyuxiang
 * @date 2020/8/14 14:41
 **/
@Data
public class FlowableFormResult {

    /**
     * 主键
     */
    private Long id;

    /**
     * 表单id
     */
    private Long formId;

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
     * 表单节点类型（字典 1启动 2全局 3节点）
     */
    private Integer nodeType;

    /**
     * 表单信息
     */
    private FlowableFormResource flowableFormResource;
}
