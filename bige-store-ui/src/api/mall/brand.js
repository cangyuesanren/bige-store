import request from '@/utils/request'

// 查询品牌列表
export function listBrand(query) {
  return request({
    url: '/mall/brand/list',
    method: 'get',
    params: query
  })
}

// 查询品牌详细
export function getBrand(brandId) {
  return request({
    url: '/mall/brand/' + brandId,
    method: 'get'
  })
}

// 新增品牌
export function addBrand(data) {
  return request({
    url: '/mall/brand',
    method: 'post',
    data: data
  })
}

// 修改品牌
export function updateBrand(data) {
  return request({
    url: '/mall/brand',
    method: 'put',
    data: data
  })
}

// 删除品牌
export function delBrand(brandId) {
  return request({
    url: '/mall/brand/' + brandId,
    method: 'delete'
  })
}

// 导出品牌
export function exportBrand(query) {
  return request({
    url: '/mall/brand/export',
    method: 'get',
    params: query
  })
}

// 查询品牌列表
export function getPolicy(query) {
  return request({
    url: '/mall/oss/getPolicy',
    method: 'get',
    params: query
  })
}
