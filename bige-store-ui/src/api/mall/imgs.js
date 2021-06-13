import request from '@/utils/request'

// 查询商品图列表
export function listImgs(query) {
  return request({
    url: '/mall/imgs/list',
    method: 'get',
    params: query
  })
}

// 查询商品图详细
export function getImgs(productImgId) {
  return request({
    url: '/mall/imgs/' + productImgId,
    method: 'get'
  })
}

// 新增商品图
export function addImgs(data) {
  return request({
    url: '/mall/imgs',
    method: 'post',
    data: data
  })
}

// 修改商品图
export function updateImgs(data) {
  return request({
    url: '/mall/imgs',
    method: 'put',
    data: data
  })
}

// 删除商品图
export function delImgs(productImgId) {
  return request({
    url: '/mall/imgs/' + productImgId,
    method: 'delete'
  })
}

// 导出商品图
export function exportImgs(query) {
  return request({
    url: '/mall/imgs/export',
    method: 'get',
    params: query
  })
}