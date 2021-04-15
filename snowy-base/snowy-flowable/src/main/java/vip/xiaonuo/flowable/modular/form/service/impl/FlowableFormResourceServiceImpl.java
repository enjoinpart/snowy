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
package vip.xiaonuo.flowable.modular.form.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.enums.CommonStatusEnum;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.core.enums.FormResourceTypeEnum;
import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import vip.xiaonuo.flowable.modular.form.enums.FlowableFormResourceExceptionEnum;
import vip.xiaonuo.flowable.modular.form.mapper.FlowableFormResourceMapper;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import vip.xiaonuo.flowable.modular.form.enums.FlowableFormResourceExceptionEnum;
import vip.xiaonuo.flowable.modular.form.mapper.FlowableFormResourceMapper;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 表单管理service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/14 15:06
 */
@Service
public class FlowableFormResourceServiceImpl extends ServiceImpl<FlowableFormResourceMapper, FlowableFormResource> implements FlowableFormResourceService {

    @Resource(name = "snowyFlowableFormService")
    private FlowableFormService flowableFormService;

    @Override
    public PageResult<FlowableFormResource> page(FlowableFormResourceParam flowableFormResourceParam) {
        LambdaQueryWrapper<FlowableFormResource> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableFormResourceParam)) {
            //根据表单名称查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getName())) {
                queryWrapper.like(FlowableFormResource::getName, flowableFormResourceParam.getName());
            }

            //根据表单编码查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getCode())) {
                queryWrapper.like(FlowableFormResource::getCode, flowableFormResourceParam.getCode());
            }

            //根据表单分类查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getCategory())) {
                queryWrapper.eq(FlowableFormResource::getCategory, flowableFormResourceParam.getCategory());
            }

        }
        queryWrapper.eq(FlowableFormResource::getStatus, CommonStatusEnum.ENABLE.getCode());
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public List<FlowableFormResource> list(FlowableFormResourceParam flowableFormResourceParam) {
        LambdaQueryWrapper<FlowableFormResource> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(flowableFormResourceParam)) {
            //根据表单名称查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getName())) {
                queryWrapper.like(FlowableFormResource::getName, flowableFormResourceParam.getName());
            }

            //根据表单编码查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getCode())) {
                queryWrapper.like(FlowableFormResource::getCode, flowableFormResourceParam.getCode());
            }

            //根据表单分类查询
            if (ObjectUtil.isNotEmpty(flowableFormResourceParam.getCategory())) {
                queryWrapper.eq(FlowableFormResource::getCategory, flowableFormResourceParam.getCategory());
            }

        }
        queryWrapper.eq(FlowableFormResource::getStatus, CommonStatusEnum.ENABLE.getCode());
        return this.list(queryWrapper);
    }

    @Override
    public void add(FlowableFormResourceParam flowableFormResourceParam) {
        //校验参数
        checkParam(flowableFormResourceParam, false);
        FlowableFormResource flowableFormResource = new FlowableFormResource();
        BeanUtil.copyProperties(flowableFormResourceParam, flowableFormResource);
        flowableFormResource.setStatus(CommonStatusEnum.ENABLE.getCode());
        this.save(flowableFormResource);
    }

    @Override
    public void delete(FlowableFormResourceParam flowableFormResourceParam) {
        FlowableFormResource flowableFormResource = this.queryFlowableFormResource(flowableFormResourceParam);
        Long formResourceId = flowableFormResource.getId();
        //该表单是否关联流程定义
        boolean hasDefinition = flowableFormService.hasDefinition(formResourceId);
        //只要还有，则不能删
        if (hasDefinition) {
            throw new ServiceException(FlowableFormResourceExceptionEnum.FORM_CANNOT_DELETE);
        }
        flowableFormResource.setStatus(CommonStatusEnum.DELETED.getCode());
        this.updateById(flowableFormResource);
    }

    @Override
    public void edit(FlowableFormResourceParam flowableFormResourceParam) {
        FlowableFormResource flowableFormResource = this.queryFlowableFormResource(flowableFormResourceParam);
        //校验参数
        checkParam(flowableFormResourceParam, true);
        BeanUtil.copyProperties(flowableFormResourceParam, flowableFormResource);
        //不能修改状态，用修改状态接口修改状态
        flowableFormResource.setStatus(null);
        this.updateById(flowableFormResource);
    }

    @Override
    public void design(FlowableFormResourceParam flowableFormResourceParam) {
        FlowableFormResource flowableFormResource = this.queryFlowableFormResource(flowableFormResourceParam);
        String formJson = flowableFormResourceParam.getFormJson();
        flowableFormResource.setFormJson(formJson);
        this.updateById(flowableFormResource);
    }

    @Override
    public FlowableFormResource detail(FlowableFormResourceParam flowableFormResourceParam) {
        return this.queryFlowableFormResource(flowableFormResourceParam);
    }

    /**
     * 校验参数
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    private void checkParam(FlowableFormResourceParam flowableFormResourceParam, boolean isExcludeSelf) {
        Long id = flowableFormResourceParam.getId();
        String name = flowableFormResourceParam.getName();
        String code = flowableFormResourceParam.getCode();
        Integer type = flowableFormResourceParam.getType();
        String formUrl = flowableFormResourceParam.getFormUrl();

        //如果是自行开发，则url必填
        if (FormResourceTypeEnum.DEV.getCode().equals(type)) {
            if (ObjectUtil.isEmpty(formUrl)) {
                throw new ServiceException(FlowableFormResourceExceptionEnum.FORM_URL_EMPTY);
            }
        }

        //构建带name和code的查询条件
        LambdaQueryWrapper<FlowableFormResource> queryWrapperByName = new LambdaQueryWrapper<>();
        queryWrapperByName.eq(FlowableFormResource::getName, name)
                .ne(FlowableFormResource::getStatus, CommonStatusEnum.DELETED.getCode());

        LambdaQueryWrapper<FlowableFormResource> queryWrapperByCode = new LambdaQueryWrapper<>();
        queryWrapperByCode.eq(FlowableFormResource::getCode, code)
                .ne(FlowableFormResource::getStatus, CommonStatusEnum.DELETED.getCode());

        //如果排除自己，则增加查询条件主键id不等于本条id
        if (isExcludeSelf) {
            queryWrapperByName.ne(FlowableFormResource::getId, id);
            queryWrapperByCode.ne(FlowableFormResource::getId, id);
        }

        //查询重复记录的数量
        int countByName = this.count(queryWrapperByName);
        int countByCode = this.count(queryWrapperByCode);

        //如果存在重复的记录，抛出异常，直接返回前端
        if (countByName >= 1) {
            throw new ServiceException(FlowableFormResourceExceptionEnum.FORM_RESOURCE_NAME_REPEAT);
        }
        if (countByCode >= 1) {
            throw new ServiceException(FlowableFormResourceExceptionEnum.FORM_RESOURCE_CODE_REPEAT);
        }
    }

    /**
     * 获取表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    private FlowableFormResource queryFlowableFormResource(FlowableFormResourceParam flowableFormResourceParam) {
        FlowableFormResource flowableFormResource = this.getById(flowableFormResourceParam.getId());
        if (ObjectUtil.isNull(flowableFormResource)) {
            throw new ServiceException(FlowableFormResourceExceptionEnum.FORM_RESOURCE_NOT_EXIST);
        }
        return flowableFormResource;
    }
}
