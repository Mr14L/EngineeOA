package com.enginee.service;

import java.util.List;

import com.enginee.model.User;
import com.enginee.util.TransResult;

public interface UserService{

	TransResult validate(String email, String password);

	void updateUserPassword(String password);

	void updateUserById(String name, String qq, String telephone, String intro);

	List<User> listUser();

}
