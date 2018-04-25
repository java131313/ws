package com.atguigu.collectionsystem.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DispatcherController {

	public DispatcherController() {
		System.out.println("初始化DispatcherController");
	}
	@RequestMapping(value={"", "/", "/index", "/index/"})
	public String index() {
		
		System.out.println("1111");
		return "index";
	}
	
	
}
