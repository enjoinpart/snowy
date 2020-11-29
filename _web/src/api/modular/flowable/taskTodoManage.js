import { axios } from '@/utils/request'

/**
 * 待办任务
 *
 * @author yubaoshan
 * @date 2020/8/4 23:10
 */
export function flowableTodoTaskPage (parameter) {
  return axios({
    url: '/flowableTodoTask/page',
    method: 'get',
    params: parameter
  })
}
