<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生个人信息</title>
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css" />
<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){
			getStudentMessage();
		});
	function save(){
			$("#studentMessageForm").form("submit",{
					url:"/sms1/student_updateVoucher.action",
					success:function(data){
							if(data==""){
								alert("保存成功");
							}else{
								alert("保存失败!");	
							}
						}	
				});
		}
	function getStudentMessage(){
			var url="/sms1/student_getStudentMessage.action";
			
			$.post(url,null,function(data){
					if(data!=""){
						$("#studentMessageForm").form("load",{
								"student.id":data.id,
								"student.studentNo":data.studentNo,
								"student.studentName":data.studentName,
								"student.address.address":data.address.address,
								"student.sex":data.sex,
								"student.birthday":data.birthday,
								"student.origin":data.origin,
								"student.cellphone":data.cellphone,
								"student.idCard":data.idCard,
								"student.politics":data.politics,
								"student.class1.className":data.class1.className,
								"student.voucher":data.voucher
							});
						}
				},"json");	
		}
</script>
<body>
	<div class="easyui-panel" title="个人信息" fit="true">
			<form  method="post"  id="studentMessageForm" style="margin-left:450px">
				<table style="border-collapse:separate;border-spacing:0px 10px">
					<tr>
						<td>学号:</td>
						<td><input name="student.id"  type="hidden"/><input name="student.studentNo" disabled="disabled"/></td>
					</tr>
					<tr>
						<td>姓名:</td>
						<td><input name="student.studentName"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>所属班级</td>
						<td><input  name="student.class1.className"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>地址:</td>
						<td><input  name="student.address.address"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>性别:</td>
						<td><input  name="student.sex"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>出生日期:</td>
						<td><input  name="student.birthday"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>籍贯:</td>
						<td><input  name="student.origin"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>手机号码:</td>
						<td><input  name="student.cellphone"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>身份证:</td>
						<td><input  name="student.idCard"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>政治面貌:</td>
						<td><input  name="student.politics"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>找回密码凭证:</td>
						<td><input  name="student.voucher"  ></td>
					</tr>
					<tr>
						<td><a href="javascript:save()" class="easyui-linkbutton" iconCls="icon-save">保存</a></td>
					</tr>
				</table>
			</form>
			
	</div>
</body>
</html>