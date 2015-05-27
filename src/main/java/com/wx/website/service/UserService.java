package com.wx.website.service;

import com.wx.website.model.User;


public interface UserService {
	
	void addUser(User user);
	
	Boolean getResult(String name ,String password);
	
	User selectByName(String userName);
	
}
