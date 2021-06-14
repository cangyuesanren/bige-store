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
import com.bige.system.domain.MallCustomer;
import com.bige.system.service.IMallCustomerService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 前端客户Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@RestController
@RequestMapping("/app/customer")
public class AppCustomerController extends BaseController
{
    @Autowired
    private IMallCustomerService mallCustomerService;

    /**
     * 查询前端客户列表
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallCustomer mallCustomer)
    {
        startPage();
        List<MallCustomer> list = mallCustomerService.selectMallCustomerList(mallCustomer);
        return getDataTable(list);
    }

    /**
     * 导出前端客户列表
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:export')")
    @Log(title = "前端客户", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallCustomer mallCustomer)
    {
        List<MallCustomer> list = mallCustomerService.selectMallCustomerList(mallCustomer);
        ExcelUtil<MallCustomer> util = new ExcelUtil<MallCustomer>(MallCustomer.class);
        return util.exportExcel(list, "前端客户数据");
    }

    /**
     * 获取前端客户详细信息
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:query')")
    @GetMapping(value = "/{customerId}")
    public AjaxResult getInfo(@PathVariable("customerId") Long customerId)
    {
        return AjaxResult.success(mallCustomerService.selectMallCustomerById(customerId));
    }

    /**
     * 新增前端客户
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:add')")
    @Log(title = "前端客户", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallCustomer mallCustomer)
    {
        return toAjax(mallCustomerService.insertMallCustomer(mallCustomer));
    }

    /**
     * 修改前端客户
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:edit')")
    @Log(title = "前端客户", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallCustomer mallCustomer)
    {
        return toAjax(mallCustomerService.updateMallCustomer(mallCustomer));
    }

    /**
     * 删除前端客户
     */
    @PreAuthorize("@ss.hasPermi('mall:customer:remove')")
    @Log(title = "前端客户", businessType = BusinessType.DELETE)
	@DeleteMapping("/{customerIds}")
    public AjaxResult remove(@PathVariable Long[] customerIds)
    {
        return toAjax(mallCustomerService.deleteMallCustomerByIds(customerIds));
    }
}
