package vip.xiaonuo.flowable.modular.shortcut.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.enums.CommonStatusEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.category.enums.FlowableCategoryExceptionEnum;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.enums.FlowableShortcutExceptionEnum;
import vip.xiaonuo.flowable.modular.shortcut.mapper.FlowableShortcutMapper;
import vip.xiaonuo.flowable.modular.shortcut.node.FlowableShortcutTreeNode;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;
import vip.xiaonuo.flowable.modular.shortcut.service.FlowableShortcutService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.modular.category.enums.FlowableCategoryExceptionEnum;
import vip.xiaonuo.flowable.modular.shortcut.entity.FlowableShortcut;
import vip.xiaonuo.flowable.modular.shortcut.enums.FlowableShortcutExceptionEnum;
import vip.xiaonuo.flowable.modular.shortcut.mapper.FlowableShortcutMapper;
import vip.xiaonuo.flowable.modular.shortcut.node.FlowableShortcutTreeNode;
import vip.xiaonuo.flowable.modular.shortcut.param.FlowableShortcutParam;
import vip.xiaonuo.flowable.modular.shortcut.service.FlowableShortcutService;
import org.springframework.stereotype.Service;
import vip.xiaonuo.core.enums.CommonStatusEnum;

import java.util.List;

/**
 * 流程申请入口service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/6/30 10:50
 */
@Service
public class FlowableShortcutServiceImpl extends ServiceImpl<FlowableShortcutMapper, FlowableShortcut> implements FlowableShortcutService {

    @Override
    public PageResult<FlowableShortcut> page(FlowableShortcutParam flowableShortcutParam) {
        LambdaQueryWrapper<FlowableShortcut> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableShortcutParam)) {
            //根据名称查询
            if (ObjectUtil.isNotEmpty(flowableShortcutParam.getName())) {
                queryWrapper.like(FlowableShortcut::getName, flowableShortcutParam.getName());
            }
            //根据分类查询
            if (ObjectUtil.isNotEmpty(flowableShortcutParam.getCategory())) {
                queryWrapper.like(FlowableShortcut::getCategory, flowableShortcutParam.getCategory());
            }
        }
        queryWrapper.ne(FlowableShortcut::getStatus, CommonStatusEnum.DELETED.getCode());
        //根据排序升序排列，序号越小越在前
        queryWrapper.orderByAsc(FlowableShortcut::getSort);
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public List<FlowableShortcutTreeNode> list(FlowableShortcutParam flowableShortcutParam) {
        QueryWrapper<FlowableShortcutTreeNode> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("b.status", CommonStatusEnum.ENABLE.getCode());
        //根据排序升序排列，序号越小越在前
        queryWrapper.orderByAsc("b.sort");
        return this.baseMapper.list(queryWrapper);
    }

    @Override
    public void add(FlowableShortcutParam flowableShortcutParam) {
        //校验参数，检查是否存在相同的名称和流程定义key
        checkParam(flowableShortcutParam, false);
        FlowableShortcut flowableShortcut = new FlowableShortcut();
        BeanUtil.copyProperties(flowableShortcutParam, flowableShortcut);
        flowableShortcut.setStatus(CommonStatusEnum.ENABLE.getCode());
        this.save(flowableShortcut);
    }

    @Override
    public void delete(FlowableShortcutParam flowableShortcutParam) {
        FlowableShortcut flowableShortcut = this.queryFlowableShortcut(flowableShortcutParam);
        flowableShortcut.setStatus(CommonStatusEnum.DELETED.getCode());
        this.updateById(flowableShortcut);
    }

    @Override
    public void delete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableShortcut> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableShortcut::getProcessDefinitionId, processDefinitionId);
        FlowableShortcut flowableShortcut = this.getOne(queryWrapper);
        if (ObjectUtil.isNotNull(flowableShortcut)) {
            flowableShortcut.setStatus(CommonStatusEnum.DELETED.getCode());
            this.updateById(flowableShortcut);
        }
    }

    @Override
    public void edit(FlowableShortcutParam flowableShortcutParam) {
        FlowableShortcut flowableShortcut = this.queryFlowableShortcut(flowableShortcutParam);
        //校验参数，检查是否存在相同的名称和流程定义key
        checkParam(flowableShortcutParam, true);
        BeanUtil.copyProperties(flowableShortcutParam, flowableShortcut);
        //不能修改状态，用修改状态接口修改状态
        flowableShortcut.setStatus(null);
        this.updateById(flowableShortcut);
    }

    @Override
    public FlowableShortcut detail(FlowableShortcutParam flowableShortcutParam) {
        return this.queryFlowableShortcut(flowableShortcutParam);
    }

    @Override
    public void changeStatus(String processDefinitionId, Integer status) {
        LambdaQueryWrapper<FlowableShortcut> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableShortcut::getProcessDefinitionId, processDefinitionId);
        FlowableShortcut flowableShortcut = this.getOne(queryWrapper);
        if (ObjectUtil.isNotNull(flowableShortcut)) {
            flowableShortcut.setStatus(status);
            this.updateById(flowableShortcut);
        }
    }

    /**
     * 校验参数，检查是否存在相同的名称和流程定义key
     *
     * @author xuyuxiang
     * @date 2020/6/30 12:08
     */
    private void checkParam(FlowableShortcutParam flowableShortcutParam, boolean isExcludeSelf) {
        Long id = flowableShortcutParam.getId();
        String name = flowableShortcutParam.getName();
        String processDefinitionId = flowableShortcutParam.getProcessDefinitionId();

        LambdaQueryWrapper<FlowableShortcut> queryWrapperByName = new LambdaQueryWrapper<>();
        queryWrapperByName.eq(FlowableShortcut::getName, name)
                .ne(FlowableShortcut::getStatus, CommonStatusEnum.DELETED.getCode());

        LambdaQueryWrapper<FlowableShortcut> queryWrapperByProcessInstanceId = new LambdaQueryWrapper<>();
        queryWrapperByProcessInstanceId.eq(FlowableShortcut::getProcessDefinitionId, processDefinitionId)
                .ne(FlowableShortcut::getStatus, CommonStatusEnum.DELETED.getCode());

        if (isExcludeSelf) {
            queryWrapperByName.ne(FlowableShortcut::getId, id);
            queryWrapperByProcessInstanceId.ne(FlowableShortcut::getId, id);
        }
        int countByName = this.count(queryWrapperByName);
        int countByKey = this.count(queryWrapperByProcessInstanceId);

        if (countByName >= 1) {
            throw new ServiceException(FlowableShortcutExceptionEnum.SHORTCUT_NAME_REPEAT);
        }
        if (countByKey >= 1) {
            throw new ServiceException(FlowableShortcutExceptionEnum.SHORTCUT_CODE_REPEAT);
        }
    }

    /**
     * 获取流程申请入口
     *
     * @author xuyuxiang
     * @date 2020/6/30 12:03
     */
    private FlowableShortcut queryFlowableShortcut(FlowableShortcutParam flowableShortcutParam) {
        FlowableShortcut flowableShortcut = this.getById(flowableShortcutParam.getId());
        if (ObjectUtil.isNull(flowableShortcut)) {
            throw new ServiceException(FlowableShortcutExceptionEnum.SHORTCUT_NOT_EXIST);
        }
        return flowableShortcut;
    }
}
