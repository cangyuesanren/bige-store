package com.bige.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 客户购物金对象 mall_customer_shop
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallCustomerShop extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 购物金Id */
    private Long shopId;

    /**  用户 */
    @Excel(name = " 用户")
    private Long customerId;

    /** 购物卡编号 */
    @Excel(name = "购物卡编号")
    private Long shopNo;

    /** 面值 */
    @Excel(name = "面值")
    private BigDecimal shopValue;

    /** 余额 */
    @Excel(name = "余额")
    private BigDecimal shopBalance;

    /** 开始使用时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始使用时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startUseTime;

    /** 过期时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "过期时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endUseTime;

    /** 状态 ( 1正常 2已过期 3已用完 ） */
    @Excel(name = "状态 ( 1正常 2已过期 3已用完 ）")
    private String status;

    public void setShopId(Long shopId) 
    {
        this.shopId = shopId;
    }

    public Long getShopId() 
    {
        return shopId;
    }
    public void setCustomerId(Long customerId) 
    {
        this.customerId = customerId;
    }

    public Long getCustomerId() 
    {
        return customerId;
    }
    public void setShopNo(Long shopNo) 
    {
        this.shopNo = shopNo;
    }

    public Long getShopNo() 
    {
        return shopNo;
    }
    public void setShopValue(BigDecimal shopValue) 
    {
        this.shopValue = shopValue;
    }

    public BigDecimal getShopValue() 
    {
        return shopValue;
    }
    public void setShopBalance(BigDecimal shopBalance) 
    {
        this.shopBalance = shopBalance;
    }

    public BigDecimal getShopBalance() 
    {
        return shopBalance;
    }
    public void setStartUseTime(Date startUseTime) 
    {
        this.startUseTime = startUseTime;
    }

    public Date getStartUseTime() 
    {
        return startUseTime;
    }
    public void setEndUseTime(Date endUseTime) 
    {
        this.endUseTime = endUseTime;
    }

    public Date getEndUseTime() 
    {
        return endUseTime;
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
            .append("shopId", getShopId())
            .append("customerId", getCustomerId())
            .append("shopNo", getShopNo())
            .append("shopValue", getShopValue())
            .append("shopBalance", getShopBalance())
            .append("startUseTime", getStartUseTime())
            .append("endUseTime", getEndUseTime())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .toString();
    }
}
