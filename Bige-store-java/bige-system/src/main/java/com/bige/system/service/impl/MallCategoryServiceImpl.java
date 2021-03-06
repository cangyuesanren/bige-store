package com.bige.system.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallCategoryMapper;
import com.bige.system.domain.MallCategory;
import com.bige.system.service.IMallCategoryService;

/**
 * 品类信息Service业务层处理
 * 
 * @author bige
 * @date 2021-06-09
 */
@Service
public class MallCategoryServiceImpl implements IMallCategoryService 
{
    @Autowired
    private MallCategoryMapper mallCategoryMapper;

    /**
     * 查询品类信息
     * 
     * @param categoryId 品类信息ID
     * @return 品类信息
     */
    @Override
    public MallCategory selectMallCategoryById(Long categoryId)
    {
        return mallCategoryMapper.selectMallCategoryById(categoryId);
    }

    /**
     * 查询品类信息列表
     * 
     * @param mallCategory 品类信息
     * @return 品类信息
     */
    @Override
    public List<MallCategory> selectMallCategoryList(MallCategory mallCategory)
    {
        return mallCategoryMapper.selectMallCategoryList(mallCategory);
    }

    /**
     * 查询品类信息列表树形
     *
     * @return 品类信息集合
     */
    @Override
    public List<MallCategory> selectMallCategoryTreeList() {
        
        List<MallCategory> allList  = mallCategoryMapper.selectMallCategoryList(new MallCategory());
        /*List<MallCategoryTreeVo> treeList = allList.stream().filter();*/
        List<MallCategory> treeList = allList.stream().filter( mallCategory ->
                mallCategory.getParentId() == 0
        ).map((item) -> {
            item.setChildren(getChildrenList(item,allList));
            return item;
        }).collect(Collectors.toList());
        //System.out.println(allList);


        return treeList;
    }

    private List<MallCategory> getChildrenList(MallCategory father, List<MallCategory> allList){
        List<MallCategory> chidrens = allList.stream().filter(mallCategory ->
                mallCategory.getParentId().equals(father.getCategoryId())
        ).map(mallCategory -> {
            mallCategory.setChildren(getChildrenList(mallCategory,allList));
            return mallCategory;
        }).collect(Collectors.toList());
        return chidrens;
    }

    /**
     * 新增品类信息
     * 
     * @param mallCategory 品类信息
     * @return 结果
     */
    @Override
    public int insertMallCategory(MallCategory mallCategory)
    {
        mallCategory.setCreateTime(DateUtils.getNowDate());
        return mallCategoryMapper.insertMallCategory(mallCategory);
    }

    /**
     * 修改品类信息
     * 
     * @param mallCategory 品类信息
     * @return 结果
     */
    @Override
    public int updateMallCategory(MallCategory mallCategory)
    {
        mallCategory.setUpdateTime(DateUtils.getNowDate());
        return mallCategoryMapper.updateMallCategory(mallCategory);
    }

    /**
     * 批量删除品类信息
     * 
     * @param categoryIds 需要删除的品类信息ID
     * @return 结果
     */
    @Override
    public int deleteMallCategoryByIds(Long[] categoryIds)
    {
        return mallCategoryMapper.deleteMallCategoryByIds(categoryIds);
    }

    /**
     * 删除品类信息信息
     * 
     * @param categoryId 品类信息ID
     * @return 结果
     */
    @Override
    public int deleteMallCategoryById(Long categoryId)
    {
        return mallCategoryMapper.deleteMallCategoryById(categoryId);
    }
}
