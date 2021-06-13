import request from '@/utils/request'

// 查询商品标签列表
export function listLabel(query) {
  return request({
    url: '/mall/label/list',
    method: 'get',
    params: query
  })
}

// 查询商品标签详细
export function getLabel(labelId) {
  return request({
    url: '/mall/label/' + labelId,
    method: 'get'
  })
}

// 新增商品标签
export function addLabel(data) {
  return request({
    url: '/mall/label',
    method: 'post',
    data: data
  })
}

// 修改商品标签
export function updateLabel(data) {
  return request({
    url: '/mall/label',
    method: 'put',
    data: data
  })
}

// 删除商品标签
export function delLabel(labelId) {
  return request({
    url: '/mall/label/' + labelId,
    method: 'delete'
  })
}

// 导出商品标签
export function exportLabel(query) {
  return request({
    url: '/mall/label/export',
    method: 'get',
    params: query
  })
}