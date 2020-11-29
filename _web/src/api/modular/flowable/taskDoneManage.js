import { axios } from '@/utils/request'

/**
 * 已办任务
 *
 * @author yubaoshan
 * @date 2020/8/4 23:13
 */
export function flowableDoneTaskPage (parameter) {
  return axios({
    url: '/flowableDoneTask/page',
    method: 'get',
    params: parameter
  })
}
