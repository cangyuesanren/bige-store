package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallProductImgs;

/**
 * 商品图Service接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface IMallProductImgsService 
{
    /**
     * 查询商品图
     * 
     * @param productImgId 商品图ID
     * @return 商品图
     */
    public MallProductImgs selectMallProductImgsById(Long productImgId);

    /**
     * 查询商品图列表
     * 
     * @param mallProductImgs 商品图
     * @return 商品图集合
     */
    public List<MallProductImgs> selectMallProductImgsList(MallProductImgs mallProductImgs);

    /**
     * 新增商品图
     * 
     * @param mallProductImgs 商品图
     * @return 结果
     */
    public int insertMallProductImgs(MallProductImgs mallProductImgs);

    /**
     * 修改商品图
     * 
     * @param mallProductImgs 商品图
     * @return 结果
     */
    public int updateMallProductImgs(MallProductImgs mallProductImgs);

    /**
     * 批量删除商品图
     * 
     * @param productImgIds 需要删除的商品图ID
     * @return 结果
     */
    public int deleteMallProductImgsByIds(Long[] productImgIds);

    /**
     * 删除商品图信息
     * 
     * @param productImgId 商品图ID
     * @return 结果
     */
    public int deleteMallProductImgsById(Long productImgId);
}
