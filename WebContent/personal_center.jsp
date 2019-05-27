<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
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
					<li><a href="find_friends.jsp">找寻旅友</a></li>
					<li><a href="sign_in.jsp">登陆账号</a></li>
					<li class="selected"><a href="personal_center.jsp">个人中心</a></li>
					<li><a href="about_us.jsp">关于我们</a></li>
					<li><a href="be_vip.jsp">开通会员</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<div id="sub2">
		<hr>
		<p align="center">
			<font size="6" color="blue">
				欢迎来到任我行&nbsp;&nbsp;&nbsp;&nbsp;祝您旅途愉快 </font>
		</p>
		<hr>
		<p align="center">修改个人信息</p>
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
					if (f.password.value.length > 12
							|| f.password.value.length < 6) {
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

		<form name="form1" method="post" class="personcenter_form"
			action="up_personal.jsp" onSubmit="return User()">
			<table width="500" border="1" align="center" cellpadding="0"
				cellspacing="1">
				<tr>
					<td width="94" height="38"><div align="center">
							修改用户名:
						</div></td>
					<td width="343">
						<div align="left">
							<input name="username" type="text" id="yonghu" size="20">
							<span>*用户名长度为4-16字母数字</span>
						</div>
					</td>
				</tr>
				<tr>
					<td height="38"><div align="center">修改密码:</div></td>
					<td>
						<div align="left">
							<input name="password" type="password" id="password" size="20">
							*密码长度为6-14数字
						</div>
					</td>
				</tr>
				<tr>
					<td height="38"><div align="center">修改真名:</div></td>
					<td>
						<div align="left">
							<input name="realName" type="text" id="name" size="20">
							*应为真实姓名
						</div>
					</td>
				</tr>
				<tr>
					<td height="38"><div align="center">修改电话:</div></td>
					<td>
						<div align="left">
							<input name="tel" type="text" id="zhengjian" size="20">
							*电话号码为8-14位数字
						</div>
					</td>
				</tr>
				<tr>
					<td height="38"><div align="center">修改电邮:</div></td>
					<td>
						<div align="left">
							<input name="email" type="text" id="Email" size="20">
							*不得漏填@ 注意大小写
						</div>
					</td>
				</tr>
			</table>
			<br>
			<div align="right">
				<input type="submit" name="submit" value="确认修改" >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" name="btn_back" value="返回上一级" onclick="back()">
			</div>
		</form>
	</div>

<script>
function back(){
	window.history.go(-1);
}
</script>

	<div class="grzx_yqlj">
		<select class="yqlj_1" name="yqlj_1" size="1"
			onchange="javascript:window.open(this.options[this.selectedIndex].value)">
			<option value="#">————————同类网站推介————————</option>
			<option value="http://www.ctrip.com/">携程旅游网</option>
			<option value="http://www.zh0451.com/">哈尔滨旅游网</option>
			<option value="http://www.tuniu.com/">途牛旅游网</option>
			<option value="http://chinese.visitseoul.net/index">首尔旅游网</option>
			<option value="http://www.cntour.cn/">中国旅游网</option>
			<option value="https://www.ly.com/">同城旅游网</option>
			<option value="http://www.qhlly.com/index.html">亲和力旅游网</option>
			<option value="http://www.visitbeijing.com.cn/">北京旅游网</option>
		</select> <select class="yqlj_2" name="yqlj_2" size="1"
			onchange="javascript:window.open(this.options[this.selectedIndex].value)">
			<option value="#">—————————友情链接—————————</option>
			<option
				value="http://baoxian.pingan.com/product/lvyoubaoxian.shtml?WT.mc_id=T00-LYBD2-PPC-000531&WT.srch=1">平安旅游保险</option>
			<option
				value="http://www.epicc.com.cn/lvyoubaoxian/jingneiziyouxing/?cmpid=2seb2201AJNZ0001B06">中国人民自由行保险</option>
			<option value="http://www.chinata.com.cn/">中国旅游协会</option>
			<option
				value="https://www.agoda.com/zh-cn/?cid=1656583&hl=zh-cn&type=1&utm_source=baidu&utm_medium=cpc&utm_content=AT:%u8ba2%u623f|GT:Exact-E&utm_campaign=AC:Baidu|GT&utm_term=%u8ba2%u623f&utm_account=8123879&tag=b8c7cf2bac464271875dbe8f58246ea0">Agoda订房网站</option>
			<option
				value="http://www.csair.com/cn/index.shtml?WT.mc_id=sem-baidu-pkw-pa01-hydt-hsjp-airchina&WT.srch=1">中国南方航空</option>
			<option
				value="http://flights.ctrip.com/?mkt_header=bdnm&AllianceID=108294&sid=767751&ouid=v1c5a1ss_UGcOawQwVG0KP1ZmCGkMPgI4AWxVJw==&popup=close&autoawaken=close&sourceid=2189">国内特价机票</option>
			<option value="http://www.china-embassy.org/">中国驻美大使馆</option>
			<option value="http://www.onegreen.net/maps/HTML/48074.html">中国旅游地图</option>
		</select> <select class="yqlj_3" name="yqlj_2" size="1"
			onchange="javascript:window.open(this.options[this.selectedIndex].value)">
			<option value="#">—————————各地旅游攻略—————————</option>
			<option value="http://you.ctrip.com/place/hongkong38.html">香港旅游攻略</option>
			<option value="https://lhasa.cncn.com/jingdian/">拉萨旅游攻略</option>
			<option value="https://taiwan.cncn.com/">台湾旅游攻略</option>
			<option value="https://jiangsu.cncn.com/">江苏旅游攻略</option>
			<option value="https://fujian.cncn.com/">福建旅游攻略</option>
			<option value="https://shanxi.cncn.com/">山西旅游攻略</option>
			<option value="https://zhejiang.cncn.com/">浙江旅游攻略</option>
			<option value="https://jilin.cncn.com/">吉林旅游攻略</option>
		</select>
	</div>


	<div class="footer">
		<ul class="text1">
			<li>Haerbin Normal University</li>
		</ul>
		<ul class="text2">
			<li>版权所有 &nbsp;仿冒必究</li>
		</ul>
	</div>


</body>
</html>