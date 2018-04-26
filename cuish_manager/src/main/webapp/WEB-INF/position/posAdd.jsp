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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script> -->
<title>Insert title here</title>

</head>
<body>
	
	<div id="w" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:500px;padding:5px;">
		<div style="width:400px;padding:20px;margin:20px">
			<form id="fm" method="post" >
				<table cellpadding="5">
					 <tr>
						<td class="tt">ID：</td>
						<td>
							<input class="easyui-textbox" name="id" id="id" style="width:200px;" >
						</td>
					</tr>  
					 <tr>
						<td class="tt">职位名称：</td>
						<td>
							<input class="easyui-textbox" name="name" id="name" style="width:200px;" >
						</td>
					</tr> 
					<tr>
						<td class="tt">上级ID：</td>
						<td>
							<input class="easyui-combobox" name="parentId" style="width:200px;"
								data-options="
									valueField:'id',
									textField:'parentId',
									url: 'position/goto_position_list.do',
									columns:[[
											{field:'parentId'}
									]]
								">
						</td>
					</tr>
					<tr>
						<td class="tt">排序号：</td>
						<td>
							<input class="easyui-textbox" id="orderNo" name="orderNo" style="width:200px;"
							>
						</td>
					</tr>
					<tr>
						<td class="tt">描述：</td>
						<td><input id="description"  name="description" class="easyui-textbox"style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">职位路径：</td>
						<td><input id="path" class="easyui-textbox"  name="path" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">岗位类型：</td>
						<td><select class="easyui-combobox" name="type" style="width:200px;">
									<option value="1">客服</option>
									<option value="2">员工</option>
									<option value="3">主任</option>
									<option value="4">经理</option>
									<option value="5">总监</option>
								</select>
						</td>
					</tr>
					<tr>
						<td class="tt">创建时间：</td>
						<td><input id="modifyTime"  name="createTime" class="easyui-datetimebox"style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">修改时间：</td>
						<td><input id="modifyTime"  name="modifyTime" class="easyui-datetimebox"style="width:200px"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
	        <a href="javascript:;" class="easyui-linkbutton " iconCls="icon-ok" onclick="saveUser()" style="width:60px">Save</a>
	        <a href="javascript:;" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#w').dialog('close')" style="width:60px">Cancel</a>
   		 </div>
	</div>

</body>
</html>