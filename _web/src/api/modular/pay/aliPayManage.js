/**
 * 支付宝支付
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
import { axios } from '@/utils/request'

/**
 * 获取支付商户号
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 */
export function getOutTradeNo (parameter) {
  return axios({
    url: '/aliPay/getOutTradeNo',
    method: 'get',
    params: parameter
  })
}

/**
 * pc支付
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 */
export function pcPay (parameter) {
  return axios({
    url: '/aliPay/pcPay',
    method: 'get',
    params: parameter
  })
}

/**
 * 扫码支付
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 */
export function tradePreCreatePay (parameter) {
  return axios({
    url: '/aliPay/tradePreCreatePay',
    method: 'get',
    params: parameter,
    responseType: 'arraybuffer'
  })
}

/**
 * wap支付
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 */
export function wapPay (parameter) {
  return axios({
    url: '/aliPay/wapPay',
    method: 'get',
    params: parameter
  })
}

/**
 * 单笔转账
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function transfer (parameter) {
  return axios({
    url: '/aliPay/transfer',
    method: 'post',
    data: parameter
  })
}

/**
 * 退款
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function tradeRefund (parameter) {
  return axios({
    url: '/aliPay/tradeRefund',
    method: 'post',
    data: parameter
  })
}

/**
 * 创建订单
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function tradeCreate (parameter) {
  return axios({
    url: '/aliPay/tradeCreate',
    method: 'post',
    data: parameter
  })
}

/**
 * 撤销订单
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function tradeCancel (parameter) {
  return axios({
    url: '/aliPay/tradeCancel',
    method: 'post',
    data: parameter
  })
}

/**
 * 关闭订单
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function tradeClose (parameter) {
  return axios({
    url: '/aliPay/tradeClose',
    method: 'post',
    data: parameter
  })
}

/**
 * 结算订单
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function tradeOrderSettle (parameter) {
  return axios({
    url: '/aliPay/tradeOrderSettle',
    method: 'post',
    data: parameter
  })
}

/**
 * 通知地址
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function certNotify (parameter) {
  return axios({
    url: '/aliPay/certNotify',
    method: 'get',
    params: parameter
  })
}

/**
 * 返回地址
 *
 * @author yubaoshan
 * @date 2020/9/1 00:27
 * */
export function certReturn (parameter) {
  return axios({
    url: '/aliPay/certReturn',
    method: 'get',
    params: parameter
  })
}
