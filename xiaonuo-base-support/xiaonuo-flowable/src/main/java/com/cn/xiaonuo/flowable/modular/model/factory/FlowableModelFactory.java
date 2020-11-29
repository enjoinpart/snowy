package com.cn.xiaonuo.flowable.modular.model.factory;

import cn.hutool.core.collection.CollectionUtil;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.model.result.FlowableModelResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cn.xiaonuo.flowable.modular.model.result.FlowableModelResult;
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
