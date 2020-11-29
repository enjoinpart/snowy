package com.cn.xiaonuo.pay.modular.alipay.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.cn.xiaonuo.core.exception.ServiceException;
import com.cn.xiaonuo.core.factory.PageFactory;
import com.cn.xiaonuo.core.pojo.page.PageResult;
import com.cn.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryExceptionEnum;
import com.cn.xiaonuo.pay.modular.alipay.mapper.AliPayTradeHistoryMapper;
import com.cn.xiaonuo.pay.modular.alipay.param.AliPayTradeHistoryParam;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayTradeHistoryService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cn.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import com.cn.xiaonuo.pay.modular.alipay.enums.AliPayTradeHistoryExceptionEnum;
import com.cn.xiaonuo.pay.modular.alipay.mapper.AliPayTradeHistoryMapper;
import com.cn.xiaonuo.pay.modular.alipay.param.AliPayTradeHistoryParam;
import com.cn.xiaonuo.pay.modular.alipay.service.AliPayTradeHistoryService;
import org.springframework.stereotype.Service;

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
