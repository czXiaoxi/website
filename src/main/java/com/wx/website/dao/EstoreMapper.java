package com.wx.website.dao;

import com.wx.website.model.Estore;

public interface EstoreMapper {
	
	 void insert();
	 void deleteByPrimaryKey(int goodsId);
	 Estore queryAllEstore();
	 void updateByPrimaryKey(int goodsId);
	 Estore selectByPrimaryKey(int goodsId);
}
