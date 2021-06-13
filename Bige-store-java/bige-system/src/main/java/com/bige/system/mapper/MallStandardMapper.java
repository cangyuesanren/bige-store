package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallStandard;

/**
 * 预设规格Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallStandardMapper 
{
    /**
     * 查询预设规格
     * 
     * @param standardId 预设规格ID
     * @return 预设规格
     */
    public MallStandard selectMallStandardById(Long standardId);

    /**
     * 查询预设规格列表
     * 
     * @param mallStandard 预设规格
     * @return 预设规格集合
     */
    public List<MallStandard> selectMallStandardList(MallStandard mallStandard);

    /**
     * 新增预设规格
     * 
     * @param mallStandard 预设规格
     * @return 结果
     */
    public int insertMallStandard(MallStandard mallStandard);

    /**
     * 修改预设规格
     * 
     * @param mallStandard 预设规格
     * @return 结果
     */
    public int updateMallStandard(MallStandard mallStandard);

    /**
     * 删除预设规格
     * 
     * @param standardId 预设规格ID
     * @return 结果
     */
    public int deleteMallStandardById(Long standardId);

    /**
     * 批量删除预设规格
     * 
     * @param standardIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallStandardByIds(Long[] standardIds);
}
