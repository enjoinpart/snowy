import { axios } from '@/utils/request'

/**
 * 查询流程定义
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionPage (parameter) {
  return axios({
    url: '/flowableDefinition/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 部署流程定义
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableCategoryDeploy (parameter) {
  return axios({
    url: '/flowableDefinition/deploy',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除流程定义，根据版本删除，级联删除流程实例和相关任务
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionDelete (parameter) {
  return axios({
    url: '/flowableDefinition/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 导出流程文件
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionExport (parameter) {
  return axios({
    url: '/flowableDefinition/export',
    method: 'get',
    params: parameter,
    responseType: 'blob'
  })
}

/**
 * 映射流程定义，将已部署的流程映射到模型
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionMapping (parameter) {
  return axios({
    url: '/flowableDefinition/mapping',
    method: 'post',
    data: parameter
  })
}

/**
 * 挂起流程定义
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionSuspend (parameter) {
  return axios({
    url: '/flowableDefinition/suspend',
    method: 'post',
    data: parameter
  })
}

/**
 * 激活流程定义
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionActive (parameter) {
  return axios({
    url: '/flowableDefinition/active',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程定义的流程图
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionTrace (parameter) {
  return axios({
    url: '/flowableDefinition/trace',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程定义的用户任务节点，用于跳转时选择节点
 *
 * @author yubaoshan
 * @date 2020/6/9 12:29
 */
export function flowableDefinitionUserTasks (parameter) {
  return axios({
    url: '/flowableDefinition/userTasks',
    method: 'get',
    params: parameter
  })
}
