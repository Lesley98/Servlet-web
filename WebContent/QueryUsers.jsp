<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<%@ page import="com.rwx.dao.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找寻旅友</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<script src="jquery/jquery-3.3.1.min.js"></script>
<script src="layer/layer.js"></script>
<body>

	<div class="daohang">
		<div class="header">

			<div class="webname">任我行出游网</div>

			<div class="weather">
				<div class="img">
					<img src="images/weather_2.jpg" alt="img" />
				</div>
				<div class="text">哈尔滨&nbsp;晴&nbsp;12℃~24℃</div>
			</div>

			<nav class="head_nav">
				<ul>
					<li><a href="main.jsp">主页</a></li>
					<li><a href="hot_city.jsp">热门城市</a></li>
					<li><a href="buy_tickets.jsp">在线购票</a></li>
					<li><a href="sign_up.jsp">注册账号</a></li>
					<li class="selected"><a href="find_friends.jsp">找寻旅友</a></li>
					<li><a href="sign_in.jsp">登陆账号</a></li>
					<li><a href="personal_center.jsp">个人中心</a></li>
					<li><a href="about_us.jsp">关于我们</a></li>
					<li><a href="be_vip.jsp">开通会员</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<div id="sub2">
		<hr>
		<p align="center">
			<font size="5" color="blue">
				欢迎来到任我行&nbsp;&nbsp;&nbsp;&nbsp;祝您旅途愉快 </font>
		</p>
		<hr>
		<p align="center">查看旅友信息</p>
	</div>

	<div class="friends">
	
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<%
			String name = request.getParameter("username");
			QueryUsersDao dao = new QueryUsersDao();
			int result = dao.QueryUsers(name);
			if (result > 0) {
				out.print("<strong>查询成功<br><br>为您查找到用户名为" + name + "的用户。</strong><br><br><br>");
			} else if (result == 0) {
				out.print("查询失败");
			} else {
				out.print("系统异常");
			}
		%>
		<input type="button" id="add" name="btn_1" value="添加好友" onclick="addF();">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" name="btn_2"
			value="返回上一级" onclick="back();">
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("input#add").click(function() {
				layer.confirm('您确认添加此用户为好友吗？', {
					btn : [ '确认添加', '我再想想' ]
				}, function() {
					layer.prompt({
						title : '请输入您的请求信息',
						formType : 2
					}, function(text, index) {
						layer.close(index);
						layer.msg('发送成功，该用户已收到您的请求');
					});
				}, function() {

				});
			});
		});
	</script>
	
	<script type="text/javascript">
		function back() {
			window.history.go(-1);
		}
	</script>

</body>
</html>