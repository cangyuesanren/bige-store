package com.bige.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 购物车对象 mall_cart
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallCart extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 购物车ID */
    private Long cartId;

    /** 客户 */
    @Excel(name = "客户")
    private Long customerId;

    /** 规格Id */
    @Excel(name = "规格Id")
    private Long goodsId;

    /** 商品Id */
    @Excel(name = "商品Id")
    private Long productId;

    /** 售价 */
    @Excel(name = "售价")
    private BigDecimal salePrice;

    /** 规格Json */
    @Excel(name = "规格Json")
    private String standardJson;

    /** 商品名 */
    @Excel(name = "商品名")
    private String productName;

    /** 数量 */
    @Excel(name = "数量")
    private Long number;

    /** 商品图 */
    @Excel(name = "商品图")
    private String productImg;

    /** 买家留言 */
    @Excel(name = "买家留言")
    private String buyerMsg;

    public void setCartId(Long cartId) 
    {
        this.cartId = cartId;
    }

    public Long getCartId() 
    {
        return cartId;
    }
    public void setCustomerId(Long customerId) 
    {
        this.customerId = customerId;
    }

    public Long getCustomerId() 
    {
        return customerId;
    }
    public void setGoodsId(Long goodsId) 
    {
        this.goodsId = goodsId;
    }

    public Long getGoodsId() 
    {
        return goodsId;
    }
    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setSalePrice(BigDecimal salePrice) 
    {
        this.salePrice = salePrice;
    }

    public BigDecimal getSalePrice() 
    {
        return salePrice;
    }
    public void setStandardJson(String standardJson) 
    {
        this.standardJson = standardJson;
    }

    public String getStandardJson() 
    {
        return standardJson;
    }
    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }
    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setProductImg(String productImg) 
    {
        this.productImg = productImg;
    }

    public String getProductImg() 
    {
        return productImg;
    }
    public void setBuyerMsg(String buyerMsg) 
    {
        this.buyerMsg = buyerMsg;
    }

    public String getBuyerMsg() 
    {
        return buyerMsg;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cartId", getCartId())
            .append("customerId", getCustomerId())
            .append("goodsId", getGoodsId())
            .append("productId", getProductId())
            .append("salePrice", getSalePrice())
            .append("standardJson", getStandardJson())
            .append("productName", getProductName())
            .append("number", getNumber())
            .append("productImg", getProductImg())
            .append("buyerMsg", getBuyerMsg())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
