package com.atguigu.mapper;

import com.atguigu.bean.Entrust;
import java.util.List;

public interface EntrustMapper {
   
    int deleteByPrimaryKey(String id);

    int insert(Entrust record);

    List<Entrust> selectAll();

    int updateByPrimaryKey(Entrust record);
}