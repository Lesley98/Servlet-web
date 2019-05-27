<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>修改票务</title>
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

<form name="form8" class="form0" action="gengxin_tickets.jsp" onSubmit="ask();">
        <fieldset>
        <legend align="center">修改票务信息</legend>
        
        <table class="upuser_table">
        <tr>
        <td><span>输入被修改车票的车次</span></td>
        <td><input type="text" name="checi"></td>
        </tr>

        <tr>
        <td><span>将起点城市改为：</span></td>
        <td><input type="text" name="qidian"></td>
        </tr>
        
        <tr>
        <td><span>将终点城市改为：</span></td>
        <td><input type="text" name="zhongdian"></td>
        </tr>
        
        <tr>
        <td><span>将时间改为：</span></td>
        <td><input type="text" name="shijian"></td>
        </tr>
        
        <tr>
        <td><span>将车票的票价改为：</span></td>
        <td><input type="text" name="piaojia"></td>
        </tr>
        
        <tr>
        <td><span>将车票的余票改为：</span></td>
        <td><input type="text" name="shengyu"></td>
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
var f = document.form8;
function ask(){
	confirm("您是否确认修改？","");
}
</script>

</body>
</html>