package com.wx.website.serviceImlp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.website.dao.UserMapper;
import com.wx.website.model.User;
import com.wx.website.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void addUser(User user) {
		userMapper.insert(user);
	}

	@Override
	public Boolean getResult(String userName, String password) {
		
		int count = userMapper.getMatchCount(userName, password);
		return count>0;
	}

	@Override
	public User selectByName(String userName) {
		
		User user = userMapper.selectByUserName(userName);
		return user;
	}

}
