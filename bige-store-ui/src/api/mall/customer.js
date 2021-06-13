import request from '@/utils/request'

// 查询前端客户列表
export function listCustomer(query) {
  return request({
    url: '/mall/customer/list',
    method: 'get',
    params: query
  })
}

// 查询前端客户详细
export function getCustomer(customerId) {
  return request({
    url: '/mall/customer/' + customerId,
    method: 'get'
  })
}

// 新增前端客户
export function addCustomer(data) {
  return request({
    url: '/mall/customer',
    method: 'post',
    data: data
  })
}

// 修改前端客户
export function updateCustomer(data) {
  return request({
    url: '/mall/customer',
    method: 'put',
    data: data
  })
}

// 删除前端客户
export function delCustomer(customerId) {
  return request({
    url: '/mall/customer/' + customerId,
    method: 'delete'
  })
}

// 导出前端客户
export function exportCustomer(query) {
  return request({
    url: '/mall/customer/export',
    method: 'get',
    params: query
  })
}