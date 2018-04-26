package com.atguigu.service;

import java.util.List;

import com.atguigu.bean.SysPosition;

public interface PositionService {

	 int deleteByPrimaryKey(String id);

	    int insert(SysPosition record);

	    SysPosition selectByPrimaryKey(String id);

	    List<SysPosition> selectAll();

	    int updateByPrimaryKey(String id);

		void update(SysPosition pos);
}
