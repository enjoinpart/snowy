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
package vip.xiaonuo.flowable.modular.task.donetask.controller;

import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;
import vip.xiaonuo.flowable.modular.task.donetask.param.FlowableDoneTaskParam;
import vip.xiaonuo.flowable.modular.task.donetask.service.FlowableDoneTaskService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import vip.xiaonuo.core.annotion.BusinessLog;
import vip.xiaonuo.core.annotion.Permission;
import vip.xiaonuo.core.enums.LogAnnotionOpTypeEnum;
import vip.xiaonuo.core.pojo.response.ResponseData;
import vip.xiaonuo.core.pojo.response.SuccessResponseData;

import javax.annotation.Resource;

/**
 * 已办任务控制器
 *
 * @author xuyuxiang
 * @date 2020/4/19 16:19
 */
@RestController
public class FlowableDoneTaskController {

    @Resource
    private FlowableDoneTaskService flowableDoneTaskService;

    /**
     * 查询已办任务
     *
     * @author xuyuxiang
     * @date 2020/4/21 14:59
     */
    @Permission
    @GetMapping("/flowableDoneTask/page")
    @BusinessLog(title = "已办任务_查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(FlowableDoneTaskParam flowableDoneTaskParam) {
        return new SuccessResponseData(flowableDoneTaskService.page(flowableDoneTaskParam));
    }
}
