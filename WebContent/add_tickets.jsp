<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>更新票务</title>
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

	<script language="javascript">
		function Train() {
			var f = document.form4;
			if (f.checi.value == "") {
				alert("车次不能为空");
				f.checi.focus();
				f.checi.select();
				return false;
			}
			if (f.qidian.value == "") {
				alert("起点不能为空");
				f.qidian.focus();
				f.qidian.select();
				return false;
			}
			if (f.zhongdian.value == "") {
				alert("终点不能为空");
				f.zhongdian.focus();
				f.zhongdian.select();
				return false;
			}
			if (f.shijian.value == "") {
				alert("时间不能为空");
				f.shijian.focus();
				f.shijian.select();
				return false;
			}
			if (f.piaojia.value == "") {
				alert("票价不能为空");
				f.piaojia.focus();
				f.piaojia.select();
				return false;
			}
			if (f.shengyu.value == "") {
				alert("余票不能为空");
				f.shengyu.focus();
				f.shengyu.select();
				return false;
			}

		}
	</script>

	<form name="form4" method="post" class="addtickets_form" action="addtrain.jsp" onSubmit="return Train()">
		<p>&nbsp;</p>
		<table width="500" border="1" align="center" cellpadding="0"
			cellspacing="1">
			<tr>
				<td width="94" height="38"><div align="center">
						<p>车&nbsp;&nbsp;次:</p>
					</div></td>
				<td width="343">
					<div align="left">
						<input name="checi" type="text" id="checi" size="20"> <span>*车次为字母数字的组合。</span>
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">起 &nbsp;&nbsp;点:</div></td>
				<td>
					<div align="left">
						<input name="qidian" type="text" id="qidian" size="20">
						*起点城市用汉字填写
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">终&nbsp;&nbsp;点:</div></td>
				<td>
					<div align="left">
						<input name="zhongdian" type="text" id="zhongdian" size="20">
						*终点城市用汉字填写
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">时间:</div></td>
				<td>
					<div align="left">
						<input name="shijian" type="text" id="shijian" size="20">
						*输入代表月日的4位数字
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">票价:</div></td>
				<td>
					<div align="left">
						<input name="piaojia" type="text" id="piaojia" size="20">
						*数字，单位为RMB
					</div>
				</td>
			</tr>
			<tr>
				<td height="38"><div align="center">余票:</div></td>
				<td>
					<div align="left">
						<input name="shengyu" type="text" id="shengyu" size="20">
						*数字，单位为张。
					</div>
				</td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" name="submit" value="添加车票" onclick="ask();">
		</div>
	</form>

	<script type="text/javascript">
		function ask() {
			confirm("确定添加吗？");
		}
	</script>
</body>
</html>