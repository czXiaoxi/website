package com.wx.website.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wx.website.model.Estore;

public interface EstoreService {

	void insert(Estore estore);
	void deleteByPrimaryKey(int goodsId);
	List<Estore> queryAllEstore();
	void updateByPrimaryKey(int goodsId);
	Estore selectByPrimaryKey(int goodsId);
}
