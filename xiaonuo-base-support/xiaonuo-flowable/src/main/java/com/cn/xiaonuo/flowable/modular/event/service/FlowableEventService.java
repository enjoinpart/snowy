package com.cn.xiaonuo.flowable.modular.event.service;

import com.cn.xiaonuo.flowable.modular.event.entity.FlowableEvent;
import com.cn.xiaonuo.flowable.modular.event.param.FlowableEventParam;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 流程事件service接口
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:56
 */
public interface FlowableEventService extends IService<FlowableEvent> {

    /**
     * 添加流程事件
     *
     * @param flowableEventParam 添加参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void add(FlowableEventParam flowableEventParam);

    /**
     * 删除流程事件
     *
     * @param flowableEventParam 删除参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void delete(FlowableEventParam flowableEventParam);

    /**
     * 编辑流程事件
     *
     * @param flowableEventParam 编辑参数
     * @author xuyuxiang
     * @date 2020/4/17 15:36
     */
    void edit(FlowableEventParam flowableEventParam);

    /**
     * 查看流程事件
     *
     * @param flowableEventParam 查看参数
     * @return 事件结果
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    FlowableEvent detail(FlowableEventParam flowableEventParam);

    /**
     * 流程事件列表
     *
     * @param flowableEventParam 查询参数
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/4/17 15:37
     */
    List<FlowableEvent> list(FlowableEventParam flowableEventParam);

    /**
     * 根据流程定义id删除流程事件
     *
     * @param processDefinitionId 流程定义id
     * @author xuyuxiang
     * @date 2020/4/24 15:34
     */
    void delete(String processDefinitionId);

    /**
     * 根据事件类型获取脚本
     *
     * @param processDefinitionId 流程定义id
     * @param actId               活动节点id
     * @param eventType           事件类型
     * @return 查询结果集
     * @author xuyuxiang
     * @date 2020/6/1 16:11
     */
    List<String> getScript(String processDefinitionId, String actId, String eventType);
}
