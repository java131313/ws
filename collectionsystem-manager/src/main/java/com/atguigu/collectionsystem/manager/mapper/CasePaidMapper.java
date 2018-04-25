package com.atguigu.collectionsystem.manager.mapper;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.CasePaid;

public interface CasePaidMapper {
	
	int deleteByPrimaryKey(String id);

	int insert(CasePaid record);

	CasePaid selectByPrimaryKey(String id);

	List<CasePaid> selectAll();

	int updateByPrimaryKey(CasePaid record);;
}