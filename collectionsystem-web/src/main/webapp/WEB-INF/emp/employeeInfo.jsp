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
<title>催收系统</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>

</head>
<body>

	<div id = "topEmp">
		 <div class="fitem" style="margin:10px";>
                <label>员工状态:</label>
                <select >
                </select>
            </div>
	</div>
	<div id="toolbarEmp">
		<a href="javascipt:void(0);" onclick = "addEmp()" class="easyui-linkbutton" data-options="iconCls:'icon-add'" plain="true">新增</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" plain="true"  onclick = "editEmp()">修改</a>
		<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" plain="true"onclick = "deleteEmp()">删除</a>
	
	</div>
	
	<table id="dgEmp" class="easyui-treegrid" title="员工管理" url="getJsonEmployeeInfo.do" pagination="true" pageSize="2" idField="id" treeField="name"        
        pageList="[3,5,8,10]">
		
		<thead>
			<tr>
				<th data-options="field:'id'">ID</th>
				<th data-options="field:'status'">员工状态</th>
				<th data-options="field:'number'">账号</th>
				<th data-options="field:'userName'">姓名</th>
				<th data-options="field:'sex'">性别</th>
				<th data-options="field:'joinTime'" formatter = "formatPrice">入职时间</th>
				<th data-options="field:'positionId'">岗位</th>
				<th data-options="field:'orgId'">机构</th>
				<th data-options="field:'createTime'" formatter = "formatPrice">录入时间</th>
				<th data-options="field:'modifyTime'" formatter = "formatPrice">修改时间</th>
			</tr>
		
		</thead>
		
	</table>
	
	<div id="dlgEmp" class="easyui-dialog" style="width:1000px;height:440px;padding:10px 20px" 
       rownumbers="true" fitColumns="true" singleSelect="true"  closed="true" buttons="#dlg-buttonsEmp">
        <div class="ftitle" align="center"><h2>员工信息</h2>
        <form id="fmEmp" method="post" novalidate>
            <div class="fitem" style="margin:10px";>
                <label>员工状态:</label>
                <input name="status" class="easyui-validatebox" >
            </div>
             <div class="fitem" style="margin:10px";>
                  <label>账号:</label>
                <input name="number" class="easyui-validatebox" >
            </div>
            
            <div class="fitem" style="margin:10px";>
                  <label>姓名:</label>
                <input name="userName" class="easyui-validatebox" >
            </div>
             <div class="fitem" style="margin:10px";>
                  <label>性别:</label>
                <input name="sex" class="easyui-validatebox" >
            </div>
             <!--<div class="fitem" style="margin:10px";>
                  <label>入职时间:</label>
                <input name="joinTime" class="easyui-validatebox" >
            </div>
             <div class="fitem" style="margin:10px";>
                  <label>入职时间:</label>
                <input name="joinTime" class="easyui-validatebox" >
            </div> -->
             <!--  <div class="fitem" style="margin:10px";>
                  <label>岗位:</label>
                <input name="positionId" class="easyui-validatebox" >
            </div>
              <div class="fitem" style="margin:10px";>
                  <label>机构:</label>
                <input name="orgId" class="easyui-validatebox" >
            </div> -->
            <!--  <div class="fitem" style="margin:10px";>
                  <label>录入时间:</label>
                <input name="createTime" class="easyui-validatebox" >
            </div>
             <div class="fitem" style="margin:10px";>
                  <label>修改时间:</label>
                <input name="modifyTime" class="easyui-validatebox" >
            </div> -->
            
       </form>
       </div>
       </div>
       
     <div id="dlg-buttonsEmp">
        <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveEmp()">提交</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlgEmp').dialog('close')">取消</a>
    </div> 
    
<script type="text/javascript">
	var url;

	//增加功能
	function addEmp(){
	 //链式调用  打开控件并且设置标题
	$('#dlgEmp').dialog('open').dialog('setTitle','新增员工'); 
		//清除数据
	$('#fmEmp').form('clear');
	
	url ="addEmp.do";
	}

	function saveEmp() {
        $("#fmEmp").form("submit", {
             url:url,
             onsubmit: function () {
                return $(this).form("validate");
            },
            success: function (result) {
                if (result == "1") {
                    $.messager.alert("提示信息", "操作成功");
                    $("#dlgEmp").dialog("close");
                    $("#dgEmp").treegrid("reload");
                    
                }
                else {
                    $.messager.alert("提示信息", "操作失败");
                }
            }
        });
    }

	 function editEmp(){
			
	      	//获取当前选中的行
	      	var row = $("#dgEmp").treegrid("getSelected");
	      	if(row){
				$("#dlgEmp").dialog("open").dialog("setTitle","修改员工");
				$("#fmEmp").form("load",row);
				url = "editEmp.do?id="+row.id;
	          	}
	    }

		function saveEmp() {
	        $("#fmEmp").form("submit", {
	             url:url,
	             onsubmit: function () {
	                return $(this).form("validate");
	            },
	            success: function (result) {
	                if (result == "1") {
	                    $.messager.alert("提示信息", "操作成功");
	                    $("#dlgEmp").dialog("close");
	                    $("#dgEmp").treegrid("reload");
	                    
	                }
	                else {
	                    $.messager.alert("提示信息", "操作失败");
	                }
	            }
	        });
	    }

	   	function  deleteEmp(){
			var row = $("#dgEmp").treegrid('getSelected');
			if (row){
					$.messager.confirm('确定','你确定要删除么？',function(r){
						 if(r){
							$.post('deleteEmp.do',{id:row.id},function(result){
					if(result == "1"){
								$.messager.show({
									title:"提示",
									msg:'成功删除！！！'
									});
								$('#dgEmp').treegrid('reload');
							}else{
		
								$.messager.show({
									title:"提示",
									msg:"删除失败，请重新操作！！！"
										});
									}
						},'json'); 
					} 
				}); 
			}
		}
		
 	function formatPrice(value){

   		//value：当前列对应字段值  对应的字段值   这里是时间
		//row：当前的行记录数据   
		//index：当前的行下标  0开始  就是第几行数据
   	  	
    	if(value == null || value == "" || typeof(value)=="undefined"){  
            return "";  
         }  
    	var date = new Date(value);
		var str = date.toLocaleString();
		return str;
       
    }


    //分页
    (function($){
			function pagerFilter(data){
		        if ($.isArray(data)){    // is array  
		            data = {  
		                total: data.length,  
		                rows: data  
		            }  
		        }
		        var dg = $(this);  
				var state = dg.data('treegrid');
		        var opts = dg.treegrid('options');  
		        var pager = dg.treegrid('getPager');  
		        pager.pagination({  
		            onSelectPage:function(pageNum, pageSize){  
		                opts.pageNumber = pageNum;  
		                opts.pageSize = pageSize;  
		                pager.pagination('refresh',{  
		                    pageNumber:pageNum,  
		                    pageSize:pageSize  
		                });  
		                dg.treegrid('loadData',state.originalRows);  
		            }  
		        });  
		        if (!state.originalRows){
		        	state.originalRows = data.rows;
		        }
		        var topRows = [];
		        var childRows = [];
		        $.map(state.originalRows, function(row){
		        	row._parentId ? childRows.push(row) : topRows.push(row);
		        });
		        data.total = topRows.length;
		        var start = (opts.pageNumber-1)*parseInt(opts.pageSize);  
		        var end = start + parseInt(opts.pageSize);  
				data.rows = $.extend(true,[],topRows.slice(start, end).concat(childRows));
				return data;
			}
 
			var appendMethod = $.fn.treegrid.methods.append;
			var loadDataMethod = $.fn.treegrid.methods.loadData;
			$.extend($.fn.treegrid.methods, {
				clientPaging: function(jq){
					return jq.each(function(){
						var state = $(this).data('treegrid');
						var opts = state.options;
						opts.loadFilter = pagerFilter;
						var onBeforeLoad = opts.onBeforeLoad;
						opts.onBeforeLoad = function(row,param){
							state.originalRows = null;
							onBeforeLoad.call(this, row, param);
						}
						$(this).treegrid('loadData', state.data);
						$(this).treegrid('reload');
					});
				},
				loadData: function(jq, data){
					jq.each(function(){
						$(this).data('treegrid').originalRows = null;
					});
					return loadDataMethod.call($.fn.treegrid.methods, jq, data);
				},
				append: function(jq, param){
					return jq.each(function(){
						var state = $(this).data('treegrid');
						if (state.options.loadFilter == pagerFilter){
							$.map(param.data, function(row){
								row._parentId = row._parentId || param.parent;
								state.originalRows.push(row);
							});
							$(this).treegrid('loadData', state.originalRows);
						} else {
							appendMethod.call($.fn.treegrid.methods, jq, param);
						}
					})
				}
			});
 
		})(jQuery);
 
		
		$(function(){
			$('#dgEmp').treegrid().treegrid('clientPaging');
		})
</script>
</body>

</html>