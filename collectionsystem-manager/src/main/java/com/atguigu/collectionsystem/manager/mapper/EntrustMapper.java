package com.atguigu.collectionsystem.manager.mapper;

import com.atguigu.collectionsystem.manager.entities.Entrust;
import com.atguigu.collectionsystem.manager.entities.EntrustWithBLOBs;

public interface EntrustMapper {
    int deleteByPrimaryKey(String id);

    int insert(EntrustWithBLOBs record);

    int insertSelective(EntrustWithBLOBs record);

    EntrustWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(EntrustWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(EntrustWithBLOBs record);

    int updateByPrimaryKey(Entrust record);
}