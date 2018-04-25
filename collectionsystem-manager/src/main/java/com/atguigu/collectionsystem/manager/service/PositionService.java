package com.atguigu.collectionsystem.manager.service;

import java.util.List;

import com.atguigu.collectionsystem.manager.entities.SysPosition;

public interface PositionService {

	List<SysPosition> selectAll();

	int editPos(SysPosition pos);

	int addPos(SysPosition pos);

	int delPos(SysPosition pos);

}
