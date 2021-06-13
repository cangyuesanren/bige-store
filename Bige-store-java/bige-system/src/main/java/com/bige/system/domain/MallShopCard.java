package com.bige.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 购物卡对象 mall_shop_card
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallShopCard extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 购物卡Id */
    private Long shopId;

    /** 批次号 */
    @Excel(name = "批次号")
    private String batchNo;

    /** 兑换码 */
    @Excel(name = "兑换码")
    private String shopNo;

    /** 面值 */
    @Excel(name = "面值")
    private BigDecimal shopValue;

    /** 卡背景图 */
    @Excel(name = "卡背景图")
    private String cardImg;

    /** 开始兑换时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始兑换时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startExchangeTime;

    /** 结束兑换时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束兑换时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endExchangeTime;

    /** 开始使用时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始使用时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startUseTime;

    /** 结束使用时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束使用时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endUseTime;

    /** 状态 1：未开始， 2：待兑换 3：已过期 */
    @Excel(name = "状态 1：未开始， 2：待兑换 3：已过期")
    private String status;

    /** 发放数量 */
    @Excel(name = "发放数量")
    private Long totalNum;

    /** 剩余数量 */
    @Excel(name = "剩余数量")
    private Long shopNum;

    public void setShopId(Long shopId) 
    {
        this.shopId = shopId;
    }

    public Long getShopId() 
    {
        return shopId;
    }
    public void setBatchNo(String batchNo) 
    {
        this.batchNo = batchNo;
    }

    public String getBatchNo() 
    {
        return batchNo;
    }
    public void setShopNo(String shopNo) 
    {
        this.shopNo = shopNo;
    }

    public String getShopNo() 
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
    public void setCardImg(String cardImg) 
    {
        this.cardImg = cardImg;
    }

    public String getCardImg() 
    {
        return cardImg;
    }
    public void setStartExchangeTime(Date startExchangeTime) 
    {
        this.startExchangeTime = startExchangeTime;
    }

    public Date getStartExchangeTime() 
    {
        return startExchangeTime;
    }
    public void setEndExchangeTime(Date endExchangeTime) 
    {
        this.endExchangeTime = endExchangeTime;
    }

    public Date getEndExchangeTime() 
    {
        return endExchangeTime;
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
    public void setTotalNum(Long totalNum) 
    {
        this.totalNum = totalNum;
    }

    public Long getTotalNum() 
    {
        return totalNum;
    }
    public void setShopNum(Long shopNum) 
    {
        this.shopNum = shopNum;
    }

    public Long getShopNum() 
    {
        return shopNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("shopId", getShopId())
            .append("batchNo", getBatchNo())
            .append("shopNo", getShopNo())
            .append("shopValue", getShopValue())
            .append("cardImg", getCardImg())
            .append("startExchangeTime", getStartExchangeTime())
            .append("endExchangeTime", getEndExchangeTime())
            .append("startUseTime", getStartUseTime())
            .append("endUseTime", getEndUseTime())
            .append("status", getStatus())
            .append("totalNum", getTotalNum())
            .append("shopNum", getShopNum())
            .append("createTime", getCreateTime())
            .toString();
    }
}
