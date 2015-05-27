package com.wx.website.serviceImlp;

import org.springframework.beans.factory.annotation.Autowired;

import com.wx.website.dao.EstoreMapper;
import com.wx.website.model.Estore;
import com.wx.website.service.EstoreService;

public class EstoreServiceImpl implements EstoreService{
	
	@Autowired
	private EstoreMapper estoreMapper;

	@Override
	public void insert(Estore estore) {
		
		
	}

	@Override
	public void deleteByPrimaryKey(int goodsId) {
		
	}

	@Override
	public Estore queryAllEstore() {
		
		return estoreMapper.queryAllEstore();
	}

	@Override
	public void updateByPrimaryKey(int goodsId) {
		
	}

	@Override
	public Estore selectByPrimaryKey(int goodsId) {
		
		return estoreMapper.selectByPrimaryKey(goodsId);
	}

}
