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
package vip.xiaonuo.flowable.modular.draft.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import vip.xiaonuo.core.context.login.LoginContextHolder;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.flowable.modular.draft.entity.FlowableDraft;
import vip.xiaonuo.flowable.modular.draft.enums.FlowableDraftExceptionEnum;
import vip.xiaonuo.flowable.modular.draft.mapper.FlowableDraftMapper;
import vip.xiaonuo.flowable.modular.draft.param.FlowableDraftParam;
import vip.xiaonuo.flowable.modular.draft.service.FlowableDraftService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
