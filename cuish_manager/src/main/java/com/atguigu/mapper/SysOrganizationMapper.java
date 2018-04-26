package com.atguigu.mapper;

import com.atguigu.bean.SysOrganization;
import java.util.List;
import java.util.Map;

public interface SysOrganizationMapper {
   
	int deleteByPrimaryKey(int id);

    int insert(SysOrganization record);

    SysOrganization selectByPrimaryKey(int id);

    List<SysOrganization> selectAll();

    int updateByPrimaryKey(int id);

	int queryPageCount(Map<String, Object> paramMap);

	List<SysOrganization> queryPageOrg(Map<String, Object> paramMap);

	List<SysOrganization> selectAllByPrincipalId();

	void edit_sys_organ(SysOrganization sys);

}