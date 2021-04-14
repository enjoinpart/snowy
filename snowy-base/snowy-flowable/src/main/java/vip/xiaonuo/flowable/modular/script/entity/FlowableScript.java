package vip.xiaonuo.flowable.modular.script.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 流程脚本表
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:59
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_script")
public class FlowableScript extends BaseEntity {

    /**
     * 主键
     */
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;

    /**
     * 名称
     */
    private String name;

    /**
     * 类别（字典 1流程脚本 2系统脚本）
     */
    private Integer type;

    /**
     * 语言（字典1 groovy)
     */
    private Integer lang;

    /**
     * 脚本内容
     */
    private String content;

    /**
     * 描述
     */
    @TableField(insertStrategy = FieldStrategy.IGNORED, updateStrategy = FieldStrategy.IGNORED)
    private String remark;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    private Integer status;
}
