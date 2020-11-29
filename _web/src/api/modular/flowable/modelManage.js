import { axios } from '@/utils/request'

/**
 * 流程模型控制器
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelList (parameter) {
  return axios({
    url: '/flowableModel/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程模型增加
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelAdd (parameter) {
  return axios({
    url: '/flowableModel/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程模型编辑
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelEdit (parameter) {
  return axios({
    url: '/flowableModel/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程模型删除
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelDelete (parameter) {
  return axios({
    url: '/flowableModel/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程模型查看
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelPreview (parameter) {
  return axios({
    url: '/flowableModel/preview',
    method: 'get',
    params: parameter
  })
}

/**
 * 模型版本
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelVersion (parameter) {
  return axios({
    url: '/flowableModel/version',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程模型设为新版
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelSetAsNew (parameter) {
  return axios({
    url: '/flowableModel/setAsNew',
    method: 'post',
    data: parameter
  })
}

/**
 * 流程模型导入
 *
 * @author yubaoshan
 * @date 2020/8/17 21:02
 */
export function modelImportModel (parameter) {
  return axios({
    url: '/flowableModel/importModel',
    method: 'post',
    data: parameter
  })
}
