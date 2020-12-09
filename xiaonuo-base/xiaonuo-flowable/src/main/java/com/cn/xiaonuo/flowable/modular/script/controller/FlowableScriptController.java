package com.cn.xiaonuo.flowable.modular.script.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.script.param.FlowableScriptParam;
import com.cn.xiaonuo.flowable.modular.script.service.FlowableScriptService;
import com.cn.xiaonuo.flowable.modular.script.service.FlowableScriptService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 流程脚本控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:38
 */
@RestController
public class FlowableScriptController {

    @Resource
    private FlowableScriptService flowableScriptService;

    /**
     * 查询流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:47
     */
    @Permission
    @GetMapping("/flowableScript/page")
    @BusinessLog(title = "流程脚本_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableScriptParam flowableScriptParam) {
        return new SuccessResponseData(flowableScriptService.page(flowableScriptParam));
    }

    /**
     * 流程脚本列表
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:47
     */
    @Permission
    @GetMapping("/flowableScript/list")
    @BusinessLog(title = "流程脚本_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableScriptParam flowableScriptParam) {
        return new SuccessResponseData(flowableScriptService.list(flowableScriptParam));
    }

    /**
     * 添加流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/17 16:48
     */
    @Permission
    @PostMapping("/flowableScript/add")
    @BusinessLog(title = "流程脚本_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableScriptParam.add.class) FlowableScriptParam flowableScriptParam) {
        flowableScriptService.add(flowableScriptParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/17 17:10
     */
    @Permission
    @PostMapping("/flowableScript/delete")
    @BusinessLog(title = "流程脚本_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableScriptParam.delete.class) FlowableScriptParam flowableScriptParam) {
        flowableScriptService.delete(flowableScriptParam);
        return new SuccessResponseData();
    }

    /**
     * 编辑流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/17 17:10
     */
    @Permission
    @PostMapping("/flowableScript/edit")
    @BusinessLog(title = "流程脚本_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableScriptParam.edit.class) FlowableScriptParam flowableScriptParam) {
        flowableScriptService.edit(flowableScriptParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/17 17:11
     */
    @Permission
    @GetMapping("/flowableScript/detail")
    @BusinessLog(title = "流程脚本_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableScriptParam.detail.class) FlowableScriptParam flowableScriptParam) {
        return new SuccessResponseData(flowableScriptService.detail(flowableScriptParam));
    }
}
