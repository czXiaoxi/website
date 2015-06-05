package com.wx.website.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.website.dao.AdminMapper;
import com.wx.website.model.Admin;
import com.wx.website.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public void addAdmin(String adminName, String password) {
		
		adminMapper.insert(adminName, password);
	}

	@Override
	public Boolean getResult(String adminName, String password) {
		
		int count = adminMapper.getMatchCount(adminName, password);
		return count>0;
		
	}

}
