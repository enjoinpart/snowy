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
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import vip.xiaonuo.flowable.core.enums.FormResourceTypeEnum;
import vip.xiaonuo.flowable.modular.form.entity.FlowableForm;
import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import vip.xiaonuo.flowable.modular.form.enums.FlowableFormExceptionEnum;
import vip.xiaonuo.flowable.modular.form.mapper.FlowableFormMapper;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.result.FlowableFormResult;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import vip.xiaonuo.flowable.modular.form.entity.FlowableForm;
import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import vip.xiaonuo.flowable.modular.form.enums.FlowableFormExceptionEnum;
import vip.xiaonuo.flowable.modular.form.mapper.FlowableFormMapper;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.result.FlowableFormResult;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;
import org.springframework.stereotype.Service;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.flowable.core.enums.FormNodeTypeEnum;
import vip.xiaonuo.flowable.core.enums.FormResourceTypeEnum;
import vip.xiaonuo.flowable.modular.form.entity.FlowableForm;
import vip.xiaonuo.flowable.modular.form.entity.FlowableFormResource;
import vip.xiaonuo.flowable.modular.form.enums.FlowableFormExceptionEnum;
import vip.xiaonuo.flowable.modular.form.mapper.FlowableFormMapper;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormParam;
import vip.xiaonuo.flowable.modular.form.param.FlowableFormResourceParam;
import vip.xiaonuo.flowable.modular.form.result.FlowableFormResult;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormResourceService;
import vip.xiaonuo.flowable.modular.form.service.FlowableFormService;

import javax.annotation.Resource;
import java.util.List;

/**
 * 流程表单service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/4/17 10:25
 */
@Service("snowyFlowableFormService")
public class FlowableFormServiceImpl extends ServiceImpl<FlowableFormMapper, FlowableForm> implements FlowableFormService {

    @Resource
    private FlowableFormResourceService flowableFormResourceService;

    @Override
    public List<FlowableFormResult> list(FlowableFormParam flowableFormParam) {
        List<FlowableFormResult> resultList = CollectionUtil.newArrayList();
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getProcessDefinitionId, flowableFormParam.getProcessDefinitionId());
        List<FlowableForm> flowableFormList = this.list(queryWrapper);
        flowableFormList.forEach(flowableForm -> {
            FlowableFormResult flowableFormResult = new FlowableFormResult();
            BeanUtil.copyProperties(flowableForm, flowableFormResult);
            FlowableFormResourceParam flowableFormResourceParam = new FlowableFormResourceParam();
            flowableFormResourceParam.setId(flowableFormResult.getFormId());
            flowableFormResult.setFlowableFormResource(flowableFormResourceService.detail(flowableFormResourceParam));
            resultList.add(flowableFormResult);
        });
        return resultList;
    }

    @Override
    public void add(FlowableFormParam flowableFormParam) {
        //校验参数
        checkParam(flowableFormParam, false);
        FlowableForm flowableForm = new FlowableForm();
        BeanUtil.copyProperties(flowableFormParam, flowableForm);
        this.save(flowableForm);
    }

    @Override
    public void delete(FlowableFormParam flowableFormParam) {
        FlowableForm flowableForm = this.queryFlowableForm(flowableFormParam);
        //真删除
        this.removeById(flowableForm.getId());
    }

    @Override
    public void edit(FlowableFormParam flowableFormParam) {
        FlowableForm flowableForm = this.queryFlowableForm(flowableFormParam);
        //校验参数
        checkParam(flowableFormParam, true);
        BeanUtil.copyProperties(flowableFormParam, flowableForm);
        this.updateById(flowableForm);
    }

    @Override
    public FlowableForm detail(FlowableFormParam flowableFormParam) {
        return this.queryFlowableForm(flowableFormParam);
    }

    @Override
    public void delete(String processDefinitionId) {
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getProcessDefinitionId, processDefinitionId);
        //真删除
        this.remove(queryWrapper);
    }

    @Override
    public String getStartFormData(FlowableFormParam flowableFormParam) {
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getProcessDefinitionId, flowableFormParam.getProcessDefinitionId())
                .eq(FlowableForm::getNodeType, FormNodeTypeEnum.START.getCode());
        FlowableForm flowableForm = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableForm)) {
            throw new ServiceException(FlowableFormExceptionEnum.FORM_START_NOT_EXIST);
        }
        FlowableFormResourceParam flowableFormResourceParam = new FlowableFormResourceParam();
        flowableFormResourceParam.setId(flowableForm.getFormId());
        FlowableFormResource formResource = flowableFormResourceService.detail(flowableFormResourceParam);
        //如果是自行开发则返回url
        Integer type = formResource.getType();
        if(FormResourceTypeEnum.DEV.getCode().equals(type)) {
            return formResource.getFormUrl();
        } else {
            //否则返回表单json
            return formResource.getFormJson();
        }
    }

    @Override
    public String getGlobalFormData(FlowableFormParam flowableFormParam) {
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getProcessDefinitionId, flowableFormParam.getProcessDefinitionId())
                .eq(FlowableForm::getNodeType, FormNodeTypeEnum.GLOBAL.getCode());
        FlowableForm flowableForm = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableForm)) {
            throw new ServiceException(FlowableFormExceptionEnum.FORM_GLOBAL_NOT_EXIST);
        }
        FlowableFormResourceParam flowableFormResourceParam = new FlowableFormResourceParam();
        flowableFormResourceParam.setId(flowableForm.getFormId());
        FlowableFormResource formResource = flowableFormResourceService.detail(flowableFormResourceParam);
        //如果是自行开发则返回url
        Integer type = formResource.getType();
        if(FormResourceTypeEnum.DEV.getCode().equals(type)) {
            return formResource.getFormUrl();
        } else {
            //否则返回表单json
            return formResource.getFormJson();
        }
    }

    @Override
    public String getTaskFormData(FlowableFormParam flowableFormParam) {
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getProcessDefinitionId, flowableFormParam.getProcessDefinitionId())
                .eq(FlowableForm::getActId, flowableFormParam.getActId())
                .eq(FlowableForm::getNodeType, FormNodeTypeEnum.NODE.getCode());
        FlowableForm flowableForm = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(flowableForm)) {
            //流程节点无表单则使用全局表单
            return getGlobalFormData(flowableFormParam);
        }
        FlowableFormResourceParam flowableFormResourceParam = new FlowableFormResourceParam();
        flowableFormResourceParam.setId(flowableForm.getFormId());
        FlowableFormResource formResource = flowableFormResourceService.detail(flowableFormResourceParam);
        //如果是自行开发则返回url
        Integer type = formResource.getType();
        if(FormResourceTypeEnum.DEV.getCode().equals(type)) {
            return formResource.getFormUrl();
        } else {
            //否则返回表单json
            return formResource.getFormJson();
        }
    }

    @Override
    public boolean hasDefinition(Long formResourceId) {
        LambdaQueryWrapper<FlowableForm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(FlowableForm::getFormId, formResourceId);
        return this.list(queryWrapper).size() > 0;
    }

    /**
     * 校验参数
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    private void checkParam(FlowableFormParam flowableFormParam, boolean isExcludeSelf) {
        Long id = flowableFormParam.getId();
        String processDefinitionId = flowableFormParam.getProcessDefinitionId();
        String actName = flowableFormParam.getActName();
        String actId = flowableFormParam.getActId();
        //获取节点类型
        Integer nodeType = flowableFormParam.getNodeType();

        //如果是全局的节点
        if (FormNodeTypeEnum.GLOBAL.getCode().equals(nodeType)) {
            //构建带流程定义id的查询条件
            LambdaQueryWrapper<FlowableForm> queryWrapperByProcessDefinitionId = new LambdaQueryWrapper<>();
            queryWrapperByProcessDefinitionId.eq(FlowableForm::getProcessDefinitionId, processDefinitionId)
                    .eq(FlowableForm::getNodeType, nodeType);

            //如果排除自己，则增加查询条件主键id不等于本条id
            if (isExcludeSelf) {
                queryWrapperByProcessDefinitionId.ne(FlowableForm::getId, id);
            }

            //查询重复记录的数量
            int countByActName = this.count(queryWrapperByProcessDefinitionId);

            //如果存在重复的记录，抛出异常，直接返回前端
            if (countByActName >= 1) {
                throw new ServiceException(FlowableFormExceptionEnum.FORM_ACT_NAME_REPEAT);
            }
        }
        //如果是节点表单，则节点名和id都不能为空
        if (FormNodeTypeEnum.NODE.getCode().equals(nodeType)) {
            if (ObjectUtil.isEmpty(actName)) {
                throw new ServiceException(FlowableFormExceptionEnum.FORM_ACT_NAME_EMPTY);
            }
            if (ObjectUtil.isEmpty(actId)) {
                throw new ServiceException(FlowableFormExceptionEnum.FORM_ACT_ID_EMPTY);
            }
        }
        //校验节点名和节点id
        if (ObjectUtil.isNotEmpty(actName)) {
            //构建带actName的查询条件
            LambdaQueryWrapper<FlowableForm> queryWrapperByActName = new LambdaQueryWrapper<>();
            queryWrapperByActName.eq(FlowableForm::getActName, actName)
                    .eq(FlowableForm::getProcessDefinitionId, processDefinitionId);

            //如果排除自己，则增加查询条件主键id不等于本条id
            if (isExcludeSelf) {
                queryWrapperByActName.ne(FlowableForm::getId, id);
            }

            //查询重复记录的数量
            int countByActName = this.count(queryWrapperByActName);

            //如果存在重复的记录，抛出异常，直接返回前端
            if (countByActName >= 1) {
                throw new ServiceException(FlowableFormExceptionEnum.FORM_ACT_NAME_REPEAT);
            }
        }

        if (ObjectUtil.isNotEmpty(actId)) {
            //构建带actId的查询条件
            LambdaQueryWrapper<FlowableForm> queryWrapperByActId = new LambdaQueryWrapper<>();
            queryWrapperByActId.eq(FlowableForm::getActId, actId)
                    .eq(FlowableForm::getProcessDefinitionId, processDefinitionId);
            ;

            //如果排除自己，则增加查询条件主键id不等于本条id
            if (isExcludeSelf) {
                queryWrapperByActId.ne(FlowableForm::getId, id);
            }
            //查询重复记录的数量
            int countByActId = this.count(queryWrapperByActId);

            //如果存在重复的记录，抛出异常，直接返回前端
            if (countByActId >= 1) {
                throw new ServiceException(FlowableFormExceptionEnum.FORM_ACT_ID_REPEAT);
            }
        }
    }

    /**
     * 获取表单
     *
     * @author xuyuxiang
     * @date 2020/8/14 15:06
     */
    private FlowableForm queryFlowableForm(FlowableFormParam flowableFormParam) {
        FlowableForm flowableForm = this.getById(flowableFormParam.getId());
        if (ObjectUtil.isNull(flowableForm)) {
            throw new ServiceException(FlowableFormExceptionEnum.FORM_NOT_EXIST);
        }
        return flowableForm;
    }
}
