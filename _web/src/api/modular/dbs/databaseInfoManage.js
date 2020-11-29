/**
 * 数据库信息
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
import { axios } from '@/utils/request'

/**
 * 查询列表
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
export function databaseInfoPage (parameter) {
  return axios({
    url: '/databaseInfo/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 增加
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
export function databaseInfoAdd (parameter) {
  return axios({
    url: '/databaseInfo/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
export function databaseInfoEdit (parameter) {
  return axios({
    url: '/databaseInfo/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除
 *
 * @author yubaoshan
 * @date 2020/8/26 00:17
 */
export function databaseInfoDelete (parameter) {
  return axios({
    url: '/databaseInfo/delete',
    method: 'post',
    data: parameter
  })
}
