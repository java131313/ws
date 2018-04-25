package com.atguigu.collectionsystem.manager.mapper;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.EmployeeInfo;

public interface EmployeeInfoMapper {
	 

	 int deleteByPrimaryKey(String id); 
	 
	 int insert(EmployeeInfo record);
	 
	 List<EmployeeInfo> selectAll();
	
	 int updateByPrimaryKey(EmployeeInfo record);
	
	
}