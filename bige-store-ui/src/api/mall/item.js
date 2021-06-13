import request from '@/utils/request'

// 查询订单子单列表
export function listItem(query) {
  return request({
    url: '/mall/item/list',
    method: 'get',
    params: query
  })
}

// 查询订单子单详细
export function getItem(orderItemId) {
  return request({
    url: '/mall/item/' + orderItemId,
    method: 'get'
  })
}

// 新增订单子单
export function addItem(data) {
  return request({
    url: '/mall/item',
    method: 'post',
    data: data
  })
}

// 修改订单子单
export function updateItem(data) {
  return request({
    url: '/mall/item',
    method: 'put',
    data: data
  })
}

// 删除订单子单
export function delItem(orderItemId) {
  return request({
    url: '/mall/item/' + orderItemId,
    method: 'delete'
  })
}

// 导出订单子单
export function exportItem(query) {
  return request({
    url: '/mall/item/export',
    method: 'get',
    params: query
  })
}