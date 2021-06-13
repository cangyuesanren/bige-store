import request from '@/utils/request'

// 查询购物卡列表
export function listCard(query) {
  return request({
    url: '/mall/card/list',
    method: 'get',
    params: query
  })
}

// 查询购物卡详细
export function getCard(shopId) {
  return request({
    url: '/mall/card/' + shopId,
    method: 'get'
  })
}

// 新增购物卡
export function addCard(data) {
  return request({
    url: '/mall/card',
    method: 'post',
    data: data
  })
}

// 修改购物卡
export function updateCard(data) {
  return request({
    url: '/mall/card',
    method: 'put',
    data: data
  })
}

// 删除购物卡
export function delCard(shopId) {
  return request({
    url: '/mall/card/' + shopId,
    method: 'delete'
  })
}

// 导出购物卡
export function exportCard(query) {
  return request({
    url: '/mall/card/export',
    method: 'get',
    params: query
  })
}