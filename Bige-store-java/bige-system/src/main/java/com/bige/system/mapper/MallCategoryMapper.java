package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallCategory;

/**
 * 品类信息Mapper接口
 * 
 * @author bige
 * @date 2021-06-09
 */
public interface MallCategoryMapper 
{
    /**
     * 查询品类信息
     * 
     * @param categoryId 品类信息ID
     * @return 品类信息
     */
    public MallCategory selectMallCategoryById(Long categoryId);

    /**
     * 查询品类信息列表
     * 
     * @param mallCategory 品类信息
     * @return 品类信息集合
     */
    public List<MallCategory> selectMallCategoryList(MallCategory mallCategory);

    /**
     * 新增品类信息
     * 
     * @param mallCategory 品类信息
     * @return 结果
     */
    public int insertMallCategory(MallCategory mallCategory);

    /**
     * 修改品类信息
     * 
     * @param mallCategory 品类信息
     * @return 结果
     */
    public int updateMallCategory(MallCategory mallCategory);

    /**
     * 删除品类信息
     * 
     * @param categoryId 品类信息ID
     * @return 结果
     */
    public int deleteMallCategoryById(Long categoryId);

    /**
     * 批量删除品类信息
     * 
     * @param categoryIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallCategoryByIds(Long[] categoryIds);
}
