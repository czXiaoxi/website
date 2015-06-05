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
	
	@RequestMapping(value = "/adminlogin")
	public String adminlogin(){
		
		return "adminlogin";
	}
	
	@RequestMapping(value = "/register")
	public String register(){
		
		return "register";
	}
	
	@RequestMapping(value = "/main")
	public String main(){
		
		return "main";
	}
	
	@RequestMapping(value = "/cart")
	public String cart(){
		
		return "cart";
	}
	
	@RequestMapping(value = "/reset")
	public String reset(){
		
		return "common";
	}
	
	@RequestMapping(value = "/adminreg")
	public String adminreg(){
		
		return "adminreg";
	}
	
	@RequestMapping(value = "/search")
	public String search(){
		
		return "search";
	}
	
	@RequestMapping(value = "/updategoods")
	public String updategoods(){
		
		return "updategoods";
	}
	
	@RequestMapping(value = "/addgoods")
	public String addgoods(){
		
		return "addgoods";
	}
}
