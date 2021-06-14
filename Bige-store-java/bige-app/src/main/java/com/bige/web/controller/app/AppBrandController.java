package com.bige.web.controller.app;

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
import com.bige.system.domain.MallBrand;
import com.bige.system.service.IMallBrandService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 品牌Controller
 * 
 * @author bige
 * @date 2021-06-09
 */
@Api(tags = "商品品牌")
@RestController
@RequestMapping("/app/brand")
public class AppBrandController extends BaseController
{
    @Autowired
    private IMallBrandService mallBrandService;

    /**
     * 查询品牌列表
     */
    @ApiOperation(value = "查询品牌列表")
    @PreAuthorize("@ss.hasPermi('mall:brand:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallBrand mallBrand)
    {
        startPage();
        List<MallBrand> list = mallBrandService.selectMallBrandList(mallBrand);
        return getDataTable(list);
    }

    /**
     * 导出品牌列表
     */
    @ApiOperation(value = "导出品牌列表")
    @PreAuthorize("@ss.hasPermi('mall:brand:export')")
    @Log(title = "品牌", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallBrand mallBrand)
    {
        List<MallBrand> list = mallBrandService.selectMallBrandList(mallBrand);
        ExcelUtil<MallBrand> util = new ExcelUtil<MallBrand>(MallBrand.class);
        return util.exportExcel(list, "品牌数据");
    }

    /**
     * 获取品牌详细信息
     */
    @ApiOperation(value = "获取品牌详细信息")
    @PreAuthorize("@ss.hasPermi('mall:brand:query')")
    @GetMapping(value = "/{brandId}")
    public AjaxResult getInfo(@PathVariable("brandId") Long brandId)
    {
        return AjaxResult.success(mallBrandService.selectMallBrandById(brandId));
    }

    /**
     * 新增品牌
     */
    @ApiOperation(value = "新增品牌")
    @PreAuthorize("@ss.hasPermi('mall:brand:add')")
    @Log(title = "品牌", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallBrand mallBrand)
    {
        return toAjax(mallBrandService.insertMallBrand(mallBrand));
    }

    /**
     * 修改品牌
     */
    @ApiOperation(value = "修改品牌")
    @PreAuthorize("@ss.hasPermi('mall:brand:edit')")
    @Log(title = "品牌", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallBrand mallBrand)
    {
        return toAjax(mallBrandService.updateMallBrand(mallBrand));
    }

    /**
     * 删除品牌
     */
    @ApiOperation(value = "删除品牌")
    @PreAuthorize("@ss.hasPermi('mall:brand:remove')")
    @Log(title = "品牌", businessType = BusinessType.DELETE)
	@DeleteMapping("/{brandIds}")
    public AjaxResult remove(@PathVariable Long[] brandIds)
    {
        return toAjax(mallBrandService.deleteMallBrandByIds(brandIds));
    }
}
