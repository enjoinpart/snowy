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
package vip.xiaonuo.flowable.modular.option.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.enums.YesOrNotEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.core.utils.BpmTitleUtil;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import vip.xiaonuo.flowable.modular.option.entity.FlowableOption;
import vip.xiaonuo.flowable.modular.option.enums.FlowableOptionExceptionEnum;
import vip.xiaonuo.flowable.modular.option.mapper.FlowableOptionMapper;
import vip.xiaonuo.flowable.modular.option.param.FlowableOptionParam;
import vip.xiaonuo.flowable.modular.option.service.FlowableOptionService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.flowable.engine.repository.ProcessDefinition;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 流程选项service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/17 16:41
 */
@Service
public class FlowableOptionServiceImpl extends ServiceImpl<FlowableOptionMapper, FlowableOption> implements FlowableOptionService {

    /**
     * 默认流程标题规则
     */
    private static final String DEFAULT_FLW_TITLE_REG = "user在time发起了title";

    @Resource
    private FlowableDefinitionService flowableDefinitionService;

    @Override
    public void addByProcessDefinition(ProcessDefinition processDefinition) {
        FlowableOption flowableOption = new FlowableOption();
        flowableOption.setProcessDefinitionId(processDefinition.getId());
        //默认自动完成第一个任务
        flowableOption.setJumpFirst(YesOrNotEnum.Y.getCode());
        //默认跳过相同处理人
        flowableOption.setSmartComplete(YesOrNotEnum.Y.getCode());
        this.save(flowableOption);
    }

    @Override
    public void delete(FlowableOptionParam flowableOptionParam) {
        FlowableOption flowableOption = this.queryFlowableOption(flowableOptionParam);
        //真删除
        this.removeById(flowableOption);
    }

    @Override
    public void edit(FlowableOptionParam flowableOptionParam) {
        FlowableOption flowableOption = this.queryFlowableOption(flowableOptionParam);
        BeanUtil.copyProperties(flowableOptionParam, flowableOption);
        this.updateById(flowableOption);
    }

    @Override
    public FlowableOption detail(FlowableOptionParam flowableOptionParam) {
        return this.queryFlowableOption(flowableOptionParam);
    }

    private FlowableOption queryFlowableOption(FlowableOptionParam flowableOptionParam) {
        FlowableOption flowableOption = this.getById(flowableOptionParam.getId());
        if (ObjectUtil.isNull(flowableOption)) {
            throw new ServiceException(FlowableOptionExceptionEnum.OPTION_NOT_EXIST);
        }
        return flowableOption;
    }

    @Override
    public List<FlowableOption> list(FlowableOptionParam flowableOptionParam) {
        LambdaQueryWrapper<FlowableOption> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableOptionParam)) {
            if (ObjectUtil.isNotEmpty(flowableOptionParam.getProcessDefinitionId())) {
                queryWrapper.eq(FlowableOption::getProcessDefinitionId, flowableOptionParam.getProcessDefinitionId());
            }
        }
        return this.list(queryWrapper);
    }

    @Override
    public void delete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableOption> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableOption::getProcessDefinitionId, processDefinitionId);
        //真删除
        this.remove(queryWrapper);
    }

    @Override
    public String getTitleByProcessDefinitionId(String processDefinitionId) {
        ProcessDefinition processDefinition = flowableDefinitionService.queryProcessDefinition(processDefinitionId);
        LambdaQueryWrapper<FlowableOption> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableOption::getProcessDefinitionId, processDefinitionId);
        //查询流程选项
        FlowableOption flowableOption = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableOption)) {
            throw new ServiceException(FlowableOptionExceptionEnum.OPTION_NOT_EXIST);
        }
        String titleReg = flowableOption.getTitle();
        //如果设置了标题规则，则处理标题
        if (ObjectUtil.isNotEmpty(titleReg)) {
            return BpmTitleUtil.formatTitle(titleReg, processDefinition.getName());
        } else {
            //如果没设置标题规则，则使用默认的
            return BpmTitleUtil.formatTitle(DEFAULT_FLW_TITLE_REG, processDefinition.getName());
        }
    }

    @Override
    public boolean getFlowableOptionJumpFirst(String processDefinitionId) {
        LambdaQueryWrapper<FlowableOption> optionQueryWrapper = new LambdaQueryWrapper<>();
        optionQueryWrapper.eq(FlowableOption::getProcessDefinitionId, processDefinitionId);

        FlowableOption flowableOption = this.getOne(optionQueryWrapper);

        if (ObjectUtil.isNull(flowableOption)) {
            throw new ServiceException(FlowableOptionExceptionEnum.OPTION_NOT_EXIST);
        }
        return YesOrNotEnum.Y.getCode().equals(flowableOption.getJumpFirst());
    }

    @Override
    public boolean getFlowableOptionSmartComplete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableOption> optionQueryWrapper = new LambdaQueryWrapper<>();
        optionQueryWrapper.eq(FlowableOption::getProcessDefinitionId, processDefinitionId);

        FlowableOption flowableOption = this.getOne(optionQueryWrapper);

        if (ObjectUtil.isNull(flowableOption)) {
            throw new ServiceException(FlowableOptionExceptionEnum.OPTION_NOT_EXIST);
        }
        return YesOrNotEnum.Y.getCode().equals(flowableOption.getSmartComplete());
    }
}
