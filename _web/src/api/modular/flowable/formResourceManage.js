import { axios } from '@/utils/request'

/**
 * 表单查询
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourcePage (parameter) {
  return axios({
    url: '/flowableFormResource/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 表单列表
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourceList (parameter) {
  return axios({
    url: '/flowableFormResource/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 表单添加
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourceAdd (parameter) {
  return axios({
    url: '/flowableFormResource/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑表单
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourceEdit (parameter) {
  return axios({
    url: '/flowableFormResource/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 表单删除
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourceDelete (parameter) {
  return axios({
    url: '/flowableFormResource/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 表单查看
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formResourceDetail (parameter) {
  return axios({
    url: '/flowableFormResource/detail',
    method: 'get',
    params: parameter
  })
}

/**
 * 表单设计保存
 *
 * @author yubaoshan
 * @date 2020/8/15 21:43
 */
export function formResourceDesign (parameter) {
  return axios({
    url: '/flowableFormResource/design',
    method: 'post',
    data: parameter
  })
}
