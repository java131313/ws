package com.atguigu.mapper;

import com.atguigu.bean.SysPosition;
import java.util.List;

public interface SysPositionMapper {
    
    int deleteByPrimaryKey(String id);

    int insert(SysPosition record);

    SysPosition selectByPrimaryKey(String id);

    List<SysPosition> selectAll();

    int updateByPrimaryKey(String id);

	void update(SysPosition pos);
}