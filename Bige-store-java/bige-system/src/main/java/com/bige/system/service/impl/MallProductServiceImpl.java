package com.bige.system.service.impl;

import java.math.BigDecimal;
import java.util.List;

import com.bige.common.exception.BaseException;
import com.bige.common.utils.DateUtils;
import com.bige.common.utils.StringUtils;
import com.bige.system.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bige.system.mapper.MallProductMapper;
import com.bige.system.service.IMallProductService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 商品Service业务层处理
 * 
 * @author bige
 * @date 2021-06-13
 */
@Service
public class MallProductServiceImpl implements IMallProductService
{
    @Autowired
    private MallProductMapper mallProductMapper;

    @Autowired
    private MallProductImgsServiceImpl mallProductImgsService;

    @Autowired
    private MallProductStandardServiceImpl mallProductStandardService;

    @Autowired
    private MallGoodsServiceImpl mallGoodsService;

    @Autowired
    private MallProductDetailsServiceImpl mallProductDetailsService;

    /**
     * 查询商品
     * 
     * @param productId 商品ID
     * @return 商品
     */
    @Override
    public MallProduct selectMallProductById(Long productId)
    {
        MallProduct  mallProduct = mallProductMapper.selectMallProductById(productId);

        //获取商品图
        MallProductImgs productImgs = new MallProductImgs();
        productImgs.setProductId(productId);
        List<MallProductImgs > productImgsList = mallProductImgsService.selectMallProductImgsList(productImgs);
        mallProduct.setProductImgs(productImgsList);

        //获取商品规格
        MallProductStandard productStandard = new MallProductStandard();
        productStandard.setProductId(productId);
        System.out.println(productStandard);
        List<MallProductStandard> standardList = mallProductStandardService.selectMallProductStandardList(productStandard);
        mallProduct.setProductStandards(standardList);

        //获取商品属性
        MallGoods mallGoods = new MallGoods();
        mallGoods.setProductId(productId);
        List<MallGoods> goodsList = mallGoodsService.selectMallGoodsList(mallGoods);
        mallProduct.setProductGoods(goodsList);

        /*MallProductDetails mallProductDetails = new MallProductDetails();
        mallProductDetails.setProductId(productId);
        List<MallProductDetails> productDetailsList = mallProductDetailsService.selectMallProductDetailsList(mallProductDetails);
        mallProduct.setProductDetails(productDetailsList.get(0).getProductDetails());*/
        MallProductDetails mallProductDetails = mallProductDetailsService.selectMallProductDetailsById(productId);
        mallProduct.setProductDetails(mallProductDetails.getProductDetails());

        return mallProduct;
    }

    /**
     * 查询商品列表
     * 
     * @param mallProduct 商品
     * @return 商品
     */
    @Override
    public List<MallProduct> selectMallProductList(MallProduct mallProduct)
    {
        
        return mallProductMapper.selectMallProductList(mallProduct);
    }

    /**
     * 新增商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int insertMallProduct(MallProduct mallProduct)
    {
        BigDecimal linePrice = null;
        BigDecimal salePrice = null;
        List<MallProductImgs> productimgs = mallProduct.getProductImgs();
        if(productimgs.size()>0 && !StringUtils.isEmpty(productimgs.get(0).getProductImg())){
            mallProduct.setFirstImg(productimgs.get(0).getProductImg());
        }else {
            throw new BaseException("请上传商品首图");
        }
        List<MallProductStandard> standards = mallProduct.getProductStandards();

        List<MallGoods> goodsList = mallProduct.getProductGoods();
        for (MallGoods mallGoods: goodsList){
            //if (mallGoods.getLinePrice().)
            System.out.println(mallGoods.getLinePrice());
            if (null == mallGoods.getSalePrice()){
                throw new BaseException("请输入售价");
            }else {
                if (null == salePrice || salePrice.compareTo(mallGoods.getSalePrice()) == 1){
                    salePrice = mallGoods.getSalePrice();
                }
            }
            if(null == mallGoods.getLinePrice()){
                if (linePrice == null||linePrice.compareTo(mallGoods.getLinePrice()) == 1){
                    linePrice = mallGoods.getLinePrice();
                }
            }
        }
        mallProduct.setSalePrice(salePrice);
        mallProduct.setLinePrice(linePrice);
        /*if (goodsList.size()>0&&goodsList.get(0).getCostPrice()!=null){
            mallProduct.setSalePrice(goodsList.get(0).getCostPrice());
        }*/



        //保存主商品
        mallProduct.setCreateTime(DateUtils.getNowDate());
        int pInt =  mallProductMapper.insertMallProduct(mallProduct);

        for (MallProductImgs mallProductImgs: productimgs) {
            if(StringUtils.isEmpty(mallProductImgs.getProductImg())){
                mallProductImgs.setProductId(mallProduct.getProductId());
                mallProductImgsService.insertMallProductImgs(mallProductImgs);
            }
        }

        for (MallProductStandard mallProductStandard:standards) {
            mallProductStandard.setProductId(mallProduct.getProductId());
            mallProductStandardService.insertMallProductStandard(mallProductStandard);
        }

        for (MallGoods mallGoods: goodsList){
            mallGoods.setProductId(mallProduct.getProductId());
            mallGoodsService.insertMallGoods(mallGoods);
        }
        MallProductDetails productDetails = new MallProductDetails();
        productDetails.setProductId(mallProduct.getProductId());
        productDetails.setProductDetails(mallProduct.getProductDetails());
        mallProductDetailsService.insertMallProductDetails(productDetails);
        return pInt;

    }

    /**
     * 修改商品
     * 
     * @param mallProduct 商品
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int updateMallProduct(MallProduct mallProduct)
    {
        BigDecimal linePrice = null;
        BigDecimal salePrice = null;
        List<MallProductImgs> productimgs = mallProduct.getProductImgs();
        if(productimgs.size()>0 && !StringUtils.isEmpty(productimgs.get(0).getProductImg())){
            mallProduct.setFirstImg(productimgs.get(0).getProductImg());
        }else {
            throw new BaseException("请上传商品首图");
        }

        List<MallProductStandard> standards = mallProduct.getProductStandards();

        List<MallGoods> goodsList = mallProduct.getProductGoods();
        for (MallGoods mallGoods: goodsList){
            //if (mallGoods.getLinePrice().)
            System.out.println(mallGoods.getLinePrice());
            if (null == mallGoods.getSalePrice()){
                throw new BaseException("请输入售价");
            }else {
                if (null == salePrice || salePrice.compareTo(mallGoods.getSalePrice()) == 1){
                    salePrice = mallGoods.getSalePrice();
                }
            }
            if(null != mallGoods.getLinePrice()){
                if (linePrice == null || linePrice.compareTo(mallGoods.getLinePrice()) == 1){
                    linePrice = mallGoods.getLinePrice();
                }
            }
        }

        mallProduct.setLinePrice(linePrice);
        mallProduct.setSalePrice(salePrice);

        mallProduct.setUpdateTime(DateUtils.getNowDate());
        int mInt = mallProductMapper.updateMallProduct(mallProduct);
        MallProductDetails productDetails = new MallProductDetails();
        productDetails.setProductId(mallProduct.getProductId());
        productDetails.setProductDetails(mallProduct.getProductDetails());
        mallProductDetailsService.updateMallProductDetails(productDetails);

        /** 修改商品图*/
        mallProductImgsService.deleteMallProductImgsByProductId(mallProduct.getProductId());
        for (MallProductImgs mallProductImg : productimgs){
            if(!StringUtils.isEmpty(mallProductImg.getProductImg())){
                mallProductImg.setProductId(mallProduct.getProductId());
                mallProductImgsService.insertMallProductImgs(mallProductImg);
            }
        }
        
        mallProductStandardService.deleteMallProductStandardByProductId(mallProduct.getProductId());
        for (MallProductStandard mallProductStandard: standards){
            mallProductStandard.setProductId(mallProduct.getProductId());
            mallProductStandardService.insertMallProductStandard(mallProductStandard);
        }

        mallGoodsService.deleteMallGoodsByProductId(mallProduct.getProductId());
        for (MallGoods mallGoods : goodsList){
            mallGoods.setProductId(mallProduct.getProductId());
            mallGoodsService.insertMallGoods(mallGoods);
        }

        return mInt;
    }

    /**
     * 批量删除商品
     * 
     * @param productIds 需要删除的商品ID
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int deleteMallProductByIds(Long[] productIds)
    {
        //return mallProductMapper.deleteMallProductByIds(productIds);
        int delInt = 0;
        for (Long productId: productIds){
            delInt += deleteMallProductById(productId);
        }
        return delInt;
    }

    /**
     * 删除商品信息
     * 
     * @param productId 商品ID
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int deleteMallProductById(Long productId)
    {
        mallProductDetailsService.deleteMallProductDetailsById(productId);
        mallProductStandardService.deleteMallProductStandardByProductId(productId);
        mallGoodsService.deleteMallGoodsByProductId(productId);
        mallProductImgsService.deleteMallProductImgsByProductId(productId);


        int delInt = mallProductMapper.deleteMallProductById(productId);
        return delInt;

    }
}
