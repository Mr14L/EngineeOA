package com.enginee.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.enginee.model.User;
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
		return userService.updateUserById(name,qq,telephone,intro);
	}
	//修改密码
	@RequestMapping("/passwordUpdate")
	public @ResponseBody TransResult passwordUpdate(String password){
		return userService.updateUserPassword(password);
	}
	//按姓名查询
	@RequestMapping("/findByUserName")
	public String findByUserName(Model model,String name) throws UnsupportedEncodingException{
		name = new String(name.getBytes("iso-8859-1"),"utf-8");
		List<User>list = userService.findByName(name);
		model.addAttribute("userlist", list);
		return "exam-user-apport";
		
	}
	//上传头像
	@RequestMapping("/userUpdateHead")
	public String userUpdateHead(MultipartFile file) throws IllegalStateException, IOException{
		userService.updateUserHead(file);
		return "admin-user";
	}
}
