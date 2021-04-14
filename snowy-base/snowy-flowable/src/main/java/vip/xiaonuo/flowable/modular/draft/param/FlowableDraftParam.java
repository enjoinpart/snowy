package vip.xiaonuo.flowable.modular.draft.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 申请草稿参数
 *
 * @author xuyuxiang
 * @date 2020/9/9 15:01
 **/
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableDraftParam extends BaseParam {

    /**
     * 主键
     */
    @NotNull(message = "id不能为空，请检查id参数", groups = {delete.class})
    private Long id;

    /**
     * 流程定义id
     */
    @NotBlank(message = "流程定义id不能为空，请检查processDefinitionId参数", groups = {add.class})
    private String processDefinitionId;

    /**
     * 表单布局数据
     */
    @NotBlank(message = "表单布局数据不能为空，请检查formJson参数", groups = {add.class})
    private String formJson;

    /**
     * 表单填写数据
     */
    @NotBlank(message = "表单填写数据不能为空，请检查formData参数", groups = {add.class})
    private String formData;

    /**
     * 流程名称
     */
    @NotBlank(message = "流程名称不能为空，请检查processName参数", groups = {add.class})
    private String processName;

    /**
     * 分类编码
     */
    @NotBlank(message = "分类编码不能为空，请检查category参数", groups = {add.class})
    private String category;

    /**
     * 分类名称
     */
    @NotBlank(message = "分类名称不能为空，请检查categoryName参数", groups = {add.class})
    private String categoryName;
}
