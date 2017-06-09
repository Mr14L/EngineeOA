package com.enginee.service;

import com.enginee.util.TransResult;

public interface UserService{

	TransResult validate(String email, String password);

}
