package com.atguigu.mapper;

import com.atguigu.bean.CasePaid;
import java.util.List;

public interface CasePaidMapper {
   
    int deleteByPrimaryKey(String id);

    int insert(CasePaid record);

    CasePaid selectByPrimaryKey(String id);

    List<CasePaid> selectAll();

    int updateByPrimaryKey(CasePaid record);
}