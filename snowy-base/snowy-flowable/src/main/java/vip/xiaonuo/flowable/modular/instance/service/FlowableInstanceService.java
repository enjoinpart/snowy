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
package vip.xiaonuo.flowable.modular.instance.service;

import cn.hutool.core.lang.Dict;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;
import vip.xiaonuo.flowable.modular.instance.param.FlowableInstanceParam;
import vip.xiaonuo.flowable.modular.instance.result.FlowableCommentHistoryResult;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import vip.xiaonuo.flowable.modular.instance.result.FlowableCommentHistoryResult;
import vip.xiaonuo.flowable.modular.instance.result.FlowableInstanceResult;
import com.fasterxml.jackson.databind.JsonNode;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;

import java.util.List;
import java.util.Map;

/**
 * 流程实例service接口
 *
 * @author xuyuxiang
 * @date 2020/4/20 11:35
 */
public interface FlowableInstanceService {

    /**
     * 查询流程实例
     *
     * @param flowableInstanceParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/4/20 12:00
     */
    PageResult<FlowableInstanceResult> page(FlowableInstanceParam flowableInstanceParam);

    /**
     * 根据流程实例id获取流程实例详情
     *
     * @param processInstanceId 流程实例id
     * @return 实例结果
     * @author xuyuxiang
     * @date 2020/4/21 9:46
     */
    FlowableInstanceResult detail(String processInstanceId);

    /**
     * 流程实例的历史任务节点，用于退回时选择节点
     *
     * @param flowableInstanceParam 查询参数
     * @return 历史任务节点
     * @author xuyuxiang
     * @date 2020/4/27 15:10
     */
    List<FlowableUserTaskResult> hisUserTasks(FlowableInstanceParam flowableInstanceParam);

    /**
     * 流程实例的流程图，显示当前节点和走过的节点
     *
     * @param flowableInstanceParam 查询参数
     * @return 流程图数据
     * @author xuyuxiang
     * @date 2020/4/28 14:28
     */
    JsonNode trace(FlowableInstanceParam flowableInstanceParam);

    /**
     * 激活/挂起流程实例
     *
     * @param flowableInstanceParam 查询参数
     * @param isSuspend             是否挂起
     * @author xuyuxiang
     * @date 2020/4/29 15:44
     */
    void activeOrSuspend(FlowableInstanceParam flowableInstanceParam, boolean isSuspend);

    /**
     * 流程实例的审批记录
     *
     * @param flowableInstanceParam 查询参数
     * @return 审批记录
     * @author xuyuxiang
     * @date 2020/4/29 16:24
     */
    List<FlowableCommentHistoryResult> commentHistory(FlowableInstanceParam flowableInstanceParam);

    /**
     * 终止流程实例
     *
     * @param flowableInstanceParam 终止参数
     * @author xuyuxiang
     * @date 2020/8/11 14:22
     **/
    void end(FlowableInstanceParam flowableInstanceParam);

    /**
     * 删除流程实例
     *
     * @param flowableInstanceParamList 删除参数
     * @author xuyuxiang
     * @date 2020/8/11 14:22
     **/
    void delete(List<FlowableInstanceParam> flowableInstanceParamList);

    /**
     * 获取流程实例中表单填写的数据
     *
     * @param flowableInstanceParam 获取参数
     * @return 任务数据
     * @author xuyuxiang
     * @date 2020/8/16 17:54
     */
    Map<String, Object> formData(FlowableInstanceParam flowableInstanceParam);

    /**
     * 加签人员选择器
     *
     * @param flowableInstanceParam 查询参数
     * @return java.util.List<Dict>
     * @author xuyuxiang
     * @date 2020/9/11 17:45
     **/
    List<Dict> addSignUserSelector(FlowableInstanceParam flowableInstanceParam);

    /**
     * 减签人员选择器
     *
     * @param flowableInstanceParam 查询参数
     * @return java.util.List<Dict>
     * @author xuyuxiang
     * @date 2020/9/11 17:45
     **/
    List<Dict> deleteSignUserSelector(FlowableInstanceParam flowableInstanceParam);
}
