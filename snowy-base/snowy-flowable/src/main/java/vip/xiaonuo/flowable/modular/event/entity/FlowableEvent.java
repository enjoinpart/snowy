package vip.xiaonuo.flowable.modular.event.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.entity.BaseEntity;

/**
 * 流程事件表
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:54
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_event")
public class FlowableEvent extends BaseEntity {

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
     * 活动节点id
     */
    private String actId;

    /**
     * 活动节点名称
     */
    private String actName;

    /**
     * 事件节点类型（字典 1全局 2节点）
     */
    private Integer nodeType;

    /**
     * 名称
     */
    private String name;

    /**
     * 类型（见事件类型字典）
     */
    private String type;

    /**
     * 脚本
     */
    private String script;

    /**
     * 执行顺序（越小越先执行）
     */
    private String execSort;

    /**
     * 备注
     */
    @TableField(insertStrategy = FieldStrategy.IGNORED, updateStrategy = FieldStrategy.IGNORED)
    private String remark;
}
