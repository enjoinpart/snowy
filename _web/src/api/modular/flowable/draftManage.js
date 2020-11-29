/**
 * 申请草稿
 *
 * @author yubaoshan
 * @date 2020/9/9 23:40
 **/
import { axios } from '@/utils/request'

/**
 * 申请草稿查询
 *
 * @author yubaoshan
 * @date 2020/9/9 23:40
 */
export function draftPage (parameter) {
  return axios({
    url: '/flowableDraft/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 添加/编辑申请草稿
 *
 * @author yubaoshan
 * @date 2020/9/9 23:40
 */
export function draftAdd (parameter) {
  return axios({
    url: '/flowableDraft/addOrUpdate',
    method: 'post',
    data: parameter
  })
}

/**
 * 申请草稿删除，提交成功删除，和主动删除
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function draftDelete (parameter) {
  return axios({
    url: '/flowableDraft/delete',
    method: 'post',
    data: parameter
  })
}
