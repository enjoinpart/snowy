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
package vip.xiaonuo.flowable.modular.event.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.core.enums.EventNodeTypeEnum;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import vip.xiaonuo.flowable.modular.event.entity.FlowableEvent;
import vip.xiaonuo.flowable.modular.event.enums.FlowableEventExceptionEnum;
import vip.xiaonuo.flowable.modular.event.mapper.FlowableEventMapper;
import vip.xiaonuo.flowable.modular.event.param.FlowableEventParam;
import vip.xiaonuo.flowable.modular.event.service.FlowableEventService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.core.enums.EventNodeTypeEnum;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import vip.xiaonuo.flowable.modular.event.service.FlowableEventService;
import org.springframework.stereotype.Service;
import vip.xiaonuo.flowable.core.enums.EventNodeTypeEnum;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;

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
        if (ObjectUtil.isAllNotEmpty(processDefinitionId, eventType)) {
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
