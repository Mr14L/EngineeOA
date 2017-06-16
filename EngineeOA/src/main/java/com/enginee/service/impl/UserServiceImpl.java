package com.enginee.service.impl;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.MultipartFile;

import com.enginee.dao.UserDao;
import com.enginee.model.Author;
import com.enginee.model.User;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Value("${PHOTO_IMAGES}")
	private String PHOTO_IMAGES;

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
	public TransResult updateUserPassword(String password) {
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		User user = (User)httpSession.getAttribute("user");
		user.setPassword(password);
		userDao.merge(user);
		httpSession.setAttribute("user",user);
		return TransResult.ok();
		}
	
	/**
	 * 个人修改用户信息
	 * */
	@Override
	@Transactional
	public TransResult updateUserById(String name, String qq, String telephone, String intro) {
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
		return TransResult.ok();
	}
	//列出所有用户
	@Override
	@Transactional
	public List<User> listUser() {
		// TODO Auto-generated method stub
		List<User> list = userDao.findUsers();
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		httpSession.setAttribute("userList",list);
		return list;
	}
	@Override
	@Transactional
	public List<User> findByName(String name) {
		// TODO Auto-generated method stub
		String sql = "From User u where u.name = ?";
		@SuppressWarnings("rawtypes")
		Query query = userDao.getCurrentSession().createQuery(sql);
		query.setParameter(0, name);
		@SuppressWarnings("unchecked")
		List<User> list =query.getResultList();
		return list;
	}
	@Override
	@Transactional
	public void updateUserHead(MultipartFile file) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		String url = null;
		if(!file.isEmpty()){
			HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
			 String path=httpSession.getServletContext().getRealPath(PHOTO_IMAGES);
			File file2 = new File(path+"/"+new Random().nextInt(100000)+"."+"jpg");
			file.transferTo(file2);
			url = "/"+PHOTO_IMAGES+file2.getName();
			User u = (User)httpSession.getAttribute("user");
			u.setHeadFile(url);
			userDao.merge(u);
			httpSession.setAttribute("user", u);
		}
	}
	@Override
	@Transactional
	public List<User> listUserByAuther() {
		// TODO Auto-generated method stub
		String sql = "From User u where u.author = ?";
		@SuppressWarnings("rawtypes")
		Query query = userDao.getCurrentSession().createQuery(sql);
		query.setParameter(0, Author.USER);
		@SuppressWarnings("unchecked")
		List<User> list =query.getResultList();
		return list;
	}

}
