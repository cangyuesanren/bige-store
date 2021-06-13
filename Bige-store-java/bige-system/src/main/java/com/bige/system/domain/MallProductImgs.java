package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品图对象 mall_product_imgs
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallProductImgs extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品图Id */
    private Long productImgId;

    /** 商品 */
    @Excel(name = "商品")
    private Long productId;

    /** 商品图 */
    @Excel(name = "商品图")
    private String productImg;

    public void setProductImgId(Long productImgId) 
    {
        this.productImgId = productImgId;
    }

    public Long getProductImgId() 
    {
        return productImgId;
    }
    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setProductImg(String productImg) 
    {
        this.productImg = productImg;
    }

    public String getProductImg() 
    {
        return productImg;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("productImgId", getProductImgId())
            .append("productId", getProductId())
            .append("productImg", getProductImg())
            .toString();
    }
}
