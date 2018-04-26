package com.atguigu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.bean.SysOrganization;
import com.atguigu.mapper.EmployeeInfoMapper;
import com.atguigu.service.EmployeeInfoService;

@Service
public class EmployeeInfoServiceImpl implements EmployeeInfoService {

	@Autowired
	EmployeeInfoMapper employeeInfoMapper;
	
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.deleteByPrimaryKey(id);
	}

	public int  insert(EmployeeInfo record) {
		// TODO Auto-generated method stub
		return  employeeInfoMapper.insert(record);
	}

	public List<EmployeeInfo> selectAll() {
		// TODO Auto-generated method stub
		return employeeInfoMapper.selectAll();
	}

	public List<EmployeeInfo> queryStatus(int status) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.queryStatus(status);
	}

	public List<EmployeeInfo> queryName(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.queryName(paramMap);
	}

	public EmployeeInfo selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return employeeInfoMapper.selectByPrimaryKey(id);
	}

	public void updateByPrimaryKey(EmployeeInfo info) {
		// TODO Auto-generated method stub
		employeeInfoMapper.updateByPrimaryKey(info);
	}

}
