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
package vip.xiaonuo.flowable.modular.category.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.enums.CommonStatusEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.category.entity.FlowableCategory;
import vip.xiaonuo.flowable.modular.category.enums.FlowableCategoryExceptionEnum;
import vip.xiaonuo.flowable.modular.category.mapper.FlowableCategoryMapper;
import vip.xiaonuo.flowable.modular.category.param.FlowableCategoryParam;
import vip.xiaonuo.flowable.modular.category.result.FlowableCategoryResult;
import vip.xiaonuo.flowable.modular.category.service.FlowableCategoryService;
import vip.xiaonuo.flowable.modular.definition.service.FlowableDefinitionService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 流程分类service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/13 14:14
 */
@Service
public class FlowableCategoryServiceImpl extends ServiceImpl<FlowableCategoryMapper, FlowableCategory> implements FlowableCategoryService {

    @Resource
    private FlowableDefinitionService flowableDefinitionService;

    @Override
    public PageResult<FlowableCategory> page(FlowableCategoryParam flowableCategoryParam) {
        LambdaQueryWrapper<FlowableCategory> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableCategoryParam)) {
            //根据名称查询
            if (ObjectUtil.isNotEmpty(flowableCategoryParam.getName())) {
                queryWrapper.like(FlowableCategory::getName, flowableCategoryParam.getName());
            }
            //根据编码查询
            if (ObjectUtil.isNotEmpty(flowableCategoryParam.getCode())) {
                queryWrapper.like(FlowableCategory::getCode, flowableCategoryParam.getCode());
            }
        }
        queryWrapper.eq(FlowableCategory::getStatus, CommonStatusEnum.ENABLE.getCode());
        //根据排序升序排列，序号越小越在前
        queryWrapper.orderByAsc(FlowableCategory::getSort);
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public List<FlowableCategory> list(FlowableCategoryParam flowableCategoryParam) {
        LambdaQueryWrapper<FlowableCategory> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableCategoryParam)) {
            //根据名称查询
            if (ObjectUtil.isNotEmpty(flowableCategoryParam.getName())) {
                queryWrapper.eq(FlowableCategory::getName, flowableCategoryParam.getName());
            }
            //根据编码查询
            if (ObjectUtil.isNotEmpty(flowableCategoryParam.getCode())) {
                queryWrapper.eq(FlowableCategory::getCode, flowableCategoryParam.getCode());
            }
        }
        queryWrapper.eq(FlowableCategory::getStatus, CommonStatusEnum.ENABLE.getCode());
        //根据排序升序排列，序号越小越在前
        queryWrapper.orderByAsc(FlowableCategory::getSort);
        return this.list(queryWrapper);
    }

    @Override
    public void add(FlowableCategoryParam flowableCategoryParam) {
        //校验参数，检查是否存在相同的名称和编码
        checkParam(flowableCategoryParam, false);
        FlowableCategory flowableCategory = new FlowableCategory();
        BeanUtil.copyProperties(flowableCategoryParam, flowableCategory);
        flowableCategory.setStatus(CommonStatusEnum.ENABLE.getCode());
        this.save(flowableCategory);
    }

    @Override
    public void delete(FlowableCategoryParam flowableCategoryParam) {
        FlowableCategory flowableCategory = this.queryFlowableCategory(flowableCategoryParam);
        String code = flowableCategory.getCode();
        //该分类下是否有流程定义
        boolean hasDefinition = flowableDefinitionService.hasDefinition(code);
        //只要还有，则不能删
        if (hasDefinition) {
            throw new ServiceException(FlowableCategoryExceptionEnum.CATEGORY_CANNOT_DELETE);
        }
        flowableCategory.setStatus(CommonStatusEnum.DELETED.getCode());
        this.updateById(flowableCategory);
    }

    @Override
    public void edit(FlowableCategoryParam flowableCategoryParam) {
        FlowableCategory flowableCategory = this.queryFlowableCategory(flowableCategoryParam);
        //校验参数，检查是否存在相同的名称和编码
        checkParam(flowableCategoryParam, true);
        BeanUtil.copyProperties(flowableCategoryParam, flowableCategory);
        //不能修改状态，用修改状态接口修改状态
        flowableCategory.setStatus(null);
        this.updateById(flowableCategory);
    }

    @Override
    public FlowableCategoryResult detail(FlowableCategoryParam flowableCategoryParam) {
        FlowableCategory flowableCategory = this.queryFlowableCategory(flowableCategoryParam);
        FlowableCategoryResult flowableCategoryResult = new FlowableCategoryResult();
        BeanUtil.copyProperties(flowableCategory, flowableCategoryResult);
        //该分类下是否有流程定义
        boolean hasDefinition = flowableDefinitionService.hasDefinition(flowableCategory.getCode());
        //有定义则不可编辑名称和编码
        flowableCategoryResult.setWritable(!hasDefinition);
        return flowableCategoryResult;
    }

    @Override
    public String getNameByCode(String categoryCode) {
        LambdaQueryWrapper<FlowableCategory> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableCategory::getCode, categoryCode)
                .eq(FlowableCategory::getStatus, CommonStatusEnum.ENABLE.getCode());
        FlowableCategory flowableCategory = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableCategory)) {
            throw new ServiceException(FlowableCategoryExceptionEnum.CATEGORY_NOT_EXIST);
        }
        return flowableCategory.getName();
    }

    /**
     * 校验参数，检查是否存在相同的名称和编码
     *
     * @author xuyuxiang
     * @date 2020/3/25 21:23
     */
    private void checkParam(FlowableCategoryParam flowableCategoryParam, boolean isExcludeSelf) {
        Long id = flowableCategoryParam.getId();
        String name = flowableCategoryParam.getName();
        String code = flowableCategoryParam.getCode();

        LambdaQueryWrapper<FlowableCategory> queryWrapperByName = new LambdaQueryWrapper<>();
        queryWrapperByName.eq(FlowableCategory::getName, name)
                .ne(FlowableCategory::getStatus, CommonStatusEnum.DELETED.getCode());

        LambdaQueryWrapper<FlowableCategory> queryWrapperByCode = new LambdaQueryWrapper<>();
        queryWrapperByCode.eq(FlowableCategory::getCode, code)
                .ne(FlowableCategory::getStatus, CommonStatusEnum.DELETED.getCode());

        if (isExcludeSelf) {
            queryWrapperByName.ne(FlowableCategory::getId, id);
            queryWrapperByCode.ne(FlowableCategory::getId, id);
        }
        int countByName = this.count(queryWrapperByName);
        int countByCode = this.count(queryWrapperByCode);

        if (countByName >= 1) {
            throw new ServiceException(FlowableCategoryExceptionEnum.CATEGORY_NAME_REPEAT);
        }
        if (countByCode >= 1) {
            throw new ServiceException(FlowableCategoryExceptionEnum.CATEGORY_CODE_REPEAT);
        }
    }

    /**
     * 获取流程分类
     *
     * @author xuyuxiang
     * @date 2020/4/13 14:16
     */
    private FlowableCategory queryFlowableCategory(FlowableCategoryParam flowableCategoryParam) {
        FlowableCategory flowableCategory = this.getById(flowableCategoryParam.getId());
        if (ObjectUtil.isNull(flowableCategory)) {
            throw new ServiceException(FlowableCategoryExceptionEnum.CATEGORY_NOT_EXIST);
        }
        return flowableCategory;
    }
}
