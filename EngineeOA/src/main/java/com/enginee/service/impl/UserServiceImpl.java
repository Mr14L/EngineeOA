package com.enginee.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.enginee.dao.UserDao;
import com.enginee.model.User;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	/**
	 * 验证邮箱密码是否正确
	 */
	@Override
	public TransResult validate(String email, String password){
		try {
			User user = userDao.find(email);
			if(user !=null && user.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {
				return TransResult.ok();
			}
		}catch(Exception e) {
			return TransResult.build(500, "服务器出错了");
		}
		
		return TransResult.build(400, "邮箱名或密码错误");
	}
	

}
