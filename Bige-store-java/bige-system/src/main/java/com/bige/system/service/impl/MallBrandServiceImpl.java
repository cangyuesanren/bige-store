package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallBrandMapper;
import com.bige.system.domain.MallBrand;
import com.bige.system.service.IMallBrandService;

/**
 * 品牌Service业务层处理
 * 
 * @author bige
 * @date 2021-06-09
 */
@Service
public class MallBrandServiceImpl implements IMallBrandService 
{
    @Autowired
    private MallBrandMapper mallBrandMapper;

    /**
     * 查询品牌
     * 
     * @param brandId 品牌ID
     * @return 品牌
     */
    @Override
    public MallBrand selectMallBrandById(Long brandId)
    {
        return mallBrandMapper.selectMallBrandById(brandId);
    }

    /**
     * 查询品牌列表
     * 
     * @param mallBrand 品牌
     * @return 品牌
     */
    @Override
    public List<MallBrand> selectMallBrandList(MallBrand mallBrand)
    {
        return mallBrandMapper.selectMallBrandList(mallBrand);
    }

    /**
     * 新增品牌
     * 
     * @param mallBrand 品牌
     * @return 结果
     */
    @Override
    public int insertMallBrand(MallBrand mallBrand)
    {
        mallBrand.setCreateTime(DateUtils.getNowDate());
        return mallBrandMapper.insertMallBrand(mallBrand);
    }

    /**
     * 修改品牌
     * 
     * @param mallBrand 品牌
     * @return 结果
     */
    @Override
    public int updateMallBrand(MallBrand mallBrand)
    {
        mallBrand.setUpdateTime(DateUtils.getNowDate());
        return mallBrandMapper.updateMallBrand(mallBrand);
    }

    /**
     * 批量删除品牌
     * 
     * @param brandIds 需要删除的品牌ID
     * @return 结果
     */
    @Override
    public int deleteMallBrandByIds(Long[] brandIds)
    {
        return mallBrandMapper.deleteMallBrandByIds(brandIds);
    }

    /**
     * 删除品牌信息
     * 
     * @param brandId 品牌ID
     * @return 结果
     */
    @Override
    public int deleteMallBrandById(Long brandId)
    {
        return mallBrandMapper.deleteMallBrandById(brandId);
    }
}
