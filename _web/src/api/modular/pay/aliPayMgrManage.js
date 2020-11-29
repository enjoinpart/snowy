/**
 * 支付宝支付管理控制器，用于查询订单等
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
import { axios } from '@/utils/request'

/**
 * 会员信息查询
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function userInfoQuery (parameter) {
  return axios({
    url: '/aliPayMgr/userInfoQuery',
    method: 'get',
    params: parameter
  })
}

/**
 * 商户余额查询
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function accountQuery (parameter) {
  return axios({
    url: '/aliPayMgr/accountQuery',
    method: 'get',
    params: parameter
  })
}

/**
 * 交易记录查询
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function tradeHisQuery (parameter) {
  return axios({
    url: '/aliPayMgr/tradeHisQuery',
    method: 'get',
    params: parameter
  })
}

/**
 * 交易查询
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function tradeQuery (parameter) {
  return axios({
    url: '/aliPayMgr/tradeQuery',
    method: 'get',
    params: parameter
  })
}

/**
 * 退款查询
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function tradeRefundQuery (parameter) {
  return axios({
    url: '/aliPayMgr/tradeRefundQuery',
    method: 'get',
    params: parameter
  })
}

/**
 * 下载对账单
 *
 * @author yubaoshan
 * @date 2020/9/1 19:38
 */
export function billDownloadUrlQuery (parameter) {
  return axios({
    url: '/aliPayMgr/billDownloadUrlQuery',
    method: 'get',
    params: parameter
  })
}
