package vip.xiaonuo.flowable.modular.option.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.option.param.FlowableOptionParam;
import vip.xiaonuo.flowable.modular.option.service.FlowableOptionService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 流程选项控制器，在流程定义部署时自动插入
 *
 * @author xuyuxiang
 * @date 2020/4/17 16:31
 */
@RestController
public class FlowableOptionController {

    @Resource
    private FlowableOptionService flowableOptionService;

    /**
     * 编辑流程选项
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:34
     */
    @Permission
    @PostMapping("/flowableOption/edit")
    @BusinessLog(title = "流程选项_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableOptionParam.edit.class) FlowableOptionParam flowableOptionParam) {
        flowableOptionService.edit(flowableOptionParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程选项
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:34
     */
    @Permission
    @GetMapping("/flowableOption/detail")
    @BusinessLog(title = "流程选项_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableOptionParam.detail.class) FlowableOptionParam flowableOptionParam) {
        return new SuccessResponseData(flowableOptionService.detail(flowableOptionParam));
    }

    /**
     * 根据流程定义查询选项列表
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:34
     */
    @Permission
    @GetMapping("/flowableOption/list")
    @BusinessLog(title = "流程选项_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(@Validated(FlowableOptionParam.list.class) FlowableOptionParam flowableOptionParam) {
        return new SuccessResponseData(flowableOptionService.list(flowableOptionParam));
    }
}
