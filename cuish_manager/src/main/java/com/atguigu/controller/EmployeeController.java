package com.atguigu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atguigu.bean.EmployeeInfo;
import com.atguigu.bean.SysOrganization;
import com.atguigu.service.EmployeeInfoService;

@Controller
@RequestMapping("employee")
public class EmployeeController {

	@Autowired
	EmployeeInfoService employeeInfoService;
	
	
	@ResponseBody
	@RequestMapping("query")
	public Object queryByStatus(ModelMap map,String queryContent) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("queryContent", queryContent);
		
		List<EmployeeInfo> list_emp = employeeInfoService.queryName(paramMap);
		return list_emp;
	}
	
	@ResponseBody
	@RequestMapping("modifyEmp")
	public Object modifyEmp(String id) {
		EmployeeInfo info = employeeInfoService.selectByPrimaryKey(id);
		
		return info;
	}
	@ResponseBody
	@RequestMapping("edit_sys_info")
	public Object edit_sys_organ(EmployeeInfo info) {
		employeeInfoService.updateByPrimaryKey(info);
		return "success";
	}
		
	
	@ResponseBody
	@RequestMapping("delete")
	public String  deleteEmp(String id) {
//		String newId = id.substring(1, (id.length() - 1));
		 int i = employeeInfoService.deleteByPrimaryKey(id);
		
		return i==0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("insertEmp")
	public String insertEmp(EmployeeInfo emp) {
		
		int i = employeeInfoService.insert(emp);
		
		return i==0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("goto_emp")
	public Object goto_emp(ModelMap map) {
		
		List<EmployeeInfo> list_emp = new ArrayList<EmployeeInfo>();
		list_emp = employeeInfoService.selectAll();
		
		return list_emp;
	}
}
