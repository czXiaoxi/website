package com.wx.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/common")
public class JspController {
	
	@RequestMapping(value = "/login")
	public String login(){
		
		return "login";
	}
}
