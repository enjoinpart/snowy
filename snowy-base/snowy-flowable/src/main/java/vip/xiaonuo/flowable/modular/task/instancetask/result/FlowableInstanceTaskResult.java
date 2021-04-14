package vip.xiaonuo.flowable.modular.task.instancetask.result;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 实例任务结果集
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:15
 */
@Data
public class FlowableInstanceTaskResult {

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
     * 实例id
     */
    private String processInstanceId;

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
     * 任务完成时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

    /**
     * 是否办理
     */
    private Boolean ended;

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

}
