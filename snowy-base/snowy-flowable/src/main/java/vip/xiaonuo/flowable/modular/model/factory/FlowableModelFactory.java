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
package vip.xiaonuo.flowable.modular.model.factory;

import cn.hutool.core.collection.CollectionUtil;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.flowable.ui.modeler.domain.Model;
import org.flowable.ui.modeler.domain.ModelHistory;

import java.util.List;

/**
 * 流程模型工厂
 *
 * @author xuyuxiang
 * @date 2020/8/15 17:11
 */
public class FlowableModelFactory {

    /**
     * 根据模型集合和默认分页，返回自定义PageResult
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:43
     */
    public static PageResult<FlowableModelResult> pageResult(List<Model> modelList,
                                                             Page<FlowableModelResult> defaultPage) {
        List<FlowableModelResult> flowableModelResultList =
                convertToFlowableModelResultList(modelList);
        return new PageResult<>(defaultPage, flowableModelResultList);
    }

    /**
     * 将流程模型结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:45
     */
    public static List<FlowableModelResult> convertToFlowableModelResultList(List<Model> modelList) {
        List<FlowableModelResult> flowableModelResultList = CollectionUtil.newArrayList();
        modelList.forEach(model -> {
            FlowableModelResult flowableModelResult = convertToFlowableModelResult(model);
            flowableModelResultList.add(flowableModelResult);
        });
        return flowableModelResultList;
    }

    /**
     * 将单个模型结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:46
     */
    public static FlowableModelResult convertToFlowableModelResult(Model model) {
        FlowableModelResult flowableModelResult = new FlowableModelResult();
        flowableModelResult.setId(model.getId());
        flowableModelResult.setModelId(model.getId());
        flowableModelResult.setKey(model.getKey());
        flowableModelResult.setName(model.getName());
        flowableModelResult.setDescription(model.getDescription());
        flowableModelResult.setCreated(model.getCreated());
        flowableModelResult.setCreatedBy(model.getCreatedBy());
        flowableModelResult.setLastUpdated(model.getLastUpdated());
        flowableModelResult.setLastUpdatedBy(model.getLastUpdatedBy());
        flowableModelResult.setVersion(model.getVersion());
        return flowableModelResult;
    }

    /**
     * 将流程模型历史记录结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:45
     */
    public static List<FlowableModelResult> convertToFlowableModelResultHistoryList(List<ModelHistory> modelHistoryList) {
        List<FlowableModelResult> flowableModelResultList = CollectionUtil.newArrayList();
        modelHistoryList.forEach(modelHistory -> {
            FlowableModelResult flowableModelResult = convertToFlowableModelResultHistory(modelHistory);
            flowableModelResultList.add(flowableModelResult);
        });
        return flowableModelResultList;
    }

    /**
     * 将流程模型历史记录结果转换为自定义结果
     *
     * @author xuyuxiang
     * @date 2020/8/15 23:46
     */
    public static FlowableModelResult convertToFlowableModelResultHistory(ModelHistory modelHistory) {
        FlowableModelResult flowableModelResult = new FlowableModelResult();
        flowableModelResult.setId(modelHistory.getId());
        flowableModelResult.setModelId(modelHistory.getModelId());
        flowableModelResult.setKey(modelHistory.getKey());
        flowableModelResult.setName(modelHistory.getName());
        flowableModelResult.setDescription(modelHistory.getDescription());
        flowableModelResult.setCreated(modelHistory.getCreated());
        flowableModelResult.setCreatedBy(modelHistory.getCreatedBy());
        flowableModelResult.setLastUpdated(modelHistory.getLastUpdated());
        flowableModelResult.setLastUpdatedBy(modelHistory.getLastUpdatedBy());
        flowableModelResult.setVersion(modelHistory.getVersion());
        return flowableModelResult;
    }
}
