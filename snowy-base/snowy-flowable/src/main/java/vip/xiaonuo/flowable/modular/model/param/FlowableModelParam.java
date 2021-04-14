package vip.xiaonuo.flowable.modular.model.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

import javax.validation.constraints.NotBlank;

/**
 * 流程模型参数
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:11
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableModelParam extends BaseParam {

    /**
     * id
     */
    @NotBlank(message = "id不能为空，请检查id参数", groups = {edit.class, delete.class, detail.class, trace.class, force.class})
    private String id;

    /**
     * 模型id
     */
    @NotBlank(message = "模型id不能为空，请检查id参数", groups = {force.class})
    private String modelId;

    /**
     * 名称
     */
    @NotBlank(message = "名称不能为空，请检查name参数", groups = {add.class, edit.class})
    private String name;

    /**
     * 编码
     */
    @NotBlank(message = "编码不能为空，请检查key参数", groups = {add.class, edit.class})
    private String key;

    /**
     * 描述
     */
    private String description;

}
