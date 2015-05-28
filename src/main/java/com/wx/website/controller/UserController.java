package com.wx.website.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wx.website.model.User;
import com.wx.website.model.UserRegister;
import com.wx.website.service.UserService;
import com.wx.website.serviceimpl.UserServiceImpl;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserServiceImpl userServiceimpl;
	
	@RequestMapping(value = "/loginCheck")
	public ModelAndView CheckLogin(HttpServletRequest request,User users){
		
		boolean isValidUser = userServiceimpl.getResult(users.getUserName(),users.getPassword());
          
        if (!isValidUser) {
            return new ModelAndView("login", "error", "用户名或密码错误。");
        } else {
            User user = userServiceimpl.selectByName(users.getUserName());
            request.getSession().setAttribute("user",user);
            return new ModelAndView("index");
        }
	}
	
	@RequestMapping(value = "/adminCheck")
	public ModelAndView adminCheck(HttpServletRequest request,User users){
		
		boolean isValidUser = userServiceimpl.getResult(users.getUserName(),users.getPassword());
          
        if (!isValidUser) {
            return new ModelAndView("login", "error", "用户名或密码错误。");
        } else {
            User user = userServiceimpl.selectByName(users.getUserName());
            request.getSession().setAttribute("user",user);
            return new ModelAndView("index");
        }
	}
	
	@RequestMapping(value="/registeruser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("reuser") UserRegister reuser){
		User user = userServiceimpl.getUser(reuser);
		userServiceimpl.addUser(user);
		return "index";
	}
}
