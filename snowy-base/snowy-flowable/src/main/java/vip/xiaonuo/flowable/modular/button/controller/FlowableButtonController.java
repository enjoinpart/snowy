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
package vip.xiaonuo.flowable.modular.button.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.button.param.FlowableButtonParam;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
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
 * 活动节点按钮控制器
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:28
 */
@RestController
public class FlowableButtonController {

    @Resource
    private FlowableButtonService flowableActButtonService;

    /**
     * 添加活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:42
     */
    @Permission
    @PostMapping("/flowableButton/add")
    @BusinessLog(title = "流程活动节点按钮_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(FlowableButtonParam.add.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.add(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 删除活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:42
     */
    @Permission
    @PostMapping("/flowableButton/delete")
    @BusinessLog(title = "流程活动节点按钮_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(FlowableButtonParam.delete.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.delete(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 添加活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:43
     */
    @Permission
    @PostMapping("/flowableButton/edit")
    @BusinessLog(title = "流程活动节点按钮_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(FlowableButtonParam.edit.class) FlowableButtonParam flowableButtonParam) {
        flowableActButtonService.edit(flowableButtonParam);
        return new SuccessResponseData();
    }

    /**
     * 查看活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:44
     */
    @Permission
    @GetMapping("/flowableButton/detail")
    @BusinessLog(title = "流程活动节点按钮_查看", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@Validated(FlowableButtonParam.detail.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.detail(flowableButtonParam));
    }

    /**
     * 根据流程定义查询活动节点按钮列表（用于定义配置按钮）
     *
     * @author xuyuxiang
     * @date 2020/4/17 15:32
     */
    @Permission
    @GetMapping("/flowableButton/list")
    @BusinessLog(title = "流程活动节点按钮_列表", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(@Validated(FlowableButtonParam.list.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.list(flowableButtonParam));
    }

    /**
     * 根据任务id查询当前活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/8/3 16:42
     **/
    @Permission
    @GetMapping("/flowableButton/trace")
    @BusinessLog(title = "流程活动节点按钮_当前节点按钮", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData trace(@Validated(FlowableButtonParam.trace.class) FlowableButtonParam flowableButtonParam) {
        return new SuccessResponseData(flowableActButtonService.trace(flowableButtonParam));
    }
}
