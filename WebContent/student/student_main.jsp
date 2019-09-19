<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/easyui.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/icon.css" />
<link rel="stylesheet" type="text/css" href="/sms1/dist/css/main.css" />
<script type="text/javascript" src="/sms1/dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/sms1/dist/js/loading.js"></script>
<script type="text/javascript">
$(function(){
	$("#passwordWindow").window({
		collapsible : false,
		minimizable : false,
		maximizable : false,
		title:"修改密码",
		iconCls:"icon-edit"
		}).window("close");
	$(".left-list-item").on("click",function(){
			var childs=$(this).siblings();
			for(var i=0;i<childs.length;i++){
					$(childs[i]).removeClass("left-list-item-selected");
				}
			$(this).addClass("left-list-item-selected");
			var title=$(this).attr("title");
			var icons={
						"个人信息":"icon-message",
						"课程成绩":"icon-score"
					};
			
			if($("#tab").tabs("exists",title)){
					$("#tab").tabs("select",title);
				}else{
					var url=$(this).attr("url");
					var content="<iframe width='99%' height='99%' src='"+url+"'></iframe>";
					$("#tab").tabs("add",{
							title:title,
							iconCls:icons[title],
							content:content,
							closable:true
						});
					}
	});
});
function openPasswordWindow(){
	$("#studentPasswordForm").form("clear");
	$("#passwordWindow").window("open");
}
function modify(){
	var url="/sms1/login_modifyPassword.action";
	$("#studentPasswordForm").form("submit",{
			url:url,
			success:function(data){
					if(data!=""){
						alert(data);
					}else{
						alert("修改成功!");
						}
					$("#passwordWindow").window("close");
				}
		});
}

</script>



</head>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:rgb(247,248,248);text-align:center;padding-top: 20%;">   
</div>
<body class="easyui-layout" id="b1">
 
	<div region="north" class="header">
		<img alt="logo" src="/sms1/dist/images/logo1.PNG" >
		<div style="font-size:12px;margin-right:20px" class="you" >
			Welcome,${student.studentName}&nbsp;&nbsp;
			<a href="javascript:openPasswordWindow()">修改密码</a>
			<a href="/sms1/login_logout.action" onclick="return confirm('你确认要退出吗?')">注销</a>
		</div>
	</div>
	<div region="west" class="left" title="教务管理系统">
		<div class="left-list">
			<div class="left-list-item" url="/sms1/student/student_message.jsp" title="个人信息">
				<a class="easyui-linkbutton" iconCls="icon-message" plain="true">个人信息</a>
			</div>
			<div class="left-list-item" url="/sms1/student/student_score.jsp" title="成绩信息">
				<a class="easyui-linkbutton" iconCls="icon-score" plain="true">成绩信息</a>
			</div>
		</div>

	</div>
	<div region="center" class="right">
		<div class="easyui-tabs" id="tab" fit="true" >
			<div title="主页" iconCls="icon-home">
				welcome to student manager system
			</div>
		</div>
	</div>
	<div region="south" class="footer">Copyright &copy;2017</div>
</body>
	<div class="easyui-window" style="width:300px;height:250px;display:none" id="passwordWindow">
		<form id="studentPasswordForm" method="post" style="margin-left:10px;margin-top:20px">
			<table style="border-collapse:separate;border-spacing:0 10px">
				<tr>
					<td>原密码:</td>
					<td><input type="password" class="easyui-validatebox" name="oldPassword" required="true" /></td>
				</tr>
				<tr>
					<td>新密码:</td>
					<td><input type="password" name="newPassword" class="easyui-validatebox" required="true"/></td>
				</tr>
				<tr>
					<td>确认密码:</td>
					<td><input type="password" name="checkPassword" class="easyui-validatebox"required="true"/></td>
				</tr>
				<tr>
					<td><a href="javascript:modify()" class="easyui-linkbutton" iconCls="icon-submit">确认</a></td>
				</tr>
			</table>
		</form>
	</div>
</html>