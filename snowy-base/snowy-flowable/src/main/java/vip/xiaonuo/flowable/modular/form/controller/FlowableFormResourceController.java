package vip.xiaonuo.flowable.modular.form.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.base.param.BaseParam;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;

import javax.annotation.Resource;

/**
 * 表单管理控制器
 *
 * @author xuyuxiang
 * @date 2020/8/14 14:57
 **/
@RestController
public class FlowableFormResourceController {

    @Resource
    private FlowableFormResourceService flowableFormResourceService;

    /**
     * 表单查询
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:02
     **/
    @Permission
    @GetMapping("/flowableFormResource/page")
    @BusinessLog(title = "表单管理_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.page(flowableFormResourceParam));
    }

    /**
     * 表单查询
     *
     * @author xuyuxiang
     * @date 2020/8/17 18:00
     **/
    @Permission
    @GetMapping("/flowableFormResource/list")
    @BusinessLog(title = "表单管理_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.list(flowableFormResourceParam));
    }

    /**
     * 添加表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:57
     **/
    @Permission
    @PostMapping("/flowableFormResource/add")
    @BusinessLog(title = "表单管理_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(BaseParam.add.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.add(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单删除
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     **/
    @Permission
    @PostMapping("/flowableFormResource/delete")
    @BusinessLog(title = "表单管理_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(BaseParam.delete.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.delete(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单编辑
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableFormResource/edit")
    @BusinessLog(title = "表单管理_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(BaseParam.edit.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.edit(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单设计
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @PostMapping("/flowableFormResource/design")
    @BusinessLog(title = "表单管理_设计", opType = LogAnnotionOpTypeEnum.OTHER)
    public ResponseData design(@RequestBody @Validated(BaseParam.edit.class) FlowableFormResourceParam flowableFormResourceParam) {
        flowableFormResourceService.design(flowableFormResourceParam);
        return new SuccessResponseData();
    }

    /**
     * 表单查看
     *
     * @author xuyuxiang
     * @date 2020/8/14 14:59
     */
    @Permission
    @GetMapping("/flowableFormResource/detail")
    @BusinessLog(title = "表单管理_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(BaseParam.detail.class) FlowableFormResourceParam flowableFormResourceParam) {
        return new SuccessResponseData(flowableFormResourceService.detail(flowableFormResourceParam));
    }


}
