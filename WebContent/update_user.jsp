<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>修改用户</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
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

<form name="form8" class="form0" action="gengxin_user.jsp" onSubmit="ask();">
        <fieldset>
        <legend align="center">修改用户信息</legend>
        
        <table class="upuser_table">
        <tr>
        <td><span>输入被修改用户的用户名</span></td>
        <td><input type="text" name="name1"></td>
        </tr>

        <tr>
        <td><span>将用户名改为：</span></td>
        <td><input type="text" name="name2"></td>
        </tr>
        
        <tr>
        <td><span>将用户的密码改为：</span></td>
        <td><input type="password" name="pwd"></td>
        </tr>
        
        <tr>
        <td><span>将用户的真实姓名改为</span></td>
        <td><input type="text" name="rename"></td>
        </tr>
        
        <tr>
        <td><span>将用户的手机号改为</span></td>
        <td><input type="text" name="tel"></td>
        </tr>
        
        <tr>
        <td><span>将用户的电邮地址改为</span></td>
        <td><input type="email" name="em"></td>
        </tr>
        
        </table>
      
        <p align="center">
        <input type="submit" value="确认修改">
        <input type="button" value="返回上一级" onclick="back();">
        </p>
        </fieldset>
        </form>
<script>
function back(){
	window.history.go(-1);
}
var f = document.form0;
function ask(){
	confirm("您是否确认修改？","");
}
</script>

</body>
</html>