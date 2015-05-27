package com.wx.website.dao;

import com.wx.website.model.User;

public interface UserMapper {

	void insert(User user);
	
	User selectByUserName(String name);
	
	int getMatchCount(String userName,String password);
}
