package com.bige.web.service;


import com.bige.system.domain.MallCustomer;

import java.util.List;

/**
 * 前端客户Service接口
 *
 * @author bige
 * @date 2021-06-13
 */
public interface IAppCustomerService {
    /**
     * 查询前端客户
     *
     * @param customerId 前端客户ID
     * @return 前端客户
     */
    public MallCustomer selectMallCustomerById(Long customerId);

    /**
     * 新增前端客户
     *
     * @param mallCustomer 前端客户
     * @return 结果
     */
    public int insertMallCustomer(MallCustomer mallCustomer);

    /**
     * 修改前端客户
     *
     * @param mallCustomer 前端客户
     * @return 结果
     */
    public int updateMallCustomer(MallCustomer mallCustomer);


}
