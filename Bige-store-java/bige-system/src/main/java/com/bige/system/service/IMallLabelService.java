package com.bige.system.service;

import java.util.List;
import com.bige.system.domain.MallLabel;

/**
 * 商品标签Service接口
 * 
 * @author bige
 * @date 2021-06-09
 */
public interface IMallLabelService 
{
    /**
     * 查询商品标签
     * 
     * @param labelId 商品标签ID
     * @return 商品标签
     */
    public MallLabel selectMallLabelById(Long labelId);

    /**
     * 查询商品标签列表
     * 
     * @param mallLabel 商品标签
     * @return 商品标签集合
     */
    public List<MallLabel> selectMallLabelList(MallLabel mallLabel);

    /**
     * 新增商品标签
     * 
     * @param mallLabel 商品标签
     * @return 结果
     */
    public int insertMallLabel(MallLabel mallLabel);

    /**
     * 修改商品标签
     * 
     * @param mallLabel 商品标签
     * @return 结果
     */
    public int updateMallLabel(MallLabel mallLabel);

    /**
     * 批量删除商品标签
     * 
     * @param labelIds 需要删除的商品标签ID
     * @return 结果
     */
    public int deleteMallLabelByIds(Long[] labelIds);

    /**
     * 删除商品标签信息
     * 
     * @param labelId 商品标签ID
     * @return 结果
     */
    public int deleteMallLabelById(Long labelId);
}
