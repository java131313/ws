package com.atguigu.collectionsystem.manager.mapper;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.SysPosition;

public interface SysPositionMapper {
  
	int deleteByPrimaryKey(int id);

    int insert(SysPosition record);

    int insertSelective(SysPosition record);

    SysPosition selectByPrimaryKey(int id);

    int updateByPrimaryKeySelective(SysPosition record);

    int updateByPrimaryKey(SysPosition record);

	List<SysPosition> selectAll();
}