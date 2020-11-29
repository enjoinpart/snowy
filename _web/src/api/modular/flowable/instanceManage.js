import { axios } from '@/utils/request'

/**
 * 查询流程实例
 *
 * @author yubaoshan
 * @date 2020/6/9 1:01
 */
export function flowableInstancePage (parameter) {
  return axios({
    url: '/flowableInstance/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 查询流程实例的历史任务节点，用于退回时选择节点
 *
 * @author yubaoshan
 * @date 2020/6/9 1:01
 */
export function flowableInstanceHisUserTasks (parameter) {
  return axios({
    url: '/flowableInstance/hisUserTasks',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程实例的流程图，显示当前节点和走过的节点
 *
 * @author yubaoshan
 * @date 2020/6/9 1:01
 */
export function flowableInstanceTrace (parameter) {
  return axios({
    url: '/flowableInstance/trace',
    method: 'get',
    params: parameter
  })
}

/**
 * 挂起流程实例
 *
 * @author yubaoshan
 * @date 2020/6/9 1:03
 */
export function flowableInstanceSuspend (parameter) {
  return axios({
    url: '/flowableInstance/suspend',
    method: 'post',
    data: parameter
  })
}

/**
 * 激活流程实例
 *
 * @author yubaoshan
 * @date 2020/6/9 1:03
 */
export function flowableInstanceActive (parameter) {
  return axios({
    url: '/flowableInstance/active',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程实例的审批记录
 *
 * @author yubaoshan
 * @date 2020/6/9 1:03
 */
export function flowableInstanceCommentHistory (parameter) {
  return axios({
    url: '/flowableInstance/commentHistory',
    method: 'get',
    params: parameter
  })
}

/**
 * 终止流程实例
 *
 * @author yubaoshan
 * @date 2020/8/11 14:50
 */
export function flowableInstanceEnd (parameter) {
  return axios({
    url: '/flowableInstance/end',
    method: 'post',
    data: parameter
  })
}

/**
 * 查询我的流程实例
 *
 * @author yubaoshan
 * @date 2020/9/9 23:56
 */
export function flowableInstanceMy (parameter) {
  return axios({
    url: '/flowableInstance/my',
    method: 'get',
    params: parameter
  })
}

/**
 * 获取流程实例中表单填写的数据
 *
 * @author yubaoshan
 * @date 2020/9/9 00:19
 */
export function flowableInstanceFormData (parameter) {
  return axios({
    url: '/flowableInstance/formData',
    method: 'get',
    params: parameter
  })
}

/**
 * 加签人员选择器
 *
 * @author yubaoshan
 * @date 2020/9/12 01:42
 */
export function flowableInstanceAddSignUserSelector (parameter) {
  return axios({
    url: '/flowableInstance/addSignUserSelector',
    method: 'get',
    params: parameter
  })
}

/**
 * 减签人员选择器
 *
 * @author yubaoshan
 * @date 2020/9/12 01:42
 */
export function flowableInstanceDeleteSignUserSelector (parameter) {
  return axios({
    url: '/flowableInstance/deleteSignUserSelector',
    method: 'get',
    params: parameter
  })
}
