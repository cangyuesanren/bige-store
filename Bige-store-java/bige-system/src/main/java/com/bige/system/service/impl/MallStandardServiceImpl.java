package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallStandardMapper;
import com.bige.system.domain.MallStandard;
import com.bige.system.service.IMallStandardService;

/**
 * 预设规格Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallStandardServiceImpl implements IMallStandardService 
{
    @Autowired
    private MallStandardMapper mallStandardMapper;

    /**
     * 查询预设规格
     * 
     * @param standardId 预设规格ID
     * @return 预设规格
     */
    @Override
    public MallStandard selectMallStandardById(Long standardId)
    {
        return mallStandardMapper.selectMallStandardById(standardId);
    }

    /**
     * 查询预设规格列表
     * 
     * @param mallStandard 预设规格
     * @return 预设规格
     */
    @Override
    public List<MallStandard> selectMallStandardList(MallStandard mallStandard)
    {
        return mallStandardMapper.selectMallStandardList(mallStandard);
    }

    /**
     * 新增预设规格
     * 
     * @param mallStandard 预设规格
     * @return 结果
     */
    @Override
    public int insertMallStandard(MallStandard mallStandard)
    {
        mallStandard.setCreateTime(DateUtils.getNowDate());
        return mallStandardMapper.insertMallStandard(mallStandard);
    }

    /**
     * 修改预设规格
     * 
     * @param mallStandard 预设规格
     * @return 结果
     */
    @Override
    public int updateMallStandard(MallStandard mallStandard)
    {
        mallStandard.setUpdateTime(DateUtils.getNowDate());
        return mallStandardMapper.updateMallStandard(mallStandard);
    }

    /**
     * 批量删除预设规格
     * 
     * @param standardIds 需要删除的预设规格ID
     * @return 结果
     */
    @Override
    public int deleteMallStandardByIds(Long[] standardIds)
    {
        return mallStandardMapper.deleteMallStandardByIds(standardIds);
    }

    /**
     * 删除预设规格信息
     * 
     * @param standardId 预设规格ID
     * @return 结果
     */
    @Override
    public int deleteMallStandardById(Long standardId)
    {
        return mallStandardMapper.deleteMallStandardById(standardId);
    }
}
