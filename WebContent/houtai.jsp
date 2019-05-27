<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>任我行后台管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div class="daohang">
	<div class="header">

		<div class="webname">任我行后台管理系统</div>
		
		<div class="weather">
				<div class="img"><img src="images/weather_2.jpg" alt="img" /></div>
				<div class="text">哈尔滨&nbsp;晴&nbsp;12℃~24℃</div>
        </div>
        
		<nav class="head_nav">
			<ul>
			    <li class="selected"><a href="houtai.jsp">后台主页</a></li>
				<li><a href="main.jsp">网站主页</a></li>
			</ul>
		</nav>
	</div>
</div>

<div class="manager">
<div class="manager_1">
<a href="add_user.jsp"><img src="images/manager_1.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_1">
<a href="delete_user.jsp"><img src="images/manager_2.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_1">
<a href="show_user.jsp"><img src="images/manager_3.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_1">
<a href="update_user.jsp"><img src="images/manager_7.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_2">
<a href="add_tickets.jsp"><img src="images/manager_4.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_2">
<a href="delete_ticksts.jsp"><img src="images/manager_5.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_2">
<a href="show_tickets.jsp"><img src="images/manager_6.jpg" width="200px" height="200px" border="3"></a>
</div>
<div class="manager_2">
<a href="update_tickets.jsp"><img src="images/manager_8.jpg" width="200px" height="200px" border="3"></a>
</div>
</div>
</body>
</html>