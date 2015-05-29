package com.wx.website.storage;

import java.util.HashMap;
import java.util.List;

import com.wx.website.model.OrderLine;

public class Memcache {
	// add a static map for cart
	public static HashMap<String, List<OrderLine>> cartMap = new HashMap<String, List<OrderLine>>();
}
