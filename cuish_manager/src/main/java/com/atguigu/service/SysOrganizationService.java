package com.atguigu.service;

import java.util.List;
import java.util.Map;

import com.atguigu.bean.SysOrganization;

public interface SysOrganizationService {

	int insert(SysOrganization record);
	
	List<SysOrganization> selectAll();
	
	int  deleteByPrimaryKey(int id);
	
	 int updateByPrimaryKey(int id);

	int queryPageCount(Map<String, Object> paramMap);

	List<SysOrganization> queryPageOrg(Map<String, Object> paramMap);

	SysOrganization selectByPrimaryKey(int id);

	void edit_sys_organ(SysOrganization sys);
}
