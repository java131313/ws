package com.atguigu.service;

import java.util.List;
import java.util.Map;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.bean.SysOrganization;

public interface EmployeeInfoService {

	 EmployeeInfo selectByPrimaryKey(String id);
	 
    int deleteByPrimaryKey(String id);

    int insert(EmployeeInfo record);

    List<EmployeeInfo> selectAll();

	List<EmployeeInfo> queryStatus(int status);

	List<EmployeeInfo> queryName(Map<String, Object> paramMap);

	void updateByPrimaryKey(EmployeeInfo info);
}
