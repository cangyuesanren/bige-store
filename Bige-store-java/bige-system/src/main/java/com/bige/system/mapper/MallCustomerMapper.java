package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallCustomer;

/**
 * 前端客户Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallCustomerMapper 
{
    /**
     * 查询前端客户
     * 
     * @param customerId 前端客户ID
     * @return 前端客户
     */
    public MallCustomer selectMallCustomerById(Long customerId);

    /**
     * 查询前端客户列表
     * 
     * @param mallCustomer 前端客户
     * @return 前端客户集合
     */
    public List<MallCustomer> selectMallCustomerList(MallCustomer mallCustomer);

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

    /**
     * 删除前端客户
     * 
     * @param customerId 前端客户ID
     * @return 结果
     */
    public int deleteMallCustomerById(Long customerId);

    /**
     * 批量删除前端客户
     * 
     * @param customerIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallCustomerByIds(Long[] customerIds);
}
