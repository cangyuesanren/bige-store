package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallGoods;

/**
 * 商品skuService接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallGoodsService 
{
    /**
     * 查询商品sku
     * 
     * @param goodsId 商品skuID
     * @return 商品sku
     */
    public MallGoods selectMallGoodsById(Long goodsId);

    /**
     * 查询商品sku列表
     * 
     * @param mallGoods 商品sku
     * @return 商品sku集合
     */
    public List<MallGoods> selectMallGoodsList(MallGoods mallGoods);

    /**
     * 新增商品sku
     * 
     * @param mallGoods 商品sku
     * @return 结果
     */
    public int insertMallGoods(MallGoods mallGoods);

    /**
     * 修改商品sku
     * 
     * @param mallGoods 商品sku
     * @return 结果
     */
    public int updateMallGoods(MallGoods mallGoods);

    /**
     * 批量删除商品sku
     * 
     * @param goodsIds 需要删除的商品skuID
     * @return 结果
     */
    public int deleteMallGoodsByIds(Long[] goodsIds);

    /**
     * 删除商品sku信息
     * 
     * @param goodsId 商品skuID
     * @return 结果
     */
    public int deleteMallGoodsById(Long goodsId);

    /**
     * 删除商品sku信息根据商品Id
     *
     * @param productId 商品ID
     * @return 结果
     */
    public int deleteMallGoodsByProductId(Long productId);
}
