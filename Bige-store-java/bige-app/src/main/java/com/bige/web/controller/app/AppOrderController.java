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
import com.bige.system.domain.MallOrder;
import com.bige.system.service.IMallOrderService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品订单Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商品订单")
@RestController
@RequestMapping("/app/order")
public class AppOrderController extends BaseController
{
    @Autowired
    private IMallOrderService mallOrderService;

    /**
     * 查询商品订单列表
     */
    @ApiOperation(value = "查询商品订单列表")
    @PreAuthorize("@ss.hasPermi('mall:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallOrder mallOrder)
    {
        startPage();
        List<MallOrder> list = mallOrderService.selectMallOrderList(mallOrder);
        return getDataTable(list);
    }

    /**
     * 导出商品订单列表
     */
    @ApiOperation(value = "导出商品订单列表")
    @PreAuthorize("@ss.hasPermi('mall:order:export')")
    @Log(title = "商品订单", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallOrder mallOrder)
    {
        List<MallOrder> list = mallOrderService.selectMallOrderList(mallOrder);
        ExcelUtil<MallOrder> util = new ExcelUtil<MallOrder>(MallOrder.class);
        return util.exportExcel(list, "商品订单数据");
    }

    /**
     * 获取商品订单详细信息
     */
    @ApiOperation(value = "获取商品订单详细信息")
    @PreAuthorize("@ss.hasPermi('mall:order:query')")
    @GetMapping(value = "/{orderId}")
    public AjaxResult getInfo(@PathVariable("orderId") Long orderId)
    {
        return AjaxResult.success(mallOrderService.selectMallOrderById(orderId));
    }

    /**
     * 新增商品订单
     */
    @ApiOperation(value = "新增商品订单")
    @PreAuthorize("@ss.hasPermi('mall:order:add')")
    @Log(title = "商品订单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallOrder mallOrder)
    {
        return toAjax(mallOrderService.insertMallOrder(mallOrder));
    }

    /**
     * 修改商品订单
     */
    @ApiOperation(value = "修改商品订单")
    @PreAuthorize("@ss.hasPermi('mall:order:edit')")
    @Log(title = "商品订单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallOrder mallOrder)
    {
        return toAjax(mallOrderService.updateMallOrder(mallOrder));
    }

    /**
     * 删除商品订单
     */
    @ApiOperation(value = "删除商品订单")
    @PreAuthorize("@ss.hasPermi('mall:order:remove')")
    @Log(title = "商品订单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orderIds}")
    public AjaxResult remove(@PathVariable Long[] orderIds)
    {
        return toAjax(mallOrderService.deleteMallOrderByIds(orderIds));
    }
}
