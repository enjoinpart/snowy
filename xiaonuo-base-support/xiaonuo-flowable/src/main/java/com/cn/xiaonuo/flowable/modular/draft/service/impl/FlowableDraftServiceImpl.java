package com.cn.xiaonuo.flowable.modular.draft.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.context.login.LoginContextHolder;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.flowable.modular.draft.entity.FlowableDraft;
import com.cn.xiaonuo.flowable.modular.draft.enums.FlowableDraftExceptionEnum;
import com.cn.xiaonuo.flowable.modular.draft.mapper.FlowableDraftMapper;
import com.cn.xiaonuo.flowable.modular.draft.param.FlowableDraftParam;
import com.cn.xiaonuo.flowable.modular.draft.service.FlowableDraftService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cn.xiaonuo.flowable.modular.draft.service.FlowableDraftService;
import org.springframework.stereotype.Service;

/**
 * 申请草稿service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/9/9 14:59
 **/
@Service
public class FlowableDraftServiceImpl extends ServiceImpl<FlowableDraftMapper, FlowableDraft> implements FlowableDraftService {

    @Override
    public PageResult<FlowableDraft> page(FlowableDraftParam flowableDraftParam) {
        LambdaQueryWrapper<FlowableDraft> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableDraftParam)) {
            //根据流程名称查询
            if (ObjectUtil.isNotEmpty(flowableDraftParam.getProcessName())) {
                queryWrapper.like(FlowableDraft::getProcessName, flowableDraftParam.getProcessName());
            }

            //根据表单分类查询
            if (ObjectUtil.isNotEmpty(flowableDraftParam.getCategory())) {
                queryWrapper.eq(FlowableDraft::getCategory, flowableDraftParam.getCategory());
            }
        }
        //查询自己的
        queryWrapper.eq(FlowableDraft::getCreateUser, LoginContextHolder.me().getSysLoginUserId());
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public void addOrUpdate(FlowableDraftParam flowableDraftParam) {
        FlowableDraft flowableDraft = new FlowableDraft();
        BeanUtil.copyProperties(flowableDraftParam, flowableDraft);
        this.saveOrUpdate(flowableDraft);
    }

    @Override
    public void delete(FlowableDraftParam flowableDraftParam) {
        FlowableDraft flowableDraft = this.queryFlowableDraft(flowableDraftParam);
        this.removeById(flowableDraft.getId());
    }

    /**
     * 获取申请草稿
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    private FlowableDraft queryFlowableDraft(FlowableDraftParam flowableDraftParam) {
        FlowableDraft flowableDraft = this.getById(flowableDraftParam.getId());
        if (ObjectUtil.isNull(flowableDraft)) {
            throw new ServiceException(FlowableDraftExceptionEnum.DRAFT_NOT_EXIST);
        }
        return flowableDraft;
    }
}
