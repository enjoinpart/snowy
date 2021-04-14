package vip.xiaonuo.flowable.modular.button.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.button.param.FlowableButtonParam;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 活动节点按钮控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:28
 */
@RestController
public class FlowableButtonController {

    @Resource
    private FlowableButtonService flowableActButtonService;

    /**
     * 添加活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:42
     */
    @Permission
    @PostMapping("/flowableButton/add")
    @BusinessLog(title = "流程活动节点按钮_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableButtonParam.add.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.add(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 删除活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:42
     */
    @Permission
    @PostMapping("/flowableButton/delete")
    @BusinessLog(title = "流程活动节点按钮_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableButtonParam.delete.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.delete(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 添加活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:43
     */
    @Permission
    @PostMapping("/flowableButton/edit")
    @BusinessLog(title = "流程活动节点按钮_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableButtonParam.edit.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.edit(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 查看活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:44
     */
    @Permission
    @GetMapping("/flowableButton/detail")
    @BusinessLog(title = "流程活动节点按钮_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableButtonParam.detail.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.detail(flowableButtonParam));
    }

    /**
     * 根据流程定义查询活动节点按钮列表（用于定义配置按钮）
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableButton/list")
    @BusinessLog(title = "流程活动节点按钮_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(@Validated(FlowableButtonParam.list.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.list(flowableButtonParam));
    }

    /**
     * 根据任务id查询当前活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/8/3 16:42
     **/
    @Permission
    @GetMapping("/flowableButton/trace")
    @BusinessLog(title = "流程活动节点按钮_当前节点按钮", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData trace(@Validated(FlowableButtonParam.trace.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.trace(flowableButtonParam));
    }
}
