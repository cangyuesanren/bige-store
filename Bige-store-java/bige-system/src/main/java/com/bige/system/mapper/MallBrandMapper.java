package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallBrand;

/**
 * 品牌Mapper接口
 * 
 * @author bige
 * @date 2021-06-09
 */
public interface MallBrandMapper 
{
    /**
     * 查询品牌
     * 
     * @param brandId 品牌ID
     * @return 品牌
     */
    public MallBrand selectMallBrandById(Long brandId);

    /**
     * 查询品牌列表
     * 
     * @param mallBrand 品牌
     * @return 品牌集合
     */
    public List<MallBrand> selectMallBrandList(MallBrand mallBrand);

    /**
     * 新增品牌
     * 
     * @param mallBrand 品牌
     * @return 结果
     */
    public int insertMallBrand(MallBrand mallBrand);

    /**
     * 修改品牌
     * 
     * @param mallBrand 品牌
     * @return 结果
     */
    public int updateMallBrand(MallBrand mallBrand);

    /**
     * 删除品牌
     * 
     * @param brandId 品牌ID
     * @return 结果
     */
    public int deleteMallBrandById(Long brandId);

    /**
     * 批量删除品牌
     * 
     * @param brandIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallBrandByIds(Long[] brandIds);
}
