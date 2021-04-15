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
package vip.xiaonuo.flowable.modular.button.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.modular.button.entity.FlowableButton;
import vip.xiaonuo.flowable.modular.button.enums.FlowableButtonExceptionEnum;
import vip.xiaonuo.flowable.modular.button.factory.FlowableButtonFactory;
import vip.xiaonuo.flowable.modular.button.mapper.FlowableButtonMapper;
import vip.xiaonuo.flowable.modular.button.param.FlowableButtonParam;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.modular.button.factory.FlowableButtonFactory;
import vip.xiaonuo.flowable.modular.button.result.FlowableButtonResult;
import vip.xiaonuo.flowable.modular.button.service.FlowableButtonService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 活动节点按钮service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:00
 */
@Service
public class FlowableButtonServiceImpl extends ServiceImpl<FlowableButtonMapper, FlowableButton> implements FlowableButtonService {

    @Override
    public void add(FlowableButtonParam flowableButtonParam) {
        //校验参数，同一节点按钮配置只能有一条
        checkParam(flowableButtonParam, false);
        FlowableButton flowableButton = new FlowableButton();
        BeanUtil.copyProperties(flowableButtonParam, flowableButton);
        this.save(flowableButton);
    }

    @Override
    public void delete(FlowableButtonParam flowableButtonParam) {
        FlowableButton flowableButton = this.queryFlowableButton(flowableButtonParam);
        //真删除
        this.removeById(flowableButton.getId());
    }

    @Override
    public void edit(FlowableButtonParam flowableButtonParam) {
        FlowableButton flowableButton = this.queryFlowableButton(flowableButtonParam);
        //校验参数，同一节点按钮配置只能有一条
        checkParam(flowableButtonParam, true);
        BeanUtil.copyProperties(flowableButtonParam, flowableButton);
        this.updateById(flowableButton);
    }

    @Override
    public FlowableButton detail(FlowableButtonParam flowableButtonParam) {
        return this.queryFlowableButton(flowableButtonParam);
    }

    @Override
    public List<FlowableButton> list(FlowableButtonParam flowableButtonParam) {
        String processDefinitionId = flowableButtonParam.getProcessDefinitionId();
        LambdaQueryWrapper<FlowableButton> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableButton::getProcessDefinitionId, processDefinitionId);
        return this.list(queryWrapper);
    }

    @Override
    public void delete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableButton> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableButton::getProcessDefinitionId, processDefinitionId);
        this.remove(queryWrapper);
    }

    @Override
    public FlowableButtonResult trace(FlowableButtonParam flowableButtonParam) {
        String actId = flowableButtonParam.getActId();
        FlowableButtonResult flowableButtonResult = new FlowableButtonResult();
        LambdaQueryWrapper<FlowableButton> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableButton::getActId, actId)
                .eq(FlowableButton::getProcessDefinitionId, flowableButtonParam.getProcessDefinitionId());
        FlowableButton flowableButton = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableButton)) {
            flowableButtonResult = FlowableButtonFactory.genFlowableButtonResult();
        } else {
            BeanUtil.copyProperties(flowableButton, flowableButtonResult);
        }
        return flowableButtonResult;
    }

    /**
     * 校验参数，同一节点按钮配置只能有一条
     *
     * @author xuyuxiang
     * @date 2020/4/29 12:11
     */
    private void checkParam(FlowableButtonParam flowableButtonParam, boolean isExcludeSelf) {
        Long id = flowableButtonParam.getId();
        String processDefinitionId = flowableButtonParam.getProcessDefinitionId();
        String actId = flowableButtonParam.getActId();

        LambdaQueryWrapper<FlowableButton> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableButton::getProcessDefinitionId, processDefinitionId)
                .eq(FlowableButton::getActId, actId);

        if (isExcludeSelf) {
            queryWrapper.ne(FlowableButton::getId, id);
        }

        int count = this.count(queryWrapper);

        if (count >= 1) {
            throw new ServiceException(FlowableButtonExceptionEnum.ACT_FORM_REPEAT);
        }
    }

    /**
     * 获取活动节点按钮
     *
     * @author xuyuxiang
     * @date 2020/4/26 16:25
     */
    private FlowableButton queryFlowableButton(FlowableButtonParam flowableButtonParam) {
        FlowableButton flowableButton = this.getById(flowableButtonParam.getId());
        if (ObjectUtil.isNull(flowableButton)) {
            throw new ServiceException(FlowableButtonExceptionEnum.BUTTON_NOT_EXIST);
        }
        return flowableButton;
    }
}
