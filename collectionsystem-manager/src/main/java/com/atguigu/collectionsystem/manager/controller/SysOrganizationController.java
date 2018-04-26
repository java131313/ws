package com.atguigu.collectionsystem.manager.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.collectionsystem.manager.entities.SysOrganization;
import com.atguigu.collectionsystem.manager.service.SysOrganizationService;

@Controller
public class SysOrganizationController {
	
	@Autowired
	SysOrganizationService sysOrganizationService;
	
/*	@RequestMapping("/goto__organization")
	public String organization(ModelMap map) {
	
		List<SysOrganization> allOrganization = sysOrganizationService.getAllOrganization();
		//String list_json = MyJsonUtil.list_to_json(allOrganization);
		//System.out.println(allOrganization);
		System.out.println("11");
		map.put("orgs", allOrganization);
		return  "organization";
	}*/
	
	@RequestMapping("goto_organization")
	public String goto_organization() {
		
		return "/org/organization";
	}
	
	
	@ResponseBody
	@RequestMapping("/getJsonOrganization")
	public Object getJsonOrganization() {
	
		//创建一个空的集合  用来存储根节点
		List<SysOrganization>  list_root = new ArrayList<SysOrganization>();
		List<SysOrganization> list_organization = sysOrganizationService.getAllOrganization();
		
		//创建一个map集合 遍历集合 存储各个节点  key为各个节点的id value为各个节点
		Map<Integer,SysOrganization> map = new HashMap<Integer,SysOrganization>();
		
		for (SysOrganization sysOrganization : list_organization) {
			
			map.put(sysOrganization.getId(), sysOrganization);
		}
		//判断父节点
		for (SysOrganization sysOrganization : list_organization) {
			SysOrganization child = sysOrganization;
			
			if(child.getParentId() == 0) {
				
				list_root.add(child);
			}else {
				//子节点集合
				SysOrganization parent = map.get(child.getParentId());
				parent.getChildren().add(child);
			}
		}
	
		return list_root;
	}
	
	@ResponseBody
	@RequestMapping("/addOrgn")
	public String addOrgn( SysOrganization orgn, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			
		}
		Date date= new Date();
		orgn.setModifyTime(date);
		int i=sysOrganizationService.insertOrgn(orgn);
		return i>0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("/editOrgn")
	public String editOrgn(SysOrganization orgn) {
		
		
		Date date= new Date();
		orgn.setModifyTime(date);
		int i = sysOrganizationService.editOrgn(orgn); 
		return i>0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("/deleteOrgn")
	public String deleteOrgn(int id) {
		
		
		int i=sysOrganizationService.deleteOrgn(id);
		return i>0?"1":"0";
	}
}
