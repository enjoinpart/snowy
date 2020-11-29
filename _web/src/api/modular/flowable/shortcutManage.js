import { axios } from '@/utils/request'

/**
 * 流程申请入口查询
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutPage (parameter) {
  return axios({
    url: '/flowableShortcut/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程申请入口列表
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutList (parameter) {
  return axios({
    url: '/flowableShortcut/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 添加流程申请入口
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutAdd (parameter) {
  return axios({
    url: '/flowableShortcut/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除流程申请入口
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutDelete (parameter) {
  return axios({
    url: '/flowableShortcut/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑流程申请入口
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutEdit (parameter) {
  return axios({
    url: '/flowableShortcut/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看流程申请入口
 *
 * @author yubaoshan
 * @date 2020/8/5 23:36
 */
export function flowableShortcutDetail (parameter) {
  return axios({
    url: '/flowableShortcut/detail',
    method: 'get',
    params: parameter
  })
}
