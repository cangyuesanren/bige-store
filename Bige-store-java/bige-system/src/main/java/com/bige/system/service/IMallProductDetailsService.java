package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallProductDetails;

/**
 * 商品详情Service接口
 * 
 * @author bige
 * @date 2021-06-20
 */
public interface IMallProductDetailsService 
{
    /**
     * 查询商品详情
     * 
     * @param productDetailsId 商品详情ID
     * @return 商品详情
     */
    public MallProductDetails selectMallProductDetailsById(Long productDetailsId);

    /**
     * 查询商品详情列表
     * 
     * @param mallProductDetails 商品详情
     * @return 商品详情集合
     */
    public List<MallProductDetails> selectMallProductDetailsList(MallProductDetails mallProductDetails);

    /**
     * 新增商品详情
     * 
     * @param mallProductDetails 商品详情
     * @return 结果
     */
    public int insertMallProductDetails(MallProductDetails mallProductDetails);

    /**
     * 修改商品详情
     * 
     * @param mallProductDetails 商品详情
     * @return 结果
     */
    public int updateMallProductDetails(MallProductDetails mallProductDetails);

    /**
     * 批量删除商品详情
     * 
     * @param productDetailsIds 需要删除的商品详情ID
     * @return 结果
     */
    public int deleteMallProductDetailsByIds(Long[] productDetailsIds);

    /**
     * 删除商品详情信息
     * 
     * @param productDetailsId 商品详情ID
     * @return 结果
     */
    public int deleteMallProductDetailsById(Long productDetailsId);
}
