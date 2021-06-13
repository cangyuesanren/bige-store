package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallLabelMapper;
import com.bige.system.domain.MallLabel;
import com.bige.system.service.IMallLabelService;

/**
 * 商品标签Service业务层处理
 * 
 * @author bige
 * @date 2021-06-09
 */
@Service
public class MallLabelServiceImpl implements IMallLabelService 
{
    @Autowired
    private MallLabelMapper mallLabelMapper;

    /**
     * 查询商品标签
     * 
     * @param labelId 商品标签ID
     * @return 商品标签
     */
    @Override
    public MallLabel selectMallLabelById(Long labelId)
    {
        return mallLabelMapper.selectMallLabelById(labelId);
    }

    /**
     * 查询商品标签列表
     * 
     * @param mallLabel 商品标签
     * @return 商品标签
     */
    @Override
    public List<MallLabel> selectMallLabelList(MallLabel mallLabel)
    {
        return mallLabelMapper.selectMallLabelList(mallLabel);
    }

    /**
     * 新增商品标签
     * 
     * @param mallLabel 商品标签
     * @return 结果
     */
    @Override
    public int insertMallLabel(MallLabel mallLabel)
    {
        mallLabel.setCreateTime(DateUtils.getNowDate());
        return mallLabelMapper.insertMallLabel(mallLabel);
    }

    /**
     * 修改商品标签
     * 
     * @param mallLabel 商品标签
     * @return 结果
     */
    @Override
    public int updateMallLabel(MallLabel mallLabel)
    {
        mallLabel.setUpdateTime(DateUtils.getNowDate());
        return mallLabelMapper.updateMallLabel(mallLabel);
    }

    /**
     * 批量删除商品标签
     * 
     * @param labelIds 需要删除的商品标签ID
     * @return 结果
     */
    @Override
    public int deleteMallLabelByIds(Long[] labelIds)
    {
        return mallLabelMapper.deleteMallLabelByIds(labelIds);
    }

    /**
     * 删除商品标签信息
     * 
     * @param labelId 商品标签ID
     * @return 结果
     */
    @Override
    public int deleteMallLabelById(Long labelId)
    {
        return mallLabelMapper.deleteMallLabelById(labelId);
    }
}
