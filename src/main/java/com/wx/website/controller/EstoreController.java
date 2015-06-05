package com.wx.website.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wx.website.model.Estore;
import com.wx.website.serviceimpl.EstoreServiceImpl;

@Controller
@RequestMapping(value = "/estore")
public class EstoreController {
	
	@Autowired
	private EstoreServiceImpl estoreServiceimpl; 
	
	@RequestMapping(value = "/addgoods",method = RequestMethod.POST)
	public String addGoods(@ModelAttribute("estore") Estore estore){
		estoreServiceimpl.insert(estore);
		return "adminCommon";
	}
	
	@RequestMapping(value = "/deletegoods/{goodsId}",method=RequestMethod.GET)
	public String  delete(@PathVariable (value="goodsId") int goodsId){
		estoreServiceimpl.deleteByPrimaryKey(goodsId);
		
		return "adminCommon";
	}
	
	//update by goodsId
	@RequestMapping(value = "/updategoods",method=RequestMethod.POST)
	public String update(@ModelAttribute("estore") Estore estore ){
		estoreServiceimpl.updateByPrimaryKey(estore);
		
		return "adminCommon";
	}
	
	
	@RequestMapping(value="/search" ,method=RequestMethod.POST)
	public String search(@RequestParam("goodsId") int goodsId,
			ModelMap modelMap, HttpSession session){
		List<Estore> list = estoreServiceimpl.selectByPrimaryKey(goodsId);
		modelMap.put("estore", list);
		
		return "resultestore";
	}
	
	@RequestMapping(value="/information",method=RequestMethod.GET)
	public String information(ModelMap modelMap){
		List<Estore> estore = estoreServiceimpl.queryAllEstore();
		modelMap.put("estore", estore);
		return "managment";
	}
	
	// before update get a goodsId to jsp,avoid goodsId repeat 
	@RequestMapping(value="/update/{goodsId}", method=RequestMethod.GET)
	public String searchById(@PathVariable("goodsId") int goodsId,
			ModelMap modelMap, HttpSession session){
		List<Estore> list = estoreServiceimpl.selectByPrimaryKey(goodsId);
		modelMap.put("estore", list);
		
		return "updategoods";
	}
}
