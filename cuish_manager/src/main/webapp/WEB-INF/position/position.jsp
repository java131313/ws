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
				<div data-options="region:'north',split:true,border:false" style="height:50px">
					<div style="margin-left:50px">
						<a href="javascript:;" onclick="newUser()"id="addBtn" class="easyui-linkbutton" data-options="iconCls:'icon-add'">增加</a>
						<a href="javascript:modifyWindow()" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">修改</a> 
						<a href="javascript:;" onclick="deletePos()"class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">删除</a>
					</div>
					<jsp:include page="posAdd.jsp"></jsp:include>
					<jsp:include page="edit.jsp"></jsp:include>
				</div>
			
				<div data-options="region:'center',border:false">
				
					<div>
						<table id="ta"class="easyui-datagrid "  title="Basic DataGrid" 
							data-options=" url: 'position/goto_position_list.do',singleSelect:true,collapsible:true,method:'post'">
						<thead>
							<tr>
								<th data-options="field:'index',width:30">序号</th>
								<th data-options="field:'id',width:30">ID</th> 
								<th data-options="field:'name',width:30">职位名称</th> 
								<th data-options="field:'parentId',width:120">上级ID</th>
								<th data-options="field:'orderNo',width:120">排序号</th>
								<th data-options="field:'description',width:120">描述</th>
								<th data-options="field:'path',width:120">职位路径</th>
								<th data-options="field:'type',width:120">地岗位类型</th>
								<th data-options="field:'createTime',width:120" formatter="crateformatter">创建时间</th>
								<th data-options="field:'modifyTime',width:120" formatter="crateformatter">修改时间</th>
							</tr>
						</thead>
						<tbody>   
						<c:forEach var="pos" items="${list_orgs}" varStatus="status">
							<tr>   
								<td>${status.index+1}</td>
								<td>${pos.id}</td>
								 <td>${pos.name }</td> 
					            <td>${pos.parentId }</td><td>${pos.orderNo }</td><td>${pos.description }</td>   
					            <td>${pos.path }</td><td>${pos.type }</td><td>${pos.createTime }</td> 
					            <td>${pos.modifyTime}</td> 
					   </tr>   
						</c:forEach>
					    </tbody>   
					</table>
					<div class="easyui-pagination" data-options="" id="pagination"></div>
				</div>
			</div>
			
	</div>
	<script type="text/javascript">
	function crateformatter(value){
		//value:当前列对用的字段值，时间
		var d = new Date(value);
		var str = d.toLocaleString();
		return str;
	}
	
	var url;
	//增
    function newUser(){
        $('#w').dialog('open').dialog('center').dialog('setTitle','New User');
        $('#fm').form('clear');
        url = 'position/insertPosition.do';
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
                    $('#ta').datagrid('reload');    // reload the user data
                }
            }
        });
    }
	
 //删除操作
function deletePos(id){
	var row = $('#ta').datagrid("getSelected");
	alert(row.id);
	if (row){
		$.messager.confirm('删除','确定要删除吗?',function(r){
		    if (r){
		    	var id = row.id+"";
		    	$.post('position/delete.do' ,{ "id":id },
		    			   function(data){
		    				if(data=="1"){
		    					 alert(row.id);
		    					 $('#ta').datagrid('reload'); 
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
		
		 function modifyWindow(id){
			 var row = $('#ta').datagrid("getSelected");
			 var id = row.id+"";
			
			 $.post("position/modifyPosition.do",{id:id},function(data){
				
				 $('#m').dialog('open').dialog('center').dialog('setTitle','修改职位');
				 $('#fmm').form('load',data);
			 })
		 }
	
			function edit(){
		       var  from =$("#fmm").serialize();
		       console.log(from);
		       $.post("position/edit_sys_pos.do",from,function(data){
		    	//关闭窗口 
		    	$('#m').window('close');
		    	$('#ta').datagrid('reload');
		    	  var tab= $("#tag").datagrid("getSelected");
		    	   tab.panel("refesh")
		      	 }) 
		        } 
	</script>
	
</body>
</html>










