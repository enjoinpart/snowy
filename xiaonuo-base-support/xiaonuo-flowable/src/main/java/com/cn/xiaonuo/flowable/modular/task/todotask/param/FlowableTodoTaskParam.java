package com.cn.xiaonuo.flowable.modular.task.todotask.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 待办任务参数
 *
 * @author xuyuxiang
 * @date 2020/4/20 9:52
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableTodoTaskParam extends BaseParam {

    /**
     * 流程名称
     */
    private String processName;

    /**
     * 任务名称
     */
    private String name;

    /**
     * 分类
     */
    private String category;

    /**
     * 优先级
     */
    private Integer priority;

}
