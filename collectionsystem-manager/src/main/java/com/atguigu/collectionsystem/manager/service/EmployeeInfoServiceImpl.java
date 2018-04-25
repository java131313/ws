package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.collectionsystem.manager.entities.EmployeeInfo;
import com.atguigu.collectionsystem.manager.mapper.EmployeeInfoMapper;

@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService {

	@Autowired
	EmployeeInfoMapper employeeInfoMapper;

	@Override
	public List<EmployeeInfo> getAllEmployeeInfo() {
		// TODO Auto-generated method stub
		return employeeInfoMapper.selectAll();
	}

	@Override
	public int insertEmp(EmployeeInfo emp) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.insert(emp) ;
	}

	@Override
	public int deleteEmp(String id) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int editEmp(EmployeeInfo emp) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.updateByPrimaryKey(emp);
	}
	
	
	
}
