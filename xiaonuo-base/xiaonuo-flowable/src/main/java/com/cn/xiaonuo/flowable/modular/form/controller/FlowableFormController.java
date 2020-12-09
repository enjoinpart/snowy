package com.cn.xiaonuo.flowable.modular.form.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import com.cn.xiaonuo.flowable.modular.form.service.FlowableFormService;
import com.cn.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 流程表单控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:23
 */
@RestController
public class FlowableFormController {

    @Resource(name = "xiaoNuoFlowableFormService")
    private FlowableFormService flowableFormService;

    /**
     * 流程表单列表
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:02
     **/
    @Permission
    @GetMapping("/flowableForm/list")
    @BusinessLog(title = "流程表单_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(@Validated(FlowableFormParam.list.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.list(flowableFormParam));
    }

    /**
     * 添加流程表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:57
     **/
    @Permission
    @PostMapping("/flowableForm/add")
    @BusinessLog(title = "流程表单_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableFormParam.add.class) FlowableFormParam flowableFormParam) {
        flowableFormService.add(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableForm/delete")
    @BusinessLog(title = "流程表单_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableFormParam.delete.class) FlowableFormParam flowableFormParam) {
        flowableFormService.delete(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableForm/edit")
    @BusinessLog(title = "流程表单_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableFormParam.edit.class) FlowableFormParam flowableFormParam) {
        flowableFormService.edit(flowableFormParam);
        return new SuccessResponseData();
    }

    /**
     * 流程表单查看
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableForm/detail")
    @BusinessLog(title = "流程表单_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableFormParam.detail.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.detail(flowableFormParam));
    }

    /**
     * 流程定义的启动表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/startFormData")
    @BusinessLog(title = "流程表单_启动表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData startFormData(@Validated(FlowableFormParam.trace.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getStartFormData(flowableFormParam));
    }

    /**
     * 流程定义的全局表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/globalFormData")
    @BusinessLog(title = "流程表单_全局表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData globalFormData(@Validated(FlowableFormParam.trace.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getGlobalFormData(flowableFormParam));
    }

    /**
     * 当前任务的任务表单
     *
     * @author xuyuxiang
     * @date 2020/8/3 14:17
     **/
    @Permission
    @GetMapping("/flowableForm/taskFormData")
    @BusinessLog(title = "流程表单_任务表单", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData taskFormData(@Validated(FlowableFormParam.force.class) FlowableFormParam flowableFormParam) {
        return new SuccessResponseData(flowableFormService.getTaskFormData(flowableFormParam));
    }
}
