package com.wx.website.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.website.dao.UserMapper;
import com.wx.website.model.User;
import com.wx.website.model.dto.UserRegister;
import com.wx.website.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	private String userName;
	private String password;
	private String address;
	private String phoneNumber;
	
	@Override
	public void addUser(User user) {
		userName = user.getUserName();
		password = user.getPassword();
		address = user.getAddress();
		phoneNumber = user.getPhoneNumber();
		userMapper.insert(userName,password,address,phoneNumber);
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

	@Override
	public User getUser(UserRegister reuser) {
		
		User user = new User();
		user.setAddress(reuser.getAddress());
		user.setPassword(reuser.getPassword());
		user.setPhoneNumber(reuser.getPhoneNumber());
		user.setUserName(reuser.getUserName());
		return user;
	}

}
