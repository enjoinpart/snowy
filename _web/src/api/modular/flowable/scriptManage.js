import { axios } from '@/utils/request'

/**
 * 查询流程脚本
 *
 * @author yubaoshan
 * @date 2020/6/9 23:53
 */
export function flowableScriptPage (parameter) {
  return axios({
    url: '/flowableScript/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 添加流程脚本
 *
 * @author yubaoshan
 * @date 2020/6/9 23:53
 */
export function flowableScriptAdd (parameter) {
  return axios({
    url: '/flowableScript/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除流程脚本
 *
 * @author yubaoshan
 * @date 2020/6/9 23:54
 */
export function flowableScriptDelete (parameter) {
  return axios({
    url: '/flowableScript/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑流程分类
 *
 * @author yubaoshan
 * @date 2020/6/9 9:55
 */
export function flowableScriptEdit (parameter) {
  return axios({
    url: '/flowableScript/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看流程脚本
 *
 * @author yubaoshan
 * @date 2020/6/9 23:55
 */
export function flowableScriptDetail (parameter) {
  return axios({
    url: '/flowableScript/detail',
    method: 'post',
    data: parameter
  })
}

/**
 * 查询流程脚本列表
 *
 * @author yubaoshan
 * @date 2020/8/13 17:50
 */
export function flowableScriptList (parameter) {
  return axios({
    url: '/flowableScript/list',
    method: 'get',
    params: parameter
  })
}
