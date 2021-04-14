package vip.xiaonuo.flowable.modular.task.donetask.result;

import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;

import java.util.Date;

/**
 * 已办任务结果集
 *
 * @author xuyuxiang
 * @date 2020/4/20 9:59
 */
@Data
public class FlowableDoneTaskResult {

    /**
     * 任务id
     */
    private String id;

    /**
     * 任务名称
     */
    private String name;

    /**
     * 活动节点id
     */
    private String activityId;

    /**
     * 执行id
     */
    private String executionId;

    /**
     * 办理人
     */
    private String assignee;

    /**
     * 办理人姓名
     */
    private String assigneeName;

    /**
     * 办理人信息（自定义格式）
     */
    private String assigneeInfo;

    /**
     * 优先级
     */
    private Integer priority;

    /**
     * 任务创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 格式化后的任务创建时间（如3分钟前）
     */
    private String formatCreateTime;

    /**
     * 任务签收时间（限指定多个人时，其中一个人签收后即为自己的任务）
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date claimTime;

    /**
     * 任务完成时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

    /**
     * 格式化后的流程开启时间（如3分钟前）
     */
    private String formatEndTime;

    /**
     * 任务历时
     */
    private String duration;

    /**
     * 任务期限
     */
    private Date dueDate;

    /**
     * 委托状态（0委托中 1委托结束）
     */
    private Integer delegationState;

    /**
     * 流程实例相关信息(包含了流程定义相关信息）
     */
    private FlowableInstanceResult procIns;
}
