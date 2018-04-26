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
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/ easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<title>Insert title here</title>

</head>
<body>
	<div class="easyui-layout" data-options="fit:true">
				<div data-options="region:'north',split:true,border:false" style="height:100px">
					<div style="margin-top:5px;margin-left:50px">
						<input class="easyui-textbox"  id="queryConntent" placeholder="员工姓名" style="width:100px;" >
						<button id="seaarch" type="button">查询</button>
					</div>
					<div style="margin-left:50px">
						<a href="javascript:;" onclick="newUser()"id="addBtn" class="easyui-linkbutton" data-options="iconCls:'icon-add'">增加</a>
						<a href="javascript:modifyWindow()" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">修改</a> 
						<a href="javascript:;" onclick="deleteInfo(${emp.id })"class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">删除</a>
						<a href="#" class="easyui-linkbutton" data-options="plain:true">停用</a>
						<a href="#" class="easyui-linkbutton" data-options="plain:true">启用</a>
					</div>
					 <jsp:include page="empAdd.jsp"></jsp:include> 
					 <jsp:include page="edit.jsp"></jsp:include> 
				</div>
				<div data-options="region:'center',border:false">
					<div>
						<table class="easyui-datagrid " id="em" title="Basic DataGrid" 
							data-options="collapsible:true,method:'post',url:'employee/query.do'">
						 <thead>
						 <tr>
						 		<th field="ck" checkbox="true"></th>
								 <th data-options="field:'status'">状态</th>
						 		<th data-options="field:'id',width:30">ID</th>
						 		<th data-options="field:'salt',width:30">言之</th> 
								<th data-options="field:'version'">版本号</th>
								<th data-options="field:'number'">员工编号</th>
								<th data-options="field:'userName'">姓名</th>
								<th data-options="field:'personalId'">身份证</th>
								<th data-options="field:'sex'">性别</th>
								<th data-options="field:'birthday'" formatter="crateformatter">生日</th>
								<th data-options="field:'nation'">名族</th>
								<th data-options="field:'loginName'">登录名</th>
								<th data-options="field:'password'">密码</th>
								<th data-options="field:'married'">婚姻状态</th>
								<th data-options="field:'province'">省份</th>
								<th data-options="field:'city'">城市</th>
								<th data-options="field:'email'">邮箱</th>
								<th data-options="field:'joinTime'" formatter="crateformatter">入职时间</th>
								<th data-options="field:'positionId'">岗位号</th>
								<th data-options="field:'orgId'">机构号</th>
								<th data-options="field:'ccLogin'">坐席用户</th>
								<th data-options="field:'ccPwd'">坐席密码</th>
								<th data-options="field:'ccServer'">服务地址</th>
								<th data-options="field:'ccPhone'">坐席号</th>
								<th data-options="field:'contactMode'">联系方式</th>
								<th data-options="field:'attachOrgId'">附加区域</th>
								<th data-options="field:'attachEntrustId'">附加委托方</th>
						  </tr>
						</thead> 
						<tbody>   
						 <c:forEach var="emp" items="${list_emp }" varStatus="status">
							<tr>   
								<td>${emp.status }</td>
								 <td>${emp.id }</td> 
								<td>${emp.salt}</td>
					            <td>${emp.version }</td><td>${emp.number }</td>   
					            <td>${emp.userName }</td><td>${emp.personalId}<td>${emp.sex }</td>
					            <td>${emp.birthday }</td><td>${emp.nation }</td>
					            <td>${emp.loginName }</td><td>${emp.password }</td>
					            <td>${emp.married }</td><td>${emp.province }</td><td>${emp.city }</td>
					            <td>${emp.email }</td><td>${emp.joinTime }</td><td>${emp.positionId }</td>
					            <td>${emp.orgId }</td><td>${emp.ccLogin }</td><td>${emp.ccPwd }</td>
					            <td>${emp.ccServer }</td><td>${emp.ccPhone }</td><td>${emp.contactMode }</td>
					            <td>${emp.attachOrgId }</td><td>${emp.attachEntrustId }</td>				            
					   		</tr>   
						</c:forEach> 
					    </tbody>   
					</table>
				</div>
			</div>
	</div>
	<script type="text/javascript">
	
	
	
	$(function(){
		$('#seaarch').click(function(){
			var queryContent1 = $("#queryConntent");
			alert(queryContent1.val());
			var queryContent = queryContent1.val()+"";
			if(queryContent != ""){
				$('#em').datagrid({
					url:'employee/query.do',
					queryParams:{queryContent:queryContent}
				})
			}
		})
	})
	
	
	function crateformatter(value){
		//value:当前列对用的字段值，时间
		var d = new Date(value);
		var str = d.toLocaleString();
		return str;
	}
	var url;
	//增
    function newUser(){
        $('#w').dialog('open').dialog('center').dialog('員工','增加');
        $('#fm').form('clear');
        url = 'employee/insertEmp.do';
    }
    function saveUser(){
        $('#fm').form('submit',{
            url: url,
            onSubmit: function(){
                return $(this).form('validate');
            },
            success: function(result){
                var result = eval('('+result+')');
                if (result.errorMsg){
                    $.messager.show({
                        title: 'Error',
                        msg: result.errorMsg
                    });
                } else {
                    $('#w').dialog('close');        // close the dialog
                    $('#em').datagrid('reload');    // reload the user data
                }
            }
        });
    }
		 //删除操作
		 function deleteInfo(id){
		 	var row = $('#em').datagrid("getSelected");
		 	alert(row.id);
		 	if (row){
		 		$.messager.confirm('删除','确定要删除吗?',function(r){
		 		    if (r){
		 		    	var id = row.id+"";
		 		    	console.log(id);
		 		    	$.post('employee/delete.do' ,{ id:id },
		 		    			   function(data){
		 		    				if(data=="1"){
		 		    					 alert(row.id);
		 		    					 $('#em').datagrid('reload'); 
		 		    				}else{
		 		    					$.messager.show({
		 			    			    	 title:'删除',
		 			    			    	msg:'删除失败.',
		 			    			     });
		 		    				}
		 		    			   }, "json");
		 		    }
		 		});
		 	}
		 }
/* 		 function ModifyWindow(){
			 var row = $('.ta').datagrid("getSelected");
	            if (row){
	                $('#m').window('open').window('center').window('setTitle','Edit User');
	                $('#fm').form('load',row);
	                url = 'employee/modifyEmp.do?id='+row.id; 
	            }
				
		 }  */
		 
		 function modifyWindow(id){
			 var row = $('#em').datagrid("getSelected");
			 var id = row.id+"";
			 alert(id);
			 $.post("employee/modifyEmp.do",{id:id},function(data){
				 alert(id);
				 $('#m').dialog('open').dialog('center').dialog('setTitle','修改职位');
				 $('#fmm').form('load',data);
			 })
		 }
		//real 修改 sys_organ
			function edit(){
		       var  from =$("#fmm").serialize();
		        $.post("employee/edit_sys_info.do",from,function(data){
		    	//关闭窗口 
		    	$('#m').window('close');
		    	$('#em').datagrid('reload');
		    	  var tab= $("#tag").datagrid("getSelected");
		    	   tab.panel("refesh")
		      	 })
		        } 
	</script>
</body>
</html>










