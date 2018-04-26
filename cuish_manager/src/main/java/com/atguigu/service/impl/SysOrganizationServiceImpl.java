package com.atguigu.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.SysOrganization;
import com.atguigu.mapper.SysOrganizationMapper;
import com.atguigu.service.SysOrganizationService;

@Service
public class SysOrganizationServiceImpl implements SysOrganizationService {

	@Autowired
	 SysOrganizationMapper sysOrganizationMapper;
	
	public int insert(SysOrganization record) {
		
		return sysOrganizationMapper.insert(record);
		
	}
	 public List<SysOrganization> selectAll(){
		return sysOrganizationMapper.selectAll();
	 }
	public int deleteByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		int flag = sysOrganizationMapper.deleteByPrimaryKey(id);
		return flag;
	}
	public int updateByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.updateByPrimaryKey(id);
	}

	public int queryPageCount(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.queryPageCount(paramMap);
	}
	public List<SysOrganization> queryPageOrg(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.queryPageOrg(paramMap);
	}

	public SysOrganization selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.selectByPrimaryKey(id);
	}

	public void edit_sys_organ(SysOrganization sys) {
		// TODO Auto-generated method stub
		sysOrganizationMapper.edit_sys_organ(sys);
	}
	

	
}
