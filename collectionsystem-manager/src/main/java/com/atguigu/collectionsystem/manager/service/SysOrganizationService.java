package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.SysOrganization;

public interface SysOrganizationService {

	List<SysOrganization> getAllOrganization();
	

	int editOrgn(SysOrganization orgn);

	int deleteOrgn(int id);
}