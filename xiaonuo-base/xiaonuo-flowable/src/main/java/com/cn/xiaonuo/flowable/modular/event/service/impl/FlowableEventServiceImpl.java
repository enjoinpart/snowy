package com.cn.xiaonuo.flowable.modular.event.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.flowable.core.enums.EventNodeTypeEnum;
import com.cn.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import com.cn.xiaonuo.flowable.modular.event.entity.FlowableEvent;
import com.cn.xiaonuo.flowable.modular.event.enums.FlowableEventExceptionEnum;
import com.cn.xiaonuo.flowable.modular.event.mapper.FlowableEventMapper;
import com.cn.xiaonuo.flowable.modular.event.param.FlowableEventParam;
import com.cn.xiaonuo.flowable.modular.event.service.FlowableEventService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cn.xiaonuo.flowable.core.enums.EventNodeTypeEnum;
import com.cn.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import com.cn.xiaonuo.flowable.modular.event.service.FlowableEventService;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 流程事件service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/17 14:58
 */
@Service
public class FlowableEventServiceImpl extends ServiceImpl<FlowableEventMapper, FlowableEvent> implements FlowableEventService {

    @Override
    public void add(FlowableEventParam flowableEventParam) {
        //校验参数
        checkParam(flowableEventParam);
        FlowableEvent flowableEvent = new FlowableEvent();
        BeanUtil.copyProperties(flowableEventParam, flowableEvent);
        this.save(flowableEvent);
    }

    @Override
    public void delete(FlowableEventParam flowableEventParam) {
        FlowableEvent flowableEvent = this.queryFlowableEvent(flowableEventParam);
        //真删除
        this.removeById(flowableEvent.getId());
    }

    @Override
    public void edit(FlowableEventParam flowableEventParam) {
        FlowableEvent flowableEvent = this.queryFlowableEvent(flowableEventParam);
        //校验参数
        checkParam(flowableEventParam);
        BeanUtil.copyProperties(flowableEventParam, flowableEvent);
        this.updateById(flowableEvent);
    }

    @Override
    public FlowableEvent detail(FlowableEventParam flowableEventParam) {
        return this.queryFlowableEvent(flowableEventParam);
    }

    @Override
    public List<FlowableEvent> list(FlowableEventParam flowableEventParam) {
        String processDefinitionId = flowableEventParam.getProcessDefinitionId();
        LambdaQueryWrapper<FlowableEvent> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableEvent::getProcessDefinitionId, processDefinitionId);
        return this.list(queryWrapper);
    }

    @Override
    public void delete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableEvent> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableEvent::getProcessDefinitionId, processDefinitionId);
        this.remove(queryWrapper);
    }

    @Override
    public List<String> getScript(String processDefinitionId, String actId, String eventType) {
        if (ObjectUtil.isAllNotEmpty(processDefinitionId, actId, eventType)) {
            //查询全局配置的事件类型
            LambdaQueryWrapper<FlowableEvent> queryWrapperGlobal = new LambdaQueryWrapper<>();
            queryWrapperGlobal.eq(FlowableEvent::getProcessDefinitionId, processDefinitionId)
                    .eq(FlowableEvent::getNodeType, EventNodeTypeEnum.GLOBAL.getCode())
                    .eq(FlowableEvent::getType, eventType);
            List<FlowableEvent> flowableEventList = this.list(queryWrapperGlobal);

            if(ObjectUtil.isNotEmpty(actId)) {
                //查询节点配置的事件类型，且节点为该节点的
                LambdaQueryWrapper<FlowableEvent> queryWrapperAct = new LambdaQueryWrapper<>();
                queryWrapperAct.eq(FlowableEvent::getProcessDefinitionId, processDefinitionId)
                        .eq(FlowableEvent::getNodeType, EventNodeTypeEnum.NODE.getCode())
                        .eq(FlowableEvent::getActId, actId)
                        .eq(FlowableEvent::getType, eventType);
                List<FlowableEvent> flowableEventListAct = this.list(queryWrapperAct);
                //合并到一起
                flowableEventList.addAll(flowableEventListAct);
            }
            //根据脚本执行顺序排序，并取出脚本内容
            List<String> resultList = flowableEventList.stream()
                    .sorted(Comparator.comparing(FlowableEvent::getExecSort))
                    .map(FlowableEvent::getScript)
                    .collect(Collectors.toList());
            return resultList;
        }
        return null;
    }

    /**
     * 校验参数
     *
     * @author xuyuxiang
     * @date 2020/6/10 15:57
     */
    private void checkParam(FlowableEventParam flowableEventParam) {
        //类型（字典 1全局 2节点）
        Integer type = flowableEventParam.getNodeType();
        if (FormNodeTypeEnum.NODE.getCode().equals(type)) {
            if (ObjectUtil.isEmpty(flowableEventParam.getActId())) {
                throw new ServiceException(FlowableEventExceptionEnum.ACT_ID_EMPTY);
            }
            if (ObjectUtil.isEmpty(flowableEventParam.getActName())) {
                throw new ServiceException(FlowableEventExceptionEnum.ACT_NAME_EMPTY);
            }
        }
    }

    /**
     * 获取流程事件
     *
     * @author xuyuxiang
     * @date 2020/4/26 16:37
     */
    private FlowableEvent queryFlowableEvent(FlowableEventParam flowableEventParam) {
        FlowableEvent flowableEvent = this.getById(flowableEventParam.getId());
        if (ObjectUtil.isNull(flowableEvent)) {
            throw new ServiceException(FlowableEventExceptionEnum.EVENT_NOT_EXIST);
        }
        return flowableEvent;
    }
}
