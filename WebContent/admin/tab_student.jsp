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
 <div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;">   
</div> 
	<table id="studentDatagrid" class="easyui-datagrid"
		url="/sms1/student_list.action" rowNumbers="true" fitColumns="true"
		toolbar="#tb" pagination="true" fit="true">
		<thead>
			<tr>
				<th field="ck" checkbox="true"></th>
				<th field="studentNo">学号</th>
				<th field="studentName">姓名</th>
				<th field="sex">性别</th>
				<th field="birthday">出生日期</th>
				<th field="origin">籍贯</th>
				<th field="address" formatter="getAddress">地址</th>
				<th field="cellphone">手机号</th>
				<th field="idCard">身份证号</th>
				<th field="politics">政治面貌</th>
				<th field="status">状态</th>
				<th field="class1" formatter="getClassName">班级</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px">
		<div style="margin-bottom: 10px">
			<span>学号:</span> <input type="text" id="searchNo"/>
			<span>姓名:</span> <input type="text" name="studentSearchBean.studentName" id="searchName" value="" /> <span>性别:</span>
			<select id="searchSex">
				<option value="">请输入</option>
				<option value="男">男</option>
				<option value="女">女</option>
			</select> 
			<a href="javascript:searchStudent()" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
			<a href="javascript:refreshStudent()" class="easyui-linkbutton" iconCls="icon-reset">刷新</a>
		</div>
		<div style="margin-bottom: 10px">
			<a class="easyui-linkbutton" href="javascript:addCls()"
				iconCls="icon-add">添加班级</a>
		</div>

		<div style="margin-bottom: 10px">
			<a href="javascript:addStudent()" class="easyui-linkbutton"
				iconCls="icon-add">添加学生</a> <a href="javascript:editStudent()"
				class="easyui-linkbutton" iconCls="icon-edit">修改学生</a> <a
				href="javascript:deleteStudent()" class="easyui-linkbutton"
				iconCls="icon-clear">删除学生</a>
			<a href="javascript:openImportFileWindow()" class="easyui-linkbutton">导入文件</a>
		</div>
	</div>
	<div  id="importFileWindow" title="导入学生信息" iconCls="icon-import" style="width:800px;padding:20px">
		<form action="/sms1/upload_importStudent.action" id="importFileForm" method="post" enctype="multipart/form-data">
			<table style="border-collapse:separate;border-spacing:0 10px">
				<tr>
					<td>请选择文件:</td>
					<td><input type="file" name="upload"/></td>
				</tr>
				<tr>
					<td>班级:</td>
					<td>
						<input class="departmentCb"/>
						<input class="majorCb"/>
						<input class="classCb" name="classId"/>	
					</td>
				</tr>
				<tr>
					<td><a href="javascript:importFileFormSubmit()" class="easyui-linkbutton" iconCls="icon-import">导入</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div   id="classWindow" title="添加班级信息"
		iconCls="icon-class"  style="width:400px;padding:20px">
		<form action="/sms1/major_addClass.action" method="post" id="classForm">
			<table style="border-collapse: separate; border-spacing: 0px 10px;">
			<!-- 	<tr>
					<td>二级学院:</td>
					<td><input id="departmentCb"  name="departmentId" /></td>
				</tr>
				<tr>
					<td>专业:</td>
					<td><input id="majorCb" name="majorId" /></td>
				</tr> -->
				<tr>
					<td>二级学院:</td>
					<td><input class="departmentCb"  name="departmentId" /></td>
				</tr>
				<tr>
					<td>专业:</td>
					<td><input class="majorCb" name="majorId" /></td>
				</tr>
				<tr>
					<td>班级名称:</td>
					<td><input id="" name="className" /></td>
				</tr>
				<tr>
					<td><a href="javascript:addClassSubmit()"
						class="easyui-linkbutton" iconCls="icon-submit">提交</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div  id="studentWindow" style="width:800px;padding:10px">
		<form  method="post" id="studentForm">
			<table style="border-collapse: separate; border-spacing: 0px 10px;">
				<tr>
					<td>姓名:</td>
					<td><input type="text" name="student.studentName" /></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td><select name="student.sex" id="studentSex">
							<option value="男">男</option>
							<option value="女">女</option>
					</select></td>
				</tr>
				<tr>
					<td>地址:</td>
					<td><select id="province" name="student.address.province"
						onchange="getCity()"></select> <select id="city"
						name="student.address.city" onchange="getCounty()"></select> <select
						id="county" name="student.address.county"></select> <input
						type="text" name="student.address.detailedAddress"
						placeholder="详细街道信息" /></td>
				</tr>
				<tr>
					<td>出生日期:</td>
					<td><input name="student.birthday" class="easyui-datebox" editable="false" /></td>
				</tr>
				<tr>
					<td>生源地:</td>
					<td><input name="student.origin" type="text" /></td>
				</tr>
				<tr>
					<td>手机号:</td>
					<td><input name="student.cellphone" type="text" /></td>
				</tr>
				<tr>
					<td>身份证号:</td>
					<td><input name="student.idCard" type="text" /></td>
				</tr>
				<tr>
					<td>政治面貌:</td>
					<td><select name="student.politics" id="studentPolitics">
							<option value="中共党员">中共党员</option>
							<option value="中共预备党员">中共预备党员</option>
							<option value="共青团员">共青团员</option>
							<option value="群众">群众</option>
					</select></td>
				</tr>
				<tr>
					<td>班级:</td>
					<td>
						<!-- <select  name="departmentId" id="departmentId" onchange="getMajor()">
							
						</select>
						 <select  name="majorId" id="majorId" onchange="getClass()" >
						 	
						</select> 
						<select name="student.class1.id" id="classId">
						
						</select>	 -->
						<input class="departmentCb" name="departmentId" >
						<input class="majorCb"  name="majorId">
						<input class="classCb"  name="student.class1.id">
					</td>
				</tr>
				<tr>
					<td><a href="javascript:addStudentSubmit()"
						class="easyui-linkbutton" iconCls="icon-submit">提交</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
	
	function loadDepartment(){
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
	function addStudentSubmit() {
		var url=$("#studentForm").attr("url");
		$("#studentForm").form("submit", {
			url:url,
			success : function(data) {
				if (data == "") {
					alert("操作成功!");
					$("#studentDatagrid").datagrid("reload");
				} else {
					alert("操作失败!");
				}
				closeStudentWinwow();
				
			}
		})
	}
	function addClassSubmit() {
	
		$("#classForm").form("submit", {
			success : function(data) {
				if (data == "") {
					alert("添加成功!");
				} else {
					alert("添加失败!");
				}
				closeClassWindow();

			}
		});
	}
	/* function initDepartment(){
			var url="/sms1/major_getDepart.action";
			 $.ajaxSettings.async = false; 
			$.post(url,null,function(data){
					for(var i=0;i<data.length;i++){
						var option="<option value='"+data[i].id+"'>"+data[i].name+"'</option>";
						$("#departmentId").append(option);
						}
					getMajor();
				},"json");
			
		}
	function getMajor(){
			
		   var departmentId=$("#departmentId").val();
		   var url="/sms1/major_getMajor.action";
		   $("#majorId").empty();
		   $.post(url,{"departmentId":departmentId},function(data){
							for(var i=0;i<data.length;i++){
									var option="<option value='"+data[i].id+"'>"+data[i].name+"</option>";
									$("#majorId").append(option);
								}
							getClass();
			   },"json");
		}
	function getClass(){
			var url="/sms1/major_getClazz.action";
			var majorId=$("#majorId").val();
			$("#classId").empty();
			$.post(url,{"majorId":majorId},function(data){
					for(var i=0;i<data.length;i++){
						var option="<option value='"+data[i].id+"'>"+data[i].className+"</option>";
						$("#classId").append(option);
						}
				},"json");
		} */
	function closeStudentWinwow() {
		$("#studentWindow").window("close");

	}
	function closeClassWindow() {
		$("#classWindow").window("close");
	}
	function openImportFileWindow(){
		$("#importFileForm").form("clear");
		loadDepartment();
		$("#importFileWindow").window({
			collapsible : false,
			minimizable : false,
			maximizable : false
			});
			
		}
	function importFileFormSubmit(){
			$("#importFileForm").form("submit",{
					success:function(data){
							if(data==""){
								alert("导入成功");
								$("#studentDatagrid").datagrid("reload");
							}else{
								alert("导入失败");
							}
							$("#importFileWindow").window("close");
						}
				});
		}
	function addCls() {
		$("#classWindow").window({
			collapsible : false,
			minimizable : false,
			maximizable : false
		});
		$("#classForm").form("clear");
		loadDepartment();
	/* 	$("#departmentCb").combobox({
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
					$("#majorCb").combobox({
							url:"/sms1/major_getMajor.action?departmentId="+departmentId,
							editable:false,
							valueField:"id",
							textField:"name",
							onLoadSuccess:function(){
									var data=$(this).combobox("getData");
									$(this).combobox("select",data[0].id);
								}
						});
				}
		}); */
	}
	function addStudent() {
		
		$("#studentWindow").window({
			title : "添加学生信息",
			iconCls : "icon-add",
			collapsible : false,
			minimizable : false,
			maximizable : false
		});
		$("#studentForm").attr("url","/sms1/student_add.action");
		$("#studentForm").form("clear");
		$("#studentSex").val("男");
		$("#studentPolitics").val("中共党员");
		loadDepartment();		
		initProvince();
		/* initDepartment(); */
	}
	function editStudent() {
		var rows = $("#studentDatagrid").datagrid("getSelections");
		if (rows == "") {
			alert("请选择一条记录");
			return;
		}
		if (rows.length > 1) {
			alert("请不要选中多条记录");
			return;
		}
		$("#studentWindow").window({
			title : "修改学生信息",
			iconCls : "icon-edit",
			collapsible : false,
			minimizable : false,
			maximizable : false
		});
		
		var row = rows[0];
		$("#studentForm").attr("url","/sms1/student_update.action?student.id="+row.id);
		
		initProvince();
		
		/* initDepartment(); */
		$.ajaxSettings.async = false; //设置同步
		loadDepartment();
		$("#studentForm").form("load", {
			"student.studentName" : row.studentName,
			"student.sex" : row.sex,
			"student.birthday" : row.birthday,
			"student.origin" : row.origin,
			"student.cellphone" : row.cellphone,
			"student.idCard" : row.idCard,
			"student.politics" : row.politics,
			"student.address.province" : row.address.province,
			"student.address.detailedAddress" : row.address.detailedAddress,
			"departmentId" : row.class1.major.department.id,
			"majorId":row.class1.major.id,
			"student.class1.id":row.class1.id
		});
		
		
		
		//js赋值不能触发onchange事件,所以手动触发
	/* 	 $("#departmentId").trigger("change"); 
		 $("#majorId").val(row.class1.major.id); 
		 $("#majorId").trigger("change"); 
	 	$("#classId").val(row.class1.id); 
	 	*/
		$("#province").trigger("change");
		$("#city").val(row.address.city);
		$("#city").trigger("change");
		$("#county").val(row.address.county); 
	}
	function deleteStudent() {
		
		var ids = [];
		var rows = $("#studentDatagrid").datagrid("getSelections");
		if (rows.length < 1) {
			alert("请选中至少一条数据");
			return;
		} else {
			for (var i = 0; i < rows.length; i++) {
				ids.push(rows[i].id);
			}
		}
		if (!confirm("确定要删除吗?")) {
			return;
		}
		var idString=ids.join(",");
		var url="/sms1/student_delete.action";
		$.post(url,{"idString":idString},function(data){
					if(data==""){
						alert("删除成功!");
						$("#studentDatagrid").datagrid("reload");
					}else{
						alert("删除失败!");
						}
					
					
					
			});

	}
	function searchStudent() {
		var searchNo=$("#searchNo").val();
		var searchName=$("#searchName").val();
		var searchSex=$("#searchSex").val();
		$("#studentDatagrid").datagrid("load",{
				"studentSearchBean.studentNo":searchNo,
				"studentSearchBean.studentName":searchName,
				"studentSearchBean.sex":searchSex
			});
	}
	function getClassName(clazz) {
		return clazz.className;
	}
	function getAddress(address){
			return address.address;
		}
	function refreshStudent(){
			$("#searchNo").val("");
			$("#searchName").val("");
			$("#searchSex").val("");
			$("#studentDatagrid").datagrid("load",{
				"studentSearchBean.studentNo":"",
				"studentSearchBean.studentName":"",
				"studentSearchBean.sex":""
				});
		}
</script>
</html>