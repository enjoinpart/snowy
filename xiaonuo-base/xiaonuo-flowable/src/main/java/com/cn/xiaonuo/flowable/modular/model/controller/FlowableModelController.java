package com.cn.xiaonuo.flowable.modular.model.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.context.constant.ConstantContextHolder;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.exception.DemoException;
import com.cn.xiaonuo.core.pojo.base.param.BaseParam;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.model.param.FlowableModelParam;
import com.cn.xiaonuo.flowable.modular.model.service.FlowableModelService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;

/**
 * 流程模型控制器
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:11
 */
@RestController
public class FlowableModelController {

    @Resource
    private FlowableModelService flowableModelService;

    /**
     * 查询流程模型
     *
     * @author xuyuxiang
     * @date 2020/8/15 17:21
     */
    @Permission
    @GetMapping("/flowableModel/list")
    @BusinessLog(title = "流程模型_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.list(flowableModelParam));
    }

    /**
     * 流程模型增加
     *
     * @author xuyuxiang
     * @date 2020/8/15 17:15
     */
    @Permission
    @PostMapping("/flowableModel/add")
    @BusinessLog(title = "流程模型_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableModelParam.add.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.add(flowableModelParam));
    }

    /**
     * 流程模型删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/delete")
    @BusinessLog(title = "流程模型_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableModelParam.delete.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableModelService.delete(flowableModelParam);
        return new SuccessResponseData();
    }

    /**
     * 流程模型编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableModel/edit")
    @BusinessLog(title = "流程模型_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableModelParam.edit.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.edit(flowableModelParam));
    }

    /**
     * 流程模型预览
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:14
     */
    @Permission
    @GetMapping("/flowableModel/preview")
    @BusinessLog(title = "流程模型_预览", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData preview(@Validated(BaseParam.detail.class) FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.preview(flowableModelParam));
    }

    /**
     * 模型版本
     *
     * @author xuyuxiang
     * @date 2020/8/16 1:50
     */
    @Permission
    @GetMapping("/flowableModel/version")
    @BusinessLog(title = "流程模型_版本", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData version(@Validated(FlowableModelParam.trace.class) FlowableModelParam flowableModelParam) {
        return new SuccessResponseData(flowableModelService.version(flowableModelParam));
    }

    /**
     * 流程模型设为新版
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/setAsNew")
    @BusinessLog(title = "流程模型_设为新版", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData setAsNew(@RequestBody @Validated(FlowableModelParam.force.class) FlowableModelParam flowableModelParam) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        flowableModelService.setAsNew(flowableModelParam);
        return new SuccessResponseData();
    }

    /**
     * 流程模型导入
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableModel/importModel")
    @BusinessLog(title = "流程模型_导入", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData importModel(@RequestPart("file") MultipartFile file) {
        // 演示环境开启，则不允许操作
        if (ConstantContextHolder.getDemoEnvFlag()) {
            throw new DemoException();
        }
        return new SuccessResponseData(flowableModelService.importModel(file));
    }

}
