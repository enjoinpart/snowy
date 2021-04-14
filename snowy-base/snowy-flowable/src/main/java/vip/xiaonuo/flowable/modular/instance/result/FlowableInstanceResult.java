package vip.xiaonuo.flowable.modular.instance.result;

import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;

import java.util.Date;

/**
 * 流程实例结果集
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:45
 */
@Data
public class FlowableInstanceResult {

    /**
     * 流程实例id
     */
    private String id;

    /**
     * 流程实例名称
     */
    private String name;

    /**
     * 业务主键
     */
    private String businessKey;

    /**
     * 流程开启时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    /**
     * 格式化后的流程开启时间（如3分钟前）
     */
    private String formatStartTime;

    /**
     * 流程结束时间
     */
    private Date endTime;

    /**
     * 格式化后的流程结束时间（如3分钟前）
     */
    private String formatEndTime;

    /**
     * 流程发起人id
     */
    private String startUserId;

    /**
     * 流程发起人姓名
     */
    private String startUserName;

    /**
     * 是否结束
     */
    private Boolean ended;

    /**
     * 流程实例是否挂起
     */
    private Boolean suspended;

    /**
     * 流程定义相关
     */
    private FlowableDefinitionResult procDef;
}
