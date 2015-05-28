package com.wx.website.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.website.model.Estore;
import com.wx.website.model.OrderLine;
import com.wx.website.service.EstoreService;
import com.wx.website.service.OrderlineService;
import com.wx.website.serviceimpl.EstoreServiceImpl;
import com.wx.website.serviceimpl.OrderlineServiceImpl;

@Controller
@RequestMapping(value ="/shoppingcart")
public class ShoppingCartController {
	
	@Autowired
	private EstoreServiceImpl estoreServiceimpl;
	@Autowired
	private OrderlineServiceImpl orderLineServiceimpl;
	
	@RequestMapping(value="/orderline/{goodsId}",method=RequestMethod.GET)
	public String OrderLine(@PathVariable(value="goodsId") int goodsId,ModelMap modelMap,HttpSession session){
		if(session.getAttribute("cart") == null){
			List<OrderLine> items = new ArrayList<OrderLine>();
			OrderLine orderLine = orderLineServiceimpl.getOrderLine(goodsId);
			items.add(orderLine);
			modelMap.put("cart", items);
		}else {
			List<OrderLine> items = (List<OrderLine>) session.getAttribute("cart");
			Iterator<OrderLine> it = items.iterator();
			while(it.hasNext()){  
				OrderLine item = it.next();  
				if(item.getGoodsId() == goodsId) {  
					item.setCount(item.getCount() + 1);  
				}else{
					OrderLine orderLine = orderLineServiceimpl.getOrderLine(goodsId);
					items.add(orderLine);
				}
			}
			session.setAttribute("cart", items);
		}
		return "cart";
	}
	
	
	@RequestMapping(value="/information",method=RequestMethod.GET)
	public String getestore(ModelMap modelMap){
		List<Estore> e = estoreServiceimpl.queryAllEstore();
		modelMap.put("listGoods", e);
		return "main";
		
	}
	
	@RequestMapping(value="/delete/{goodsId}",method=RequestMethod.GET)
	public String deleteCart(@PathVariable (value="goodsId") int goodsId,ModelMap modelMap,HttpSession session){
		List<OrderLine> items = (List<OrderLine>) session.getAttribute("cart");
		int index = -1;
		if(items != null){
			for(OrderLine o:items){
				if(o.getGoodsId() == goodsId){
					index = items.indexOf(o);
				}
			}
			if(index != -1){
				items.remove(index);
			}
		}
		modelMap.put("cart", items);
		return "cart";
	}
	
}
