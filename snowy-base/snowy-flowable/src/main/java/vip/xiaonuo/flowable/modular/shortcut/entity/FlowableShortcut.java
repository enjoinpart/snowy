package vip.xiaonuo.flowable.modular.shortcut.entity;

import vip.xiaonuo.core.pojo.base.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 流程申请入口表
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:00
 */
@EqualsAndHashCode(callSuper = true)
@Data
@TableName("flw_shortcut")
public class FlowableShortcut extends BaseEntity {

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
     * 名称
     */
    private String name;

    /**
     * 分类编码
     */
    private String category;

    /**
     * 分类名称
     */
    private String categoryName;

    /**
     * 描述
     */
    private String description;

    /**
     * 定义版本
     */
    private Integer version;

    /**
     * 图标
     */
    private String icon;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    private Integer status;
}
