package com.cn.xiaonuo.flowable.modular.instance.result;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 审批记录结果
 *
 * @author xuyuxiang
 * @date 2020/4/29 17:03
 */
@Data
public class FlowableCommentHistoryResult {

    /**
     * 任务id
     */
    private String taskId;

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
     * 任务创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

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
     * 任务历时
     */
    private String duration;

    /**
     * 审批意见
     */
    private String comment;
}
