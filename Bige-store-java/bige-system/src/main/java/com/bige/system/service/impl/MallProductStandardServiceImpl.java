package com.bige.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallProductStandardMapper;
import com.bige.system.domain.MallProductStandard;
import com.bige.system.service.IMallProductStandardService;

/**
 * 商品规格Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallProductStandardServiceImpl implements IMallProductStandardService 
{
    @Autowired
    private MallProductStandardMapper mallProductStandardMapper;

    /**
     * 查询商品规格
     * 
     * @param productId 商品规格ID
     * @return 商品规格
     */
    @Override
    public MallProductStandard selectMallProductStandardById(Long productId)
    {
        return mallProductStandardMapper.selectMallProductStandardById(productId);
    }

    /**
     * 查询商品规格列表
     * 
     * @param mallProductStandard 商品规格
     * @return 商品规格
     */
    @Override
    public List<MallProductStandard> selectMallProductStandardList(MallProductStandard mallProductStandard)
    {
        return mallProductStandardMapper.selectMallProductStandardList(mallProductStandard);
    }

    /**
     * 新增商品规格
     * 
     * @param mallProductStandard 商品规格
     * @return 结果
     */
    @Override
    public int insertMallProductStandard(MallProductStandard mallProductStandard)
    {
        return mallProductStandardMapper.insertMallProductStandard(mallProductStandard);
    }

    /**
     * 修改商品规格
     * 
     * @param mallProductStandard 商品规格
     * @return 结果
     */
    @Override
    public int updateMallProductStandard(MallProductStandard mallProductStandard)
    {
        return mallProductStandardMapper.updateMallProductStandard(mallProductStandard);
    }

    /**
     * 批量删除商品规格
     * 
     * @param productIds 需要删除的商品规格ID
     * @return 结果
     */
    @Override
    public int deleteMallProductStandardByIds(Long[] productIds)
    {
        return mallProductStandardMapper.deleteMallProductStandardByIds(productIds);
    }

    /**
     * 删除商品规格信息
     * 
     * @param productId 商品规格ID
     * @return 结果
     */
    @Override
    public int deleteMallProductStandardById(Long productId)
    {
        return mallProductStandardMapper.deleteMallProductStandardById(productId);
    }

    /**
     * 删除商品规格信息根据商品Id
     *
     * @param productId 商品规格ID
     * @return 结果
     */
    @Override
    public int deleteMallProductStandardByProductId(Long productId) {
        return mallProductStandardMapper.deleteMallProductStandardByProductId(productId);
    }

}
