/**
 * 租户表控制
 *
 * @author yubaoshan
 * @date 2020/9/4 13:29
 */
import { axios } from '@/utils/request'

/**
 * 租户分页列表
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantPage (parameter) {
  return axios({
    url: '/tenantInfo/page',
    method: 'get',
    params: parameter
  })
}

/**
 * 增加租户
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantAdd (parameter) {
  return axios({
    url: '/tenantInfo/add',
    method: 'post',
    data: parameter
  })
}

/**
 * 编辑租户
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantEdit (parameter) {
  return axios({
    url: '/tenantInfo/edit',
    method: 'post',
    data: parameter
  })
}

/**
 * 删除租户
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantDelete (parameter) {
  return axios({
    url: '/tenantInfo/delete',
    method: 'post',
    data: parameter
  })
}

/**
 * 查看详情接口
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantDetail (parameter) {
  return axios({
    url: '/tenantInfo/detail',
    method: 'get',
    params: parameter
  })
}

/**
 * 租户列表
 *
 * @author yubaoshan
 * @date 2020/9/4 13:31
 */
export function tenantListTenants (parameter) {
  return axios({
    url: '/tenantInfo/listTenants',
    method: 'get',
    params: parameter
  })
}
