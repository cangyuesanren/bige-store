import request from '@/utils/request'

export function policy () {
  return new Promise((resolve) => {
    return request({
      url: '/mall/oss/getPolicy',
      method: 'get',
      params: {}
    }).then( res => {
      resolve(res.data);
    })
  })
}
