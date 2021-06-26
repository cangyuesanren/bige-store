package com.bige.system.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.bige.common.annotation.Excel;
import com.bige.common.core.domain.BaseEntity;

/**
 * 商品对象 mall_product
 * 
 * @author bige
 * @date 2021-06-13
 */
public class MallProduct extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品Id */
    private Long productId;

    /** 商品名 */
    @Excel(name = "商品名")
    private String productName;

    /** 商品图组*/
    private List<MallProductImgs> productImgs;

    /** 商品sku*/
    private List<MallGoods> productGoods;

    /** 商品spu*/
    private List<MallProductStandard> productStandards;

    /** 商品品牌*/
    private String brandName;

    /** 商品标签*/
    private String labelName;

    /** 商品首图 */
    @Excel(name = "商品首图")
    private String firstImg;

    /** 品牌 */
    @Excel(name = "品牌")
    private Long brandId;

    /** 标签 */
    @Excel(name = "标签")
    private Long labelId;

    /** 邮费模板 */
    @Excel(name = "邮费模板")
    private Long templateId;

    /** 一级品类 */
    @Excel(name = "一级品类")
    private Long firstCategoryId;

    /** 二级品类 */
    @Excel(name = "二级品类")
    private Long secondCategoryId;

    /** 三级品类 */
    @Excel(name = "三级品类")
    private Long thirdCategoryId;

    /** 供应商 */
    @Excel(name = "供应商")
    private Long supplierId;

    /** 真实销量 */
    @Excel(name = "真实销量")
    private Long saleNum;

    /** 虚拟销量 */
    @Excel(name = "虚拟销量")
    private Long virtualNum;

    /** 视频链接 */
    @Excel(name = "视频链接")
    private String productVideo;

    /** 库存 */
    @Excel(name = "库存")
    private Long totalNum;

    /** 商品价格 */
    @Excel(name = "商品价格")
    private BigDecimal salePrice;

    /** 划线价 */
    @Excel(name = "划线价")
    private BigDecimal linePrice;

    /** 发货地 */
    @Excel(name = "发货地")
    private String origin;

    /** 邮费类型 0:包邮，1：自费 */
    @Excel(name = "邮费类型 0:包邮，1：自费")
    private String postage;

    /** 状态 0上架 1下架 */
    @Excel(name = "状态 0上架 1下架")
    private String status;

    /** 审核状态 0审核中 1通过 2不通过 */
    @Excel(name = "审核状态 0审核中 1通过 2不通过")
    private String auditStatus;

    /** 发票  0：可开，1：不可开 */
    @Excel(name = "发票  0：可开，1：不可开")
    private String invoiceStatus;

    /** 详情 */
    @Excel(name = "详情")
    private String productDetails;

    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }
    public void setFirstImg(String firstImg) 
    {
        this.firstImg = firstImg;
    }

    public String getFirstImg() 
    {
        return firstImg;
    }
    public void setBrandId(Long brandId) 
    {
        this.brandId = brandId;
    }

    public Long getBrandId() 
    {
        return brandId;
    }
    public void setLabelId(Long labelId) 
    {
        this.labelId = labelId;
    }

    public Long getLabelId() 
    {
        return labelId;
    }
    public void setTemplateId(Long templateId) 
    {
        this.templateId = templateId;
    }

    public Long getTemplateId() 
    {
        return templateId;
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
    public void setSupplierId(Long supplierId) 
    {
        this.supplierId = supplierId;
    }

    public Long getSupplierId() 
    {
        return supplierId;
    }
    public void setSaleNum(Long saleNum) 
    {
        this.saleNum = saleNum;
    }

    public Long getSaleNum() 
    {
        return saleNum;
    }
    public void setVirtualNum(Long virtualNum) 
    {
        this.virtualNum = virtualNum;
    }

    public Long getVirtualNum() 
    {
        return virtualNum;
    }
    public void setProductVideo(String productVideo) 
    {
        this.productVideo = productVideo;
    }

    public String getProductVideo() 
    {
        return productVideo;
    }
    public void setTotalNum(Long totalNum) 
    {
        this.totalNum = totalNum;
    }

    public Long getTotalNum() 
    {
        return totalNum;
    }
    public void setSalePrice(BigDecimal salePrice) 
    {
        this.salePrice = salePrice;
    }

    public BigDecimal getSalePrice() 
    {
        return salePrice;
    }
    public void setLinePrice(BigDecimal linePrice) 
    {
        this.linePrice = linePrice;
    }

    public BigDecimal getLinePrice() 
    {
        return linePrice;
    }
    public void setOrigin(String origin) 
    {
        this.origin = origin;
    }

    public String getOrigin() 
    {
        return origin;
    }
    public void setPostage(String postage) 
    {
        this.postage = postage;
    }

    public String getPostage() 
    {
        return postage;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setAuditStatus(String auditStatus) 
    {
        this.auditStatus = auditStatus;
    }

    public String getAuditStatus() 
    {
        return auditStatus;
    }
    public void setInvoiceStatus(String invoiceStatus) 
    {
        this.invoiceStatus = invoiceStatus;
    }

    public String getInvoiceStatus() 
    {
        return invoiceStatus;
    }
    public List<MallProductImgs> getProductImgs() {
        return productImgs;
    }

    public void setProductImgs(List<MallProductImgs> productImgs) {
        this.productImgs = productImgs;
    }

    public List<MallGoods> getProductGoods() {
        return productGoods;
    }

    public void setProductGoods(List<MallGoods> productGoods) {
        this.productGoods = productGoods;
    }

    public List<MallProductStandard> getProductStandards() {
        return productStandards;
    }

    public void setProductStandards(List<MallProductStandard> productStandards) {
        this.productStandards = productStandards;
    }

    public String getProductDetails() {
        return productDetails;
    }

    public void setProductDetails(String productDetails) {
        this.productDetails = productDetails;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getLabelName() {
        return labelName;
    }

    public void setLabelName(String labelName) {
        this.labelName = labelName;
    }

    @Override
    public String toString() {
        return "MallProduct{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productImgs=" + productImgs +
                ", productGoods=" + productGoods +
                ", productStandards=" + productStandards +
                ", brandName='" + brandName + '\'' +
                ", labelName='" + labelName + '\'' +
                ", firstImg='" + firstImg + '\'' +
                ", brandId=" + brandId +
                ", labelId=" + labelId +
                ", templateId=" + templateId +
                ", firstCategoryId=" + firstCategoryId +
                ", secondCategoryId=" + secondCategoryId +
                ", thirdCategoryId=" + thirdCategoryId +
                ", supplierId=" + supplierId +
                ", saleNum=" + saleNum +
                ", virtualNum=" + virtualNum +
                ", productVideo='" + productVideo + '\'' +
                ", totalNum=" + totalNum +
                ", salePrice=" + salePrice +
                ", linePrice=" + linePrice +
                ", origin='" + origin + '\'' +
                ", postage='" + postage + '\'' +
                ", status='" + status + '\'' +
                ", auditStatus='" + auditStatus + '\'' +
                ", invoiceStatus='" + invoiceStatus + '\'' +
                ", productDetails='" + productDetails + '\'' +
                '}';
    }
}
