package com.wx.website.service;


import com.wx.website.model.dto.OrderLine;

public interface OrderlineService {
	
	OrderLine getOrderLine(int goodsId);
}
