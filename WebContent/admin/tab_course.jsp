<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css"/>
		<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css"/>
		<link rel="stylesheet" type="text/css" href="/sms1/dist/css/bootstrap.css"/>
		<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="/sms1/dist/js/loading.js"></script>
	</head>
	<body>
	<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;"></div>
		<table class="easyui-datagrid" id="courseDatagrid" url="/sms1/course_list.action"
			 fit="true" toolbar="#tb" pagination="true" rowNumbers="true" >
			<thead>
				<tr>
					<th field="cb" checkbox="true"></th>
					<th field="courseName">课程名字</th>
					<th field="credit">学分</th>
					<th field="courseTime">课时</th>
					<th field="type">类型</th>
				</tr>
			</thead>
		</table>
		<div id="tb">
			<div style="margin-bottom:10px">
				<a href="javascript:addCourse()" class="easyui-linkbutton" iconCls="icon-add">添加</a>
				<a href="javascript:editCourse()" class="easyui-linkbutton" iconCls="icon-edit">修改</a>
				<a href="javascript:deleteCourse()" class="easyui-linkbutton" iconCls="icon-clear">删除</a>
			</div>
			<div style="margin-bottom:10px">
				<span>课程名称:</span>
				<input type="text" id="searchName" placeHolder="请输入要搜索课程的关键字"/>
				<a href="javascript:searchCourse()" class="easyui-linkbutton" iconCls="icon-search" >搜索</a>
			</div>
		</div>
		<div id="courseWindow"  style="width:300px;padding:20px">
			<form  id="courseForm" method="post">
				<table style="border-collapse:separate;border-spacing:0px 10px;">
					<tr >
						<td>课程名称:</td>
						<td><input type="text" name="course.courseName" /></td>
					</tr>
					<tr>
						<td>学分:</td>
						<td><input type="text" name="course.credit"  value="" /></td>
					</tr>
					<tr>
						<td>课时:</td>
						<td><input type="text" name="course.courseTime"  value="" /></td>
					</tr>
					<tr>
						<td>课程类型:</td>
						<td>
							<select name="course.type" id="type">
								<option value="必修">必修</option>						
								<option value="选修">选修</option>						
							</select>
						</td>
					</tr>
					<tr>
						<td><a href="javascript:courseFormSubmit()" class="easyui-linkbutton" iconCls="icon-submit" >提交</a></td>
					</tr>
					
				</table>
			</form>
		</div>
	</body>
	<script >
		$(function(){
			
		});
		function closeCourseWindow(){
				$("#courseWindow").window("close");
			}
		function courseFormSubmit(){
				var url=$("#courseForm").attr("url");
				$("#courseForm").form("submit",{
						url:url,
						success:function(data){
								if(data==""){
									alert("操作成功!");
									$("#courseDatagrid").datagrid("reload");
								}else{
									alert("操作失败!");
									}
								closeCourseWindow();
							}
					});
			}
		function addCourse(){
			$("#courseWindow").window({
				title:"添加课程信息",
				iconCls:"icon-add",
				collapsible:false,
				minimizable:false,
				maximizable:false
			});
			$("#courseForm").form("clear");
			$("#type").val("必修");
			$("#courseForm").attr("url","/sms1/course_add.action");
		}
		function editCourse(){
			
			var rows=$("#courseDatagrid").datagrid("getSelections");
			if(rows==""){
				alert("请选择一条记录");
				return ;
			}
			if(rows.length>1){
				alert("请不要选中多条记录");
				return ;
			}
			$("#courseWindow").window({
				title:"修改课程信息",
				iconCls:"icon-edit",
				collapsible:false,
				minimizable:false,
				maximizable:false
			});
			var row = rows[0];
			var courseId=row.id;
			$("#courseForm").attr("url","/sms1/course_update.action?course.id="+courseId);
			$("#courseForm").form("load",{
					"course.courseName":row.courseName,
					"course.credit":row.credit,
					"course.courseTime":row.courseTime,
					"course.type":row.type
				});
		}
		function searchCourse(){
			var name=$("#searchName").val();
				$("#courseDatagrid").datagrid("load",{
						"courseSearchBean.name":name
					});
			}
		function deleteCourse(){
			var ids=[];
			var rows=$("#courseDatagrid").datagrid("getSelections");
			if(rows.length<1){
				alert("请选中至少一条数据");
				return ;
			}else{
				for(var i=0;i<rows.length;i++){
					ids.push(rows[i].id);
				}
			}
			if(!confirm("确定要删除吗?")){
				return;
			}
			var idString=ids.join(",");
			var url="/sms1/course_delete.action";
			$.post(url,{"idString":idString},function(data){
					if(data==""){
						alert("删除成功!");
						$("#courseDatagrid").datagrid("reload");
					}else{
						alert("删除失败!");
						}
				});
			

		}
	</script>
</html>
