package com.enginee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enginee.service.UserService;
import com.enginee.util.TransResult;
/**
 * 用于用户相关操作
 * @author 李若楠
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	//修改信息
	@RequestMapping("/userUpdate")
	@ResponseBody
	public TransResult userUpdate(String name,String qq,String telephone,String intro){
		userService.updateUserById(name,qq,telephone,intro);
		return TransResult.ok();
	}
	//修改密码
	@RequestMapping("/passwordUpdate")
	public @ResponseBody TransResult passwordUpdate(String password){
		userService.updateUserPassword(password);
		return TransResult.ok();
	}
}
