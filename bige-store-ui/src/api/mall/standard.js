import request from '@/utils/request'

// 查询商品规格列表
export function listStandard(query) {
  return request({
    url: '/mall/standard/list',
    method: 'get',
    params: query
  })
}

// 查询商品规格详细
export function getStandard(productId) {
  return request({
    url: '/mall/standard/' + productId,
    method: 'get'
  })
}

// 新增商品规格
export function addStandard(data) {
  return request({
    url: '/mall/standard',
    method: 'post',
    data: data
  })
}

// 修改商品规格
export function updateStandard(data) {
  return request({
    url: '/mall/standard',
    method: 'put',
    data: data
  })
}

// 删除商品规格
export function delStandard(productId) {
  return request({
    url: '/mall/standard/' + productId,
    method: 'delete'
  })
}

// 导出商品规格
export function exportStandard(query) {
  return request({
    url: '/mall/standard/export',
    method: 'get',
    params: query
  })
}