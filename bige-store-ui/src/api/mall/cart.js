import request from '@/utils/request'

// 查询购物车列表
export function listCart(query) {
  return request({
    url: '/mall/cart/list',
    method: 'get',
    params: query
  })
}

// 查询购物车详细
export function getCart(cartId) {
  return request({
    url: '/mall/cart/' + cartId,
    method: 'get'
  })
}

// 新增购物车
export function addCart(data) {
  return request({
    url: '/mall/cart',
    method: 'post',
    data: data
  })
}

// 修改购物车
export function updateCart(data) {
  return request({
    url: '/mall/cart',
    method: 'put',
    data: data
  })
}

// 删除购物车
export function delCart(cartId) {
  return request({
    url: '/mall/cart/' + cartId,
    method: 'delete'
  })
}

// 导出购物车
export function exportCart(query) {
  return request({
    url: '/mall/cart/export',
    method: 'get',
    params: query
  })
}