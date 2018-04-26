package com.atguigu.mapper;

import com.atguigu.bean.CaseBatch;
import java.util.List;

public interface CaseBatchMapper {
 
    int deleteByPrimaryKey(String id);

    int insert(CaseBatch record);

    List<CaseBatch> selectAll();

    int updateByPrimaryKey(CaseBatch record);
}