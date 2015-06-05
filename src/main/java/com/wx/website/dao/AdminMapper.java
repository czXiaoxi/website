package com.wx.website.dao;

import org.apache.ibatis.annotations.Param;


public interface AdminMapper {
	
	void insert(@Param("adminName")String adminName,@Param("password")String password);
	
	int getMatchCount(@Param("adminName")String adminName,@Param("password")String password);
}
