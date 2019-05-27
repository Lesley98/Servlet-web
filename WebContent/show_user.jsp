<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看用户</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	<div class="daohang">
		<div class="header">

			<div class="webname">任我行后台管理系统</div>

			<div class="weather">
				<div class="img">
					<img src="images/weather_2.jpg" alt="img" />
				</div>
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
	<script>
		function check() {
			var f = document.form3;
			if (f.username.value == "") {
				alert("用户名不能为空");
				f.username.focus();
				f.username.select();
				return false;
			}
		}
	</script>
	<form name="form3" method="post" class="chaxun_form"
		action="chaxun_user.jsp" onSubmit="return check()">
		<fieldset>
			<legend align="center">亲爱的管理员，欢迎您查看用户信息</legend>
			<br>
			<table width="600" border="3" align="center" cellpadding="0"
				cellspacing="1">
				<div align="center">
			</table>
		</fieldset>
	</form>

	<%
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		String userPasswd = "123";
		String dbName = "rwx";
		String tableName = "web_user";
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" class="usertable">
		<tr>
			<th>
				<%
					out.print("用户名");
				%>
			</th>
			<th>
				<%
					out.print("密码");
				%>
			</th>
			<th>
				<%
					out.print("重复密码");
				%>
			</th>
			<th>
				<%
					out.print("真实姓名");
				%>
			</th>
			<th>
				<%
					out.print("电话号码");
				%>
			</th>
			<th>
				<%
					out.print("电子邮箱");
				%>
			</th>

		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%
					out.print(rs.getString(1));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(6));
				%>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		rs.close();
		statement.close();
		connection.close();
	%>

</body>
</html>
