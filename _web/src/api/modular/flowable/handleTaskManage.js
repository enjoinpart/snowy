import { axios } from '@/utils/request'

/**
 * 任务办理_启动
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskStart (parameter) {
  return axios({
    url: '/flowableHandleTask/start',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_提交
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskSubmit (parameter) {
  return axios({
    url: '/flowableHandleTask/submit',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_保存
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskSave (parameter) {
  return axios({
    url: '/flowableHandleTask/save',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_退回
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskBack (parameter) {
  return axios({
    url: '/flowableHandleTask/back',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_转办
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskTurn (parameter) {
  return axios({
    url: '/flowableHandleTask/turn',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_委托
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskEntrust (parameter) {
  return axios({
    url: '/flowableHandleTask/entrust',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_跳转
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskJump (parameter) {
  return axios({
    url: '/flowableHandleTask/jump',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_终止
 *
 * @author yubaoshan
 * @date 2020/8/10 17:13
 */
export function handleTaskEnd (parameter) {
  return axios({
    url: '/flowableHandleTask/end',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_挂起
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskSuspend (parameter) {
  return axios({
    url: '/flowableHandleTask/suspend',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_加签
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskAddSign (parameter) {
  return axios({
    url: '/flowableHandleTask/addSign',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理_减签
 *
 * @author yubaoshan
 * @date 2020/8/11 12:13
 */
export function handleTaskDeleteSign (parameter) {
  return axios({
    url: '/flowableHandleTask/deleteSign',
    method: 'post',
    data: parameter
  })
}

/**
 * 任务办理数据
 *
 * @author yubaoshan
 * @date 2020/8/22 19:22
 */
export function handleTaskTaskData (parameter) {
  return axios({
    url: '/flowableHandleTask/taskData',
    method: 'get',
    params: parameter
  })
}
