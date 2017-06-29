package com.enginee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * 用户登录 controller
 * @author wangbin
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;

import com.enginee.model.MyAuthority;
import com.enginee.model.MyAuthority.MyAuthorityType;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;
@Controller
@RequestMapping("/login")
@MyAuthority(value= {MyAuthorityType.USER,MyAuthorityType.ADMIN,MyAuthorityType.SUPERADMIN})
public class LoginController{
	@Autowired
	private UserService userService;

	//跳转到登录页面
	@RequestMapping("/toLoginPage")
	public String toLoginPage(){
		return "login";
	}
	//验证用户登录
	@RequestMapping("/validate")
	@ResponseBody
	public TransResult validate(String email,String password) {
		TransResult transResult = userService.validate(email,password);
		return transResult;
	}
	//注销用户
	@RequestMapping("/loginOut")
	public String loginOut(){
		HttpSession session = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		session.invalidate();
		return "login";
	}
	
}
