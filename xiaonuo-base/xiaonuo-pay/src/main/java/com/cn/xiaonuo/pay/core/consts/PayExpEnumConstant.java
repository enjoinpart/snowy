package com.cn.xiaonuo.pay.core.consts;

/**
 * 工作流 异常枚举编码构成常量
 * <p>
 * 异常枚举编码由3部分组成，如下：
 * <p>
 * 模块编码（2位） + 分类编码（4位） + 具体项编码（至少1位）
 * <p>
 * 模块编码和分类编码在ExpEnumCodeConstant类中声明
 *
 * @author xuyuxiang
 * @date 2020/8/11 16:50
 */
public interface PayExpEnumConstant {

    /**
     * 模块分类编码（2位）
     * <p>
     * xiaonuo-pay模块异常枚举编码
     */
    int XIAONUO_PAY_MODULE_EXP_CODE = 40;

    /* 分类编码（4位） */
    /**
     * 支付宝支付相关异常枚举
     */
    int ALIPAY_EXCEPTION_ENUM = 1100;

    /**
     * 支付宝支付历史记录相关异常枚举
     */
    int ALIPAY_HISTORY_EXCEPTION_ENUM = 1200;


    /**
     * 微信支付相关异常枚举
     */
    int WXPAY_EXCEPTION_ENUM = 1300;
}
