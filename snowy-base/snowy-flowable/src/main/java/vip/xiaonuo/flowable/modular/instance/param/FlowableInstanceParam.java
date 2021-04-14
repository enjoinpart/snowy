package vip.xiaonuo.flowable.modular.instance.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

/**
 * 流程实例参数
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:16
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableInstanceParam extends BaseParam {

    /**
     * 流程实例id
     */
    @NotEmpty(message = " 流程实例id不能为空，请检查id参数", groups = {dropDown.class, trace.class, commentHistory.class, end.class})
    private String id;

    /**
     * 流程分类
     */
    private String category;

    /**
     * 是否结束
     */
    private Boolean ended;

    /**
     * 发起人id
     */
    private String startUserId;

    /**
     * 终止意见
     */
    @NotBlank(message = "意见为空，请检查comment参数", groups = {end.class})
    private String comment;
}
