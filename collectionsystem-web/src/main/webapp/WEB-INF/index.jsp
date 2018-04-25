<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

	<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
	<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function add_tab(url,title){
		// add a new tab panel  
		var b = $('#tt').tabs('exists',title);
		if(!b){
			$('#tt').tabs('add',{    
			    title:title,    
			    href:url,    
			    closable:true,    
			    tools:[{    
			        iconCls:'icon-mini-refresh',    
			        handler:function(){    
			            alert('refresh');    
			        }    
			    }]    
			});
		}else{
			$('#tt').tabs('select',title);
		}

	}
	
	function add_tab2(url,title){
		// add a new tab panel    
		$.post(url,function(data){
			$('#tt').tabs('add',{    
			    title:title,    
			    content:data,    
			    closable:true,    
			    tools:[{    
			        iconCls:'icon-mini-refresh',    
			        handler:function(){    
			            alert('refresh');    
			        }    
			    }]    
			});
		});
	}
</script>
<title>硅谷商城</title>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px"><h2>催收系统</h2></div>
	<div data-options="region:'west',split:true,title:'导航栏'" style="width:180px;padding:10px;">
		<div class="easyui-accordion" style="width:160px;">
			<div title="系统管理" data-options="iconCls:'icon-ok'" >
				<ul>
					<li iconCls="icon-chart-organisation"><a href="javascript:add_tab('goto_organization.do','组织机构')" >组织机构</a></li>
					<li><a href="javascript:add_tab('goto_emp.do','员工管理')" >员工管理</a></li>
					<li><a href="javascript:add_tab('goto_pos.do','职位管理')" >职位管理</a></li>
				</ul>
			</div>
			<div title="About" data-options="iconCls:'icon-ok'">
				<ul>
					<li></li>
				</ul>
			</div>
		</div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'首页'">
		<div id="tt" class="easyui-tabs" >

		</div>
	</div>

	
		<div>
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
		</div>
	</div>
	
	
	
</body>
</html>