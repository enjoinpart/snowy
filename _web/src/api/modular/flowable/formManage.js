import { axios } from '@/utils/request'

/**
 * 表单列表
 *
 * @author yubaoshan
 * @date 2020/8/15 16:15
 */
export function formList (parameter) {
  return axios({
    url: '/flowableForm/list',
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
export function formAdd (parameter) {
  return axios({
    url: '/flowableForm/add',
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
export function formEdit (parameter) {
  return axios({
    url: '/flowableForm/edit',
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
export function formDelete (parameter) {
  return axios({
    url: '/flowableForm/delete',
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
export function formDetail (parameter) {
  return axios({
    url: '/flowableForm/detail',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程定义的开始表单
 *
 * @author yubaoshan
 * @date 2020/8/16 23:34
 */
export function formStartFormData (parameter) {
  return axios({
    url: '/flowableForm/startFormData',
    method: 'get',
    params: parameter
  })
}

/**
 * 当前任务的任务表单
 *
 * @author yubaoshan
 * @date 2020/8/17 00:40
 */
export function formTaskFormData (parameter) {
  return axios({
    url: '/flowableForm/taskFormData',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程定义的全局表单
 *
 * @author yubaoshan
 * @date 2020/8/16 23:34
 */
export function formgGlobalFormData (parameter) {
  return axios({
    url: '/flowableForm/globalFormData',
    method: 'get',
    params: parameter
  })
}
