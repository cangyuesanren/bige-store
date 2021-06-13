package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 品牌对象 mall_brand
 * 
 * @author bige
 * @date 2021-06-09
 */
public class MallBrand extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 品牌ID */
    private Long brandId;

    /** 品牌名 */
    @Excel(name = "品牌名")
    private String brandName;

    /** 品牌logo图片 */
    @Excel(name = "品牌logo图片")
    private String brandImg;

    /** 状态（ 0启用 1停用） */
    @Excel(name = "状态", readConverterExp = "0=启用,1=停用")
    private String status;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    /** 检索首字母 */
    @Excel(name = "检索首字母")
    private String firstLetter;

    /** 品牌介绍 */
    @Excel(name = "品牌介绍")
    private String descript;

    public void setBrandId(Long brandId) 
    {
        this.brandId = brandId;
    }

    public Long getBrandId() 
    {
        return brandId;
    }
    public void setBrandName(String brandName) 
    {
        this.brandName = brandName;
    }

    public String getBrandName() 
    {
        return brandName;
    }
    public void setBrandImg(String brandImg) 
    {
        this.brandImg = brandImg;
    }

    public String getBrandImg() 
    {
        return brandImg;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }
    public void setFirstLetter(String firstLetter) 
    {
        this.firstLetter = firstLetter;
    }

    public String getFirstLetter() 
    {
        return firstLetter;
    }
    public void setDescript(String descript) 
    {
        this.descript = descript;
    }

    public String getDescript() 
    {
        return descript;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("brandId", getBrandId())
            .append("brandName", getBrandName())
            .append("brandImg", getBrandImg())
            .append("status", getStatus())
            .append("sort", getSort())
            .append("firstLetter", getFirstLetter())
            .append("descript", getDescript())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("createTime", getCreateTime())
            .toString();
    }
}
