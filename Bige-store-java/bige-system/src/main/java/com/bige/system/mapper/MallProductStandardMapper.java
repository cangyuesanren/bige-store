package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallProductStandard;

/**
 * 商品规格Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallProductStandardMapper 
{
    /**
     * 查询商品规格
     * 
     * @param productId 商品规格ID
     * @return 商品规格
     */
    public MallProductStandard selectMallProductStandardById(Long productId);

    /**
     * 查询商品规格列表
     * 
     * @param mallProductStandard 商品规格
     * @return 商品规格集合
     */
    public List<MallProductStandard> selectMallProductStandardList(MallProductStandard mallProductStandard);

    /**
     * 新增商品规格
     * 
     * @param mallProductStandard 商品规格
     * @return 结果
     */
    public int insertMallProductStandard(MallProductStandard mallProductStandard);

    /**
     * 修改商品规格
     * 
     * @param mallProductStandard 商品规格
     * @return 结果
     */
    public int updateMallProductStandard(MallProductStandard mallProductStandard);

    /**
     * 删除商品规格
     * 
     * @param productId 商品规格ID
     * @return 结果
     */
    public int deleteMallProductStandardById(Long productId);

    /**
     * 批量删除商品规格
     * 
     * @param productIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallProductStandardByIds(Long[] productIds);

    /**
     * 批量删除商品规格
     *
     * @param productId 需要删除的数据的商品ID
     * @return 结果
     */
    public int deleteMallProductStandardByProductId(Long productId);
}
