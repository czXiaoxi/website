package com.wx.website.service;

import org.springframework.stereotype.Service;

import com.wx.website.model.User;
import com.wx.website.model.UserRegister;

public interface UserService {
	
	void addUser(User user);
	
	Boolean getResult(String name ,String password);
	
	User selectByName(String userName);
	
	User getUser(UserRegister reuser);
	
}
