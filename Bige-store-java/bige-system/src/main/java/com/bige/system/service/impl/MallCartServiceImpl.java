package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallCartMapper;
import com.bige.system.domain.MallCart;
import com.bige.system.service.IMallCartService;

/**
 * 购物车Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallCartServiceImpl implements IMallCartService 
{
    @Autowired
    private MallCartMapper mallCartMapper;

    /**
     * 查询购物车
     * 
     * @param cartId 购物车ID
     * @return 购物车
     */
    @Override
    public MallCart selectMallCartById(Long cartId)
    {
        return mallCartMapper.selectMallCartById(cartId);
    }

    /**
     * 查询购物车列表
     * 
     * @param mallCart 购物车
     * @return 购物车
     */
    @Override
    public List<MallCart> selectMallCartList(MallCart mallCart)
    {
        return mallCartMapper.selectMallCartList(mallCart);
    }

    /**
     * 新增购物车
     * 
     * @param mallCart 购物车
     * @return 结果
     */
    @Override
    public int insertMallCart(MallCart mallCart)
    {
        mallCart.setCreateTime(DateUtils.getNowDate());
        return mallCartMapper.insertMallCart(mallCart);
    }

    /**
     * 修改购物车
     * 
     * @param mallCart 购物车
     * @return 结果
     */
    @Override
    public int updateMallCart(MallCart mallCart)
    {
        mallCart.setUpdateTime(DateUtils.getNowDate());
        return mallCartMapper.updateMallCart(mallCart);
    }

    /**
     * 批量删除购物车
     * 
     * @param cartIds 需要删除的购物车ID
     * @return 结果
     */
    @Override
    public int deleteMallCartByIds(Long[] cartIds)
    {
        return mallCartMapper.deleteMallCartByIds(cartIds);
    }

    /**
     * 删除购物车信息
     * 
     * @param cartId 购物车ID
     * @return 结果
     */
    @Override
    public int deleteMallCartById(Long cartId)
    {
        return mallCartMapper.deleteMallCartById(cartId);
    }
}
