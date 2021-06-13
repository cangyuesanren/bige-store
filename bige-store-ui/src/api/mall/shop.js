import request from '@/utils/request'

// 查询客户购物金列表
export function listShop(query) {
  return request({
    url: '/mall/shop/list',
    method: 'get',
    params: query
  })
}

// 查询客户购物金详细
export function getShop(shopId) {
  return request({
    url: '/mall/shop/' + shopId,
    method: 'get'
  })
}

// 新增客户购物金
export function addShop(data) {
  return request({
    url: '/mall/shop',
    method: 'post',
    data: data
  })
}

// 修改客户购物金
export function updateShop(data) {
  return request({
    url: '/mall/shop',
    method: 'put',
    data: data
  })
}

// 删除客户购物金
export function delShop(shopId) {
  return request({
    url: '/mall/shop/' + shopId,
    method: 'delete'
  })
}

// 导出客户购物金
export function exportShop(query) {
  return request({
    url: '/mall/shop/export',
    method: 'get',
    params: query
  })
}