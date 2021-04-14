package vip.xiaonuo.pay.modular.alipay.service;

import com.baomidou.mybatisplus.extension.service.IService;
import vip.xiaonuo.core.pojo.page.PageResult;
import vip.xiaonuo.pay.modular.alipay.entity.AliPayTradeHistory;
import vip.xiaonuo.pay.modular.alipay.param.AliPayTradeHistoryParam;
import vip.xiaonuo.core.pojo.page.PageResult;

import java.math.BigDecimal;

/**
 * 支付宝交易记录service接口
 *
 * @author xuyuxiang
 * @date 2020/8/26 10:08
 **/
public interface AliPayTradeHistoryService extends IService<AliPayTradeHistory> {

    /**
     * 新增交易记录
     *
     * @param aliPayTradeHistory 交易记录参数
     * @author xuyuxiang
     * @date 2020/8/26 10:36
     **/
    void add(AliPayTradeHistory aliPayTradeHistory);

    /**
     * 修改交易状态
     *
     * @param outTradeNo 商家订单号
     * @param tradeNo    支付宝订单号
     * @param status     状态（字典 0未支付 1已支付 2已退款 3已关闭 4已关闭有退款 5已取消）
     * @author xuyuxiang
     * @date 2020/8/26 10:36
     **/
    void changeStatus(String outTradeNo, String tradeNo, Integer status);

    /**
     * 支付宝交易记录查询（只查询通过本平台的交易）
     *
     * @param aliPayTradeHistoryParam 查询参数
     * @return 分页结果
     * @author xuyuxiang
     * @date 2020/8/26 9:56
     **/
    PageResult<AliPayTradeHistory> page(AliPayTradeHistoryParam aliPayTradeHistoryParam);

    /**
     * 校验商家订单号是否存在
     *
     * @param outTradeNo 商家订单号
     * @author xuyuxiang
     * @date 2020/9/2 20:46
     **/
    void validateOutTradeNo(String outTradeNo);

    /**
     * 校验商家订单号与金额是否对应
     *
     * @param outTradeNo 商家订单号
     * @param amount     订单金额
     * @author xuyuxiang
     * @date 2020/9/2 20:53
     **/
    void validateAmount(String outTradeNo, BigDecimal amount);
}
