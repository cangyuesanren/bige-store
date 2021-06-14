package com.bige.web.controller.app;

import com.bige.common.annotation.Log;
import com.bige.common.core.controller.BaseController;
import com.bige.common.core.domain.AjaxResult;
import com.bige.common.core.page.TableDataInfo;
import com.bige.common.enums.BusinessType;
import com.bige.system.domain.MallProduct;
import com.bige.system.service.IMallProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品信息")
@RestController
@RequestMapping("/app/product")
public class AppProductController extends BaseController
{
    @Autowired
    private IMallProductService mallProductService;

    /**
     * 查询商品列表
     */
    @ApiOperation(value = "查询商品列表")
    @GetMapping("/list")
    public TableDataInfo list(MallProduct mallProduct)
    {
        startPage();
        List<MallProduct> list = mallProductService.selectMallProductList(mallProduct);
        return getDataTable(list);
    }


    /**
     * 获取商品详细信息
     */
    @ApiOperation(value = "获取商品详细信息")
    @GetMapping(value = "/{productId}")
    public AjaxResult getInfo(@PathVariable("productId") Long productId)
    {
        return AjaxResult.success(mallProductService.selectMallProductById(productId));
    }

    /**
     * 新增商品
     */
    @ApiOperation(value = "新增商品")
    @Log(title = "商品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallProduct mallProduct)
    {
        return toAjax(mallProductService.insertMallProduct(mallProduct));
    }

    /**
     * 修改商品
     */
    @ApiOperation(value = "修改商品")
    @Log(title = "商品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallProduct mallProduct)
    {
        return toAjax(mallProductService.updateMallProduct(mallProduct));
    }

    /**
     * 删除商品
     */
    @ApiOperation(value = "删除商品")
    @Log(title = "商品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{productIds}")
    public AjaxResult remove(@PathVariable Long[] productIds)
    {
        return toAjax(mallProductService.deleteMallProductByIds(productIds));
    }
}
