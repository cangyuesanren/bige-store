package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 预设规格对象 mall_standard
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallStandard extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 规格Id */
    @Excel(name = "规格Id")
    private Long standardId;

    /** 一级品类 */
    @Excel(name = "一级品类")
    private Long firstCategoryId;

    /** 二级品类 */
    @Excel(name = "二级品类")
    private Long secondCategory;

    /** 三级品类 */
    @Excel(name = "三级品类")
    private Long thirdCategoryId;

    /** 规格名 */
    @Excel(name = "规格名")
    private String standardName;

    /** 规格值 */
    @Excel(name = "规格值")
    private String standard;

    public void setStandardId(Long standardId) 
    {
        this.standardId = standardId;
    }

    public Long getStandardId() 
    {
        return standardId;
    }
    public void setFirstCategoryId(Long firstCategoryId) 
    {
        this.firstCategoryId = firstCategoryId;
    }

    public Long getFirstCategoryId() 
    {
        return firstCategoryId;
    }
    public void setSecondCategory(Long secondCategory) 
    {
        this.secondCategory = secondCategory;
    }

    public Long getSecondCategory() 
    {
        return secondCategory;
    }
    public void setThirdCategoryId(Long thirdCategoryId) 
    {
        this.thirdCategoryId = thirdCategoryId;
    }

    public Long getThirdCategoryId() 
    {
        return thirdCategoryId;
    }
    public void setStandardName(String standardName) 
    {
        this.standardName = standardName;
    }

    public String getStandardName() 
    {
        return standardName;
    }
    public void setStandard(String standard) 
    {
        this.standard = standard;
    }

    public String getStandard() 
    {
        return standard;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("standardId", getStandardId())
            .append("firstCategoryId", getFirstCategoryId())
            .append("secondCategory", getSecondCategory())
            .append("thirdCategoryId", getThirdCategoryId())
            .append("standardName", getStandardName())
            .append("standard", getStandard())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
