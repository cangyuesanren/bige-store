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
import com.bige.system.domain.MallProductImgs;
import com.bige.system.service.IMallProductImgsService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品图Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品图")
@RestController
@RequestMapping("/mall/imgs")
public class MallProductImgsController extends BaseController
{
    @Autowired
    private IMallProductImgsService mallProductImgsService;

    /**
     * 查询商品图列表
     */
    @ApiOperation(value = "查询商品图列表")
    @PreAuthorize("@ss.hasPermi('mall:imgs:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallProductImgs mallProductImgs)
    {
        startPage();
        List<MallProductImgs> list = mallProductImgsService.selectMallProductImgsList(mallProductImgs);
        return getDataTable(list);
    }

    /**
     * 导出商品图列表
     */
    @ApiOperation(value = "导出商品图列表")
    @PreAuthorize("@ss.hasPermi('mall:imgs:export')")
    @Log(title = "商品图", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallProductImgs mallProductImgs)
    {
        List<MallProductImgs> list = mallProductImgsService.selectMallProductImgsList(mallProductImgs);
        ExcelUtil<MallProductImgs> util = new ExcelUtil<MallProductImgs>(MallProductImgs.class);
        return util.exportExcel(list, "商品图数据");
    }

    /**
     * 获取商品图详细信息
     */
    @ApiOperation(value = "获取商品图详细信息")
    @PreAuthorize("@ss.hasPermi('mall:imgs:query')")
    @GetMapping(value = "/{productImgId}")
    public AjaxResult getInfo(@PathVariable("productImgId") Long productImgId)
    {
        return AjaxResult.success(mallProductImgsService.selectMallProductImgsById(productImgId));
    }

    /**
     * 新增商品图
     */
    @ApiOperation(value = "新增商品图")
    @PreAuthorize("@ss.hasPermi('mall:imgs:add')")
    @Log(title = "商品图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallProductImgs mallProductImgs)
    {
        return toAjax(mallProductImgsService.insertMallProductImgs(mallProductImgs));
    }

    /**
     * 修改商品图
     */
    @ApiOperation(value = "修改商品图")
    @PreAuthorize("@ss.hasPermi('mall:imgs:edit')")
    @Log(title = "商品图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallProductImgs mallProductImgs)
    {
        return toAjax(mallProductImgsService.updateMallProductImgs(mallProductImgs));
    }

    /**
     * 删除商品图
     */
    @ApiOperation(value = "删除商品图")
    @PreAuthorize("@ss.hasPermi('mall:imgs:remove')")
    @Log(title = "商品图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{productImgIds}")
    public AjaxResult remove(@PathVariable Long[] productImgIds)
    {
        return toAjax(mallProductImgsService.deleteMallProductImgsByIds(productImgIds));
    }
}
