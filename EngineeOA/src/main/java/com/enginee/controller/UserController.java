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
	
	//列出所有user
	@RequestMapping("/userList")
	public String userList(Model model){
		List<User> list = userService.listUser();
		model.addAttribute("list",list );
		return "admin-author";
	}
	//查看详细信息
	@RequestMapping("/userInfo")
	public String userInfo(String name,Model model) throws UnsupportedEncodingException{
		name = new String(name.getBytes("iso-8859-1"),"utf-8");
		User user = userService.findByName(name).get(0);
		model.addAttribute("u",user);
		return "user-info";
		}
	//单条更新
	@RequestMapping("/updateAcademic")
	@ResponseBody
	public TransResult updateAcademic(String email,String academic,Model model) throws UnsupportedEncodingException{
		try{
			userService.updateAcademic(email,academic);
		}catch(Exception e){
			e.printStackTrace();
			return TransResult.build(400, "更新失败");
		}
		return TransResult.build(200, "更新成功");
	}
	//单条删除 
	@RequestMapping("/removeUser")
	public String removeUser(String email,Model model) throws UnsupportedEncodingException{
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		userService.remove(email);
		return "forward:/user/userList";
	}
	//设为管理 
	@RequestMapping("/updateAuthor")
	public String updateAuthor(String email,Model model) throws UnsupportedEncodingException{
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		userService.updateAuthor(email);
		return "forward:/user/userList";
	}
	
	//添加用户
	@RequestMapping("/addUser")
	public String addUser(){
		return "user-add";
	}
	//添加用户实现
	@RequestMapping("/addUser2")
	@ResponseBody
	public TransResult toAdd(User user){
		TransResult tr = userService.addUser(user);
		return tr;
	}
	//修改职称
	@RequestMapping("/toAcademic")
	public String toAcademic(String name,Model model) throws UnsupportedEncodingException{
		name = new String(name.getBytes("iso-8859-1"),"utf-8");
		User user= userService.findByName(name).get(0);
		model.addAttribute("u",user);
		return "user-academic";
	}
}
