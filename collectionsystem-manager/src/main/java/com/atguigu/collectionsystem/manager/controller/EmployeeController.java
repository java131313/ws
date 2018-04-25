package com.atguigu.collectionsystem.manager.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.collectionsystem.manager.entities.EmployeeInfo;
import com.atguigu.collectionsystem.manager.service.EmployeeInfoService;
import com.mysql.fabric.xmlrpc.base.Data;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeInfoService employeeInfoService;
	
	@RequestMapping("goto_emp")
	public String goto_organization() {
		
		return "/emp/employeeInfo";
		
	}
	
	
	@ResponseBody
	@RequestMapping("/getJsonEmployeeInfo")
	public Object getgetJsonEmployeeInfo() {
	
		List<EmployeeInfo> list_employeeInfo = employeeInfoService.getAllEmployeeInfo();
		return  list_employeeInfo;
	}
	
	@ResponseBody
	@RequestMapping("/addEmp")
	public String addOrgn(EmployeeInfo emp) {
		
		Date date = new Date();
		emp.setModifyTime(date);
		int i=employeeInfoService.insertEmp(emp);
		//System.out.println(i);
		return i>0?"1":"0";
	}
	
	
	
	@ResponseBody
	@RequestMapping("/editEmp")
	public String editOrgn(EmployeeInfo emp) {
		
		Date date = new Date();
		emp.setModifyTime(date);
		int i = employeeInfoService.editEmp( emp); 
		return i>0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("/deleteEmp")
	public String deleteOrgn(String id) {
		
		int i=employeeInfoService.deleteEmp(id);
		
		return i>0?"1":"0";
	}
}
