package com.atguigu.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atguigu.bean.AJAXResult;
import com.atguigu.bean.MyJsonUtil;
import com.atguigu.bean.Page;
import com.atguigu.bean.SysOrganization;
import com.atguigu.service.SysOrganizationService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("organization")
public class OrganizationController {
	
	@Autowired
	private SysOrganizationService sysOrganizationService;

	@RequestMapping("goto_organization_tree")
	@ResponseBody
	public Object tree() {
		List<SysOrganization> list_orgs = new ArrayList<SysOrganization>();
		List<SysOrganization> dborgs = sysOrganizationService.selectAll();
		

		//使用集合整合之间的关系
		Map<Integer,SysOrganization> orgMap = new HashMap<Integer,SysOrganization>();
		
		//把permission放入到map集合中，以键值对的形式
		for(SysOrganization org : dborgs) {
			orgMap.put(org.getId(), org);
		}
		for(SysOrganization org:dborgs) {
			//子菜单，里面有子菜单和父菜单，所有的都在里面，除了根
			//子菜单
			SysOrganization child = org;
			//根菜单的pid 为0
			if(child.getParentId()==0) {
				list_orgs.add(org);
			}else {
				System.out.println(child.getId());
				//父菜单
				SysOrganization parent = orgMap.get(child.getParentId());
				System.out.println("fu"+parent);
				parent.getChildren().add(child);
			}
		}
		return list_orgs;
	}
	
	@RequestMapping("goto_organization_page")
	@ResponseBody
	public Object get_org_list_by_page(int page,int rows) {
		
			int start = (page - 1) * rows;
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("start", start);
			paramMap.put("size", rows);
			
			List<SysOrganization> list_orgs = sysOrganizationService.queryPageOrg(paramMap);
			//查询总条数
			int totalsize = sysOrganizationService.queryPageCount(paramMap);
			System.out.println(totalsize);
			
			/*Page<SysOrganization> list_org = new Page<SysOrganization>();
			list_org.setPageno(row);
			list_org.setPagesize(pagesize);
			list_org.setDatas(list_orgs);
			list_org.setTotalsize(totalsize);*/
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list_orgs", list_orgs);
			map.put("total", totalsize);
			return map;
	}
	
	@RequestMapping("save_user")
	public String save_user() {
		
		return "organization/save_user";
	}
	
	@ResponseBody
	@RequestMapping("goto_organization_list")
	public Object org_list() {
		
		List<SysOrganization> list_orgs = sysOrganizationService.selectAll();
	
		return list_orgs;
	}
	
	@ResponseBody
	@RequestMapping("goto_organization")
	public Object get_org_list() {
		
		List<SysOrganization> list_orgs = sysOrganizationService.selectAll();
		Map<String,Object> map = new HashMap<String,Object>();
	
		map.put("list_orgs", list_orgs);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("delete")
	public String deleteOrganization(int id) {

		int i = sysOrganizationService.deleteByPrimaryKey(id);
		
		return i>0?"1":"0";
	}
	
	@ResponseBody
	@RequestMapping("modifyOrganization1")
	public Object  modifyOrganization1(int id) {
		
		//
//		SysOrganization sys= sysOrganizationService.selectByPrimaryKey(id);
		int i = sysOrganizationService.updateByPrimaryKey(id);
		return i>0?"1":"0";
	}

	@ResponseBody
	@RequestMapping("modifyOrganization")
	public Object  modifyOrganization(int id) {

		SysOrganization sys= sysOrganizationService.selectByPrimaryKey(id);
		return sys;
	}
	
	@ResponseBody
	@RequestMapping("edit_sys_organ")
	public Object edit_sys_organ(SysOrganization sys) {
	
		 sysOrganizationService.edit_sys_organ(sys);
		
		return "success";
	}
		
	@ResponseBody
	@RequestMapping("insertOrganization")
	public String insertOrganization(SysOrganization org) {

		int i = sysOrganizationService.insert(org);
		
		return i>0?"1":"0";
	}
}
