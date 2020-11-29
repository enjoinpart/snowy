import { axios } from '@/utils/request'

/**
 * 查询流程实例的任务
 *
 * @author yubaoshan
 * @date 2020/8/7 16:11
 */
export function flowableInstanceTaskPage (parameter) {
  return axios({
    url: '/flowableInstanceTask/page',
    method: 'get',
    params: parameter
  })
}
