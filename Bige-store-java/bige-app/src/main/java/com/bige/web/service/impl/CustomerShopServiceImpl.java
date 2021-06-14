package com.bige.web.service.impl;

import com.bige.common.utils.DateUtils;
import com.bige.system.domain.MallCustomer;
import com.bige.system.domain.MallCustomerShop;
import com.bige.system.mapper.MallCustomerMapper;
import com.bige.system.mapper.MallCustomerShopMapper;
import com.bige.system.service.IMallCustomerShopService;
import com.bige.web.service.IAppCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 客户购物金Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class CustomerShopServiceImpl implements IAppCustomerService
{

    @Autowired
    private MallCustomerMapper mallCustomerMapper;

    @Override
    public MallCustomer selectMallCustomerById(Long customerId) {
        return mallCustomerMapper.selectMallCustomerById(customerId);
    }

    @Override
    public int insertMallCustomer(MallCustomer mallCustomer) {
        mallCustomer.setCreateTime(DateUtils.getNowDate());
        return mallCustomerMapper.insertMallCustomer(mallCustomer);
    }

    @Override
    public int updateMallCustomer(MallCustomer mallCustomer) {
        mallCustomer.setUpdateTime(DateUtils.getNowDate());
        return mallCustomerMapper.updateMallCustomer(mallCustomer);
    }
}
