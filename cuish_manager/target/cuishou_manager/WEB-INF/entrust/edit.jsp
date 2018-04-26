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
<title>Insert title here</title>

</head>
<body>
	
	<div id="m" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:500px;padding:5px;">
		<div style="width:400px;padding:20px;margin:20px">
			<form id="fmm" method="post" >
				<table cellpadding="5">
					<tr>
						<td class="tt">ID：</td>
						<td>
							<input type="hidden" name="id" id="id" style="width:200px;" >
						</td>
					
					</tr>
					<!-- 
								//parentId=2&type=1&+principalId+=&name=4&address=4&phone=4&post_code=4&fax=4&orderNo=4
					 -->
					 <tr>
						<td class="tt">上级机构：</td>
						<td>
							<input class="easyui-combobox" name="parentId" id="parentId" style="width:200px;" 
								data-options="
									valueField:'id',
									textField:'parentId',
									url: 'organization/goto_organization_list.do',
									columns:[[
											{field:'parentId'}
									]]
								">
						</td>
					</tr> 
					<tr>
						<td class="tt">机构类型：</td>
						<td>
							<input class="easyui-combobox" name="type" style="width:200px;"data-options="
									valueField:'id',
									textField:'type',
									url: 'organization/goto_organization_list.do',
									columns:[[
											{field:'type'}
									]]
								">
						</td>
					</tr>
					<tr>
						<td class="tt">负责人：</td>
						<td>
							<input class="easyui-combobox" id="principalId" name=" principalId " style="width:200px;"data-options="
									valueField:'id',
									textField:'principalId',
									url: 'organization/goto_organization_list.do',
									columns:[[
											{field:'principalId'}
									]]
								">
						</td>
					</tr>
					<tr>
						<td class="tt">机构名称：</td>
						<td><input id="name"  name="name" class="easyui-textbox"style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">地址：</td>
						<td><input id="address" class="easyui-textbox"  name="address" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">电话号码：</td>
						<td><input id="phone" class="easyui-textbox" name="phone" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">邮政编码：</td>
						<td><input id="postCode" class="easyui-textbox" name="post_code" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">传真号：</td>
						<td><input id="fax" class="easyui-textbox" name="fax" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">排序：</td>
						<td>
							<input class="easyui-textbox"name="orderNo" style="width:200px;" >
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
        <a href="javascript:;" class="easyui-linkbutton " iconCls="icon-ok" onclick="edit()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#m').dialog('close')" style="width:90px">Cancel</a>
    </div>
	</div>
</body>
</html>