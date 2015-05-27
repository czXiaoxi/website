package com.wx.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wx.website.model.Estore;
import com.wx.website.service.EstoreService;

@RequestMapping(value = "/goods")
public class EstoreController {
	
	@Autowired
	private EstoreService estoreService; 
	
	@RequestMapping(value = "/addgoods")
	public void addGoods(Estore estore){
		estoreService.insert(estore);
	}
	
	@RequestMapping(value = "/deletegoods")
	public void delete(int goodsId){
		estoreService.deleteByPrimaryKey(goodsId);
	}
	
	@RequestMapping(value = "/updategoods")
	public void update(int goodsId){
		estoreService.updateByPrimaryKey(goodsId);
	}

}
