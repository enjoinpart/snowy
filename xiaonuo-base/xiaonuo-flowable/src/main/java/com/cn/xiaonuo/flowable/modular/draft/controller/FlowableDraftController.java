package com.cn.xiaonuo.flowable.modular.draft.controller;

import com.cn.xiaonuo.core.annotion.BusinessLog;
import com.cn.xiaonuo.core.annotion.Permission;
import com.cn.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import com.cn.xiaonuo.core.pojo.response.ResponseData;
import com.cn.xiaonuo.core.pojo.response.SuccessResponseData;
import com.cn.xiaonuo.flowable.modular.draft.param.FlowableDraftParam;
import com.cn.xiaonuo.flowable.modular.draft.service.FlowableDraftService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 申请草稿控制器
 *
 * @author xuyuxiang
 * @date 2020/9/9 14:57
 **/
@RestController
public class FlowableDraftController {

    @Resource
    private FlowableDraftService flowableDraftService;

    /**
     * 申请草稿查询
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:02
     **/
    @Permission
    @GetMapping("/flowableDraft/page")
    @BusinessLog(title = "申请草稿_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableDraftParam flowableDraftParam) {
        return new SuccessResponseData(flowableDraftService.page(flowableDraftParam));
    }

    /**
     * 添加/编辑申请草稿
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:57
     **/
    @Permission
    @PostMapping("/flowableDraft/addOrUpdate")
    @BusinessLog(title = "申请草稿_增加或编辑", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData addOrUpdate(@RequestBody @Validated(FlowableDraftParam.add.class) FlowableDraftParam flowableDraftParam) {
        flowableDraftService.addOrUpdate(flowableDraftParam);
        return new SuccessResponseData();
    }

    /**
     * 申请草稿删除，提交成功删除，和主动删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableDraft/delete")
    @BusinessLog(title = "申请草稿_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableDraftParam.delete.class) FlowableDraftParam flowableDraftParam) {
        flowableDraftService.delete(flowableDraftParam);
        return new SuccessResponseData();
    }
}
