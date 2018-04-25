package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.collectionsystem.manager.entities.SysOrganization;
import com.atguigu.collectionsystem.manager.mapper.SysOrganizationMapper;

@Service
public class SysOrganizationServiceImpl implements SysOrganizationService {

	@Autowired
	SysOrganizationMapper sysOrganizationMapper;

	@Override
	public List<SysOrganization> getAllOrganization() {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.selectAllOrganization();
	}

	@Override
	public int insertOrgn(SysOrganization orgn) {
		return sysOrganizationMapper.insertSelective(orgn);
	}

	@Override
	public int editOrgn(SysOrganization orgn) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.updateByPrimaryKeySelective(orgn);
	}

	@Override
	public int deleteOrgn(int id) {
		// TODO Auto-generated method stub
		return sysOrganizationMapper.deleteByPrimaryKey(id);
	}

	
}
