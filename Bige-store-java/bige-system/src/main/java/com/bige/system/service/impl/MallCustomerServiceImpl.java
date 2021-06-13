package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallCustomerMapper;
import com.bige.system.domain.MallCustomer;
import com.bige.system.service.IMallCustomerService;

/**
 * 前端客户Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallCustomerServiceImpl implements IMallCustomerService 
{
    @Autowired
    private MallCustomerMapper mallCustomerMapper;

    /**
     * 查询前端客户
     * 
     * @param customerId 前端客户ID
     * @return 前端客户
     */
    @Override
    public MallCustomer selectMallCustomerById(Long customerId)
    {
        return mallCustomerMapper.selectMallCustomerById(customerId);
    }

    /**
     * 查询前端客户列表
     * 
     * @param mallCustomer 前端客户
     * @return 前端客户
     */
    @Override
    public List<MallCustomer> selectMallCustomerList(MallCustomer mallCustomer)
    {
        return mallCustomerMapper.selectMallCustomerList(mallCustomer);
    }

    /**
     * 新增前端客户
     * 
     * @param mallCustomer 前端客户
     * @return 结果
     */
    @Override
    public int insertMallCustomer(MallCustomer mallCustomer)
    {
        mallCustomer.setCreateTime(DateUtils.getNowDate());
        return mallCustomerMapper.insertMallCustomer(mallCustomer);
    }

    /**
     * 修改前端客户
     * 
     * @param mallCustomer 前端客户
     * @return 结果
     */
    @Override
    public int updateMallCustomer(MallCustomer mallCustomer)
    {
        mallCustomer.setUpdateTime(DateUtils.getNowDate());
        return mallCustomerMapper.updateMallCustomer(mallCustomer);
    }

    /**
     * 批量删除前端客户
     * 
     * @param customerIds 需要删除的前端客户ID
     * @return 结果
     */
    @Override
    public int deleteMallCustomerByIds(Long[] customerIds)
    {
        return mallCustomerMapper.deleteMallCustomerByIds(customerIds);
    }

    /**
     * 删除前端客户信息
     * 
     * @param customerId 前端客户ID
     * @return 结果
     */
    @Override
    public int deleteMallCustomerById(Long customerId)
    {
        return mallCustomerMapper.deleteMallCustomerById(customerId);
    }
}
