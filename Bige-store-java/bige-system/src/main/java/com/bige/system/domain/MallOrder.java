package com.bige.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品订单对象 mall_order
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单Id */
    private Long orderId;

    /** 订单名 */
    @Excel(name = "订单名")
    private String orderName;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private String orderNo;

    /** 支付订单号 */
    @Excel(name = "支付订单号")
    private String payOrderNo;

    /** 客户 */
    @Excel(name = "客户")
    private Long customerId;

    /** 订单总金额 */
    @Excel(name = "订单总金额")
    private BigDecimal orderTotalMoney;

    /** 购物金 */
    @Excel(name = "购物金")
    private BigDecimal shopMoney;

    /** 优惠金 */
    @Excel(name = "优惠金")
    private BigDecimal preMoney;

    /** 商品应付金额 */
    @Excel(name = "商品应付金额")
    private BigDecimal payProductMoney;

    /** 优惠券金 */
    @Excel(name = "优惠券金")
    private BigDecimal couponMoney;

    /** 实付金额 */
    @Excel(name = "实付金额")
    private BigDecimal payMoney;

    /** 收货人 */
    @Excel(name = "收货人")
    private String buyerName;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String buyerPhone;

    /** 收货地址 */
    @Excel(name = "收货地址")
    private String buyerAddress;

    /** 状态（ 0:待付款 1：待发货，2：待收货，3：已完成，4，退货/售后，5：用户取消支付 6：超时取消支付 ) */
    @Excel(name = "状态", readConverterExp = "状态（ 0:待付款 1：待发货，2：待收货，3：已完成，4，退货/售后，5：用户取消支付 6：超时取消支付 )")
    private String status;

    /** 活动状态（0：普通单，1：年会商品订单） */
    @Excel(name = "活动状态", readConverterExp = "0=：普通单，1：年会商品订单")
    private String acStatus;

    /** 支付状态：0:未支付，1：已支付 */
    @Excel(name = "支付状态：0:未支付，1：已支付")
    private String payStatus;

    /** 邮费 */
    @Excel(name = "邮费")
    private BigDecimal postagePrice;

    public void setOrderId(Long orderId) 
    {
        this.orderId = orderId;
    }

    public Long getOrderId() 
    {
        return orderId;
    }
    public void setOrderName(String orderName) 
    {
        this.orderName = orderName;
    }

    public String getOrderName() 
    {
        return orderName;
    }
    public void setOrderNo(String orderNo) 
    {
        this.orderNo = orderNo;
    }

    public String getOrderNo() 
    {
        return orderNo;
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
    public void setOrderTotalMoney(BigDecimal orderTotalMoney) 
    {
        this.orderTotalMoney = orderTotalMoney;
    }

    public BigDecimal getOrderTotalMoney() 
    {
        return orderTotalMoney;
    }
    public void setShopMoney(BigDecimal shopMoney) 
    {
        this.shopMoney = shopMoney;
    }

    public BigDecimal getShopMoney() 
    {
        return shopMoney;
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
    public void setBuyerName(String buyerName) 
    {
        this.buyerName = buyerName;
    }

    public String getBuyerName() 
    {
        return buyerName;
    }
    public void setBuyerPhone(String buyerPhone) 
    {
        this.buyerPhone = buyerPhone;
    }

    public String getBuyerPhone() 
    {
        return buyerPhone;
    }
    public void setBuyerAddress(String buyerAddress) 
    {
        this.buyerAddress = buyerAddress;
    }

    public String getBuyerAddress() 
    {
        return buyerAddress;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setAcStatus(String acStatus) 
    {
        this.acStatus = acStatus;
    }

    public String getAcStatus() 
    {
        return acStatus;
    }
    public void setPayStatus(String payStatus) 
    {
        this.payStatus = payStatus;
    }

    public String getPayStatus() 
    {
        return payStatus;
    }
    public void setPostagePrice(BigDecimal postagePrice) 
    {
        this.postagePrice = postagePrice;
    }

    public BigDecimal getPostagePrice() 
    {
        return postagePrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("orderId", getOrderId())
            .append("orderName", getOrderName())
            .append("orderNo", getOrderNo())
            .append("payOrderNo", getPayOrderNo())
            .append("customerId", getCustomerId())
            .append("orderTotalMoney", getOrderTotalMoney())
            .append("shopMoney", getShopMoney())
            .append("preMoney", getPreMoney())
            .append("payProductMoney", getPayProductMoney())
            .append("couponMoney", getCouponMoney())
            .append("payMoney", getPayMoney())
            .append("buyerName", getBuyerName())
            .append("buyerPhone", getBuyerPhone())
            .append("buyerAddress", getBuyerAddress())
            .append("status", getStatus())
            .append("acStatus", getAcStatus())
            .append("payStatus", getPayStatus())
            .append("postagePrice", getPostagePrice())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
