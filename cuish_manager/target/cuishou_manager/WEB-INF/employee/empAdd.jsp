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
	
	<div id="w" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:500px;padding:5px;">
		<div style="width:400px;padding:20px;margin:20px">
			<form action=""  id="fm">
				<table cellpadding="5">
					<tr>
						<td class="tt">ID：</td>
						<td><input class="easyui-textbox" name="id" id="id" style="width:200px;" ></td>
					</tr> 
					 <tr>
						<td class="tt">言之：</td>
						<td><input class="easyui-textbox" name="salt" id="salt" style="width:200px;" >
						</td>
					</tr> 
					<tr>
						<td class="tt">版本号：</td>
						<td>
							<input class="easyui-textbox" name="version" style="width:200px;">
						</td>
					</tr>
					<tr>
						<td class="tt">员工编号：</td>
						<td>
							<input class="easyui-textbox" id="number" name="number" style="width:200px;"
							>
						</td>
					</tr>
					<tr>
						<td class="tt">状态：</td>
						<td><input id="name"  name="status" class="easyui-textbox"style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">员工姓名：</td>
						<td><input id="address" class="easyui-textbox"  name="userName" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">身份证：</td>
						<td><input id="phone" class="easyui-textbox" name="personalId" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">性别：</td>
						<td><!-- <input name="sex" type="radio" checked value="1" />男
								<input name="sex" type="radio"  value="0"  />女 -->
								<input id="sex" class="easyui-textbox" name="sex" style="width:200px">
							</td>
					</tr>
					<tr>
						<td class="tt">生日：</td>
						<td><input id="fax" class="easyui-datetimebox" name="birthday" style="width:200px"></td>
					</tr> 
					<tr>
						<td class="tt">名族：</td>
						<td>
							<input class="easyui-textbox"name="nation" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">密码：</td>
						<td>
							<input class="easyui-textbox"name="password" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">登录名：</td>
						<td>
							<input class="easyui-textbox"name="loginName" style="width:200px;" >
						</td>
					</tr>
					
					<tr>
						<td class="tt">婚姻状态：</td>
						<td>
							<input class="easyui-textbox"name="married" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">省份：</td>
						<td>
							<input class="easyui-textbox"name="province" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">城市：</td>
						<td>
							<input class="easyui-textbox"name="city" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">邮箱：</td>
						<td>
							<input class="easyui-textbox"name="email" style="width:200px;" >
						</td>
					</tr>
					 <tr>
						<td class="tt">入职时间：</td>
						<td>
							<input class="easyui-datebox"name="joinTime" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">岗位号：</td>
						<td>
							<input class="easyui-textbox"name="positionId" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">机构号：</td>
						<td>
							<input class="easyui-combobox"name="orgId" style="width:200px;" 
							data-options="
									valueField:'id',
									textField:'name',
									url: 'organization/goto_organization_list.do',
									columns:[[
											{field:'name'}
									]]
								">
						</td>
					</tr>
					<tr>
						<td class="tt">生日：</td>
						<td><input id="createTime" class="easyui-datetimebox" name="createTime" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">生日：</td>
						<td><input id=""modifyTime"" class="easyui-datetimebox" name="modifyTime" style="width:200px"></td>
					</tr>
					<tr>
						<td class="tt">坐席用户：</td>
						<td>
							<input class="easyui-textbox"name="ccLogin" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">坐席密码：</td>
						<td>
							<input class="easyui-textbox"name="ccPwd" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">服务地址：</td>
						<td>
							<input class="easyui-textbox"name="ccServer" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">坐席号：</td>
						<td>
							<input class="easyui-textbox"name="ccPhone" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">联系方式：</td>
						<td>
							<input class="easyui-textbox"name="contactMode" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">附加区域：</td>
						<td>
							<input class="easyui-textbox"name="attachOrgId" style="width:200px;" >
						</td>
					</tr>
					<tr>
						<td class="tt">附加委托方：</td>
						<td>
							<input class="easyui-textbox"name="attachEntrustId" style="width:200px;" >
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton " iconCls="icon-ok" onclick="saveUser()" style="width:50px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#w').dialog('close')" style="width:40px">Cancel</a>
    </div>
	</div>
</body>
</html>