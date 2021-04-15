/*
Copyright [2020] [https://www.xiaonuo.vip]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：

1.请不要删除和修改根目录下的LICENSE文件。
2.请不要删除和修改Snowy源码头部的版权声明。
3.请保留源码和相关描述文件的项目出处，作者声明等。
4.分发源码时候，请注明软件出处 https://gitee.com/xiaonuobase/snowy
5.在修改包名，模块名称，项目代码等时，请注明软件出处 https://gitee.com/xiaonuobase/snowy
6.若您的项目无法满足以上几点，可申请商业授权，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
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
