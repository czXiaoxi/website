package com.wx.website.dao;

import org.apache.ibatis.annotations.Param;

import com.wx.website.model.User;

public interface UserMapper {

	void insert(@Param("userName")String userName, @Param("password")String password ,@Param("address")String address,@Param("phoneNumber")String phoneNumber);
	
	User selectByUserName(String name);
	
	int getMatchCount(@Param("userName")String userName, @Param("password")String password);
}
