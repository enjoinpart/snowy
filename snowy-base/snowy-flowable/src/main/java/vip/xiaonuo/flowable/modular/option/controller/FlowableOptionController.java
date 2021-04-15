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
