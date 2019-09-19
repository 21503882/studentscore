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
	$(function() {
		initSemester();
		$("#scoreWindow").window({
			title : "批改成绩",
			iconCls : "icon-edit",
			collapsible : false,
			minimizable : false,
			maximizable : false
		}).window("close");
	});
	function exportScore() {
		$("#scoreSearchForm").submit();
	}
	function searchScore() {
		var semesterId = $("#searchSemesterId").val();
		var courseName = $("#searchCourseName").val();
		var className = $("#searchClassName").val();
		var flag = $("#searchFlag").val();
		var order = $("#searchOrder").val();
		$("#scoreDatagrid").datagrid("load", {
			"scoreSearchBean.semesterId" : semesterId,
			"scoreSearchBean.courseName" : courseName,
			"scoreSearchBean.className" : className,
			"scoreSearchBean.flag" : flag,
			"scoreSearchBean.order" : order
		});
	}
	function scoreFormSubmit() {
		var url = $("#scoreForm").attr("url");
		$("#scoreForm").form("submit", {
			url : url,
			success : function(data) {
				if (data == "") {
					alert("修改成功");
					$("#scoreDatagrid").datagrid("reload");
				} else {
					alert("修改失败");
				}
				$("#scoreWindow").window("close");
			}
		});
	}
	function showScoreWindow(index) {

		$("#scoreDatagrid").datagrid("selectRow", index);
		var row = $("#scoreDatagrid").datagrid("getSelected");
		$("#scoreWindow").form("load", {
			"score.score" : row.score
		});
		$("#scoreForm").attr("url",
				"/sms1/score_update.action?score.id=" + row.id);
		$("#scoreWindow").window("open");
	}
	function initSemester() {
		$.post("/sms1/semester_list.action", null, function(data) {
			for (var i = 0; i < data.length; i++) {
				var option = "<option value='"+data[i].id+"'>"
						+ data[i].semesterName + "</option>";
				$("#searchSemesterId").append(option);
			}
		}, "json");
	}
	function getSemesterName(value, row, index) {
		return row.teaching.semester.semesterName;
	}
	function getStudentNo(value, row, index) {
		return row.student.studentNo;
	}
	function getStudentName(value, row, index) {
		return row.student.studentName;
	}
	function getClassName(value, row, index) {
		return row.student.class1.className;
	}
	function getCourseName(value, row, index) {
		return row.teaching.course.courseName;
	}
	function getCourseTime(value, row, index) {
		return row.teaching.course.courseTime;
	}
	function getCourseType(value, row, index) {
		return row.teaching.course.type;
	}
	function getCredit(value, row, index) {
		return row.teaching.course.credit;
	}
	function getFlag(flag) {
		if (flag == 1) {
			return "已给成绩";
		} else {
			return "<span style='color:red'>未给成绩</span>";
		}
	}
	function oprate(value, row, index) {
		return "<a href='javascript:showScoreWindow(" + index + ")'>查看</a>";
	}
</script>
<body>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;">   
</div> 
	<table class="easyui-datagrid" id="scoreDatagrid"
		url="/sms1/score_list.action" toolbar="#tb" pagination="true"
		fit="true" singleSelect="true">
		<thead>
			<tr>
				<th field="semesterName" formatter="getSemesterName">学年学期</th>
				<th field="studentNo" formatter="getStudentNo">学号</th>
				<th field="studentName" formatter="getStudentName">姓名</th>
				<th field="className" formatter="getClassName">所在班级</th>
				<th field="courseName" formatter="getCourseName">课程名称</th>
				<th field="courseType" formatter="getCourseType">课程类型</th>
				<th field="courseTime" formatter="getCourseTime">总课时</th>
				<th field="credit" formatter="getCredit">学分</th>
				<th field="score">成绩</th>
				<th field="flag" formatter="getFlag">备注</th>
				<th field="oprate" formatter="oprate">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb">
		<div>
			<form action="/sms1/upload_exportScore.action" method="post" id="scoreSearchForm">
				<span>学期学年:</span> <select id="searchSemesterId">
					<option value=0>全部</option>
				</select> <span>班级:</span> <input type="text" id="searchClassName" /> <span>课程:</span>
				<input type="text" id="searchCourseName" /> <span>状态</span> <select
					id="searchFlag">
					<option value=0>全部</option>
					<option value=1>已给成绩</option>
					<option value=2>未给成绩</option>
				</select> <span>排序</span> <select id="searchOrder"
					name="scoreSearchBean.order">
					<option value=0>默认</option>
					<option value=1>由高分到低分</option>
					<option value=2>有低分到高分</option>
				</select> <a href="javascript:searchScore()" class="easyui-linkbutton"
					iconCls="icon-search">搜索</a>
					<a href="javascript:exportScore()" class="easyui-linkbutton" iconCls="icon-export">导出成绩</a>
			</form>
		</div>
	</div>
	<div class="easyui-window" id="scoreWindow"
		style="width: 300px; height: 200px; padding: 20px;display:none">
		<form method="post" id="scoreForm">
			<span>成绩:</span> <input type="text" name="score.score" /> <br />
			<br /> <a href="javascript:scoreFormSubmit()"
				class="easyui-linkbutton">提交</a> <a href="javascript:exportScore()"
				class="easyui-linkbutton" iconCls="icon-export">导出成绩</a>
		</form>
	</div>
</body>
</html>