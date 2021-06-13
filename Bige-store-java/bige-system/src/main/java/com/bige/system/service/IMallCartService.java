package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallCart;

/**
 * 购物车Service接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallCartService 
{
    /**
     * 查询购物车
     * 
     * @param cartId 购物车ID
     * @return 购物车
     */
    public MallCart selectMallCartById(Long cartId);

    /**
     * 查询购物车列表
     * 
     * @param mallCart 购物车
     * @return 购物车集合
     */
    public List<MallCart> selectMallCartList(MallCart mallCart);

    /**
     * 新增购物车
     * 
     * @param mallCart 购物车
     * @return 结果
     */
    public int insertMallCart(MallCart mallCart);

    /**
     * 修改购物车
     * 
     * @param mallCart 购物车
     * @return 结果
     */
    public int updateMallCart(MallCart mallCart);

    /**
     * 批量删除购物车
     * 
     * @param cartIds 需要删除的购物车ID
     * @return 结果
     */
    public int deleteMallCartByIds(Long[] cartIds);

    /**
     * 删除购物车信息
     * 
     * @param cartId 购物车ID
     * @return 结果
     */
    public int deleteMallCartById(Long cartId);
}
