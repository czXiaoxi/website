package com.wx.website.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.website.dao.EstoreMapper;
import com.wx.website.model.Estore;
import com.wx.website.service.EstoreService;

@Service
public class EstoreServiceImpl implements EstoreService{
	
	@Autowired
	private EstoreMapper estoreMapper;

	@Override
	public void insert(Estore estore) {
		
		estoreMapper.insert(estore);
	}

	@Override
	public void deleteByPrimaryKey(int goodsId) {
		estoreMapper.deleteByPrimaryKey(goodsId);
	}

	@Override
	public List<Estore> queryAllEstore() {
		
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
