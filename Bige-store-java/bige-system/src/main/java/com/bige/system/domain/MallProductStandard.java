package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品规格对象 mall_product_standard
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallProductStandard extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品Id */
    private Long productId;

    /** 规格名 */
    @Excel(name = "规格名")
    private String standardName;

    /** 规格值 */
    @Excel(name = "规格值")
    private String standardValue;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setStandardName(String standardName) 
    {
        this.standardName = standardName;
    }

    public String getStandardName() 
    {
        return standardName;
    }
    public void setStandardValue(String standardValue) 
    {
        this.standardValue = standardValue;
    }

    public String getStandardValue() 
    {
        return standardValue;
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
            .append("productId", getProductId())
            .append("standardName", getStandardName())
            .append("standardValue", getStandardValue())
            .append("sort", getSort())
            .toString();
    }
}
