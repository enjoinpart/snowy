import { axios } from '@/utils/request'

/**
 * 根据流程定义查询事件列表
 *
 * @author yubaoshan
 * @date 2020/8/12 21:02
 */
export function eventList (parameter) {
  return axios({
    url: '/flowableEvent/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 添加流程事件
 *
 * @author yubaoshan
 * @date 2020/8/12 21:02
 */
export function eventAdd (parameter) {
  return axios({
    url: '/flowableEvent/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑流程事件
 *
 * @author yubaoshan
 * @date 2020/8/12 21:02
 */
export function eventEdit (parameter) {
  return axios({
    url: '/flowableEvent/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除流程事件
 *
 * @author yubaoshan
 * @date 2020/8/12 21:02
 */
export function eventDelete (parameter) {
  return axios({
    url: '/flowableEvent/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看流程事件
 *
 * @author yubaoshan
 * @date 2020/8/12 21:02
 */
export function eventDetail (parameter) {
  return axios({
    url: '/flowableEvent/detail',
    method: 'get',
    params: parameter
  })
}
