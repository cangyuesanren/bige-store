package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallProductDetails;

/**
 * 商品详情Mapper接口
 * 
 * @author bige
 * @date 2021-06-20
 */
public interface MallProductDetailsMapper 
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
     * 删除商品详情
     * 
     * @param productDetailsId 商品详情ID
     * @return 结果
     */
    public int deleteMallProductDetailsById(Long productDetailsId);

    /**
     * 批量删除商品详情
     * 
     * @param productDetailsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallProductDetailsByIds(Long[] productDetailsIds);
}
