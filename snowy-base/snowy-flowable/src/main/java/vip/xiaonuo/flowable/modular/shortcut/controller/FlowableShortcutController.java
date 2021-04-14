package vip.xiaonuo.flowable.modular.shortcut.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;
import vip.xiaonuo.flowable.modular.shortcut.service.FlowableShortcutService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 流程申请入口控制器
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:03
 */
@RestController
public class FlowableShortcutController {

    @Resource
    private FlowableShortcutService flowableShortcutService;

    /**
     * 流程申请入口查询
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:18
     */
    @Permission
    @GetMapping("/flowableShortcut/page")
    @BusinessLog(title = "流程申请入口_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableShortcutParam flowableShortcutParam) {
        return new SuccessResponseData(flowableShortcutService.page(flowableShortcutParam));
    }

    /**
     * 流程申请入口列表
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:19
     */
    @Permission
    @GetMapping("/flowableShortcut/list")
    @BusinessLog(title = "流程申请入口_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(FlowableShortcutParam flowableShortcutParam) {
        return new SuccessResponseData(flowableShortcutService.list(flowableShortcutParam));
    }

    /**
     * 添加流程申请入口
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:19
     */
    @Permission
    @PostMapping("/flowableShortcut/add")
    @BusinessLog(title = "流程申请入口_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableShortcutParam.add.class) FlowableShortcutParam flowableShortcutParam) {
        flowableShortcutService.add(flowableShortcutParam);
        return new SuccessResponseData();
    }

    /**
     * 删除流程申请入口
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:19
     */
    @Permission
    @PostMapping("/flowableShortcut/delete")
    @BusinessLog(title = "流程申请入口_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableShortcutParam.delete.class) FlowableShortcutParam flowableShortcutParam) {
        flowableShortcutService.delete(flowableShortcutParam);
        return new SuccessResponseData();
    }

    /**
     * 编辑流程申请入口
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:19
     */
    @Permission
    @PostMapping("/flowableShortcut/edit")
    @BusinessLog(title = "流程申请入口_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableShortcutParam.edit.class) FlowableShortcutParam flowableShortcutParam) {
        flowableShortcutService.edit(flowableShortcutParam);
        return new SuccessResponseData();
    }

    /**
     * 查看流程申请入口
     *
     * @author xuyuxiang
     * @date 2020/6/30 11:20
     */
    @Permission
    @GetMapping("/flowableShortcut/detail")
    @BusinessLog(title = "流程申请入口_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableShortcutParam.detail.class) FlowableShortcutParam flowableShortcutParam) {
        return new SuccessResponseData(flowableShortcutService.detail(flowableShortcutParam));
    }
}
