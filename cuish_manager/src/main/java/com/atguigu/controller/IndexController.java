package com.atguigu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	
	@RequestMapping("index")
	public String index(String url,String title,ModelMap map) {
		
		map.put("url",url);
		map.put("title",title);
		
		return "index";
	}
	@RequestMapping("organization")
	public String organization() {
		return "organization/organization";
	}
	@RequestMapping("position")
	public String position() {
		return "position/position";
	}
	
	@RequestMapping("emp")
	public String emp() {
		return "employee/emp";
	}
	
}
