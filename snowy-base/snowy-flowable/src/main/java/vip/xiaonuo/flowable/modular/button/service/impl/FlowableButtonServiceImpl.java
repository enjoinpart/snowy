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
