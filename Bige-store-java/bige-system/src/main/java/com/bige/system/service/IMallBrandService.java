package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallBrand;

/**
 * 品牌Service接口
 * 
 * @author bige
 * @date 2021-06-09
 */
public interface IMallBrandService 
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
     * 批量删除品牌
     * 
     * @param brandIds 需要删除的品牌ID
     * @return 结果
     */
    public int deleteMallBrandByIds(Long[] brandIds);

    /**
     * 删除品牌信息
     * 
     * @param brandId 品牌ID
     * @return 结果
     */
    public int deleteMallBrandById(Long brandId);
}
