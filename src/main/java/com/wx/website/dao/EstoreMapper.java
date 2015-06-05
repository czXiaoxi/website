package com.wx.website.dao;

import java.util.List;

import com.wx.website.model.Estore;

public interface EstoreMapper {
	
	 void insert(Estore estore);
	 void deleteByPrimaryKey(int goodsId);
	 List<Estore> queryAllEstore();
	 void updateByPrimaryKey(Estore estore);
	 List<Estore> selectByPrimaryKey(int goodsId);
	 Estore selectById(int goodsId);
}
