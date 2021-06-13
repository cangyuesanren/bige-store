package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallProduct;

/**
 * 商品Service接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallProductService 
{
    /**
     * 查询商品
     * 
     * @param productId 商品ID
     * @return 商品
     */
    public MallProduct selectMallProductById(Long productId);

    /**
     * 查询商品列表
     * 
     * @param mallProduct 商品
     * @return 商品集合
     */
    public List<MallProduct> selectMallProductList(MallProduct mallProduct);

    /**
     * 新增商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    public int insertMallProduct(MallProduct mallProduct);

    /**
     * 修改商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    public int updateMallProduct(MallProduct mallProduct);

    /**
     * 批量删除商品
     * 
     * @param productIds 需要删除的商品ID
     * @return 结果
     */
    public int deleteMallProductByIds(Long[] productIds);

    /**
     * 删除商品信息
     * 
     * @param productId 商品ID
     * @return 结果
     */
    public int deleteMallProductById(Long productId);
}
