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
package vip.xiaonuo.flowable.modular.script.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.script.param.FlowableScriptParam;
import vip.xiaonuo.flowable.modular.script.service.FlowableScriptService;
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
