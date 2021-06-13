package com.bige.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallProductImgsMapper;
import com.bige.system.domain.MallProductImgs;
import com.bige.system.service.IMallProductImgsService;

/**
 * 商品图Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallProductImgsServiceImpl implements IMallProductImgsService 
{
    @Autowired
    private MallProductImgsMapper mallProductImgsMapper;

    /**
     * 查询商品图
     * 
     * @param productImgId 商品图ID
     * @return 商品图
     */
    @Override
    public MallProductImgs selectMallProductImgsById(Long productImgId)
    {
        return mallProductImgsMapper.selectMallProductImgsById(productImgId);
    }

    /**
     * 查询商品图列表
     * 
     * @param mallProductImgs 商品图
     * @return 商品图
     */
    @Override
    public List<MallProductImgs> selectMallProductImgsList(MallProductImgs mallProductImgs)
    {
        return mallProductImgsMapper.selectMallProductImgsList(mallProductImgs);
    }

    /**
     * 新增商品图
     * 
     * @param mallProductImgs 商品图
     * @return 结果
     */
    @Override
    public int insertMallProductImgs(MallProductImgs mallProductImgs)
    {
        return mallProductImgsMapper.insertMallProductImgs(mallProductImgs);
    }

    /**
     * 修改商品图
     * 
     * @param mallProductImgs 商品图
     * @return 结果
     */
    @Override
    public int updateMallProductImgs(MallProductImgs mallProductImgs)
    {
        return mallProductImgsMapper.updateMallProductImgs(mallProductImgs);
    }

    /**
     * 批量删除商品图
     * 
     * @param productImgIds 需要删除的商品图ID
     * @return 结果
     */
    @Override
    public int deleteMallProductImgsByIds(Long[] productImgIds)
    {
        return mallProductImgsMapper.deleteMallProductImgsByIds(productImgIds);
    }

    /**
     * 删除商品图信息
     * 
     * @param productImgId 商品图ID
     * @return 结果
     */
    @Override
    public int deleteMallProductImgsById(Long productImgId)
    {
        return mallProductImgsMapper.deleteMallProductImgsById(productImgId);
    }
}
