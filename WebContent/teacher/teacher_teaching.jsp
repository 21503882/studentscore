<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师个人信息</title>
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css" />
<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/loading.js"></script>
</head>
<script type="text/javascript">
	$(function(){
			initSemester();
		});
	function initSemester(){
			$.post("/sms1/semester_list.action",null,function(data){
						for(var i=0;i<data.length;i++){
								var option="<option value='"+data[i].id+"'>"+data[i].semesterName+"</option>";
								$("#semesterId").append(option);
							}
				},"json");
		}
	function changeSemester(){
			var semesterId=$("#semesterId").val();
			$("#teachingDatagrid").datagrid("load",{
					"teachingSearchBean.semesterId":semesterId
				});
		}
	function getSemesterName(semester){
		return semester.semesterName;
		}
	function getCourseName(value,row,index){
			return row.course.courseName;
		}
	function getClassName(clazz){
		return clazz.className;
		}
	function getCourseTime(value,row,index){
			return row.course.courseTime;
		}
	function getCourseType(value,row,index){
			return row.course.type;
		}
	function getCredit(value,row,index){
			return row.course.credit;
		}
</script>
<body>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;">   
</div> 
	<table class="easyui-datagrid" id="teachingDatagrid" url="/sms1/teaching_getTeachingDetail.action"
			toolbar="#tb" pagination="true" fit="true"
	>
		<thead>
			<tr>
				<th field="semester" formatter="getSemesterName">学年学期</th>
				<th field="courseName" formatter="getCourseName">课程名称</th>
				<th field="class1" formatter="getClassName">所教班级</th>
				<th field="courseTime" formatter="getCourseTime">总学时</th>
				<th field="courseType" formatter="getCourseType">课程类型</th>
				<th field="credit" formatter="getCredit">课程学分</th>
			</tr>
		</thead>
	</table>
	<div id="tb">
		<div>
			<span>学期学年:</span>
			<select id="semesterId" onchange="changeSemester()">
				<option value=0>全部</option>
			</select>
		</div>
	</div>
</body>
</html>