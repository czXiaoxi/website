package com.wx.website.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.website.model.Estore;
import com.wx.website.model.OrderLine;
import com.wx.website.service.EstoreService;
import com.wx.website.service.OrderlineService;

@Service
public class OrderlineServiceImpl implements OrderlineService{
	
	@Autowired
	private EstoreService estoreService;
	
	@Override
	public OrderLine getOrderLine(int goodsId) {
		
		Estore estore = estoreService.selectByPrimaryKey(goodsId);
		OrderLine orderLine = new OrderLine();
		orderLine.setCount(1);
		orderLine.setGoodsId(estore.getGoodsId());
		orderLine.setGoodsName(estore.getGoodsName());
		orderLine.setPrice(estore.getPrice());
		return orderLine;
	}

}
