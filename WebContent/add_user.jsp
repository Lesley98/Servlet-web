<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%!Date date;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>任我行后台管理系统</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
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
	<script language="javascript">
		function User() {
			var f = document.form1;
			if (f.username.value == "") {
				alert("名字不能为空");
				f.username.focus();
				f.username.select();
				return false;
			}
			if (f.username.value.substring(0, 1) == " ") {
				alert("第一位不能为空");
				f.username.focus();
				f.username.select();
				return false;
			}
			if (f.username.value.length48) {
				alert("用户名长度错误");
				f.username.focus();
				f.username.select();
				return false;
			}
			if (f.username.value.length > 12) {
				alert("用户名长度错误");
				f.username.focus();
				f.username.select();
				return false;
			}
			if (f.password.value == "") {
				alert("密码不能为空");
				f.password.focus();
				f.password.select();
				return false;
			}
			if (f.password.value.substring(0, 1) == " ") {
				alert("第一位不能为空");
				f.password.focus();
				f.password.select();
				return false;
			}

			if (isNaN(f.password.value) != true) {
				if (f.password.value.length > 12 || f.password.value.length < 6) {
					alert("密码长度不正确");
					f.password.focus();
					f.password.select();
					return false;

				}
			} else {
				alert("密码必须为数字");
				f.password.focus();
				f.password.select();
				return false;
			}
			if (f.password.value.indexOf("-", 0) >= 0
					|| f.password.value.indexOf("+", 0) >= 0) {
				alert("不能出现+ - 号");
				f.password.focus();
				f.password.select();
				return false;
			}
			if (f.repassword.value == "") {
				alert("密码不能为空");
				f.repassword.focus();
				f.repassword.select();
				return false;
			}
			if (f.repassword.value.substring(0, 1) == " ") {
				alert("第一位不能为空");
				f.repassword.focus();
				f.repassword.select();
				return false;
			}
			if (f.repassword.value != f.password.value) {
				alert("密码不一致!");
				f.repassword.focus();
				f.repassword.select();
				return false;
			}
			if (f.realName.value == "") {
				alert("姓名不能为空");
				f.userName.focus();
				f.realName.select();
				return false;
			}
			if (f.realName.value.substring(0, 1) == " ") {
				alert("第一位不能为空");
				f.realName.focus();
				f.realName.select();
				return false;
			}

			if (isNaN(f.realName.value)) {
				if (f.realName.value.length<2 || f.realName.value.length>14) {
					alert("您输入的姓名长度有误");
					f.realName.focus();
					f.realName.select();
					return false;
				}
			} else {
				alert("姓名不能为数字");
				f.realName.focus();
				f.realName.select();
				return false;
			}

			if (f.tel.value == "") {
				alert("电话不能为空");
				f.tel.focus();
				f.tel.select();
				return false;
			}
			if (f.tel.value.substring(0, 1) == " ") {
				alert("第一位不能为空");
				f.tel.focus();
				f.tel.select();
				return false;
			}

			if (isNaN(f.tel.value) != true) {
				if (f.tel.value.length<8 || f.tel.value.length>14) {
					alert("电话号码长度不正确");
					f.tel.focus();
					f.tel.select();
					return false;
				}
			} else {
				alert("电话必须为数字");
				f.tel.focus();
				f.tel.select();
				return false;
			}
			if (f.tel.value.indexOf("-", 0) >= 0
					|| f.tel.value.indexOf("+", 0) >= 0) {
				alert("不能出现+ - 号");
				f.tel.focus();
				f.tel.select();
				return false;
			}
			if (f.email.value == "") {
				return true;
			} else {
				if (f.email.value.substring(0, 1) == " ") {
					alert("第一位不能为空");
					f.email.focus();
					f.email.select();
					return false;
				}
				if (f.email.value.indexOf("@", 0) == -1) {
					alert("地址有误,把@补上");
					f.email.focus();
					f.email.select();
					return false;
				}
				if (f.email.value.indexOf(".", 0) == -1) {
					alert("地址有误,把.补上");
					f.email.focus();
					f.email.select();
					return false;
				}
			}
		}
	</script>

	<form name="form1" method="post" class="signup_form"
		action="admin_adduser.jsp" onSubmit="return User()">
		<p>&nbsp;</p>
		<table width="500" border="1" align="center" cellpadding="0"
			cellspacing="1">
			<tr>
				<td width="94" height="38"><div align="center">
						<p>用&nbsp;户 名:</p>
					</div></td>
				<td width="343">
					<div align="left">
						<input name="username" type="text" id="yonghu" size="20">
						<span>*用户名长度为4-16字母数字</span>
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">密 &nbsp; &nbsp;码:</div></td>
				<td>
					<div align="left">
						<input name="password" type="password" id="password" size="20">
						*密码长度为6-14数字
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">重复密码:</div></td>
				<td>
					<div align="left">
						<input name="repassword" type="password" id="repassword" size="20">
						*必须与密码保持一致
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">真实姓名:</div></td>
				<td>
					<div align="left">
						<input name="realName" type="text" id="name" size="20">
						*应为真实姓名
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">电话号码:</div></td>
				<td>
					<div align="left">
						<input name="tel" type="text" id="zhengjian" size="20">
						*电话号码为8-14位数字
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">电子邮件:</div></td>

				<td>
					<div align="left">
						<input name="email" type="text" id="Email" size="20">
						*不得漏填@ 注意大小写
					</div>
				</td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" name="submit" value="确认添加">
		</div>
	</form>

</body>
</html>