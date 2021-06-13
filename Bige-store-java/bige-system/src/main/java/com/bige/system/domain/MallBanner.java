package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 轮播图对象 mall_banner
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallBanner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 轮播Id */
    private Long bannerId;

    /** 名称 */
    @Excel(name = "名称")
    private String bannerName;

    /** 轮播图 */
    @Excel(name = "轮播图")
    private String bannerImg;

    /** 跳转链接 */
    @Excel(name = "跳转链接")
    private String linkUrl;

    /** 跳转类型 */
    @Excel(name = "跳转类型")
    private Long type;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    public void setBannerId(Long bannerId) 
    {
        this.bannerId = bannerId;
    }

    public Long getBannerId() 
    {
        return bannerId;
    }
    public void setBannerName(String bannerName) 
    {
        this.bannerName = bannerName;
    }

    public String getBannerName() 
    {
        return bannerName;
    }
    public void setBannerImg(String bannerImg) 
    {
        this.bannerImg = bannerImg;
    }

    public String getBannerImg() 
    {
        return bannerImg;
    }
    public void setLinkUrl(String linkUrl) 
    {
        this.linkUrl = linkUrl;
    }

    public String getLinkUrl() 
    {
        return linkUrl;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("bannerId", getBannerId())
            .append("bannerName", getBannerName())
            .append("bannerImg", getBannerImg())
            .append("linkUrl", getLinkUrl())
            .append("type", getType())
            .append("sort", getSort())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
