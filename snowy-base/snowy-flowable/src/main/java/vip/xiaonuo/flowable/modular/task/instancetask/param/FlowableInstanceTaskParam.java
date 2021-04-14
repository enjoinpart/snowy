package vip.xiaonuo.flowable.modular.task.instancetask.param;

import vip.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vip.xiaonuo.core.pojo.base.param.BaseParam;

import javax.validation.constraints.NotEmpty;

/**
 * 实例任务参数
 *
 * @author xuyuxiang
 * @date 2020/5/25 17:09
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableInstanceTaskParam extends BaseParam {

    /**
     * 实例id
     */
    @NotEmpty(message = " 流程实例id不能为空，请检查processInstanceId参数", groups = {page.class})
    private String processInstanceId;

    /**
     * 任务名称
     */
    private String name;

    /**
     * 是否结束
     */
    private Boolean finished;

}
