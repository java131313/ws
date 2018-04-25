package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.EmployeeInfo;

public interface EmployeeInfoService {

	List<EmployeeInfo> getAllEmployeeInfo();

	int insertEmp(EmployeeInfo emp);

	int deleteEmp(String id);

	int editEmp(EmployeeInfo emp);

}
