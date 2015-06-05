package com.wx.website.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.website.model.Estore;
import com.wx.website.model.dto.OrderLine;
import com.wx.website.serviceimpl.EstoreServiceImpl;
import com.wx.website.serviceimpl.OrderlineServiceImpl;
import com.wx.website.storage.Memcache;

@Controller
@RequestMapping(value = "/shoppingcart")
public class ShoppingCartController {

	@Autowired
	private EstoreServiceImpl estoreServiceimpl;
	@Autowired
	private OrderlineServiceImpl orderLineServiceimpl;

	private Map<Integer, OrderLine> orderlines = new HashMap<Integer, OrderLine>();

	@RequestMapping(value="/orderline/{goodsId}",method=RequestMethod.GET)
	public String addOrderLine(@PathVariable(value="goodsId") int goodsId,
								ModelMap modelMap,
								HttpSession session,
								@CookieValue(value="JSESSIONID", required=false) String jsessionid,
								HttpServletRequest request){
		OrderLine orderLine4Memcache = null;
		Cookie[] cookies = request.getCookies();
		for(Cookie coo : cookies){
			System.out.println(coo);
		}
		if(jsessionid == null){
			return "login";
			
		}else {
			//wrapper orderLine from page
			orderLine4Memcache = orderLineServiceimpl.getOrderLine(goodsId);

			
			//get old cart
			List<OrderLine> CartList = Memcache.cartMap.get(jsessionid);
			
			//add goods into cart and reset Memcache
			if(orderLine4Memcache != null){
				boolean goodsExists = false;
				for(OrderLine temp:CartList){
					if(temp.getGoodsId() == orderLine4Memcache.getGoodsId()){
						temp.setCount(temp.getCount()+1);
						goodsExists = true;
					}
				}
				if(!goodsExists){
					CartList.add(orderLine4Memcache);
				}
				
				//update Memcache  
				Memcache.cartMap.remove(jsessionid);
				Memcache.cartMap.put(jsessionid, CartList);
				session.setAttribute("cart", CartList);
			}
		}
		
		
		return "cart";
	}

	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public String getestore(ModelMap modelMap) {
		List<Estore> e = estoreServiceimpl.queryAllEstore();
		modelMap.put("listGoods", e);
		return "main";

	}

	@RequestMapping(value = "/delete/{goodsId}", method = RequestMethod.GET)
	public String deleteCart(@PathVariable(value = "goodsId") int goodsId,
			ModelMap modelMap, HttpSession session) {
		List<OrderLine> items = (List<OrderLine>) session.getAttribute("cart");
		int index = -1;
		if (items != null) {
			for (OrderLine o : items) {
				if (o.getGoodsId() == goodsId) {
					index = items.indexOf(o);
				}
			}
			if (index != -1) {
				items.remove(index);
			}
		}
		modelMap.put("cart", items);
		return "cart";
	}

}
