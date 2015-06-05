package com.wx.website.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wx.website.model.Admin;
import com.wx.website.serviceimpl.AdminServiceImpl;


@Controller
@RequestMapping(value="/admin")
public class AdminController {

	@Autowired
	private AdminServiceImpl adminServiceImpl;
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public ModelAndView CheckLogin(HttpServletRequest request,@ModelAttribute("admin") Admin admin,
			HttpServletResponse response) {

		boolean isValidUser = adminServiceImpl.getResult(admin.getAdminName(),admin.getPassword());

		if (!isValidUser) {
			return new ModelAndView("adminlogin", "error", "用户名或密码错误。");
			
		} else {
			
			return new ModelAndView("adminCommon");
		}
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@ModelAttribute("admin") Admin admin){
		
		adminServiceImpl.addAdmin(admin.getAdminName(),admin.getPassword());
		return "adminlogin";
	}
}
