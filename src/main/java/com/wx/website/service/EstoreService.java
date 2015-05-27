package com.wx.website.service;

import com.wx.website.model.Estore;

public interface EstoreService {

	void insert(Estore estore);
	void deleteByPrimaryKey(int goodsId);
	Estore queryAllEstore();
	void updateByPrimaryKey(int goodsId);
	Estore selectByPrimaryKey(int goodsId);
}
