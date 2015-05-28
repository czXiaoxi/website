package com.wx.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.website.model.Estore;
import com.wx.website.model.UserRegister;
import com.wx.website.service.EstoreService;
import com.wx.website.serviceimpl.EstoreServiceImpl;

@RequestMapping(value = "/goods")
public class EstoreController {
	
	@Autowired
	private EstoreServiceImpl estoreServiceimpl; 
	
	@RequestMapping(value = "/addgoods",method = RequestMethod.POST)
	public void addGoods(@ModelAttribute("estore") Estore estore){
		estoreServiceimpl.insert(estore);
	}
	
	@RequestMapping(value = "/deletegoods/{goodsId}",method=RequestMethod.GET)
	public void delete(@PathVariable (value="goodsId") int goodsId){
		estoreServiceimpl.deleteByPrimaryKey(goodsId);
	}
	
	@RequestMapping(value = "/updategoods")
	public void update(int goodsId){
		estoreServiceimpl.updateByPrimaryKey(goodsId);
	}

}
