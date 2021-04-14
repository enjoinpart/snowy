package vip.xiaonuo.pay.core.utils;

import cn.hutool.core.convert.Convert;
import com.alipay.api.domain.*;
import com.alipay.api.request.AlipayUserInfoShareRequest;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import vip.xiaonuo.pay.core.consts.AliPayConstant;
import vip.xiaonuo.pay.core.consts.PayGoodsConstant;
import vip.xiaonuo.pay.core.pojo.AliPayBean;
import vip.xiaonuo.pay.modular.alipay.param.AliPayParam;
import vip.xiaonuo.pay.core.consts.AliPayConstant;
import vip.xiaonuo.pay.core.consts.PayGoodsConstant;
import vip.xiaonuo.pay.modular.alipay.param.AliPayParam;

/**
 * 支付宝支付参数构造工具类
 *
 * @author xuyuxiang
 * @date 2020/8/12 14:58
 **/
public class AliPayModelGenUtil {

    /**
     * 获取通知地址
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:03
     **/
    public static String getNotifyUrl(AliPayBean aliPayBean) {
        return aliPayBean.getDomain() + "/aliPay/certNotify";
    }

    /**
     * 获取返回地址
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:04
     **/
    public static String getReturnUrl(AliPayBean aliPayBean) {
        return aliPayBean.getDomain() + "/aliPay/certReturn";
    }

    /**
     * 获取商户id
     *
     * @author xuyuxiang
     * @date 2020/8/13 11:48
     **/
    public static String getAliPayUserId(AliPayBean aliPayBean) {
        return aliPayBean.getAlipayUserId();
    }

    /**
     * 生成pc支付的model
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:07
     **/
    public static AlipayTradePagePayModel getAliPayTradePagePayModel(AliPayParam aliPayParam) {
        AlipayTradePagePayModel model = new AlipayTradePagePayModel();
        //订单号
        model.setOutTradeNo(aliPayParam.getOutTradeNo());
        //支付金额
        model.setTotalAmount(Convert.toStr(aliPayParam.getAmount()));
        //商品名称
        model.setSubject(PayGoodsConstant.PC_PAY_GOODS_SUBJECT);
        //商品描述
        model.setBody(PayGoodsConstant.PC_PAY_GOODS_BODY);
        //productCode
        model.setProductCode(AliPayConstant.PC_PAY_PRODUCT_CODE);
        //回调参数的key
        model.setPassbackParams(AliPayConstant.PC_PAY_PASS_BACK_PARAMS);
        return model;
    }

    /**
     * 生成扫码支付的model
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:07
     **/
    public static AlipayTradePrecreateModel getAliPayTradePreCreateModel(AliPayParam aliPayParam) {
        AlipayTradePrecreateModel model = new AlipayTradePrecreateModel();
        //订单号
        model.setOutTradeNo(IdWorker.getIdStr());
        //支付金额
        model.setTotalAmount(Convert.toStr(aliPayParam.getAmount()));
        //商品名称
        model.setSubject(PayGoodsConstant.QR_PAY_GOODS_SUBJECT);
        //商品描述
        model.setBody(PayGoodsConstant.QR_PAY_GOODS_BODY);
        //商户号
        model.setStoreId(IdWorker.getIdStr());
        //二维码失效时间
        model.setTimeoutExpress(AliPayConstant.PRECREATE_PAY_QR_EXPRESS_TIME);
        return model;
    }

    /**
     * 生成wap支付的model
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:38
     **/
    public static AlipayTradeWapPayModel getAliPayTradeWapPayModel(AliPayParam aliPayParam) {
        AlipayTradeWapPayModel model = new AlipayTradeWapPayModel();
        //订单号
        model.setOutTradeNo(aliPayParam.getOutTradeNo());
        //支付金额
        model.setTotalAmount(Convert.toStr(aliPayParam.getAmount()));
        //商品名称
        model.setSubject(PayGoodsConstant.WAP_PAY_GOODS_SUBJECT);
        //商品描述
        model.setBody(PayGoodsConstant.WAP_PAY_GOODS_BODY);
        //productCode
        model.setProductCode(AliPayConstant.WAP_PAY_PRODUCT_CODE);
        //回调参数的key
        model.setPassbackParams(AliPayConstant.WAP_PAY_PASS_BACK_PARAMS);
        return model;
    }

    /**
     * 生成转账model
     *
     * @author xuyuxiang
     * @date 2020/8/12 15:39
     **/
    public static AlipayFundTransToaccountTransferModel getAliPayFundTransToAccountTransferModel(AliPayParam aliPayParam) {
        AlipayFundTransToaccountTransferModel model = new AlipayFundTransToaccountTransferModel();
        //外部业务编号
        model.setOutBizNo(aliPayParam.getOutTradeNo());
        //支付类型
        model.setPayeeType(AliPayConstant.TRANSFER_PAYEETYPE);
        //支付账号
        model.setPayeeAccount("valyck0052@sandbox.com");
        //支付金额
        model.setAmount(Convert.toStr(aliPayParam.getAmount()));
        //支付人
        model.setPayerShowName("测试转账");
        //支付人真实姓名
        model.setPayerRealName("沙箱环境");
        //支付备注
        model.setRemark("测试单笔转账到支付宝");
        return model;
    }

    /**
     * 生成会员信息查询model
     *
     * @author xuyuxiang
     * @date 2020/8/13 11:12
     **/
    public static AlipayUserInfoShareRequest getAliPayUserInfoShareRequest() {
        return new AlipayUserInfoShareRequest();
    }

    /**
     * 生成余额查询model
     *
     * @author xuyuxiang
     * @date 2020/8/13 11:12
     **/
    public static AlipayFundAccountQueryModel getAliPayFundAccountQueryModel(AliPayBean aliPayBean) {
        AlipayFundAccountQueryModel model = new AlipayFundAccountQueryModel();
        model.setAlipayUserId(getAliPayUserId(aliPayBean));
        model.setAccountType(AliPayConstant.QUERY_ACCOUNT_TYPE);
        return model;
    }

    /**
     * 生成交易查询model
     *
     * @author xuyuxiang
     * @date 2020/8/17 10:34
     **/
    public static AlipayTradeQueryModel getAliPayTradeQueryModel(AliPayParam aliPayParam) {
        AlipayTradeQueryModel model = new AlipayTradeQueryModel();
        model.setOutTradeNo(aliPayParam.getOutTradeNo());
        return model;
    }

    /**
     * 生成退款查询model
     *
     * @author xuyuxiang
     * @date 2020/8/17 10:34
     **/
    public static AlipayTradeFastpayRefundQueryModel getAliPayTradeRefundQueryModel(AliPayParam aliPayParam) {
        AlipayTradeFastpayRefundQueryModel model = new AlipayTradeFastpayRefundQueryModel();
        model.setOutTradeNo(aliPayParam.getOutTradeNo());
        model.setTradeNo(aliPayParam.getTradeNo());
        model.setOutRequestNo(aliPayParam.getOutTradeNo());
        return model;
    }


    /**
     * 生成对账单查询model
     *
     * @author xuyuxiang
     * @date 2020/8/17 14:18
     **/
    public static AlipayDataDataserviceBillDownloadurlQueryModel getAliPayDataDataServiceBillDownloadUrlQueryModel(AliPayParam aliPayParam) {
        AlipayDataDataserviceBillDownloadurlQueryModel model = new AlipayDataDataserviceBillDownloadurlQueryModel();
        model.setBillType(AliPayConstant.QUERY_BILL_TYPE);
        model.setBillDate(aliPayParam.getBillDate());
        return model;
    }

    /**
     * 生成退款model
     *
     * @author xuyuxiang
     * @date 2020/8/17 16:29
     **/
    public static AlipayTradeRefundModel getAliPayTradeRefundModel(AliPayParam aliPayParam) {
        AlipayTradeRefundModel model = new AlipayTradeRefundModel();
        model.setOutTradeNo(aliPayParam.getOutTradeNo());
        model.setTradeNo(aliPayParam.getTradeNo());
        model.setRefundAmount(Convert.toStr(aliPayParam.getAmount()));
        model.setRefundReason(aliPayParam.getReason());
        return model;
    }

    /**
     * 生成订单创建model
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:20
     **/
    public static AlipayTradeCreateModel getAliPayTradeCreateModel(AliPayParam aliPayParam) {
        AlipayTradeCreateModel model = new AlipayTradeCreateModel();
        model.setOutTradeNo(IdWorker.getIdStr());
        model.setTotalAmount(Convert.toStr(aliPayParam.getAmount()));
        //商品名称
        model.setSubject(PayGoodsConstant.PC_PAY_GOODS_SUBJECT);
        //商品描述
        model.setBody(PayGoodsConstant.PC_PAY_GOODS_BODY);
        //买家支付宝账号
        model.setBuyerLogonId(aliPayParam.getBuyerLogonId());
        return model;
    }

    /**
     * 生成订单撤销model
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:21
     **/
    public static AlipayTradeCancelModel getAliPayTradeCancelModel(AliPayParam aliPayParam) {
        AlipayTradeCancelModel model = new AlipayTradeCancelModel();
        model.setTradeNo(aliPayParam.getTradeNo());
        return model;
    }

    /**
     * 生成订单关闭model
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:21
     **/
    public static AlipayTradeCloseModel getAliPayTradeCloseModel(AliPayParam aliPayParam) {
        AlipayTradeCloseModel model = new AlipayTradeCloseModel();
        model.setTradeNo(aliPayParam.getTradeNo());
        return model;
    }

    /**
     * 生成订单结算model
     *
     * @author xuyuxiang
     * @date 2020/8/19 15:21
     **/
    public static AlipayTradeOrderSettleModel getAliPayTradeOrderSettleModel(AliPayParam aliPayParam) {
        AlipayTradeOrderSettleModel model = new AlipayTradeOrderSettleModel();
        model.setOutRequestNo(IdWorker.getIdStr());
        model.setTradeNo(aliPayParam.getTradeNo());
        return model;
    }
}
