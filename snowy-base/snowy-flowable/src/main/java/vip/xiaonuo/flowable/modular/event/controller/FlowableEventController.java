package vip.xiaonuo.flowable.modular.event.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.event.param.FlowableEventParam;
import vip.xiaonuo.flowable.modular.event.service.FlowableEventService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 流程事件控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:53
 */
@RestController
public class FlowableEventController {

    @Resource
    private FlowableEventService flowableEventService;

    /**
     * 添加流程事件
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:31
     */
    @Permission
    @PostMapping("/flowableEvent/add")
    @BusinessLog(title = "流程事件_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableEventParam.add.class) FlowableEventParam flowableEventParam) {
        flowableEventService.add(flowableEventParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程事件
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:31
     */
    @Permission
    @PostMapping("/flowableEvent/delete")
    @BusinessLog(title = "流程事件_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableEventParam.delete.class) FlowableEventParam flowableEventParam) {
        flowableEventService.delete(flowableEventParam);
        return new SuccessResponseData();
    }

    /**
     * 编辑流程事件
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @PostMapping("/flowableEvent/edit")
    @BusinessLog(title = "流程事件_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableEventParam.edit.class) FlowableEventParam flowableEventParam) {
        flowableEventService.edit(flowableEventParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程事件
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableEvent/detail")
    @BusinessLog(title = "流程事件_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableEventParam.detail.class) FlowableEventParam flowableEventParam) {
        return new SuccessResponseData(flowableEventService.detail(flowableEventParam));
    }

    /**
     * 根据流程定义查询事件列表
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableEvent/list")
    @BusinessLog(title = "流程事件_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(@Validated(FlowableEventParam.list.class) FlowableEventParam flowableEventParam) {
        return new SuccessResponseData(flowableEventService.list(flowableEventParam));
    }
}
