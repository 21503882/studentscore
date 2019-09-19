<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css" />

<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/loading.js"></script>
</head>
<body>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;"></div>
	<table id="teachingDatagrid" class="easyui-datagrid"
		url="/sms1/teaching_list.action" rowNumbers="true"
		fitColumns="true" fit="true" toolbar="#tb" pagination="true">
		<thead>
			<tr>
				<th field="ck" checkbox="true"></th>
				<th field="teacherNo" formatter="getTeacherNo">教师编号</th>
				<th field="teacherName" formatter="getTeacherName">教师姓名</th>
				<th field="classNo" formatter="getClassNo">班号</th>
				<th field="className" formatter="getClassName" >班级名称</th>
				<th field="course" formatter="getCourseName">课程名称</th>
				<th field="semester" formatter="getSemesterName">学年学期</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px">
		<div style="margin-bottom: 10px">
			<span>教师职工号:</span> <input type="text"  id="searchTeacherNo" value="" /> 
			<span>教师姓名:</span> <input type="text"  id="searchTeacherName"/>
			<span>课程名字:</span><input type="text" id="searchCourseName"/>
			<br/>
			<span>班级号:</span> <input type="text" id="searchClassNo"/>
			<span>班级名称:</span> <input type="text" id="searchClassName"/>
			<span>学期学年:</span> 
			<select id="searchSemesterId" >
				<option value=0>请选择</option>
			</select>
			<br/>
			<a href="javascript:searchTeaching()" class="easyui-linkbutton"
				iconCls="icon-search">搜索</a>
				<a href="javascript:refreshTeaching()" class="easyui-linkbutton"
				iconCls="icon-reset">刷新</a>
		</div>
		<div style="margin-bottom: 10px">
			<a class="easyui-linkbutton" href="javascript:addTeaching()"
				iconCls="icon-add">添加</a> <a href="javascript:editTeaching()"
				class="easyui-linkbutton" iconCls="icon-edit">修改</a> <a
				href="javascript:deleteTeaching()" class="easyui-linkbutton"
				iconCls="icon-cancel">删除</a>
		</div>
	</div>
	<div id="teachingWindow"  style="width:800px;padding:20px">
		<form  method="post" id="teachingForm">
			<table style="border-collapse:separate;border-spacing:0px 10px">
				<tr>
					<td>教师:</td>
					<td><input id="departmentCb" name="departmentOfTeacher"/></td>
					<td><input id="teacherCb" class="easyui-combobox" name="teaching.teacher.id"/></td>
				</tr>
				<tr>
					<td>班级:</td>
					<td><input class="departmentCb" name="departmentOfClass" /></td>
					<td><input class="majorCb easyui-combobox"  name="majorOfClass"/></td>
					<td><input class="classCb easyui-combobox" name="teaching.class1.id"/></td>
				</tr>
				<tr>
					<td>课程名字:</td>
					<td><input name="teaching.course.id" id="courseCb"/></td>
				</tr>
				<tr>
					<td>学年学期:</td>
					<td>
						<input id="semesterCb" name="teaching.semester.id"/>
					</td>
				</tr>
				<tr>
					<td><a href="javascript:teachingFormSubmit()" class="easyui-linkbutton" iconCls="icon-submit">提交</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
	$(document).ready(function() {
		appendSemesterList();
		
	
	});
	function loadTeacher(){
		$("#departmentCb").combobox({
			url:"/sms1/major_getDepart.action",
			editable:false,
			valueField:"id",
			textField:"name",
			onLoadSuccess:function(){
					var data=$(this).combobox("getData");
					$(this).combobox("select",data[0].id);
				},
			onSelect:function(selected){
					var departmentId=selected.id;
					$("#teacherCb").combobox({
						url:"/sms1/teacher_getTeacherOfDepart.action?departmentId="+departmentId,
						editable:false,
						valueField:"id",
						textField:"teacherName",
						onLoadSuccess:function(){
								var data=$(this).combobox("getData");
								if(data.length>0){
									$(this).combobox("select",data[0].id);
									}
							}
						});
				}
			});
		}
	function loadClass(){
		$(".departmentCb").combobox({
			url:"/sms1/major_getDepart.action",
			editable:false,
			valueField:"id",
			textField:"name",
			onLoadSuccess:function(){
					var data=$(this).combobox("getData");
					$(this).combobox("select",data[0].id);
				},
			onSelect:function(selected){
					var departmentId=selected.id;
					$(".majorCb").combobox({
							url:"/sms1/major_getMajor.action?departmentId="+departmentId,
							editable:false,
							valueField:"id",
							textField:"name",
							onLoadSuccess:function(){
									var data=$(this).combobox("getData");
									$(this).combobox("select",data[0].id);
								},
							onSelect:function(selected){
									var majorId=selected.id;
									$(".classCb").combobox({
											url:"/sms1/major_getClazz.action?majorId="+majorId,
											editable:false,
											valueField:"id",
											textField:"className",
											onLoadSuccess:function(){
													var data=$(this).combobox("getData");
													if(data.length>0){
														$(this).combobox("select",data[0].id);
														}
												}
										});
								}
						});
				}
		});
		}
	function loadSemesterCb(){
		$("#semesterCb").combobox({
			url:"/sms1/semester_list.action",
			editable:false,
			valueField:"id",
			textField:"semesterName",
			onLoadSuccess:function(){
				 var data=$(this).combobox("getData");
				 $(this).combobox("select",data[0].id);
				}
			});
		}
	function loadCourseCb(){
		$("#courseCb").combobox({
			url:"/sms1/course_getCourseList.action",
			editable:false,
			valueField:"id",
			textField:"courseName",
			onLoadSuccess:function(){
					var data=$(this).combobox("getData");
					if(data.length>0){
						$(this).combobox("select",data[0].id);
						}
					
				}
			});
		}
	function appendSemesterList(){
			var url="/sms1/semester_list.action";
			$.post(url,null,function(data){
					for(var i=0;i<data.length;i++){
							var option="<option value='"+data[i].id+"'>"+data[i].semesterName+"</option>";
							$("#searchSemesterId").append(option);
						}
				},"json");
		}
	function closeTeachingWindow(){
			$("#teachingWindow").window("close");
			}
	function teachingFormSubmit(){
			var url=$("#teachingForm").attr("url");
			$("#teachingForm").form("submit",{
					url:url,
					success:function(data){
							if(data==""){
								alert("操作成功");
								$("#teachingDatagrid").datagrid("reload");
							}else{
								alert("操作失败");
								}
							closeTeachingWindow();
						}
				});
		}
	function addTeaching() {
		$("#teachingForm").attr("url","/sms1/teaching_add.action");
		$("#teachingWindow").window({
			title : "添加授课信息",
			iconCls : "icon-add",
			collapsible:false,
			minimizable:false,
		    maximizable:false
		});
		init();	
	}
	function init(){
		loadTeacher();
		loadClass();
		loadCourseCb();
		loadSemesterCb();	
		}
	function editTeaching() {
		
		var rows = $("#teachingDatagrid").datagrid("getSelections");
		if (rows == "") {
			alert("请选择一条记录");
			return;
		}
		if (rows.length > 1) {
			alert("请不要选中多条记录");
			return;
		}
		$("#teachingWindow").window({
			title : "修改授课信息",
			iconCls : "icon-edit",
			collapsible:false,
			minimizable:false,
			maximizable:false
		});
		var row=rows[0];
		$("#teachingForm").attr("url","/sms1/teaching_update.action?teaching.id="+row.id);
		init();
		$.ajaxSettings.async=false;
		$("#teachingForm").form("load",{
			"departmentOfTeacher":row.teacher.department.id,
			"departmentOfClass":row.class1.major.department.id,
			"majorOfClass":row.class1.major.id,
			"teaching.teacher.id":row.teacher.id,
			"teaching.class1.id":row.class1.id,
			"teaching.course.id":row.course.id,
			"teaching.semester.id":row.semester.id
			});
		
	
	
	}
	function deleteTeaching() {
		var ids = [];
		var rows = $("#teachingDatagrid").datagrid("getSelections");
		if (rows.length < 1) {
			alert("请选中至少一条数据");
			return;
		} else {
			for (var i = 0; i < rows.length; i++) {
				ids.push(rows[i].id);
			}
		}
		if (!confirm("确定要删除吗?")) {
			return ;
		}
		var idString=ids.join(",");
		var url="/sms1/teaching_delete.action";
		$.post(url,{"idString":idString},function(data){
					if(data==""){
						alert("删除成功!");
						$("#teachingDatagrid").datagrid("reload");
					}else{
						alert("删除失败!");
						}
					
			});
	}
	function searchTeaching() {
		var searchTeacherNo=$("#searchTeacherNo").val();
		var searchTeacherName=$("#searchTeacherName").val();
		var searchClassNo=$("#searchClassNo").val();
		var searchClassName=$("#searchClassName").val();
		var searchCourseName=$("#searchCourseName").val();
		var searchSemesterId=$("#searchSemesterId").val();
		$("#teachingDatagrid").datagrid("load",{
				"teachingSearchBean.teacherNo":searchTeacherNo,
				"teachingSearchBean.teacherName":searchTeacherName,
				"teachingSearchBean.classNo":searchClassNo,
				"teachingSearchBean.className":searchClassName,
				"teachingSearchBean.courseName":searchCourseName,
				"teachingSearchBean.semesterId":searchSemesterId
			});
	}
	function refreshTeaching(){
		$("#searchTeacherNo").val("");
		$("#searchTeacherName").val("");
		$("#searchClassNo").val("");
		$("#searchClassName").val("");
		$("#searchCourseName").val("");
		$("#searchSemesterId").val(0);
			$("#teachingDatagrid").datagrid("load",{
				"teachingSearchBean.teacherNo":"",
				"teachingSearchBean.teacherName":"",
				"teachingSearchBean.classNo":"",
				"teachingSearchBean.className":"",
				"teachingSearchBean.courseName":"",
				"teachingSearchBean.semesterId":0
				});
		}
	function getTeacherNo(value,row,index){
			return row.teacher.teacherNo;
		}
	function getTeacherName(value,row,index){
			return row.teacher.teacherName;
		}
	function getClassNo(value,row,index){
		return row.class1.classNo;
	}
	function getClassName(value,row,index){
		return row.class1.className;
	}
	function getCourseName(course){
		return course.courseName;
	}
	function getSemesterName(semester){
		return semester.semesterName;
	}
</script>
</html>