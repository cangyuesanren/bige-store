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
import com.bige.system.domain.MallLabel;
import com.bige.system.service.IMallLabelService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 商品标签Controller
 * 
 * @author bige
 * @date 2021-06-09
 */
@Api(tags = "商品标签")
@RestController
@RequestMapping("/mall/label")
public class MallLabelController extends BaseController
{
    @Autowired
    private IMallLabelService mallLabelService;

    /**
     * 查询商品标签列表
     */
    @ApiOperation(value = "查询商品标签列表")
    @PreAuthorize("@ss.hasPermi('mall:label:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallLabel mallLabel)
    {
        startPage();
        List<MallLabel> list = mallLabelService.selectMallLabelList(mallLabel);
        return getDataTable(list);
    }

    /**
     * 导出商品标签列表
     */
    @ApiOperation(value = "导出商品标签列表")
    @PreAuthorize("@ss.hasPermi('mall:label:export')")
    @Log(title = "商品标签", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallLabel mallLabel)
    {
        List<MallLabel> list = mallLabelService.selectMallLabelList(mallLabel);
        ExcelUtil<MallLabel> util = new ExcelUtil<MallLabel>(MallLabel.class);
        return util.exportExcel(list, "商品标签数据");
    }

    /**
     * 获取商品标签详细信息
     */
    @ApiOperation(value = "获取商品标签详细信息")
    @PreAuthorize("@ss.hasPermi('mall:label:query')")
    @GetMapping(value = "/{labelId}")
    public AjaxResult getInfo(@PathVariable("labelId") Long labelId)
    {
        return AjaxResult.success(mallLabelService.selectMallLabelById(labelId));
    }

    /**
     * 新增商品标签
     */
    @ApiOperation(value = "新增商品标签")
    @PreAuthorize("@ss.hasPermi('mall:label:add')")
    @Log(title = "商品标签", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallLabel mallLabel)
    {
        return toAjax(mallLabelService.insertMallLabel(mallLabel));
    }

    /**
     * 修改商品标签
     */
    @ApiOperation(value = "修改商品标签")
    @PreAuthorize("@ss.hasPermi('mall:label:edit')")
    @Log(title = "商品标签", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallLabel mallLabel)
    {
        return toAjax(mallLabelService.updateMallLabel(mallLabel));
    }

    /**
     * 删除商品标签
     */
    @ApiOperation(value = "删除商品标签")
    @PreAuthorize("@ss.hasPermi('mall:label:remove')")
    @Log(title = "商品标签", businessType = BusinessType.DELETE)
	@DeleteMapping("/{labelIds}")
    public AjaxResult remove(@PathVariable Long[] labelIds)
    {
        return toAjax(mallLabelService.deleteMallLabelByIds(labelIds));
    }
}
