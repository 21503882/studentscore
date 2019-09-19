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
</head>
<script type="text/javascript">
	$(function(){
			getTeacherMessage();
		});
	function save(){
			$("#teacherMessageForm").form("submit",{
					url:"/sms1/teacher_updateVoucher.action",
					success:function(data){
							if(data==""){
								alert("保存成功");
							}else{
								alert("保存失败!");	
							}
						}	
				});
		}
	function getTeacherMessage(){
			var url="/sms1/teacher_getTeacherMessage.action";
			
			$.post(url,null,function(data){
					if(data!=""){
						$("#teacherMessageForm").form("load",{
								"teacher.id":data.id,
								"teacher.teacherNo":data.teacherNo,
								"teacher.teacherName":data.teacherName,
								"teacher.cellphone":data.cellphone,
								"teacher.sex":data.sex,
								"teacher.birthday":data.birthday,
								"teacher.education":data.education,
								"teacher.department.name":data.department.name,
								"teacher.address.address":data.address.address,
								"teacher.idCard":data.idCard,
								"teacher.voucher":data.voucher
							});
						}
				},"json");	
		}
</script>
<body>
	<div class="easyui-panel" title="个人信息" fit="true">
			<form  method="post"  id="teacherMessageForm" style="margin-left:450px">
				<table style="border-collapse:separate;border-spacing:0px 10px">
					<tr>
						<td>教师编号:</td>
						<td><input name="teacher.id"  type="hidden"/><input name="teacher.teacherNo" disabled="disabled"/></td>
					</tr>
					<tr>
						<td>教师姓名:</td>
						<td><input name="teacher.teacherName"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>所属院系</td>
						<td><input  name="teacher.department.name"  disabled="disabled"></td>
					</tr>
					<tr>
						<td>手机号码:</td>
						<td><input name="teacher.cellphone"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>性别:</td>
						<td><input name="teacher.sex"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>出生日期:</td>
						<td><input name="teacher.birthday"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>学历:</td>
						<td><input name="teacher.education"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>地址:</td>
						<td><input name="teacher.address.address"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>身份证号:</td>
						<td><input name="teacher.idCard"  disabled="disabled"/></td>
					</tr>
					<tr>
						<td>找回密码凭证:</td>
						<td><input name="teacher.voucher"/></td>
					</tr>
					<tr>
						<td><a href="javascript:save()" class="easyui-linkbutton" iconCls="icon-save">保存</a></td>
					</tr>
				</table>
			</form>
			
	</div>
</body>
</html>