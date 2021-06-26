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
import com.bige.system.domain.MallCategory;
import com.bige.system.service.IMallCategoryService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 品类信息Controller
 * 
 * @author bige
 * @date 2021-06-09
 */
@Api(tags = "商品品类")
@RestController
@RequestMapping("/mall/category")
public class MallCategoryController extends BaseController
{
    @Autowired
    private IMallCategoryService mallCategoryService;

    /**
     * 查询品类信息列表
     */
    @ApiOperation(value = "查询品类信息列表")
    @PreAuthorize("@ss.hasPermi('mall:category:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallCategory mallCategory)
    {
        startPage();
        List<MallCategory> list = mallCategoryService.selectMallCategoryList(mallCategory);
        return getDataTable(list);
    }

    /**
     * 查询品类信息树形列表
     */
    @ApiOperation(value = "查询品类信息树形列表")
    @PreAuthorize("@ss.hasPermi('mall:category:list')")
    @GetMapping("/listTree")
    public AjaxResult listTree(MallCategory mallCategory)
    {
       /* System.out.println(mallCategory);*/
        List<MallCategory> list = mallCategoryService.selectMallCategoryTreeList();
        return AjaxResult.success(list);
    }

    /**
     * 导出品类信息列表
     */
    @ApiOperation(value = "导出品类信息列表")
    @PreAuthorize("@ss.hasPermi('mall:category:export')")
    @Log(title = "品类信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallCategory mallCategory)
    {
        List<MallCategory> list = mallCategoryService.selectMallCategoryList(mallCategory);
        ExcelUtil<MallCategory> util = new ExcelUtil<MallCategory>(MallCategory.class);
        return util.exportExcel(list, "品类信息数据");
    }

    /**
     * 获取品类信息详细信息
     */
    @ApiOperation(value = "获取品类信息详细信息")
    @PreAuthorize("@ss.hasPermi('mall:category:query')")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") Long categoryId)
    {
        return AjaxResult.success(mallCategoryService.selectMallCategoryById(categoryId));
    }

    /**
     * 新增品类信息
     */
    @ApiOperation(value = "新增品类信息")
    @PreAuthorize("@ss.hasPermi('mall:category:add')")
    @Log(title = "品类信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallCategory mallCategory)
    {
        return toAjax(mallCategoryService.insertMallCategory(mallCategory));
    }

    /**
     * 修改品类信息
     */
    @ApiOperation(value = "修改品类信息")
    @PreAuthorize("@ss.hasPermi('mall:category:edit')")
    @Log(title = "品类信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallCategory mallCategory)
    {
        return toAjax(mallCategoryService.updateMallCategory(mallCategory));
    }

    /**
     * 删除品类信息
     */
    @ApiOperation(value = "删除品类信息")
    @PreAuthorize("@ss.hasPermi('mall:category:remove')")
    @Log(title = "品类信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(mallCategoryService.deleteMallCategoryByIds(categoryIds));
    }
}
