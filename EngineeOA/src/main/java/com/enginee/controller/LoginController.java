package com.enginee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * 用户登录 controller
 * @author wangbin
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enginee.service.UserService;
import com.enginee.util.TransResult;
@Controller
@RequestMapping("/login")
public class LoginController{
	@Autowired
	private UserService userService;

	//验证用户登录
	@RequestMapping("/validate")
	@ResponseBody
	public TransResult validate(String email,String password) {
		TransResult transResult = userService.validate(email,password);
		return transResult;
	}
}
