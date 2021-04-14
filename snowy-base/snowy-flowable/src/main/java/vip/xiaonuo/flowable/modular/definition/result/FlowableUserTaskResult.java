package vip.xiaonuo.flowable.modular.definition.result;

import lombok.Data;

/**
 * 流程定义用户任务节点结果
 *
 * @author xuyuxiang
 * @date 2020/4/26 11:27
 */
@Data
public class FlowableUserTaskResult {

    /**
     * 用户任务节点id
     */
    private String id;

    /**
     * 流程定义id
     */
    private String processDefinitionId;

    /**
     * 用户任务节点名称
     */
    private String name;

    /**
     * 办理人名称
     */
    private String assigneeName;

}
