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
import com.bige.system.domain.MallBanner;
import com.bige.system.service.IMallBannerService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 轮播图Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "商城轮播")
@RestController
@RequestMapping("/app/banner")
public class AppBannerController extends BaseController
{
    @Autowired
    private IMallBannerService mallBannerService;

    /**
     * 查询轮播图列表
     */
    @ApiOperation(value = "查询轮播图列表")
    @GetMapping("/list")
    public TableDataInfo list(MallBanner mallBanner)
    {
        startPage();
        List<MallBanner> list = mallBannerService.selectMallBannerList(mallBanner);
        return getDataTable(list);
    }

    /**
     * 导出轮播图列表
     */
    @ApiOperation(value = "导出轮播图列表")
    @PreAuthorize("@ss.hasPermi('mall:banner:export')")
    @Log(title = "轮播图", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallBanner mallBanner)
    {
        List<MallBanner> list = mallBannerService.selectMallBannerList(mallBanner);
        ExcelUtil<MallBanner> util = new ExcelUtil<MallBanner>(MallBanner.class);
        return util.exportExcel(list, "轮播图数据");
    }

    /**
     * 获取轮播图详细信息
     */
    @ApiOperation(value = "获取轮播图详细信息")
    @PreAuthorize("@ss.hasPermi('mall:banner:query')")
    @GetMapping(value = "/{bannerId}")
    public AjaxResult getInfo(@PathVariable("bannerId") Long bannerId)
    {
        return AjaxResult.success(mallBannerService.selectMallBannerById(bannerId));
    }

    /**
     * 新增轮播图
     */
    @ApiOperation(value = "新增轮播图")
    @PreAuthorize("@ss.hasPermi('mall:banner:add')")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallBanner mallBanner)
    {
        return toAjax(mallBannerService.insertMallBanner(mallBanner));
    }

    /**
     * 修改轮播图
     */
    @ApiOperation(value = "修改轮播图")
    @PreAuthorize("@ss.hasPermi('mall:banner:edit')")
    @Log(title = "轮播图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallBanner mallBanner)
    {
        return toAjax(mallBannerService.updateMallBanner(mallBanner));
    }

    /**
     * 删除轮播图
     */
    @ApiOperation(value = "删除轮播图")
    @PreAuthorize("@ss.hasPermi('mall:banner:remove')")
    @Log(title = "轮播图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{bannerIds}")
    public AjaxResult remove(@PathVariable Long[] bannerIds)
    {
        return toAjax(mallBannerService.deleteMallBannerByIds(bannerIds));
    }
}
