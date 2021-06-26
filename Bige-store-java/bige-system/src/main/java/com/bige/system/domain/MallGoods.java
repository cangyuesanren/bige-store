package com.bige.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品sku对象 mall_goods
 *
 * @author bige
 * @date 2021-06-20
 */
public class MallGoods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** skuId */
    private Long goodsId;

    /** 商品Id */
    @Excel(name = "商品Id")
    private Long productId;

    /** 商品规格名 */
    @Excel(name = "商品规格名")
    private String goodsName;

    /** 规格图 */
    @Excel(name = "规格图")
    private String goodsImg;

    /** 销售价 */
    @Excel(name = "销售价")
    private BigDecimal salePrice;

    /** 成本价 */
    @Excel(name = "成本价")
    private BigDecimal costPrice;

    /** 划线价 */
    @Excel(name = "划线价")
    private BigDecimal linePrice;

    /** 规格销量 */
    @Excel(name = "规格销量")
    private Long saleNum;

    /** 总库存 */
    @Excel(name = "总库存")
    private Long totalNum;

    /** 库存锁定 */
    @Excel(name = "库存锁定")
    private Long stockLocked;

    /** 重量 */
    @Excel(name = "重量")
    private BigDecimal weight;

    /** 规格值 */
    @Excel(name = "规格值")
    private String standardJson;

    /** 体积 */
    @Excel(name = "体积")
    private BigDecimal volum;

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
    public void setGoodsName(String goodsName)
    {
        this.goodsName = goodsName;
    }

    public String getGoodsName()
    {
        return goodsName;
    }
    public void setGoodsImg(String goodsImg)
    {
        this.goodsImg = goodsImg;
    }

    public String getGoodsImg()
    {
        return goodsImg;
    }
    public void setSalePrice(BigDecimal salePrice)
    {
        this.salePrice = salePrice;
    }

    public BigDecimal getSalePrice()
    {
        return salePrice;
    }
    public void setCostPrice(BigDecimal costPrice)
    {
        this.costPrice = costPrice;
    }

    public BigDecimal getCostPrice()
    {
        return costPrice;
    }
    public void setLinePrice(BigDecimal linePrice)
    {
        this.linePrice = linePrice;
    }

    public BigDecimal getLinePrice()
    {
        return linePrice;
    }
    public void setSaleNum(Long saleNum)
    {
        this.saleNum = saleNum;
    }

    public Long getSaleNum()
    {
        return saleNum;
    }
    public void setTotalNum(Long totalNum)
    {
        this.totalNum = totalNum;
    }

    public Long getTotalNum()
    {
        return totalNum;
    }
    public void setStockLocked(Long stockLocked)
    {
        this.stockLocked = stockLocked;
    }

    public Long getStockLocked()
    {
        return stockLocked;
    }
    public void setWeight(BigDecimal weight)
    {
        this.weight = weight;
    }

    public BigDecimal getWeight()
    {
        return weight;
    }
    public void setStandardJson(String standardJson)
    {
        this.standardJson = standardJson;
    }

    public String getStandardJson()
    {
        return standardJson;
    }
    public void setVolum(BigDecimal volum)
    {
        this.volum = volum;
    }

    public BigDecimal getVolum()
    {
        return volum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("goodsId", getGoodsId())
                .append("productId", getProductId())
                .append("goodsName", getGoodsName())
                .append("goodsImg", getGoodsImg())
                .append("salePrice", getSalePrice())
                .append("costPrice", getCostPrice())
                .append("linePrice", getLinePrice())
                .append("saleNum", getSaleNum())
                .append("totalNum", getTotalNum())
                .append("stockLocked", getStockLocked())
                .append("weight", getWeight())
                .append("standardJson", getStandardJson())
                .append("volum", getVolum())
                .append("createTime", getCreateTime())
                .append("createBy", getCreateBy())
                .append("updateTime", getUpdateTime())
                .toString();
    }
}