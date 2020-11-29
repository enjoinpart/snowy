package com.cn.xiaonuo.flowable.modular.task.donetask.param;

import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 已办任务参数
 *
 * @author xuyuxiang
 * @date 2020/4/21 15:00
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlowableDoneTaskParam extends BaseParam {

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
