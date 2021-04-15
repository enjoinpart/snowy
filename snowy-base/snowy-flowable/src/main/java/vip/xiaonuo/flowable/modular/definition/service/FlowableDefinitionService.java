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
package vip.xiaonuo.flowable.modular.definition.service;

import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.definition.param.FlowableDefinitionParam;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import vip.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;
import vip.xiaonuo.flowable.modular.definition.param.FlowableDefinitionParam;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import vip.xiaonuo.flowable.modular.definition.result.FlowableUserTaskResult;
import com.fasterxml.jackson.databind.JsonNode;
import org.flowable.engine.repository.ProcessDefinition;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 流程定义service接口
 *
 * @author xuyuxiang
 * @date 2020/4/14 19:26
 */
public interface FlowableDefinitionService {

    /**
     * 查询流程定义
     *
     * @param flowableDefinitionParam 查询参数
     * @return 查询结果
     * @author xuyuxiang
     * @date 2020/4/14 19:30
     */
    PageResult<FlowableDefinitionResult> page(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 部署流程
     *
     * @param flowableDefinitionParam 部署参数
     * @author xuyuxiang
     * @date 2020/4/14 19:41
     */
    void deploy(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 导出流程文件
     *
     * @param flowableDefinitionParam 导出参数
     * @param response                响应response
     * @author xuyuxiang
     * @date 2020/4/15 9:48
     */
    void export(FlowableDefinitionParam flowableDefinitionParam, HttpServletResponse response);

    /**
     * 映射流程定义，将已部署的流程映射到模型
     *
     * @param flowableDefinitionParam 流程定义参数
     * @author xuyuxiang
     * @date 2020/4/15 16:57
     */
    void mapping(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 激活/挂起流程定义
     *
     * @param flowableDefinitionParam 流程定义参数
     * @param isSuspend               是否挂起，true挂起，false激活
     * @author xuyuxiang
     * @date 2020/4/15 17:19
     */
    void activeOrSuspend(FlowableDefinitionParam flowableDefinitionParam, boolean isSuspend);

    /**
     * 流程定义的流程图
     *
     * @param flowableDefinitionParam 流程定义参数
     * @return 流程图数据
     * @author xuyuxiang
     * @date 2020/4/15 17:27
     */
    JsonNode trace(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 删除流程定义，根据版本删除，级联删除流程实例和相关任务
     *
     * @param flowableDefinitionParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/24 15:06
     */
    void delete(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 流程定义的用户任务节点，用于跳转时选择节点
     *
     * @param flowableDefinitionParam 流程定义参数
     * @return 用户任务节点集合
     * @author xuyuxiang
     * @date 2020/4/26 11:20
     */
    List<FlowableUserTaskResult> userTasks(FlowableDefinitionParam flowableDefinitionParam);

    /**
     * 根据流程定义id获取流程定义详情
     *
     * @param processDefinitionId 流程定义id
     * @return 流程定义结果
     * @author xuyuxiang
     * @date 2020/4/26 17:31
     */
    FlowableDefinitionResult detail(String processDefinitionId);

    /**
     * 根据流程id获取流程定义
     *
     * @param processDefinitionId 流程定义id
     * @return 流程定义结果
     * @author xuyuxiang
     * @date 2020/4/30 17:18
     */
    ProcessDefinition queryProcessDefinition(String processDefinitionId);

    /**
     * 根据流程id获取流程定义并校验状态
     *
     * @param processDefinitionId 流程定义id
     * @return 流程定义结果
     * @author xuyuxiang
     * @date 2020/8/12 10:00
     **/
    ProcessDefinition queryProcessDefinitionWithValidStatus(String processDefinitionId);

    /**
     * 多实例用户任务节点的元素变量名
     *
     * @param processDefinitionId 流程定义id
     * @param actId               节点id
     * @return 元素变量名
     * @author xuyuxiang
     * @date 2020/6/2 16:06
     */
    String getMultiInstanceActAssigneeParam(String processDefinitionId, String actId);

    /**
     * 根据分类编码判断该分类下是否有流程定义
     *
     * @param category 分类编码
     * @return 是否有定义，true是，false否
     * @author xuyuxiang
     * @date 2020/6/29 17:52
     */
    boolean hasDefinition(String category);
}
