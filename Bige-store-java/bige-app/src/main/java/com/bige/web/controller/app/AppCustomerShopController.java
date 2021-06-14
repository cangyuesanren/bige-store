package com.bige.web.controller.app;

import java.util.List;
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
import com.bige.system.domain.MallCustomerShop;
import com.bige.system.service.IMallCustomerShopService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 客户购物金Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@RestController
@RequestMapping("/app/shop")
public class AppCustomerShopController extends BaseController
{
    @Autowired
    private IMallCustomerShopService mallCustomerShopService;

    /**
     * 查询客户购物金列表
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallCustomerShop mallCustomerShop)
    {
        startPage();
        List<MallCustomerShop> list = mallCustomerShopService.selectMallCustomerShopList(mallCustomerShop);
        return getDataTable(list);
    }

    /**
     * 导出客户购物金列表
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:export')")
    @Log(title = "客户购物金", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallCustomerShop mallCustomerShop)
    {
        List<MallCustomerShop> list = mallCustomerShopService.selectMallCustomerShopList(mallCustomerShop);
        ExcelUtil<MallCustomerShop> util = new ExcelUtil<MallCustomerShop>(MallCustomerShop.class);
        return util.exportExcel(list, "客户购物金数据");
    }

    /**
     * 获取客户购物金详细信息
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:query')")
    @GetMapping(value = "/{shopId}")
    public AjaxResult getInfo(@PathVariable("shopId") Long shopId)
    {
        return AjaxResult.success(mallCustomerShopService.selectMallCustomerShopById(shopId));
    }

    /**
     * 新增客户购物金
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:add')")
    @Log(title = "客户购物金", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallCustomerShop mallCustomerShop)
    {
        return toAjax(mallCustomerShopService.insertMallCustomerShop(mallCustomerShop));
    }

    /**
     * 修改客户购物金
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:edit')")
    @Log(title = "客户购物金", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallCustomerShop mallCustomerShop)
    {
        return toAjax(mallCustomerShopService.updateMallCustomerShop(mallCustomerShop));
    }

    /**
     * 删除客户购物金
     */
    @PreAuthorize("@ss.hasPermi('mall:shop:remove')")
    @Log(title = "客户购物金", businessType = BusinessType.DELETE)
	@DeleteMapping("/{shopIds}")
    public AjaxResult remove(@PathVariable Long[] shopIds)
    {
        return toAjax(mallCustomerShopService.deleteMallCustomerShopByIds(shopIds));
    }
}
