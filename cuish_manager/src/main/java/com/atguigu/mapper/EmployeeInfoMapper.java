package com.atguigu.mapper;

import com.atguigu.bean.EmployeeInfo;
import java.util.List;
import java.util.Map;

public interface EmployeeInfoMapper {
   
    int deleteByPrimaryKey(String id);
    
    EmployeeInfo selectByPrimaryKey(String id);
    
    int insert(EmployeeInfo record);

    List<EmployeeInfo> selectAll();

	List<EmployeeInfo> queryStatus(int status);

	List<EmployeeInfo> queryName(Map<String, Object> paramMap);

	void updateByPrimaryKey(EmployeeInfo info);
}