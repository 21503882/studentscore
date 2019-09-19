<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>

<script type="text/javascript" src="dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="dist/css/bootstrap.min.css">
<style type="text/css">
body {
	background: url(dist/images/bg.png) no-repeat;
	position: relative;
}

.jz {
	margin: 0 auto;
}

.zuo {
	float: left;
}

.you {
	float: right;
}

.clear {
	clear: both;
}

.div-form {
	background: rgba(255, 255, 255, 0.5);
	width: 480px;
	height: 300px;
	position: absolute;
	top: 50px;
	right: 400px;;
	padding: 10px;
}

label {
	height: 34px;
	line-height: 34px;
}

.form-group input {
	width: 319px;
}

#validateCode {
	width: 120px;
}
</style>
</head>
<body>
	<div class="div-form jz">
		<form action="" method="post" id="f1">
			
			<div class="form-group">
					<label for="userName" class="col-sm-3">源码加QQ79120063:</label>
					<input type="text" name="" id="" value="源码加QQ【79120063】" class="form-control" placeholder="请输入用户名"/>	
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3">源码加微信80213251:</label>
					<input type="text" name="" id="" value="源码加微信【80213251】" class="form-control" placeholder="请输入密码"/>	
				</div>
				<div class="form-group">
					<label for="validateCode" class="col-sm-3">验证码:</label>
					
				</div>
				<div class="form-group clear ">
					<input type="button" name="" id="" value="登录" class="btn btn-primary " />
				</div>
				<label for="userName" class="col-sm-3">源码加QQ【21503882】:</label>
		</form>
	</div>

</body>
<script type="text/javascript">
	$(function() {
		$("#login").on("click", function() {
			var userName = $("#userName").val();
			var password = $("#password").val();
			var validateCode = $("#validateCode").val();
			if (userName == null || userName.trim() == "") {
				alert("用户名不能为空!");
				return;
			}
			if (password == null || password.trim() == "") {
				alert("密码不能为空!");
				return;
			}
			if (validateCode == null || validateCode.trim() == "") {
				alert("验证码不能为空!");
				return;
			}
			var data = {
				"userName" : userName,
				"password" : password,
				"validateCode" : validateCode
			};
			 $.post("/sms1/login_check.action", data, function(data) {
				if (data != null && data.trim() != "") {
					alert(data);
					reset();
					changeCode();
					
				} else {
					$("#f1").submit();
				}

			}); 
		
		});
	});
	function reset(){
		$("#userName").val("");
		$("#password").val("");
		$("#validateCode").val("");
		}
	function changeCode() {
		$("#validateImage").attr("src",
				"/sms1/ValidateCode?action=generate&random=" + Math.random());
	}

</script>
</html>