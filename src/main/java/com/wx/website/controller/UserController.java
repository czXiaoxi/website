package com.wx.website.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wx.website.model.User;
import com.wx.website.model.dto.OrderLine;
import com.wx.website.model.dto.UserRegister;
import com.wx.website.serviceimpl.UserServiceImpl;
import com.wx.website.storage.Memcache;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	private static Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Autowired
	private UserServiceImpl userServiceimpl;

	@RequestMapping(value = "/loginCheck")
	public ModelAndView CheckLogin(HttpServletRequest request, User users,
			HttpServletResponse response,
			@CookieValue(value="JSESSIONID", required=false) String jsessionid) {

		boolean isValidUser = userServiceimpl.getResult(users.getUserName(),
				users.getPassword());

		if (!isValidUser) {
			return new ModelAndView("login", "error", "用户名或密码错误。");
		} else {
			User user = userServiceimpl.selectByName(users.getUserName());
			request.getSession().setAttribute("user", user);
			Memcache.cartMap.put(jsessionid, new ArrayList<OrderLine>());
			return new ModelAndView("common");
		}
	}

	@RequestMapping(value = "/registeruser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("reuser") UserRegister reuser) {
		User user = userServiceimpl.getUser(reuser);
		userServiceimpl.addUser(user);
		return "login";
	}
}
