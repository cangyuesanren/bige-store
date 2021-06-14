package com.bige.web.controller.app;

import com.bige.common.annotation.Log;
import com.bige.common.core.domain.AjaxResult;
import com.bige.common.enums.BusinessType;
import com.bige.web.controller.domain.Customer;
import com.bige.web.service.IAppCustomerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 登录注册Controller
 *
 * @author bige
 * @date 2021-06-13
 */
@Api(tags = "登录注册")
@RestController
@RequestMapping("/app/login")
public class LoginControllor {

    @Autowired
    private IAppCustomerService appCustomerService;

    /**
     * 用户注册
     */
    @ApiOperation(value = "用户注册")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult register(@RequestBody Customer customer){

        return AjaxResult.success(appCustomerService.insertMallCustomer(customer));
    }

}
