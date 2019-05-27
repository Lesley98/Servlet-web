<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>删除车票</title>
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
<script>
function check(){
	var f=document.form3;
	if(f.username.value=="")
	{
		alert("车次不能为空");
        f.username.focus();
        f.username.select();
		return false;
	}
}
</script>
<form name="form3" method="post" class="droptickets_form" action="drop_tickets.jsp" onSubmit="return check()">
    <fieldset> <legend align="center">请输入您要删除的车次</legend>
    <br>
    <table width="600" border="3" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td width="94" height="38"><div align="center">
          <p>车&nbsp;&nbsp;次:</p>
          </div></td>
        <td width="340">          
           <div align="left">
             <input name="checi" type="text" id="yonghu" size="20"  >
        <span>*车次为字母和数字的组合</span></div></td>
      </tr>
</table><br><p align="right"><input type="submit" value="确认删除" onclick="ask();"></p>
</fieldset>
</form>

<script>
function ask(){
	confirm("你确认要删除此车次吗？");
}
</script>
</body>
</html>