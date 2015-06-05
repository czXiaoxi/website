package com.wx.website.service;

import org.springframework.stereotype.Service;

import com.wx.website.model.Admin;

@Service
public interface AdminService {
	
	void addAdmin(String adminName,String password);
	
	Boolean getResult(String adminName,String password);
}
