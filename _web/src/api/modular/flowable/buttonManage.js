import { axios } from '@/utils/request'

/**
 * 添加活动节点按钮
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonAdd (parameter) {
  return axios({
    url: '/flowableButton/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除活动节点按钮
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonDelete (parameter) {
  return axios({
    url: '/flowableButton/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑活动节点按钮
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonEdit (parameter) {
  return axios({
    url: '/flowableButton/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看活动节点按钮
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonDetail (parameter) {
  return axios({
    url: '/flowableButton/detail',
    method: 'get',
    params: parameter
  })
}

/**
 * 根据流程定义查询活动节点按钮列表（用于定义配置按钮）
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonList (parameter) {
  return axios({
    url: '/flowableButton/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 根据任务id查询当前活动节点按钮
 *
 * @author yubaoshan
 * @date 2020/8/11 20:45
 */
export function buttonTrace (parameter) {
  return axios({
    url: '/flowableButton/trace',
    method: 'get',
    params: parameter
  })
}
