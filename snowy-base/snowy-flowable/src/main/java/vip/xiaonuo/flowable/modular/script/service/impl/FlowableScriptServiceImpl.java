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
