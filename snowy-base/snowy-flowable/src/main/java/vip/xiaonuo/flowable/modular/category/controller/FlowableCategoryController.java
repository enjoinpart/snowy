package vip.xiaonuo.flowable.modular.category.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.category.param.FlowableCategoryParam;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
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
 * 流程分类控制器
 *
 * @author xuyuxiang
 * @date 2020/4/13 11:24
 */
@RestController
public class FlowableCategoryController {

    @Resource
    private FlowableCategoryService flowableCategoryService;

    /**
     * 流程分类查询
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @GetMapping("/flowableCategory/page")
    @BusinessLog(title = "流程分类_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.page(flowableCategoryParam));
    }

    /**
     * 流程分类列表
     *
     * @author xuyuxiang
     * @date 2020/6/22 16:37
     */
    @Permission
    @GetMapping("/flowableCategory/list")
    @BusinessLog(title = "流程分类_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.list(flowableCategoryParam));
    }

    /**
     * 添加流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/add")
    @BusinessLog(title = "系流程分类_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableCategoryParam.add.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.add(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/delete")
    @BusinessLog(title = "流程分类_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableCategoryParam.delete.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.delete(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 编辑流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:25
     */
    @Permission
    @PostMapping("/flowableCategory/edit")
    @BusinessLog(title = "流程分类_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableCategoryParam.edit.class) FlowableCategoryParam flowableCategoryParam) {
        flowableCategoryService.edit(flowableCategoryParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 11:26
     */
    @Permission
    @GetMapping("/flowableCategory/detail")
    @BusinessLog(title = "流程分类_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableCategoryParam.detail.class) FlowableCategoryParam flowableCategoryParam) {
        return new SuccessResponseData(flowableCategoryService.detail(flowableCategoryParam));
    }
}
