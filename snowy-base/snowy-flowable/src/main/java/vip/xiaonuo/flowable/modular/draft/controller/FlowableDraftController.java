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
package vip.xiaonuo.flowable.modular.draft.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.draft.param.FlowableDraftParam;
import vip.xiaonuo.flowable.modular.draft.service.FlowableDraftService;
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
