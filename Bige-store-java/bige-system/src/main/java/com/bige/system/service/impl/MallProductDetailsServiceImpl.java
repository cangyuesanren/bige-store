package com.bige.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallProductDetailsMapper;
import com.bige.system.domain.MallProductDetails;
import com.bige.system.service.IMallProductDetailsService;

/**
 * 商品详情Service业务层处理
 * 
 * @author bige
 * @date 2021-06-20
 */
@Service
public class MallProductDetailsServiceImpl implements IMallProductDetailsService 
{
    @Autowired
    private MallProductDetailsMapper mallProductDetailsMapper;

    /**
     * 查询商品详情
     * 
     * @param productDetailsId 商品详情ID
     * @return 商品详情
     */
    @Override
    public MallProductDetails selectMallProductDetailsById(Long productDetailsId)
    {
        return mallProductDetailsMapper.selectMallProductDetailsById(productDetailsId);
    }

    /**
     * 查询商品详情列表
     * 
     * @param mallProductDetails 商品详情
     * @return 商品详情
     */
    @Override
    public List<MallProductDetails> selectMallProductDetailsList(MallProductDetails mallProductDetails)
    {
        return mallProductDetailsMapper.selectMallProductDetailsList(mallProductDetails);
    }

    /**
     * 新增商品详情
     * 
     * @param mallProductDetails 商品详情
     * @return 结果
     */
    @Override
    public int insertMallProductDetails(MallProductDetails mallProductDetails)
    {
        return mallProductDetailsMapper.insertMallProductDetails(mallProductDetails);
    }

    /**
     * 修改商品详情
     * 
     * @param mallProductDetails 商品详情
     * @return 结果
     */
    @Override
    public int updateMallProductDetails(MallProductDetails mallProductDetails)
    {
        return mallProductDetailsMapper.updateMallProductDetails(mallProductDetails);
    }

    /**
     * 批量删除商品详情
     * 
     * @param productDetailsIds 需要删除的商品详情ID
     * @return 结果
     */
    @Override
    public int deleteMallProductDetailsByIds(Long[] productDetailsIds)
    {
        return mallProductDetailsMapper.deleteMallProductDetailsByIds(productDetailsIds);
    }

    /**
     * 删除商品详情信息
     * 
     * @param productDetailsId 商品详情ID
     * @return 结果
     */
    @Override
    public int deleteMallProductDetailsById(Long productDetailsId)
    {
        return mallProductDetailsMapper.deleteMallProductDetailsById(productDetailsId);
    }
}
