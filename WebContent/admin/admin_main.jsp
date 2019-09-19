<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
$(function() {
	$("#tab").tabs({
		onSelect:function(title){
			var childs = $(".left-list-item");
			for (var i = 0; i < childs.length; i++) {
				$(childs[i]).removeClass("left-list-item-selected");
				if($(childs[i]).attr("title")==title){
					$(childs[i]).addClass("left-list-item-selected");
					}
			}
			}
		});
	$(".left-list-item").on("click",function() {
						/* var childs = $(this).siblings();
						for (var i = 0; i < childs.length; i++) {
							$(childs[i]).removeClass(
									"left-list-item-selected");
						}
						$(this).addClass("left-list-item-selected"); */
						var title = $(this).attr("title");
						var url = $(this).attr("url");
						if ($("#tab").tabs("exists", title)) {
							$("#tab").tabs("select", title);
						} else {
						 	var content = "<iframe scrolling='auto' frameborder='0' src='"+ url+ "' width='100%' height='100%' ></iframe>"; 
							var icons = {
								"学生管理" : "icon-student",
								"教师管理" : "icon-teacher",
								"课程管理" : "icon-course",
								"授课管理" : "icon-teaching",
								"成绩管理" : "icon-score"
							};
							$("#tab").tabs("add", {
								title : title,
								iconCls : icons[title],
								 content : content, 
								/* href:"/sms1/to_toStudent.action", */
								closable : true
								
							});
						}
					});

});
</script>
</head>
<div id='loading' style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:rgb(247,248,248);text-align:center;padding-top: 20%;">   
</div> 
<body class="easyui-layout" id="b1">
 
	<div region="north" class="header" >
		<img alt="logo" src="/sms1/dist/images/logo1.PNG" >
	</div>
	<div region="south" class="footer">Copyright &copy;2017</div>
	<div region="west" class="left" title="教务管理系统">
		<div class="left-list">
			<div class="left-list-item" url="/sms1/admin/tab_student.jsp" title="学生管理">
				<a class="easyui-linkbutton" iconCls="icon-student" plain="true">学生管理</a>
				<!-- <img alt="" src="dist/css/icons/student.png" width="14px" height="14px" ><span>教师管理</span> -->
			</div>
			<div class="left-list-item" url="/sms1/admin/tab_teacher.jsp" title="教师管理">
				<a class="easyui-linkbutton" iconCls="icon-teacher" plain="true">教师管理</a>
				<!-- <img alt="" src="dist/css/icons/teacher.png" width="14px" height="14px" ><span>教师管理</span> -->
			</div>
			<div class="left-list-item" url="/sms1/admin/tab_course.jsp" title="课程管理">
				<a class="easyui-linkbutton" iconCls="icon-course" plain="true">课程管理</a>
				<!-- <img alt="" src="dist/css/icons/course.png" width="14px" height="14px" ><span>教师管理</span> -->
			</div>
			<div class="left-list-item" url="/sms1/admin/tab_teaching.jsp" title="授课管理">
				<a class="easyui-linkbutton" iconCls="icon-teaching" plain="true">授课管理</a>
				<!-- <img alt="" src="dist/css/icons/score.png" width="14px" height="14px" ><span>授课管理</span> -->
			</div>
			<div class="left-list-item" url="/sms1/admin/tab_score.jsp" title="成绩管理">
				<a class="easyui-linkbutton" iconCls="icon-score" plain="true">成绩管理</a>
				<!-- <img alt="" src="dist/css/icons/score.png" width="14px" height="14px" ><span>教师管理</span> -->
			</div>

		</div>

	</div>
	<div region="center" class="right">
		<div  id="tab" fit="true" >
			<div title="主页" iconCls="icon-home">
				welcome to student manager system
			</div>
		</div>
	</div>

	
</body>

</html>