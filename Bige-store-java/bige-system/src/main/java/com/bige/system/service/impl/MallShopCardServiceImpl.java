package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallShopCardMapper;
import com.bige.system.domain.MallShopCard;
import com.bige.system.service.IMallShopCardService;

/**
 * 购物卡Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallShopCardServiceImpl implements IMallShopCardService 
{
    @Autowired
    private MallShopCardMapper mallShopCardMapper;

    /**
     * 查询购物卡
     * 
     * @param shopId 购物卡ID
     * @return 购物卡
     */
    @Override
    public MallShopCard selectMallShopCardById(Long shopId)
    {
        return mallShopCardMapper.selectMallShopCardById(shopId);
    }

    /**
     * 查询购物卡列表
     * 
     * @param mallShopCard 购物卡
     * @return 购物卡
     */
    @Override
    public List<MallShopCard> selectMallShopCardList(MallShopCard mallShopCard)
    {
        return mallShopCardMapper.selectMallShopCardList(mallShopCard);
    }

    /**
     * 新增购物卡
     * 
     * @param mallShopCard 购物卡
     * @return 结果
     */
    @Override
    public int insertMallShopCard(MallShopCard mallShopCard)
    {
        mallShopCard.setCreateTime(DateUtils.getNowDate());
        return mallShopCardMapper.insertMallShopCard(mallShopCard);
    }

    /**
     * 修改购物卡
     * 
     * @param mallShopCard 购物卡
     * @return 结果
     */
    @Override
    public int updateMallShopCard(MallShopCard mallShopCard)
    {
        return mallShopCardMapper.updateMallShopCard(mallShopCard);
    }

    /**
     * 批量删除购物卡
     * 
     * @param shopIds 需要删除的购物卡ID
     * @return 结果
     */
    @Override
    public int deleteMallShopCardByIds(Long[] shopIds)
    {
        return mallShopCardMapper.deleteMallShopCardByIds(shopIds);
    }

    /**
     * 删除购物卡信息
     * 
     * @param shopId 购物卡ID
     * @return 结果
     */
    @Override
    public int deleteMallShopCardById(Long shopId)
    {
        return mallShopCardMapper.deleteMallShopCardById(shopId);
    }
}
