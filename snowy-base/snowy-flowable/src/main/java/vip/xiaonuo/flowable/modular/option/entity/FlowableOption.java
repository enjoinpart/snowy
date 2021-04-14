package vip.xiaonuo.flowable.modular.option.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.entity.BaseEntity;

/**
 * 流程选项表
 *
 * @author xuyuxiang
 * @date 2020/4/17 16:35
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_option")
public class FlowableOption extends BaseEntity {

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
     * 标题规则
     */
    private String title;

    /**
     * 自动完成第一个任务（Y-是，N-否）
     */
    private String jumpFirst;

    /**
     * 跳过相同处理人（Y-是，N-否）
     */
    private String smartComplete;
}
