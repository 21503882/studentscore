<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css" />

<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js">
	
</script>
<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js">
	
</script>
<script type="text/javascript" src="/sms1/dist/js/loading.js"></script>
<script type="text/javascript" src="/sms1/dist/js/country.js"></script>
<script type="text/javascript" src="/sms1/dist/js/address.js"></script>
</head>
<body>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;"></div>
	<table id="teacherDatagrid" class="easyui-datagrid"
		url="/sms1/teacher_list.action" rowNumbers="true"
		fitColumns="true" fit="true" toolbar="#tb" pagination="true">
		<thead>
			<tr>
				<th field="ck" checkbox="true"></th>
				<th field="teacherNo">职工号</th>
				<th field="teacherName">姓名</th>
				<th field="sex">性别</th>
				<th field="birthday">出生日期</th>
				<th field="education">学历</th>
				<th field="department" formatter="getDepartmentName">院系名称</th>
				<th field="cellphone">手机号码</th>
				<th field="address" formatter="getAddress">地址</th>
				<th field="idCard">身份证号</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px">
		<div style="margin-bottom: 10px">
			<span>职工号:</span> <input type="text"  id="searchNo" value="" /> 
			<span>姓名:</span> <input type="text"  id="searchName"/>
			<span>性别:</span>
			<select id="searchSex">
				<option value="">请输入</option>
				<option value="男">男</option>
				<option value="女">女</option>
			</select> 
			<span>院系:</span> 
			<select  id="departmentId">
				<option value=0>请选择</option>
			</select> 
			<a href="javascript:searchTeacher()" class="easyui-linkbutton"
				iconCls="icon-search">搜索</a>
				<a href="javascript:refreshTeacher()" class="easyui-linkbutton"
				iconCls="icon-reset">刷新</a>
		</div>
		<div style="margin-bottom: 10px">
			<a class="easyui-linkbutton" href="javascript:addTeacher()"
				iconCls="icon-add">添加</a> <a href="javascript:editTeacher()"
				class="easyui-linkbutton" iconCls="icon-edit">修改</a> <a
				href="javascript:deleteTeacher()" class="easyui-linkbutton"
				iconCls="icon-cancel">删除</a>
				<a href="javascript:openImportFileWindow()" class="easyui-linkbutton">导入文件</a>
		</div>
	</div>
	<div  id="importFileWindow" title="导入教师信息" iconCls="icon-import" style="width:500px;padding:20px">
		<form action="/sms1/upload_importTeacher.action" id="importFileForm" method="post" enctype="multipart/form-data">
			<table style="border-collapse:separate;border-spacing:0 10px">
				<tr>
					<td>请选择文件:</td>
					<td><input type="file" name="upload"/></td>
				</tr>
				<tr>
					<td>班级:</td>
					<td>
						<input class="departmentCb" name="departmentId"/>
					</td>
				</tr>
				<tr>
					<td><a href="javascript:importFileFormSubmit()" class="easyui-linkbutton" iconCls="icon-import">导入</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="teacherWindow"  style="width:600px;height:400px;padding:20px">
		<form  method="post" id="teacherForm">
			<table style="border-collapse:separate;border-spacing:0px 10px">
				<tr>
					<td>姓名:</td>
					<td><input name="teacher.teacherName" /></td>
				</tr>
				<tr>
					<td>手机号:</td>
					<td><input name="teacher.cellphone" /></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td>
						<select name="teacher.sex" id="sex">
							<option value="男">男</option>				
							<option value="女">女</option>				
						</select>
					</td>
				</tr>
				<tr>
					<td>出生日期:</td>
					<td><input name="teacher.birthday" class="easyui-datebox" editable="false"/></td>
				</tr>
				<tr>
					<td>学历:</td>
					<td>
						<select name="teacher.education" id="education">
							<option value="本科">本科</option>
							<option value="硕士">硕士</option>
							<option value="博士">博士</option>
							<option value="博士后">博士后</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>身份证号:</td>
					<td><input type="text" name="teacher.idCard"/></td>
				</tr>
				<tr>
					<td>地址:</td>
					<td>
						<select id="province" name="teacher.address.province" onchange="getCity()"></select>
						<select id="city" name="teacher.address.city" onchange="getCounty()"></select>
						<select id="county" name="teacher.address.county"></select>
						<input type="text" name="teacher.address.detailedAddress" placeholder="详细街道信息"/>
					</td>
				</tr>
				<tr>
					<td>所属学院:</td>
					<td><input class="departmentCb" name="teacher.department.id" /></td>
				</tr>
				<tr>
					<td><a href="javascript:teacherFormSubmit()" class="easyui-linkbutton" iconCls="icon-submit">提交</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
	$(document).ready(function() {
		/* getDepartment(); */
		
		
	});
	function loadDepartment(){
		$(".departmentCb").combobox({
			url:"/sms1/major_getDepart.action",
			valueField:"id",
			editable:false,
			textField:"name",
			onLoadSuccess:function(){
					var data=$(this).combobox("getData");
					$(this).combobox("select",data[0].id);
				}
		});
		}
	/* function getDepartment(){
		var url="/sms1/major_getDepart.action";
		$.post(url,null,function(data){
				for(var i=0;i<data.length;i++){
					var option="<option value='"+data[i].id+"'>"+data[i].name+"'</option>";
					$(".departmentId").append(option);
					}
			},"json");
		} */
	function openImportFileWindow(){
		
		$("#importFileForm").form("clear");
		loadDepartment();
		$("#importFileWindow").window({
			collapsible:false,
			minimizable:false,
		    maximizable:false
	});
	}
	function importFileFormSubmit(){
		$("#importFileForm").form("submit",{
				success:function(data){
						if(data==""){
							alert("导入成功");
							$("#teacherDatagrid").datagrid("reload");
						}else{
							alert("导入失败");
						}
						$("#importFileWindow").window("close");
					}
			});
	}
	function closeTeacherWindow(){
			$("#teacherWindow").window("close");
			}
	function teacherFormSubmit(){
			var url=$("#teacherForm").attr("url");
			$("#teacherForm").form("submit",{
					url:url,
					success:function(data){
							if(data==""){
								alert("操作成功");
								$("#teacherDatagrid").datagrid("reload");
							}else{
								alert("操作失败");
								}
							closeTeacherWindow();
						}
				});
		}
	function addTeacher() {
		$("#teacherForm").attr("url","/sms1/teacher_add.action");
		$("#teacherWindow").window({
			title : "添加教师信息",
			iconCls : "icon-add",
			collapsible:false,
			minimizable:false,
		    maximizable:false
		});
		$("#teacherForm").form("clear");
		$("#sex").val("男");
		$("#education").val("本科");
		loadDepartment();
		initProvince();
		
	}
	function editTeacher() {
		
		var rows = $("#teacherDatagrid").datagrid("getSelections");
		if (rows == "") {
			alert("请选择一条记录");
			return;
		}
		if (rows.length > 1) {
			alert("请不要选中多条记录");
			return;
		}
		$("#teacherWindow").window({
			title : "修改教师信息",
			iconCls : "icon-edit",
			collapsible:false,
			minimizable:false,
		    maximizable:false 
		});
		var row=rows[0];
		$("#teacherForm").attr("url","/sms1/teacher_update.action?teacher.id="+row.id);
		initProvince();
		loadDepartment()
		$("#teacherForm").form("load",{
				"teacher.teacherName":row.teacherName,
				"teacher.sex":row.sex,
				"teacher.birthday":row.birthday,
				"teacher.education":row.education,
				"teacher.cellphone":row.cellphone,
				"teacher.idCard":row.idCard,
				"teacher.department.id":row.department.id,
				"teacher.address.province":row.address.province,
				"teacher.address.detailedAddress":row.address.detailedAddress
			});
		$("#province").trigger("change");
		$("#city").val(row.address.city);
		$("#city").trigger("change");
		$("#county").val(row.address.county);
	}
	function deleteTeacher() {
		var ids = [];
		var rows = $("#teacherDatagrid").datagrid("getSelections");
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
		var url="/sms1/teacher_delete.action";
		$.post(url,{"idString":idString},function(data){
					if(data==""){
						alert("删除成功!");
						$("#teacherDatagrid").datagrid("reload");
					}else{
						alert("删除失败!");
						}
					
			});
	}
	function searchTeacher() {
		var teacherNo=$("#searchNo").val();
		var teacherName=$("#searchName").val();
		var sex=$("#searchSex").val();
		var departmentId=$("#departmentId").val();
		$("#teacherDatagrid").datagrid("load",{
			"teacherSearchBean.teacherNo":teacherNo,
			"teacherSearchBean.teacherName":teacherName,
			"teacherSearchBean.sex":sex,
			"teacherSearchBean.departmentId":departmentId
			});
	}
	function refreshTeacher(){
		$("#searchNo").val("");
		$("#searchName").val("");
		$("#searchSex").val("");
		$("#departmentId").val(0);
			$("#teacherDatagrid").datagrid("load",{
				"teacherSearchBean.teacherNo":"",
				"teacherSearchBean.teacherName":"",
				"teacherSearchBean.sex":"",
				"teacherSearchBean.departmentId":0
				});
		}
	function getDepartmentName(department){
			return department.name;
		}
	function getAddress(address){
		return address.address;
		}
</script>
</html>