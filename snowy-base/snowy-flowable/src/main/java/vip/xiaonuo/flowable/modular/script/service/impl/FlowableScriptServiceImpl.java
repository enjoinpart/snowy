package vip.xiaonuo.flowable.modular.script.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.enums.CommonStatusEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.script.entity.FlowableScript;
import vip.xiaonuo.flowable.modular.script.enums.FlowableScriptExceptionEnum;
import vip.xiaonuo.flowable.modular.script.mapper.FlowableScriptMapper;
import vip.xiaonuo.flowable.modular.script.param.FlowableScriptParam;
import vip.xiaonuo.flowable.modular.script.service.FlowableScriptService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.modular.script.mapper.FlowableScriptMapper;
import vip.xiaonuo.flowable.modular.script.service.FlowableScriptService;
import org.springframework.stereotype.Service;
import vip.xiaonuo.core.enums.CommonStatusEnum;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.util.List;

/**
 * 流程脚本service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/17 9:59
 */
@Service
public class FlowableScriptServiceImpl extends ServiceImpl<FlowableScriptMapper, FlowableScript> implements FlowableScriptService {

    @Override
    public PageResult<FlowableScript> page(FlowableScriptParam flowableScriptParam) {
        LambdaQueryWrapper<FlowableScript> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableScriptParam)) {
            if (ObjectUtil.isNotEmpty(flowableScriptParam.getName())) {
                queryWrapper.like(FlowableScript::getName, flowableScriptParam.getName());
            }
        }
        queryWrapper.eq(FlowableScript::getStatus, CommonStatusEnum.ENABLE.getCode());
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public List<FlowableScript> list(FlowableScriptParam flowableScriptParam) {
        LambdaQueryWrapper<FlowableScript> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableScriptParam)) {
            if (ObjectUtil.isNotEmpty(flowableScriptParam.getName())) {
                queryWrapper.like(FlowableScript::getName, flowableScriptParam.getName());
            }
        }
        queryWrapper.eq(FlowableScript::getStatus, CommonStatusEnum.ENABLE.getCode());
        return this.list(queryWrapper);
    }

    @Override
    public void add(FlowableScriptParam flowableScriptParam) {
        FlowableScript flowableScript = new FlowableScript();
        BeanUtil.copyProperties(flowableScriptParam, flowableScript);
        flowableScript.setStatus(CommonStatusEnum.ENABLE.getCode());
        this.save(flowableScript);
    }

    @Override
    public void delete(FlowableScriptParam flowableScriptParam) {
        FlowableScript flowableScript = this.queryFlowableScript(flowableScriptParam);
        flowableScript.setStatus(CommonStatusEnum.DELETED.getCode());
        this.updateById(flowableScript);
    }

    @Override
    public void edit(FlowableScriptParam flowableScriptParam) {
        FlowableScript flowableScript = this.queryFlowableScript(flowableScriptParam);
        BeanUtil.copyProperties(flowableScriptParam, flowableScript);
        //不能修改状态，用修改状态接口修改状态
        flowableScript.setStatus(null);
        this.updateById(flowableScript);
    }

    @Override
    public FlowableScript detail(FlowableScriptParam flowableScriptParam) {
        return this.queryFlowableScript(flowableScriptParam);
    }

    /**
     * 获取流程脚本
     *
     * @author xuyuxiang
     * @date 2020/4/26 17:08
     */
    private FlowableScript queryFlowableScript(FlowableScriptParam flowableScriptParam) {
        FlowableScript flowableScript = this.getById(flowableScriptParam.getId());
        if (ObjectUtil.isNull(flowableScript)) {
            throw new ServiceException(FlowableScriptExceptionEnum.SCRIPT_NOT_EXIST);
        }
        return flowableScript;
    }
}
