import request from '@/utils/request'

// 查询品类信息列表
export function listCategory(query) {
  return request({
    url: '/mall/category/list',
    method: 'get',
    params: query
  })
}

// 查询品类信息树形
export function listTreeCategory(query) {
  return request({
    url: '/mall/category/listTree',
    method: 'get',
    params: query
  })
}

// 查询品类信息详细
export function getCategory(categoryId) {
  return request({
    url: '/mall/category/' + categoryId,
    method: 'get'
  })
}

// 新增品类信息
export function addCategory(data) {
  return request({
    url: '/mall/category',
    method: 'post',
    data: data
  })
}

// 修改品类信息
export function updateCategory(data) {
  return request({
    url: '/mall/category',
    method: 'put',
    data: data
  })
}

// 删除品类信息
export function delCategory(categoryId) {
  return request({
    url: '/mall/category/' + categoryId,
    method: 'delete'
  })
}

// 导出品类信息
export function exportCategory(query) {
  return request({
    url: '/mall/category/export',
    method: 'get',
    params: query
  })
}
