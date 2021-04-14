package vip.xiaonuo.flowable.modular.shortcut.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 流程申请入口参数
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:49
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableShortcutParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class})
    private Long id;

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id不能为空，请检查processDefinitionId参数", groups = {add.class, edit.class})
    private String processDefinitionId;

    /**
     * 名称
     */
    @NotBlank(message = "名称不能为空，请检查name参数", groups = {add.class, edit.class})
    private String name;

    /**
     * 分类
     */
    @NotNull(message = "分类不能为空，请检查category参数", groups = {add.class, edit.class})
    private String category;

    /**
     * 分类名称
     */
    @NotBlank(message = "分类名称不能为空，请检查categoryName参数", groups = {add.class, edit.class})
    private String categoryName;

    /**
     * 描述
     */
    private String description;

    /**
     * 定义版本
     */
    @NotNull(message = "定义版本不能为空，请检查version参数", groups = {add.class, edit.class})
    private Integer version;

    /**
     * 图标
     */
    @NotBlank(message = "图标不能为空，请检查icon参数", groups = {add.class, edit.class})
    private String icon;

    /**
     * 排序
     */
    @NotNull(message = "排序不能为空，请检查sort参数", groups = {add.class, edit.class})
    private Integer sort;

    /**
     * 状态（字典 0正常 1停用 2删除）
     */
    @NotNull(message = "状态不能为空，请检查status参数", groups = {changeStatus.class})
    private Integer status;
}
