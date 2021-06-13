package com.bige.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 订单子单对象 mall_order_item
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallOrderItem extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单子单ID */
    private Long orderItemId;

    /** 订单子单编号 */
    @Excel(name = "订单子单编号")
    private String orderItemNo;

    /** 订单ID */
    @Excel(name = "订单ID")
    private Long orderId;

    /** 支付单号 */
    @Excel(name = "支付单号")
    private String payOrderNo;

    /** 客户 */
    @Excel(name = "客户")
    private Long customerId;

    /** 商品 */
    @Excel(name = "商品")
    private Long productId;

    /** 规格Id */
    @Excel(name = "规格Id")
    private Long goodsId;

    /** 一级品类 */
    @Excel(name = "一级品类")
    private Long firstCategoryId;

    /** 二级品类 */
    @Excel(name = "二级品类")
    private Long secondCategoryId;

    /** 三级品类 */
    @Excel(name = "三级品类")
    private Long thirdCategoryId;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String productName;

    /** 商品图 */
    @Excel(name = "商品图")
    private String productImg;

    /** 成本价 */
    @Excel(name = "成本价")
    private BigDecimal costPrice;

    /** 售价 */
    @Excel(name = "售价")
    private BigDecimal salePrice;

    /** 购买数量 */
    @Excel(name = "购买数量")
    private Long buyNum;

    /** 订单总结 */
    @Excel(name = "订单总结")
    private BigDecimal orderTotalMoney;

    /** 优惠金额 */
    @Excel(name = "优惠金额")
    private BigDecimal preMoney;

    /** 商品总价 */
    @Excel(name = "商品总价")
    private BigDecimal payProductMoney;

    /** 优惠券金 */
    @Excel(name = "优惠券金")
    private BigDecimal couponMoney;

    /** 实付金额 */
    @Excel(name = "实付金额")
    private BigDecimal payMoney;

    /** 购物金 */
    @Excel(name = "购物金")
    private BigDecimal shopMoney;

    /** 商品规格 */
    @Excel(name = "商品规格")
    private String goodsAttr;

    /** 规格编码 */
    @Excel(name = "规格编码")
    private String skuCode;

    /** 评论状态 */
    @Excel(name = "评论状态")
    private String commentStatus;

    /** 状态（0：待付款 1未发货 2已发货 3已收货 4退货售后 ） */
    @Excel(name = "状态", readConverterExp = "0=：待付款,1=未发货,2=已发货,3=已收货,4=退货售后")
    private String status;

    /** 发货方式 ( 0普通快递 1无需物流） */
    @Excel(name = "发货方式 ( 0普通快递 1无需物流）")
    private String deliveryType;

    /** 邮费 */
    @Excel(name = "邮费")
    private BigDecimal postagePrice;

    /** 发票类型（0：可开，1：不可开） */
    @Excel(name = "发票类型", readConverterExp = "0=：可开，1：不可开")
    private String invoiceType;

    /** 开票状态（0未开票 1：申请中，2已开票） */
    @Excel(name = "开票状态", readConverterExp = "0=未开票,1=：申请中，2已开票")
    private String invoiceStatus;

    /** 买家留言 */
    @Excel(name = "买家留言")
    private String buyerMsg;

    /** 供应商 */
    @Excel(name = "供应商")
    private Long supplierId;

    public void setOrderItemId(Long orderItemId) 
    {
        this.orderItemId = orderItemId;
    }

    public Long getOrderItemId() 
    {
        return orderItemId;
    }
    public void setOrderItemNo(String orderItemNo) 
    {
        this.orderItemNo = orderItemNo;
    }

    public String getOrderItemNo() 
    {
        return orderItemNo;
    }
    public void setOrderId(Long orderId) 
    {
        this.orderId = orderId;
    }

    public Long getOrderId() 
    {
        return orderId;
    }
    public void setPayOrderNo(String payOrderNo) 
    {
        this.payOrderNo = payOrderNo;
    }

    public String getPayOrderNo() 
    {
        return payOrderNo;
    }
    public void setCustomerId(Long customerId) 
    {
        this.customerId = customerId;
    }

    public Long getCustomerId() 
    {
        return customerId;
    }
    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setGoodsId(Long goodsId) 
    {
        this.goodsId = goodsId;
    }

    public Long getGoodsId() 
    {
        return goodsId;
    }
    public void setFirstCategoryId(Long firstCategoryId) 
    {
        this.firstCategoryId = firstCategoryId;
    }

    public Long getFirstCategoryId() 
    {
        return firstCategoryId;
    }
    public void setSecondCategoryId(Long secondCategoryId) 
    {
        this.secondCategoryId = secondCategoryId;
    }

    public Long getSecondCategoryId() 
    {
        return secondCategoryId;
    }
    public void setThirdCategoryId(Long thirdCategoryId) 
    {
        this.thirdCategoryId = thirdCategoryId;
    }

    public Long getThirdCategoryId() 
    {
        return thirdCategoryId;
    }
    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }
    public void setProductImg(String productImg) 
    {
        this.productImg = productImg;
    }

    public String getProductImg() 
    {
        return productImg;
    }
    public void setCostPrice(BigDecimal costPrice) 
    {
        this.costPrice = costPrice;
    }

    public BigDecimal getCostPrice() 
    {
        return costPrice;
    }
    public void setSalePrice(BigDecimal salePrice) 
    {
        this.salePrice = salePrice;
    }

    public BigDecimal getSalePrice() 
    {
        return salePrice;
    }
    public void setBuyNum(Long buyNum) 
    {
        this.buyNum = buyNum;
    }

    public Long getBuyNum() 
    {
        return buyNum;
    }
    public void setOrderTotalMoney(BigDecimal orderTotalMoney) 
    {
        this.orderTotalMoney = orderTotalMoney;
    }

    public BigDecimal getOrderTotalMoney() 
    {
        return orderTotalMoney;
    }
    public void setPreMoney(BigDecimal preMoney) 
    {
        this.preMoney = preMoney;
    }

    public BigDecimal getPreMoney() 
    {
        return preMoney;
    }
    public void setPayProductMoney(BigDecimal payProductMoney) 
    {
        this.payProductMoney = payProductMoney;
    }

    public BigDecimal getPayProductMoney() 
    {
        return payProductMoney;
    }
    public void setCouponMoney(BigDecimal couponMoney) 
    {
        this.couponMoney = couponMoney;
    }

    public BigDecimal getCouponMoney() 
    {
        return couponMoney;
    }
    public void setPayMoney(BigDecimal payMoney) 
    {
        this.payMoney = payMoney;
    }

    public BigDecimal getPayMoney() 
    {
        return payMoney;
    }
    public void setShopMoney(BigDecimal shopMoney) 
    {
        this.shopMoney = shopMoney;
    }

    public BigDecimal getShopMoney() 
    {
        return shopMoney;
    }
    public void setGoodsAttr(String goodsAttr) 
    {
        this.goodsAttr = goodsAttr;
    }

    public String getGoodsAttr() 
    {
        return goodsAttr;
    }
    public void setSkuCode(String skuCode) 
    {
        this.skuCode = skuCode;
    }

    public String getSkuCode() 
    {
        return skuCode;
    }
    public void setCommentStatus(String commentStatus) 
    {
        this.commentStatus = commentStatus;
    }

    public String getCommentStatus() 
    {
        return commentStatus;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDeliveryType(String deliveryType) 
    {
        this.deliveryType = deliveryType;
    }

    public String getDeliveryType() 
    {
        return deliveryType;
    }
    public void setPostagePrice(BigDecimal postagePrice) 
    {
        this.postagePrice = postagePrice;
    }

    public BigDecimal getPostagePrice() 
    {
        return postagePrice;
    }
    public void setInvoiceType(String invoiceType) 
    {
        this.invoiceType = invoiceType;
    }

    public String getInvoiceType() 
    {
        return invoiceType;
    }
    public void setInvoiceStatus(String invoiceStatus) 
    {
        this.invoiceStatus = invoiceStatus;
    }

    public String getInvoiceStatus() 
    {
        return invoiceStatus;
    }
    public void setBuyerMsg(String buyerMsg) 
    {
        this.buyerMsg = buyerMsg;
    }

    public String getBuyerMsg() 
    {
        return buyerMsg;
    }
    public void setSupplierId(Long supplierId) 
    {
        this.supplierId = supplierId;
    }

    public Long getSupplierId() 
    {
        return supplierId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("orderItemId", getOrderItemId())
            .append("orderItemNo", getOrderItemNo())
            .append("orderId", getOrderId())
            .append("payOrderNo", getPayOrderNo())
            .append("customerId", getCustomerId())
            .append("productId", getProductId())
            .append("goodsId", getGoodsId())
            .append("firstCategoryId", getFirstCategoryId())
            .append("secondCategoryId", getSecondCategoryId())
            .append("thirdCategoryId", getThirdCategoryId())
            .append("productName", getProductName())
            .append("productImg", getProductImg())
            .append("costPrice", getCostPrice())
            .append("salePrice", getSalePrice())
            .append("buyNum", getBuyNum())
            .append("orderTotalMoney", getOrderTotalMoney())
            .append("preMoney", getPreMoney())
            .append("payProductMoney", getPayProductMoney())
            .append("couponMoney", getCouponMoney())
            .append("payMoney", getPayMoney())
            .append("shopMoney", getShopMoney())
            .append("goodsAttr", getGoodsAttr())
            .append("skuCode", getSkuCode())
            .append("commentStatus", getCommentStatus())
            .append("status", getStatus())
            .append("deliveryType", getDeliveryType())
            .append("postagePrice", getPostagePrice())
            .append("invoiceType", getInvoiceType())
            .append("invoiceStatus", getInvoiceStatus())
            .append("buyerMsg", getBuyerMsg())
            .append("supplierId", getSupplierId())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
