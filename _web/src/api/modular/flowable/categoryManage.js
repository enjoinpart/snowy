import { axios } from '@/utils/request'

/**
 * 流程分类查询
 *
 * @author yubaoshan
 * @date 2020/6/9 9:53
 */
export function flowableCategoryPage (parameter) {
  return axios({
    url: '/flowableCategory/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 流程分类列表
 *
 * @author yubaoshan
 * @date 2020/7/28 21:11
 */
export function flowableCategoryList (parameter) {
  return axios({
    url: '/flowableCategory/list',
    method: 'get',
    params: parameter
  })
}

/**
 * 添加流程分类
 *
 * @author yubaoshan
 * @date 2020/6/9 9:53
 */
export function flowableCategoryAdd (parameter) {
  return axios({
    url: '/flowableCategory/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除流程分类
 *
 * @author yubaoshan
 * @date 2020/6/9 9:53
 */
export function flowableCategoryDelete (parameter) {
  return axios({
    url: '/flowableCategory/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑流程分类
 *
 * @author yubaoshan
 * @date 2020/6/9 9:53
 */
export function flowableCategoryEdit (parameter) {
  return axios({
    url: '/flowableCategory/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看流程分类
 *
 * @author yubaoshan
 * @date 2020/6/9 9:53
 */
export function flowableCategoryDetail (parameter) {
  return axios({
    url: '/flowableCategory/detail',
    method: 'get',
    params: parameter
  })
}
