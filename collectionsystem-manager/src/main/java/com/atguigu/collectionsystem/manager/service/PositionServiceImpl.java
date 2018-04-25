package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.collectionsystem.manager.entities.SysPosition;
import com.atguigu.collectionsystem.manager.mapper.SysPositionMapper;

@Service
public class PositionServiceImpl implements PositionService {

	@Autowired
	SysPositionMapper sysPositionMapper;
	
	@Override
	public List<SysPosition> selectAll() {
		return sysPositionMapper.selectAll();
	}
	@Override
	public int editPos(SysPosition pos) {
		return sysPositionMapper.updateByPrimaryKeySelective(pos);
	}
	@Override
	public int addPos(SysPosition pos) {
		return sysPositionMapper.insertSelective(pos);
	}
	@Override
	public int delPos(SysPosition pos) {
		// TODO Auto-generated method stub
		return sysPositionMapper.deleteByPrimaryKey(pos.getId());
	}

}
