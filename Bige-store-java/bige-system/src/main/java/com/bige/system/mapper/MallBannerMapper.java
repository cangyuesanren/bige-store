package com.bige.system.mapper;

import java.util.List;
import com.bige.system.domain.MallBanner;

/**
 * 轮播图Mapper接口
 * 
 * @author bige
 * @date 2021-06-13
 */
public interface MallBannerMapper 
{
    /**
     * 查询轮播图
     * 
     * @param bannerId 轮播图ID
     * @return 轮播图
     */
    public MallBanner selectMallBannerById(Long bannerId);

    /**
     * 查询轮播图列表
     * 
     * @param mallBanner 轮播图
     * @return 轮播图集合
     */
    public List<MallBanner> selectMallBannerList(MallBanner mallBanner);

    /**
     * 新增轮播图
     * 
     * @param mallBanner 轮播图
     * @return 结果
     */
    public int insertMallBanner(MallBanner mallBanner);

    /**
     * 修改轮播图
     * 
     * @param mallBanner 轮播图
     * @return 结果
     */
    public int updateMallBanner(MallBanner mallBanner);

    /**
     * 删除轮播图
     * 
     * @param bannerId 轮播图ID
     * @return 结果
     */
    public int deleteMallBannerById(Long bannerId);

    /**
     * 批量删除轮播图
     * 
     * @param bannerIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteMallBannerByIds(Long[] bannerIds);
}
