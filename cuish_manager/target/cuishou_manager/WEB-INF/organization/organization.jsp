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
				<div data-options="region:'north',split:true,border:false" style="height:50px" id="btn">
					<div style="margin-left:50px">
						<a href="javascript:;" id="addBtn" onclick="newUser()"class="easyui-linkbutton" data-options="iconCls:'icon-add'">增加</a>
						<a href="javascript:openModifyWindow()" id="modify"class="easyui-linkbutton" data-options="iconCls:'icon-cut'">修改</a> 
						<a href="javascript:;" onclick="deleteOrg()"class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">删除</a>
					</div>
					<jsp:include page="add.jsp"></jsp:include>
					<jsp:include page="edit.jsp"></jsp:include>
				</div>
			
				<div data-options="region:'center',border:false">
					<div>
						<table title="Reports using TreeGrid" class="easyui-treegrid"  id="taaa">
						</table>
						</div>
					 <!--    <div class="easyui-pagination" id="pagination" > -->
				    </div>
				</div>
	</div>
	<script type="text/javascript">
	(function($){
		function pagerFilter(data){
			console.log(data);
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

	function formatProgress(value){
    	if (value){
	    	var s = '<div style="width:100%;border:1px solid #ccc">' +
	    			'<div style="width:' + value + '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
	    			'</div>';
	    	return s;
    	} else {
	    	return '';
    	}
	}
	
	$(function(){
		$('#taaa').treegrid().treegrid('clientPaging');
	})

	$('#taaa').treegrid({    
		    url:'organization/goto_organization_tree.do',    
		    idField:'id',    
		    treeField:'name',  
		    parentField : 'parent_id',
	        toolbar: $("#toolbar"), //按钮div
	    	singleSelect:true,  //如果为true，则只允许选择一行
	    	pageSize:2,    //在设置分页属性的时候初始化页面大小        
	    	pageList: [2,5,7],
	    	pagination:true, //如果为true，则在DataGrid控件底部显示分页工具栏
	    	multiSort:true, //定义是否允许多列排序
	    	fitColumns:true, //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动
		    columns:[[    
		        {title:'Task Name',field:'name'},    
		        {field:'id',title:'id'},    
		        {field:'parentId',title:'上级机构'},
		        {field:'type',title:'机构类型'},
		        {field:'principalId',title:'负责人'},
		        {field:'name',title:'机构名称'},
		        {field:'address',title:'地址'},
		        {field:'phone',title:'电话号码'},
		        {field:'post_code',title:'邮政编码'},
		        {field:'fax',title:'传真号'},
		        {field:'orderNo',title:'排序'}
		        /* {field:'modifyTime',title:'修改时间',width:140,align:'center',
		        	formatter:function(value,row,index){
		        		var d = new Date(value);
		        		var str = d.toLocaleString();//js日期格式化
		        		return str;
		        	}
		        } */
		    ]]    
		});  

	var url;
    function newUser(){
        $('#w').dialog('open').dialog('center').dialog('setTitle','New User');
        $('#fm').form('clear');
        url = 'organization/insertOrganization.do';
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
                    $('#taaa').treegrid('reload');    // reload the user data
                }
            }
        });
    }
    
		function deleteOrg(id){
		
			var row = $('#taaa').treegrid("getSelected");
			if (row){
				$.messager.confirm('删除','确定要删除吗?',function(r){
				    if (r){
				    	$.post("organization/delete.do?id="+row.id, { "id": "row.id" },
				    			   function(data){
				    				if(data=="1"){
				    					 alert(2);
				    					 $('#taaa').treegrid('reload'); 
					    			     alert(1);
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
      /*   function openModifyWindow(){
        	var row = $('#ta').datagrid('getSelected');
            if (row){
                $('#w').dialog('open').dialog('center').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
                url = 'organization/modifyOrganization?id='+row.id;
            }
		 }  */
		 function openModifyWindow(){
			 var row = $('#taaa').treegrid("getSelected");
			 var id = row.id;
			 alert(id);
			 $.post("organization/modifyOrganization.do?id="+row.id,{id:id},function(data){
				 $('#m').dialog('open').dialog('center').dialog('setTitle','New User');
				 $('#fmm').form('load',data);
			 });
		 } 
		//real 修改 sys_organ
			function edit(){
		       var  from =$("#fmm").serialize();
		       console.log(from);
		        $.post("organization/edit_sys_organ.do",from,function(data){
		    	//关闭窗口 
		    	$('#m').window('close');
		    	$('#taaa').treegrid('reload');
		    	  var tab= $("#tag").treegrid("getSelected");
		    	   tab.panel("refesh")
		      	 })
		        } 
	</script>
	
</body>
</html>










