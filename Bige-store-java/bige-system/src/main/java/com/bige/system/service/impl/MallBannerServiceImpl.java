package com.bige.system.service.impl;

import java.util.List;
import com.bige.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallBannerMapper;
import com.bige.system.domain.MallBanner;
import com.bige.system.service.IMallBannerService;

/**
 * 轮播图Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallBannerServiceImpl implements IMallBannerService 
{
    @Autowired
    private MallBannerMapper mallBannerMapper;

    /**
     * 查询轮播图
     * 
     * @param bannerId 轮播图ID
     * @return 轮播图
     */
    @Override
    public MallBanner selectMallBannerById(Long bannerId)
    {
        return mallBannerMapper.selectMallBannerById(bannerId);
    }

    /**
     * 查询轮播图列表
     * 
     * @param mallBanner 轮播图
     * @return 轮播图
     */
    @Override
    public List<MallBanner> selectMallBannerList(MallBanner mallBanner)
    {
        return mallBannerMapper.selectMallBannerList(mallBanner);
    }

    /**
     * 新增轮播图
     * 
     * @param mallBanner 轮播图
     * @return 结果
     */
    @Override
    public int insertMallBanner(MallBanner mallBanner)
    {
        mallBanner.setCreateTime(DateUtils.getNowDate());
        return mallBannerMapper.insertMallBanner(mallBanner);
    }

    /**
     * 修改轮播图
     * 
     * @param mallBanner 轮播图
     * @return 结果
     */
    @Override
    public int updateMallBanner(MallBanner mallBanner)
    {
        mallBanner.setUpdateTime(DateUtils.getNowDate());
        return mallBannerMapper.updateMallBanner(mallBanner);
    }

    /**
     * 批量删除轮播图
     * 
     * @param bannerIds 需要删除的轮播图ID
     * @return 结果
     */
    @Override
    public int deleteMallBannerByIds(Long[] bannerIds)
    {
        return mallBannerMapper.deleteMallBannerByIds(bannerIds);
    }

    /**
     * 删除轮播图信息
     * 
     * @param bannerId 轮播图ID
     * @return 结果
     */
    @Override
    public int deleteMallBannerById(Long bannerId)
    {
        return mallBannerMapper.deleteMallBannerById(bannerId);
    }
}
