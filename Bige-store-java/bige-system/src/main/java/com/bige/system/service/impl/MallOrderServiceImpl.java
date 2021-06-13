package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallOrderMapper;
import com.bige.system.domain.MallOrder;
import com.bige.system.service.IMallOrderService;

/**
 * 商品订单Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallOrderServiceImpl implements IMallOrderService 
{
    @Autowired
    private MallOrderMapper mallOrderMapper;

    /**
     * 查询商品订单
     * 
     * @param orderId 商品订单ID
     * @return 商品订单
     */
    @Override
    public MallOrder selectMallOrderById(Long orderId)
    {
        return mallOrderMapper.selectMallOrderById(orderId);
    }

    /**
     * 查询商品订单列表
     * 
     * @param mallOrder 商品订单
     * @return 商品订单
     */
    @Override
    public List<MallOrder> selectMallOrderList(MallOrder mallOrder)
    {
        return mallOrderMapper.selectMallOrderList(mallOrder);
    }

    /**
     * 新增商品订单
     * 
     * @param mallOrder 商品订单
     * @return 结果
     */
    @Override
    public int insertMallOrder(MallOrder mallOrder)
    {
        mallOrder.setCreateTime(DateUtils.getNowDate());
        return mallOrderMapper.insertMallOrder(mallOrder);
    }

    /**
     * 修改商品订单
     * 
     * @param mallOrder 商品订单
     * @return 结果
     */
    @Override
    public int updateMallOrder(MallOrder mallOrder)
    {
        mallOrder.setUpdateTime(DateUtils.getNowDate());
        return mallOrderMapper.updateMallOrder(mallOrder);
    }

    /**
     * 批量删除商品订单
     * 
     * @param orderIds 需要删除的商品订单ID
     * @return 结果
     */
    @Override
    public int deleteMallOrderByIds(Long[] orderIds)
    {
        return mallOrderMapper.deleteMallOrderByIds(orderIds);
    }

    /**
     * 删除商品订单信息
     * 
     * @param orderId 商品订单ID
     * @return 结果
     */
    @Override
    public int deleteMallOrderById(Long orderId)
    {
        return mallOrderMapper.deleteMallOrderById(orderId);
    }
}
