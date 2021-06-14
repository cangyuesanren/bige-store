package com.bige.web.controller.domain;

import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;
import com.bige.system.domain.MallCustomer;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 前端客户对象 mall_customer
 * 
 * @author bige
 * @date 2021-06-13
 */
public class Customer extends MallCustomer
{
    private static final long serialVersionUID = 1L;

    /** 用户Id */
    private Long customerId;

    /** 微信唯一标识 */
    @Excel(name = "微信唯一标识")
    private Long openidId;

    /** 头像 */
    @Excel(name = "头像")
    private String portraitImg;

    /** 电话号码 */
    @Excel(name = "电话号码")
    private String phone;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickName;

    /** 性别（0：未知，1：男，2女） */
    @Excel(name = "性别", readConverterExp = "0=：未知，1：男，2女")
    private String sex;

    /** 用户类型（0：普通用户，1：会员用户） */
    @Excel(name = "用户类型", readConverterExp = "0=：普通用户，1：会员用户")
    private String customerType;

    /** 邮箱 */
    @Excel(name = "邮箱")
    private String email;

    /** 最后登录时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "最后登录时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lastLoginTime;

    /** 状态（0：启用，1：禁用） */
    @Excel(name = "状态", readConverterExp = "0=：启用，1：禁用")
    private String status;

    public void setCustomerId(Long customerId) 
    {
        this.customerId = customerId;
    }

    public Long getCustomerId() 
    {
        return customerId;
    }
    public void setOpenidId(Long openidId) 
    {
        this.openidId = openidId;
    }

    public Long getOpenidId() 
    {
        return openidId;
    }
    public void setPortraitImg(String portraitImg) 
    {
        this.portraitImg = portraitImg;
    }

    public String getPortraitImg() 
    {
        return portraitImg;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setNickName(String nickName) 
    {
        this.nickName = nickName;
    }

    public String getNickName() 
    {
        return nickName;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setCustomerType(String customerType) 
    {
        this.customerType = customerType;
    }

    public String getCustomerType() 
    {
        return customerType;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setLastLoginTime(Date lastLoginTime) 
    {
        this.lastLoginTime = lastLoginTime;
    }

    public Date getLastLoginTime() 
    {
        return lastLoginTime;
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
            .append("customerId", getCustomerId())
            .append("openidId", getOpenidId())
            .append("portraitImg", getPortraitImg())
            .append("phone", getPhone())
            .append("nickName", getNickName())
            .append("sex", getSex())
            .append("customerType", getCustomerType())
            .append("email", getEmail())
            .append("lastLoginTime", getLastLoginTime())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
