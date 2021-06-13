package com.bige.web.controller.mall;

import java.util.List;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.bige.common.annotation.Log;
import com.bige.common.core.controller.BaseController;
import com.bige.common.core.domain.AjaxResult;
import com.bige.common.enums.BusinessType;
import com.bige.system.domain.MallProduct;
import com.bige.system.service.IMallProductService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品信息")
@RestController
@RequestMapping("/mall/product")
public class MallProductController extends BaseController
{
    @Autowired
    private IMallProductService mallProductService;

    /**
     * 查询商品列表
     */
    @ApiOperation(value = "查询商品列表")
    @PreAuthorize("@ss.hasPermi('mall:product:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallProduct mallProduct)
    {
        startPage();
        List<MallProduct> list = mallProductService.selectMallProductList(mallProduct);
        return getDataTable(list);
    }

    /**
     * 导出商品列表
     */
    @ApiOperation(value = "导出商品列表")
    @PreAuthorize("@ss.hasPermi('mall:product:export')")
    @Log(title = "商品", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallProduct mallProduct)
    {
        List<MallProduct> list = mallProductService.selectMallProductList(mallProduct);
        ExcelUtil<MallProduct> util = new ExcelUtil<MallProduct>(MallProduct.class);
        return util.exportExcel(list, "商品数据");
    }

    /**
     * 获取商品详细信息
     */
    @ApiOperation(value = "获取商品详细信息")
    @PreAuthorize("@ss.hasPermi('mall:product:query')")
    @GetMapping(value = "/{productId}")
    public AjaxResult getInfo(@PathVariable("productId") Long productId)
    {
        return AjaxResult.success(mallProductService.selectMallProductById(productId));
    }

    /**
     * 新增商品
     */
    @ApiOperation(value = "新增商品")
    @PreAuthorize("@ss.hasPermi('mall:product:add')")
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
    @PreAuthorize("@ss.hasPermi('mall:product:edit')")
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
    @PreAuthorize("@ss.hasPermi('mall:product:remove')")
    @Log(title = "商品", businessType = BusinessType.DELETE)
	@DeleteMapping("/{productIds}")
    public AjaxResult remove(@PathVariable Long[] productIds)
    {
        return toAjax(mallProductService.deleteMallProductByIds(productIds));
    }
}
