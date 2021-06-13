package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallProductMapper;
import com.bige.system.domain.MallProduct;
import com.bige.system.service.IMallProductService;

/**
 * 商品Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallProductServiceImpl implements IMallProductService 
{
    @Autowired
    private MallProductMapper mallProductMapper;

    /**
     * 查询商品
     * 
     * @param productId 商品ID
     * @return 商品
     */
    @Override
    public MallProduct selectMallProductById(Long productId)
    {
        return mallProductMapper.selectMallProductById(productId);
    }

    /**
     * 查询商品列表
     * 
     * @param mallProduct 商品
     * @return 商品
     */
    @Override
    public List<MallProduct> selectMallProductList(MallProduct mallProduct)
    {
        return mallProductMapper.selectMallProductList(mallProduct);
    }

    /**
     * 新增商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    @Override
    public int insertMallProduct(MallProduct mallProduct)
    {
        mallProduct.setCreateTime(DateUtils.getNowDate());
        return mallProductMapper.insertMallProduct(mallProduct);
    }

    /**
     * 修改商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    @Override
    public int updateMallProduct(MallProduct mallProduct)
    {
        mallProduct.setUpdateTime(DateUtils.getNowDate());
        return mallProductMapper.updateMallProduct(mallProduct);
    }

    /**
     * 批量删除商品
     * 
     * @param productIds 需要删除的商品ID
     * @return 结果
     */
    @Override
    public int deleteMallProductByIds(Long[] productIds)
    {
        return mallProductMapper.deleteMallProductByIds(productIds);
    }

    /**
     * 删除商品信息
     * 
     * @param productId 商品ID
     * @return 结果
     */
    @Override
    public int deleteMallProductById(Long productId)
    {
        return mallProductMapper.deleteMallProductById(productId);
    }
}
