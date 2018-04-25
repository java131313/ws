package com.atguigu.collectionsystem.manager.mapper;

import com.atguigu.collectionsystem.manager.entities.CaseBatch;
import com.atguigu.collectionsystem.manager.entities.CaseBatchWithBLOBs;

public interface CaseBatchMapper {
    int deleteByPrimaryKey(String id);

    int insert(CaseBatchWithBLOBs record);

    int insertSelective(CaseBatchWithBLOBs record);

    CaseBatchWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CaseBatchWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CaseBatchWithBLOBs record);

    int updateByPrimaryKey(CaseBatch record);
}