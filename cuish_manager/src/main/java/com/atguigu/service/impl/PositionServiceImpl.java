package com.atguigu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.SysPosition;
import com.atguigu.mapper.SysPositionMapper;
import com.atguigu.service.PositionService;

@Service
public class PositionServiceImpl implements PositionService {

	@Autowired
	SysPositionMapper sysPositionMapper;
	
	public int deleteByPrimaryKey(String id) {
		return sysPositionMapper.deleteByPrimaryKey(id);
	}

	public int insert(SysPosition record) {
		return sysPositionMapper.insert(record);
	}

	public SysPosition selectByPrimaryKey(String id) {
		return sysPositionMapper.selectByPrimaryKey(id);
	}

	public List<SysPosition> selectAll() {
		return sysPositionMapper.selectAll();
	}

	public int updateByPrimaryKey(String id) {
		return sysPositionMapper.updateByPrimaryKey(id);
	}

	public void update(SysPosition pos) {
		// TODO Auto-generated method stub
		sysPositionMapper.update(pos);
	}

}
