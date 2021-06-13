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
import com.bige.system.domain.MallStandard;
import com.bige.system.service.IMallStandardService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 预设规格Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "预设规格")
@RestController
@RequestMapping("/mall/standard")
public class MallStandardController extends BaseController
{
    @Autowired
    private IMallStandardService mallStandardService;

    /**
     * 查询预设规格列表
     */
    @ApiOperation(value = "查询预设规格列表")
    @PreAuthorize("@ss.hasPermi('mall:standard:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallStandard mallStandard)
    {
        startPage();
        List<MallStandard> list = mallStandardService.selectMallStandardList(mallStandard);
        return getDataTable(list);
    }

    /**
     * 导出预设规格列表
     */
    @ApiOperation(value = "导出预设规格列表")
    @PreAuthorize("@ss.hasPermi('mall:standard:export')")
    @Log(title = "预设规格", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallStandard mallStandard)
    {
        List<MallStandard> list = mallStandardService.selectMallStandardList(mallStandard);
        ExcelUtil<MallStandard> util = new ExcelUtil<MallStandard>(MallStandard.class);
        return util.exportExcel(list, "预设规格数据");
    }

    /**
     * 获取预设规格详细信息
     */
    @ApiOperation(value = "获取预设规格详细信息")
    @PreAuthorize("@ss.hasPermi('mall:standard:query')")
    @GetMapping(value = "/{standardId}")
    public AjaxResult getInfo(@PathVariable("standardId") Long standardId)
    {
        return AjaxResult.success(mallStandardService.selectMallStandardById(standardId));
    }

    /**
     * 新增预设规格
     */
    @ApiOperation(value = "新增预设规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:add')")
    @Log(title = "预设规格", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallStandard mallStandard)
    {
        return toAjax(mallStandardService.insertMallStandard(mallStandard));
    }

    /**
     * 修改预设规格
     */
    @ApiOperation(value = "修改预设规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:edit')")
    @Log(title = "预设规格", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallStandard mallStandard)
    {
        return toAjax(mallStandardService.updateMallStandard(mallStandard));
    }

    /**
     * 删除预设规格
     */
    @ApiOperation(value = "删除预设规格")
    @PreAuthorize("@ss.hasPermi('mall:standard:remove')")
    @Log(title = "预设规格", businessType = BusinessType.DELETE)
	@DeleteMapping("/{standardIds}")
    public AjaxResult remove(@PathVariable Long[] standardIds)
    {
        return toAjax(mallStandardService.deleteMallStandardByIds(standardIds));
    }
}
