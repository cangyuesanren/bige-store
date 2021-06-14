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
import com.bige.system.domain.MallShopCard;
import com.bige.system.service.IMallShopCardService;
import com.bige.common.utils.poi.ExcelUtil;
import com.bige.common.core.page.TableDataInfo;

/**
 * 购物卡Controller
 * 
 * @author bige
 * @date 2021-06-13
 */
@RestController
@RequestMapping("/app/card")
public class AppShopCardController extends BaseController
{
    @Autowired
    private IMallShopCardService mallShopCardService;

    /**
     * 查询购物卡列表
     */
    @PreAuthorize("@ss.hasPermi('mall:card:list')")
    @GetMapping("/list")
    public TableDataInfo list(MallShopCard mallShopCard)
    {
        startPage();
        List<MallShopCard> list = mallShopCardService.selectMallShopCardList(mallShopCard);
        return getDataTable(list);
    }

    /**
     * 导出购物卡列表
     */
    @PreAuthorize("@ss.hasPermi('mall:card:export')")
    @Log(title = "购物卡", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(MallShopCard mallShopCard)
    {
        List<MallShopCard> list = mallShopCardService.selectMallShopCardList(mallShopCard);
        ExcelUtil<MallShopCard> util = new ExcelUtil<MallShopCard>(MallShopCard.class);
        return util.exportExcel(list, "购物卡数据");
    }

    /**
     * 获取购物卡详细信息
     */
    @PreAuthorize("@ss.hasPermi('mall:card:query')")
    @GetMapping(value = "/{shopId}")
    public AjaxResult getInfo(@PathVariable("shopId") Long shopId)
    {
        return AjaxResult.success(mallShopCardService.selectMallShopCardById(shopId));
    }

    /**
     * 新增购物卡
     */
    @PreAuthorize("@ss.hasPermi('mall:card:add')")
    @Log(title = "购物卡", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MallShopCard mallShopCard)
    {
        return toAjax(mallShopCardService.insertMallShopCard(mallShopCard));
    }

    /**
     * 修改购物卡
     */
    @PreAuthorize("@ss.hasPermi('mall:card:edit')")
    @Log(title = "购物卡", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MallShopCard mallShopCard)
    {
        return toAjax(mallShopCardService.updateMallShopCard(mallShopCard));
    }

    /**
     * 删除购物卡
     */
    @PreAuthorize("@ss.hasPermi('mall:card:remove')")
    @Log(title = "购物卡", businessType = BusinessType.DELETE)
	@DeleteMapping("/{shopIds}")
    public AjaxResult remove(@PathVariable Long[] shopIds)
    {
        return toAjax(mallShopCardService.deleteMallShopCardByIds(shopIds));
    }
}
