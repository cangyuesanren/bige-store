package com.bige.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 品类信息对象 mall_category
 * 
 * @author bige
 * @date 2021-06-09
 */
public class MallCategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 品类ID */
    private Long categoryId;

    /** 品类名 */
    @Excel(name = "品类名")
    private String categoryName;

    /** 品类图片 */
    @Excel(name = "品类图片")
    private String categoryImg;

    /** 父级ID */
    @Excel(name = "父级ID")
    private Long parentId;

    /** 类型（ 1一级 2二级 3三级） */
    @Excel(name = "类型", readConverterExp = "1=一级,2=二级,3=三级")
    private String categoryType;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    /** 佣金比例 */
    @Excel(name = "佣金比例")
    private BigDecimal chargeRate;

    /** 状态（ 0启用 1停用） */
    @Excel(name = "状态", readConverterExp = "0=启用,1=停用")
    private String status;

    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setCategoryName(String categoryName) 
    {
        this.categoryName = categoryName;
    }

    public String getCategoryName() 
    {
        return categoryName;
    }
    public void setCategoryImg(String categoryImg) 
    {
        this.categoryImg = categoryImg;
    }

    public String getCategoryImg() 
    {
        return categoryImg;
    }
    public void setParentId(Long parentId) 
    {
        this.parentId = parentId;
    }

    public Long getParentId() 
    {
        return parentId;
    }
    public void setCategoryType(String categoryType) 
    {
        this.categoryType = categoryType;
    }

    public String getCategoryType() 
    {
        return categoryType;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }
    public void setChargeRate(BigDecimal chargeRate) 
    {
        this.chargeRate = chargeRate;
    }

    public BigDecimal getChargeRate() 
    {
        return chargeRate;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("categoryId", getCategoryId())
            .append("categoryName", getCategoryName())
            .append("categoryImg", getCategoryImg())
            .append("parentId", getParentId())
            .append("categoryType", getCategoryType())
            .append("sort", getSort())
            .append("chargeRate", getChargeRate())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
