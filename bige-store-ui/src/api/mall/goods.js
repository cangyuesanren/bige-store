import request from '@/utils/request'

// 查询商品sku列表
export function listGoods(query) {
  return request({
    url: '/mall/goods/list',
    method: 'get',
    params: query
  })
}

// 查询商品sku详细
export function getGoods(goodsId) {
  return request({
    url: '/mall/goods/' + goodsId,
    method: 'get'
  })
}

// 新增商品sku
export function addGoods(data) {
  return request({
    url: '/mall/goods',
    method: 'post',
    data: data
  })
}

// 修改商品sku
export function updateGoods(data) {
  return request({
    url: '/mall/goods',
    method: 'put',
    data: data
  })
}

// 删除商品sku
export function delGoods(goodsId) {
  return request({
    url: '/mall/goods/' + goodsId,
    method: 'delete'
  })
}

// 导出商品sku
export function exportGoods(query) {
  return request({
    url: '/mall/goods/export',
    method: 'get',
    params: query
  })
}