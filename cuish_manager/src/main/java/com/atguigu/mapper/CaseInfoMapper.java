package com.atguigu.mapper;

import com.atguigu.bean.CaseInfo;
import java.util.List;

public interface CaseInfoMapper {
    
    int deleteByPrimaryKey(String id);

    int insert(CaseInfo record);

    List<CaseInfo> selectAll();

    int updateByPrimaryKey(CaseInfo record);
}