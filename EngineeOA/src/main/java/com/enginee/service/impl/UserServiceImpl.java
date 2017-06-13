package com.enginee.service.impl;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;

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
	@Transactional
	public TransResult validate(String email, String password){
		try {
			User user = userDao.find(email);
			//DigestUtils.md5DigestAsHex(password.getBytes())
			if(user !=null && user.getPassword().equals(password)) {
				HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
				httpSession.setAttribute("user", user);
 				return TransResult.ok();
			}
		}catch(Exception e) {
			e.printStackTrace();
			return TransResult.build(500, "服务器出错了");
		}
		return TransResult.build(400, "邮箱名或密码错误");
	}
	/**
	 * 修改密码
	 */
	@Override
	@Transactional
	public void updateUserPassword(String password) {
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		User user = (User)httpSession.getAttribute("user");
		user.setPassword(password);
		userDao.merge(user);
		httpSession.setAttribute("user",user);
		}
	
	/**
	 * 个人修改用户信息
	 * */
	@Override
	@Transactional
	public void updateUserById(String name, String qq, String telephone, String intro) {
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		User user = (User)httpSession.getAttribute("user");
		user.setName(name);
		user.setTelephone(telephone);
		user.setQq(qq);
		user.setIntro(intro);
		Session session = userDao.getCurrentSession();
		session.update(user);
		httpSession.setAttribute("user", user);
	}
	@Override
	@Transactional
	public List<User> listUser() {
		// TODO Auto-generated method stub
		List<User> list = userDao.findUsers();
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		httpSession.setAttribute("userList",list);
		return list;
	}
	

}
