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
package vip.xiaonuo.flowable.modular.definition.factory;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.extra.spring.SpringUtil;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import vip.xiaonuo.flowable.modular.definition.result.FlowableDefinitionResult;
import org.flowable.engine.repository.ProcessDefinition;

import java.util.List;

/**
 * 流程定义工厂类，用于把flowable返回的实体转换为自定义实体
 *
 * @author xuyuxiang
 * @date 2020/4/14 20:43
 */
public class FlowableDefinitionFactory {

    private static final FlowableCategoryService flowableCategoryService = SpringUtil.getBean(FlowableCategoryService.class);

    /**
     * 根据流程定义集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/4/14 20:46
     */
    public static PageResult<FlowableDefinitionResult> pageResult(List<ProcessDefinition> processDefinitionList,
                                                                  Page<FlowableDefinitionResult> defaultPage) {
        List<FlowableDefinitionResult> flowableDefinitionResultList =
                convertToFlowableDefinitionResultList(processDefinitionList);
        return new PageResult<>(defaultPage, flowableDefinitionResultList);
    }

    /**
     * 将流程定义结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/26 17:27
     */
    private static List<FlowableDefinitionResult> convertToFlowableDefinitionResultList(List<ProcessDefinition> processDefinitionList) {
        List<FlowableDefinitionResult> flowableDefinitionResultList = CollectionUtil.newArrayList();
        processDefinitionList.forEach(processDefinition -> {
            FlowableDefinitionResult flowableDefinitionResult = convertToFlowableDefinitionResult(processDefinition);
            flowableDefinitionResultList.add(flowableDefinitionResult);
        });
        return flowableDefinitionResultList;
    }

    /**
     * 将单个流程定义结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/4/14 20:49
     */
    public static FlowableDefinitionResult convertToFlowableDefinitionResult(ProcessDefinition processDefinition) {
        FlowableDefinitionResult flowableDefinitionResult = new FlowableDefinitionResult();
        flowableDefinitionResult.setId(processDefinition.getId());
        flowableDefinitionResult.setKey(processDefinition.getKey());
        flowableDefinitionResult.setDeploymentId(processDefinition.getDeploymentId());
        flowableDefinitionResult.setCategory(processDefinition.getCategory());
        flowableDefinitionResult.setCategoryName(flowableCategoryService.getNameByCode(processDefinition.getCategory()));
        flowableDefinitionResult.setDescription(processDefinition.getDescription());
        flowableDefinitionResult.setName(processDefinition.getName());
        flowableDefinitionResult.setVersion(processDefinition.getVersion());
        flowableDefinitionResult.setSuspended(processDefinition.isSuspended());
        return flowableDefinitionResult;
    }
}
