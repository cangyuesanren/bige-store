package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallShopCard;

/**
 * 购物卡Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallShopCardMapper 
{
    /**
     * 查询购物卡
     * 
     * @param shopId 购物卡ID
     * @return 购物卡
     */
    public MallShopCard selectMallShopCardById(Long shopId);

    /**
     * 查询购物卡列表
     * 
     * @param mallShopCard 购物卡
     * @return 购物卡集合
     */
    public List<MallShopCard> selectMallShopCardList(MallShopCard mallShopCard);

    /**
     * 新增购物卡
     * 
     * @param mallShopCard 购物卡
     * @return 结果
     */
    public int insertMallShopCard(MallShopCard mallShopCard);

    /**
     * 修改购物卡
     * 
     * @param mallShopCard 购物卡
     * @return 结果
     */
    public int updateMallShopCard(MallShopCard mallShopCard);

    /**
     * 删除购物卡
     * 
     * @param shopId 购物卡ID
     * @return 结果
     */
    public int deleteMallShopCardById(Long shopId);

    /**
     * 批量删除购物卡
     * 
     * @param shopIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallShopCardByIds(Long[] shopIds);
}
