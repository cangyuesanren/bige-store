package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallOrderItemMapper;
import com.bige.system.domain.MallOrderItem;
import com.bige.system.service.IMallOrderItemService;

/**
 * 订单子单Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallOrderItemServiceImpl implements IMallOrderItemService 
{
    @Autowired
    private MallOrderItemMapper mallOrderItemMapper;

    /**
     * 查询订单子单
     * 
     * @param orderItemId 订单子单ID
     * @return 订单子单
     */
    @Override
    public MallOrderItem selectMallOrderItemById(Long orderItemId)
    {
        return mallOrderItemMapper.selectMallOrderItemById(orderItemId);
    }

    /**
     * 查询订单子单列表
     * 
     * @param mallOrderItem 订单子单
     * @return 订单子单
     */
    @Override
    public List<MallOrderItem> selectMallOrderItemList(MallOrderItem mallOrderItem)
    {
        return mallOrderItemMapper.selectMallOrderItemList(mallOrderItem);
    }

    /**
     * 新增订单子单
     * 
     * @param mallOrderItem 订单子单
     * @return 结果
     */
    @Override
    public int insertMallOrderItem(MallOrderItem mallOrderItem)
    {
        mallOrderItem.setCreateTime(DateUtils.getNowDate());
        return mallOrderItemMapper.insertMallOrderItem(mallOrderItem);
    }

    /**
     * 修改订单子单
     * 
     * @param mallOrderItem 订单子单
     * @return 结果
     */
    @Override
    public int updateMallOrderItem(MallOrderItem mallOrderItem)
    {
        mallOrderItem.setUpdateTime(DateUtils.getNowDate());
        return mallOrderItemMapper.updateMallOrderItem(mallOrderItem);
    }

    /**
     * 批量删除订单子单
     * 
     * @param orderItemIds 需要删除的订单子单ID
     * @return 结果
     */
    @Override
    public int deleteMallOrderItemByIds(Long[] orderItemIds)
    {
        return mallOrderItemMapper.deleteMallOrderItemByIds(orderItemIds);
    }

    /**
     * 删除订单子单信息
     * 
     * @param orderItemId 订单子单ID
     * @return 结果
     */
    @Override
    public int deleteMallOrderItemById(Long orderItemId)
    {
        return mallOrderItemMapper.deleteMallOrderItemById(orderItemId);
    }
}
