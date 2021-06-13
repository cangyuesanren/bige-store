package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallCustomerShop;

/**
 * 客户购物金Service接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallCustomerShopService 
{
    /**
     * 查询客户购物金
     * 
     * @param shopId 客户购物金ID
     * @return 客户购物金
     */
    public MallCustomerShop selectMallCustomerShopById(Long shopId);

    /**
     * 查询客户购物金列表
     * 
     * @param mallCustomerShop 客户购物金
     * @return 客户购物金集合
     */
    public List<MallCustomerShop> selectMallCustomerShopList(MallCustomerShop mallCustomerShop);

    /**
     * 新增客户购物金
     * 
     * @param mallCustomerShop 客户购物金
     * @return 结果
     */
    public int insertMallCustomerShop(MallCustomerShop mallCustomerShop);

    /**
     * 修改客户购物金
     * 
     * @param mallCustomerShop 客户购物金
     * @return 结果
     */
    public int updateMallCustomerShop(MallCustomerShop mallCustomerShop);

    /**
     * 批量删除客户购物金
     * 
     * @param shopIds 需要删除的客户购物金ID
     * @return 结果
     */
    public int deleteMallCustomerShopByIds(Long[] shopIds);

    /**
     * 删除客户购物金信息
     * 
     * @param shopId 客户购物金ID
     * @return 结果
     */
    public int deleteMallCustomerShopById(Long shopId);
}
