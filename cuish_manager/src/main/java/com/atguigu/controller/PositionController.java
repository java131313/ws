package com.atguigu.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



import com.atguigu.bean.SysPosition;
import com.atguigu.service.PositionService;


@Controller
@RequestMapping("position")
public class PositionController{
	
	@Autowired
	private PositionService positionService;

	@ResponseBody
	@RequestMapping("goto_position_list")
	public Object pos_list() {
		
		List<SysPosition> list_pos = positionService.selectAll();
		return list_pos;
	}
	
	@ResponseBody
	@RequestMapping("goto_position")
	public Object get_org_list() {
		
		List<SysPosition> list_pos = positionService.selectAll();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list_pos", list_pos);
		return map;
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public String deletePosition(@RequestParam("id")String id) {

		int i = positionService.deleteByPrimaryKey(id);
		return i>0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("modifyPosition")
	public Object modifyPosition(String id) {
		SysPosition position = positionService.selectByPrimaryKey(id);
		return position;
	}
		
	@ResponseBody
	@RequestMapping("edit_sys_pos")
	public Object edit_sys_pos(SysPosition pos) {
	
		 positionService.update(pos);
		return "success";
	}
		
	@RequestMapping("insertPosition")
	@ResponseBody
	public String insertPosition(SysPosition pos) {

		int i = positionService.insert(pos);
		return i>0?"1":"0";
	}
}
