package com.bige.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品标签对象 mall_label
 *
 * @author bige
 * @date 2021-06-12
 */
public class MallLabel extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long labelId;

    /** 标签名 */
    @Excel(name = "标签名")
    private String labelName;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    public void setLabelId(Long labelId)
    {
        this.labelId = labelId;
    }

    public Long getLabelId()
    {
        return labelId;
    }
    public void setLabelName(String labelName)
    {
        this.labelName = labelName;
    }

    public String getLabelName()
    {
        return labelName;
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
                .append("labelId", getLabelId())
                .append("labelName", getLabelName())
                .append("status", getStatus())
                .append("createBy", getCreateBy())
                .append("updateTime", getUpdateTime())
                .append("updateBy", getUpdateBy())
                .append("createTime", getCreateTime())
                .toString();
    }
}