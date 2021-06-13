import request from '@/utils/request'

// 查询轮播图列表
export function listBanner(query) {
  return request({
    url: '/mall/banner/list',
    method: 'get',
    params: query
  })
}

// 查询轮播图详细
export function getBanner(bannerId) {
  return request({
    url: '/mall/banner/' + bannerId,
    method: 'get'
  })
}

// 新增轮播图
export function addBanner(data) {
  return request({
    url: '/mall/banner',
    method: 'post',
    data: data
  })
}

// 修改轮播图
export function updateBanner(data) {
  return request({
    url: '/mall/banner',
    method: 'put',
    data: data
  })
}

// 删除轮播图
export function delBanner(bannerId) {
  return request({
    url: '/mall/banner/' + bannerId,
    method: 'delete'
  })
}

// 导出轮播图
export function exportBanner(query) {
  return request({
    url: '/mall/banner/export',
    method: 'get',
    params: query
  })
}