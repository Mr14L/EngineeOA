package com.enginee.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.enginee.model.User;
import com.enginee.util.PageModel;
import com.enginee.util.TransResult;

public interface UserService{

	TransResult validate(String email, String password);

	TransResult updateUserPassword(String password);

	TransResult updateUserById(String name, String qq, String telephone, String intro);

	List<User> listUser();

	List<User> findByName(String name);

	void updateUserHead(MultipartFile file)throws IllegalStateException, IOException ;

	PageModel listByPage(int i);

	void remove(String email);

	void updateAuthor(String email);

	void updateAcademic(String email, String academic);

	TransResult addUser(User user);

	User getEntity(String email);

}
