package com.atguigu.collectionsystem.manager.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.collectionsystem.manager.entities.SysPosition;
import com.atguigu.collectionsystem.manager.service.PositionService;

@Controller
public class PositionController {

	@Autowired
	PositionService positionService;

	@RequestMapping("/goto_pos")
	public String goto_pos() {

		return "/pos/position";
	}

	@RequestMapping("/getJsonPosition")
	@ResponseBody
	public Object getJsonPosition() {

		List<SysPosition> position_list = positionService.selectAll();

		return position_list;
	}

	@RequestMapping("/addPos")
	public String addPos(SysPosition pos) {
		pos.setModifyTime(new Date());
		int i = positionService.addPos(pos);

		return i > 0 ? "1" : "0";
	}

	@RequestMapping("/editPos")
	public String editPos(SysPosition pos) {
		pos.setModifyTime(new Date());
		int i = positionService.editPos(pos);

		return i > 0 ? "1" : "0";
	}

	@RequestMapping("/delPos")
	public String delPos(SysPosition pos) {

		int i = positionService.delPos(pos);
		return i > 0 ? "1" : "0";
	}
}
