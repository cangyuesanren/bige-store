package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallOrderItem;

/**
 * 订单子单Service接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallOrderItemService 
{
    /**
     * 查询订单子单
     * 
     * @param orderItemId 订单子单ID
     * @return 订单子单
     */
    public MallOrderItem selectMallOrderItemById(Long orderItemId);

    /**
     * 查询订单子单列表
     * 
     * @param mallOrderItem 订单子单
     * @return 订单子单集合
     */
    public List<MallOrderItem> selectMallOrderItemList(MallOrderItem mallOrderItem);

    /**
     * 新增订单子单
     * 
     * @param mallOrderItem 订单子单
     * @return 结果
     */
    public int insertMallOrderItem(MallOrderItem mallOrderItem);

    /**
     * 修改订单子单
     * 
     * @param mallOrderItem 订单子单
     * @return 结果
     */
    public int updateMallOrderItem(MallOrderItem mallOrderItem);

    /**
     * 批量删除订单子单
     * 
     * @param orderItemIds 需要删除的订单子单ID
     * @return 结果
     */
    public int deleteMallOrderItemByIds(Long[] orderItemIds);

    /**
     * 删除订单子单信息
     * 
     * @param orderItemId 订单子单ID
     * @return 结果
     */
    public int deleteMallOrderItemById(Long orderItemId);
}
