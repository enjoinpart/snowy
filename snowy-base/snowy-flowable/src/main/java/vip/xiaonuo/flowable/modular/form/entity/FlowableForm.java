package vip.xiaonuo.flowable.modular.form.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 流程表单实体
 *
 * @author xuyuxiang
 * @date 2020/8/14 14:41
 **/
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_form")
public class FlowableForm extends BaseEntity {

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)
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
}
