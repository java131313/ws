package com.atguigu.collectionsystem.manager.mapper;

import com.atguigu.collectionsystem.manager.entities.CaseInfo;
import com.atguigu.collectionsystem.manager.entities.CaseInfoWithBLOBs;

public interface CaseInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(CaseInfoWithBLOBs record);

    int insertSelective(CaseInfoWithBLOBs record);

    CaseInfoWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CaseInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CaseInfoWithBLOBs record);

    int updateByPrimaryKey(CaseInfo record);
}