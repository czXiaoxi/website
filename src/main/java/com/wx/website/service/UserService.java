package com.wx.website.service;

import com.wx.website.model.User;
import com.wx.website.model.dto.UserRegister;

public interface UserService {
	
	void addUser(User user);
	
	Boolean getResult(String name ,String password);
	
	User selectByName(String userName);
	
	User getUser(UserRegister reuser);
	
}
