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
import com.bige.system.domain.MallGoods;
import com.bige.system.service.IMallGoodsService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品skuController
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品spu")
@RestController
@RequestMapping("/mall/goods")
public class MallGoodsController extends BaseController
{
    @Autowired
    private IMallGoodsService mallGoodsService;

    /**
     * 查询商品sku列表
     */
    @ApiOperation(value = "查询商品sku列表")
    @PreAuthorize("@ss.hasPermi('mall:goods:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallGoods mallGoods)
    {
        startPage();
        List<MallGoods> list = mallGoodsService.selectMallGoodsList(mallGoods);
        return getDataTable(list);
    }

    /**
     * 导出商品sku列表
     */
    @ApiOperation(value = "导出商品sku列表")
    @PreAuthorize("@ss.hasPermi('mall:goods:export')")
    @Log(title = "商品sku", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallGoods mallGoods)
    {
        List<MallGoods> list = mallGoodsService.selectMallGoodsList(mallGoods);
        ExcelUtil<MallGoods> util = new ExcelUtil<MallGoods>(MallGoods.class);
        return util.exportExcel(list, "商品sku数据");
    }

    /**
     * 获取商品sku详细信息
     */
    @ApiOperation(value = "获取商品sku详细信息")
    @PreAuthorize("@ss.hasPermi('mall:goods:query')")
    @GetMapping(value = "/{goodsId}")
    public AjaxResult getInfo(@PathVariable("goodsId") Long goodsId)
    {
        return AjaxResult.success(mallGoodsService.selectMallGoodsById(goodsId));
    }

    /**
     * 新增商品sku
     */
    @ApiOperation(value = "新增商品sku")
    @PreAuthorize("@ss.hasPermi('mall:goods:add')")
    @Log(title = "商品sku", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallGoods mallGoods)
    {
        return toAjax(mallGoodsService.insertMallGoods(mallGoods));
    }

    /**
     * 修改商品sku
     */
    @ApiOperation(value = "修改商品sku")
    @PreAuthorize("@ss.hasPermi('mall:goods:edit')")
    @Log(title = "商品sku", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallGoods mallGoods)
    {
        return toAjax(mallGoodsService.updateMallGoods(mallGoods));
    }

    /**
     * 删除商品sku
     */
    @ApiOperation(value = "删除商品sku")
    @PreAuthorize("@ss.hasPermi('mall:goods:remove')")
    @Log(title = "商品sku", businessType = BusinessType.DELETE)
	@DeleteMapping("/{goodsIds}")
    public AjaxResult remove(@PathVariable Long[] goodsIds)
    {
        return toAjax(mallGoodsService.deleteMallGoodsByIds(goodsIds));
    }
}
