package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallCustomerShopMapper;
import com.bige.system.domain.MallCustomerShop;
import com.bige.system.service.IMallCustomerShopService;

/**
 * 客户购物金Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallCustomerShopServiceImpl implements IMallCustomerShopService 
{
    @Autowired
    private MallCustomerShopMapper mallCustomerShopMapper;

    /**
     * 查询客户购物金
     * 
     * @param shopId 客户购物金ID
     * @return 客户购物金
     */
    @Override
    public MallCustomerShop selectMallCustomerShopById(Long shopId)
    {
        return mallCustomerShopMapper.selectMallCustomerShopById(shopId);
    }

    /**
     * 查询客户购物金列表
     * 
     * @param mallCustomerShop 客户购物金
     * @return 客户购物金
     */
    @Override
    public List<MallCustomerShop> selectMallCustomerShopList(MallCustomerShop mallCustomerShop)
    {
        return mallCustomerShopMapper.selectMallCustomerShopList(mallCustomerShop);
    }

    /**
     * 新增客户购物金
     * 
     * @param mallCustomerShop 客户购物金
     * @return 结果
     */
    @Override
    public int insertMallCustomerShop(MallCustomerShop mallCustomerShop)
    {
        mallCustomerShop.setCreateTime(DateUtils.getNowDate());
        return mallCustomerShopMapper.insertMallCustomerShop(mallCustomerShop);
    }

    /**
     * 修改客户购物金
     * 
     * @param mallCustomerShop 客户购物金
     * @return 结果
     */
    @Override
    public int updateMallCustomerShop(MallCustomerShop mallCustomerShop)
    {
        return mallCustomerShopMapper.updateMallCustomerShop(mallCustomerShop);
    }

    /**
     * 批量删除客户购物金
     * 
     * @param shopIds 需要删除的客户购物金ID
     * @return 结果
     */
    @Override
    public int deleteMallCustomerShopByIds(Long[] shopIds)
    {
        return mallCustomerShopMapper.deleteMallCustomerShopByIds(shopIds);
    }

    /**
     * 删除客户购物金信息
     * 
     * @param shopId 客户购物金ID
     * @return 结果
     */
    @Override
    public int deleteMallCustomerShopById(Long shopId)
    {
        return mallCustomerShopMapper.deleteMallCustomerShopById(shopId);
    }
}
