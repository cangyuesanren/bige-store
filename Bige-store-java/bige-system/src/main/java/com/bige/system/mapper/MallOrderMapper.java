package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallOrder;

/**
 * 商品订单Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallOrderMapper 
{
    /**
     * 查询商品订单
     * 
     * @param orderId 商品订单ID
     * @return 商品订单
     */
    public MallOrder selectMallOrderById(Long orderId);

    /**
     * 查询商品订单列表
     * 
     * @param mallOrder 商品订单
     * @return 商品订单集合
     */
    public List<MallOrder> selectMallOrderList(MallOrder mallOrder);

    /**
     * 新增商品订单
     * 
     * @param mallOrder 商品订单
     * @return 结果
     */
    public int insertMallOrder(MallOrder mallOrder);

    /**
     * 修改商品订单
     * 
     * @param mallOrder 商品订单
     * @return 结果
     */
    public int updateMallOrder(MallOrder mallOrder);

    /**
     * 删除商品订单
     * 
     * @param orderId 商品订单ID
     * @return 结果
     */
    public int deleteMallOrderById(Long orderId);

    /**
     * 批量删除商品订单
     * 
     * @param orderIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallOrderByIds(Long[] orderIds);
}
