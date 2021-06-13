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
import com.bige.system.domain.MallProductStandard;
import com.bige.system.service.IMallProductStandardService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品规格Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品spu")
@RestController
@RequestMapping("/mall/product/standard")
public class MallProductStandardController extends BaseController
{
    @Autowired
    private IMallProductStandardService mallProductStandardService;

    /**
     * 查询商品规格列表
     */
    @ApiOperation(value = "查询商品规格列表")
    @PreAuthorize("@ss.hasPermi('mall:standard:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallProductStandard mallProductStandard)
    {
        startPage();
        List<MallProductStandard> list = mallProductStandardService.selectMallProductStandardList(mallProductStandard);
        return getDataTable(list);
    }

    /**
     * 导出商品规格列表
     */
    @ApiOperation(value = "导出商品规格列表")
    @PreAuthorize("@ss.hasPermi('mall:standard:export')")
    @Log(title = "商品规格", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallProductStandard mallProductStandard)
    {
        List<MallProductStandard> list = mallProductStandardService.selectMallProductStandardList(mallProductStandard);
        ExcelUtil<MallProductStandard> util = new ExcelUtil<MallProductStandard>(MallProductStandard.class);
        return util.exportExcel(list, "商品规格数据");
    }

    /**
     * 获取商品规格详细信息
     */
    @ApiOperation(value = "获取商品规格详细信息")
    @PreAuthorize("@ss.hasPermi('mall:standard:query')")
    @GetMapping(value = "/{productId}")
    public AjaxResult getInfo(@PathVariable("productId") Long productId)
    {
        return AjaxResult.success(mallProductStandardService.selectMallProductStandardById(productId));
    }

    /**
     * 新增商品规格
     */
    @ApiOperation(value = "新增商品规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:add')")
    @Log(title = "商品规格", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallProductStandard mallProductStandard)
    {
        return toAjax(mallProductStandardService.insertMallProductStandard(mallProductStandard));
    }

    /**
     * 修改商品规格
     */
    @ApiOperation(value = "修改商品规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:edit')")
    @Log(title = "商品规格", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallProductStandard mallProductStandard)
    {
        return toAjax(mallProductStandardService.updateMallProductStandard(mallProductStandard));
    }

    /**
     * 删除商品规格
     */
    @ApiOperation(value = "删除商品规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:remove')")
    @Log(title = "商品规格", businessType = BusinessType.DELETE)
	@DeleteMapping("/{productIds}")
    public AjaxResult remove(@PathVariable Long[] productIds)
    {
        return toAjax(mallProductStandardService.deleteMallProductStandardByIds(productIds));
    }
}
