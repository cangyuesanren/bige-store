package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallGoodsMapper;
import com.bige.system.domain.MallGoods;
import com.bige.system.service.IMallGoodsService;

/**
 * 商品skuService业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallGoodsServiceImpl implements IMallGoodsService 
{
    @Autowired
    private MallGoodsMapper mallGoodsMapper;

    /**
     * 查询商品sku
     * 
     * @param goodsId 商品skuID
     * @return 商品sku
     */
    @Override
    public MallGoods selectMallGoodsById(Long goodsId)
    {
        return mallGoodsMapper.selectMallGoodsById(goodsId);
    }

    /**
     * 查询商品sku列表
     * 
     * @param mallGoods 商品sku
     * @return 商品sku
     */
    @Override
    public List<MallGoods> selectMallGoodsList(MallGoods mallGoods)
    {
        return mallGoodsMapper.selectMallGoodsList(mallGoods);
    }

    /**
     * 新增商品sku
     * 
     * @param mallGoods 商品sku
     * @return 结果
     */
    @Override
    public int insertMallGoods(MallGoods mallGoods)
    {
        mallGoods.setCreateTime(DateUtils.getNowDate());
        return mallGoodsMapper.insertMallGoods(mallGoods);
    }

    /**
     * 修改商品sku
     * 
     * @param mallGoods 商品sku
     * @return 结果
     */
    @Override
    public int updateMallGoods(MallGoods mallGoods)
    {
        mallGoods.setUpdateTime(DateUtils.getNowDate());
        return mallGoodsMapper.updateMallGoods(mallGoods);
    }

    /**
     * 批量删除商品sku
     * 
     * @param goodsIds 需要删除的商品skuID
     * @return 结果
     */
    @Override
    public int deleteMallGoodsByIds(Long[] goodsIds)
    {
        return mallGoodsMapper.deleteMallGoodsByIds(goodsIds);
    }

    /**
     * 删除商品sku信息
     * 
     * @param goodsId 商品skuID
     * @return 结果
     */
    @Override
    public int deleteMallGoodsById(Long goodsId)
    {
        return mallGoodsMapper.deleteMallGoodsById(goodsId);
    }
}
