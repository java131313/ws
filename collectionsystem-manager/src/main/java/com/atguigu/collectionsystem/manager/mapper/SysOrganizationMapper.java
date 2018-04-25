package com.atguigu.collectionsystem.manager.mapper;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.SysOrganization;

public interface SysOrganizationMapper {
    int deleteByPrimaryKey(int id);

    int insert(SysOrganization record);

    int insertSelective(SysOrganization record);

    SysOrganization selectByPrimaryKey(int id);

    int updateByPrimaryKeySelective(SysOrganization record);

    int updateByPrimaryKey(SysOrganization record);

	List<SysOrganization> selectAllOrganization();
}