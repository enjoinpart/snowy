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
package vip.xiaonuo.pay.modular.alipay.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import vip.xiaonuo.core.exception.ServiceException;
import vip.xiaonuo.core.factory.PageFactory;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import vip.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryExceptionEnum;
import vip.xiaonuo.pay.modular.alipay.mapper.AliPayTradeHistoryMapper;
import vip.xiaonuo.pay.modular.alipay.param.AliPayTradeHistoryParam;
import vip.xiaonuo.pay.modular.alipay.service.AliPayTradeHistoryService;
import org.springframework.stereotype.Service;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.math.BigDecimal;

/**
 * 支付宝支付交易记录service接口实现类
 *
 * @author xuyuxiang
 * @date 2020/8/26 10:10
 **/
@Service
public class AliPayTradeHistoryServiceImpl extends ServiceImpl<AliPayTradeHistoryMapper, AliPayTradeHistory> implements AliPayTradeHistoryService {

    @Override
    public void add(AliPayTradeHistory aliPayTradeHistory) {
        this.save(aliPayTradeHistory);
    }

    @Override
    public void changeStatus(String outTradeNo, String tradeNo, Integer status) {
        LambdaUpdateWrapper<AliPayTradeHistory> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(AliPayTradeHistory::getOutTradeNo, outTradeNo)
                .set(AliPayTradeHistory::getStatus, status);
        if (ObjectUtil.isNotEmpty(tradeNo)) {
            updateWrapper.set(AliPayTradeHistory::getTradeNo, tradeNo);
        }
        this.update(updateWrapper);
    }

    @Override
    public PageResult<AliPayTradeHistory> page(AliPayTradeHistoryParam aliPayTradeHistoryParam) {
        LambdaQueryWrapper<AliPayTradeHistory> queryWrapper = new LambdaQueryWrapper<>();
        if (ObjectUtil.isNotNull(aliPayTradeHistoryParam)) {
            //跟据交易状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款）查询
            if (ObjectUtil.isNotEmpty(aliPayTradeHistoryParam.getStatus())) {
                queryWrapper.eq(AliPayTradeHistory::getStatus, aliPayTradeHistoryParam.getStatus());
            }
        }
        queryWrapper.orderByDesc(AliPayTradeHistory::getBillDate);
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public void validateOutTradeNo(String outTradeNo) {
        LambdaQueryWrapper<AliPayTradeHistory> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(AliPayTradeHistory::getOutTradeNo, outTradeNo);
        AliPayTradeHistory aliPayTradeHistory = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(aliPayTradeHistory)) {
            throw new ServiceException(AliPayTradeHistoryExceptionEnum.TRADE_HISTORY_NOT_EXIST);
        }
    }

    @Override
    public void validateAmount(String outTradeNo, BigDecimal amount) {
        LambdaQueryWrapper<AliPayTradeHistory> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(AliPayTradeHistory::getOutTradeNo, outTradeNo)
                .eq(AliPayTradeHistory::getAmount, amount);
        AliPayTradeHistory aliPayTradeHistory = this.getOne(queryWrapper);
        if (ObjectUtil.isNull(aliPayTradeHistory)) {
            throw new ServiceException(AliPayTradeHistoryExceptionEnum.TRADE_HISTORY_AMOUNT_ERROR);
        }
    }
}
