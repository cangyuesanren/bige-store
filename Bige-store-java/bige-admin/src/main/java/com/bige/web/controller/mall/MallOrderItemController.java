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
import com.bige.system.domain.MallOrderItem;
import com.bige.system.service.IMallOrderItemService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 订单子单Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "订单子单")
@RestController
@RequestMapping("/mall/item")
public class MallOrderItemController extends BaseController
{
    @Autowired
    private IMallOrderItemService mallOrderItemService;

    /**
     * 查询订单子单列表
     */
    @ApiOperation(value = "查询订单子单列表")
    @PreAuthorize("@ss.hasPermi('mall:item:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallOrderItem mallOrderItem)
    {
        startPage();
        List<MallOrderItem> list = mallOrderItemService.selectMallOrderItemList(mallOrderItem);
        return getDataTable(list);
    }

    /**
     * 导出订单子单列表
     */
    @ApiOperation(value = "导出订单子单列表")
    @PreAuthorize("@ss.hasPermi('mall:item:export')")
    @Log(title = "订单子单", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallOrderItem mallOrderItem)
    {
        List<MallOrderItem> list = mallOrderItemService.selectMallOrderItemList(mallOrderItem);
        ExcelUtil<MallOrderItem> util = new ExcelUtil<MallOrderItem>(MallOrderItem.class);
        return util.exportExcel(list, "订单子单数据");
    }

    /**
     * 获取订单子单详细信息
     */
    @ApiOperation(value = "获取订单子单详细信息")
    @PreAuthorize("@ss.hasPermi('mall:item:query')")
    @GetMapping(value = "/{orderItemId}")
    public AjaxResult getInfo(@PathVariable("orderItemId") Long orderItemId)
    {
        return AjaxResult.success(mallOrderItemService.selectMallOrderItemById(orderItemId));
    }

    /**
     * 新增订单子单
     */
    @ApiOperation(value = "新增订单子单")
    @PreAuthorize("@ss.hasPermi('mall:item:add')")
    @Log(title = "订单子单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallOrderItem mallOrderItem)
    {
        return toAjax(mallOrderItemService.insertMallOrderItem(mallOrderItem));
    }

    /**
     * 修改订单子单
     */
    @ApiOperation(value = "修改订单子单")
    @PreAuthorize("@ss.hasPermi('mall:item:edit')")
    @Log(title = "订单子单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallOrderItem mallOrderItem)
    {
        return toAjax(mallOrderItemService.updateMallOrderItem(mallOrderItem));
    }

    /**
     * 删除订单子单
     */
    @ApiOperation(value = "删除订单子单")
    @PreAuthorize("@ss.hasPermi('mall:item:remove')")
    @Log(title = "订单子单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orderItemIds}")
    public AjaxResult remove(@PathVariable Long[] orderItemIds)
    {
        return toAjax(mallOrderItemService.deleteMallOrderItemByIds(orderItemIds));
    }
}
