<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>在线购票</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div class="daohang">
	<div class="header">

		<div class="webname">任我行出游网</div>
		
		<div class="weather">
				<div class="img"><img src="images/weather_2.jpg" alt="img" /></div>
				<div class="text">哈尔滨&nbsp;晴&nbsp;12℃~24℃</div>
        </div>
        
		<nav class="head_nav">
			<ul>
				<li><a href="main.jsp">主页</a></li>
				<li><a href="hot_city.jsp">热门城市</a></li>
				<li class="selected"><a href="buy_tickets.jsp">在线购票</a></li>
				<li><a href="sign_up.jsp">注册账号</a></li>
				<li><a href="find_friends.jsp">找寻旅友</a></li>
				<li><a href="sign_in.jsp">登陆账号</a></li>
				<li><a href="personal_center.jsp">个人中心</a></li>
				<li><a href="about_us.jsp">关于我们</a></li>
				<li><a href="be_vip.jsp">开通会员</a></li>
			</ul>
		</nav>
	</div>
</div>
<script type="text/javascript">
function Check()
{
	var f=document.form7;
	if(f.qidian.value=="")
	{
		alert("起点不能为空");
        f.qidian.focus();
        f.qidian.select();
		return false;
	}
	if(f.zhongdian.value=="")
	{
		alert("终点不能为空");
        f.zhongdian.focus();
        f.zhongdian.select();
		return false;
	}
	if(f.shijian.value=="")
	{
		alert("时间不能为空");
        f.shijian.focus();
        f.shijian.select();
		return false;
	}
}
	</script>
<div id="sub2">
				<hr>
				<p align="center"><font size="4" color="blue">
				欢迎来到任我行&nbsp;&nbsp;&nbsp;&nbsp;祝您旅途愉快
				</font></p>
				<hr>
		   		<p align="center">查询车票信息</p>
		   		
		   		<form name="form7" method="post" action="QueryTickets.jsp" onSubmit="return Check()" class="query_form">
					<table width="280" cellpadding="1" cellspacing="1" border="1" align="center">
						<tr>
							<td width="100" height="12" align="center">起点</td>
							<td><div align="center">
									<input name="qidian" type="text" id="qidian" size="20"><span>  *您出发的城市</span>
								</div></td>
						</tr>
						
						<tr>
							<td width="100" height="12" align="center">终点</td>
							<td>
								<div align="center">
									<input name="zhongdian" type="text"id="zhongdian" size="20"><span>  *您的目的地</span> 
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">时间</td>
							<td>
								<div align="center">
									<input name="shijian" type="text" id="shijian" size="20"><span>  *您出发的时间</span>
								</div>
							</td>
						</tr>						
					</table>
					<p align="center">
						  		<input name="submit" type="submit" value="查询车票">
					</p>
				</form>
        </div>
        <div class="zxgp_yqlj">
<select class="yqlj_1" name="yqlj_1" size="1" onchange="javascript:window.open(this.options[this.selectedIndex].value)">
		<option value="#">————————同类网站推介————————</option>
		<option value="http://www.ctrip.com/">携程旅游网</option>
		<option value="http://www.zh0451.com/">哈尔滨旅游网</option>
		<option value="http://www.tuniu.com/">途牛旅游网</option>
		<option value="http://chinese.visitseoul.net/index">首尔旅游网</option>
		<option value="http://www.cntour.cn/">中国旅游网</option>
		<option value="https://www.ly.com/">同城旅游网</option>
		<option value="http://www.qhlly.com/index.html">亲和力旅游网</option>
		<option value="http://www.visitbeijing.com.cn/">北京旅游网</option>
</select>

<select class="yqlj_2" name="yqlj_2" size="1" onchange="javascript:window.open(this.options[this.selectedIndex].value)">
		<option value="#">—————————友情链接—————————</option>
		<option value="http://baoxian.pingan.com/product/lvyoubaoxian.shtml?WT.mc_id=T00-LYBD2-PPC-000531&WT.srch=1">平安旅游保险</option>
		<option value="http://www.epicc.com.cn/lvyoubaoxian/jingneiziyouxing/?cmpid=2seb2201AJNZ0001B06">中国人民自由行保险</option>
		<option value="http://www.chinata.com.cn/">中国旅游协会</option>
		<option value="https://www.agoda.com/zh-cn/?cid=1656583&hl=zh-cn&type=1&utm_source=baidu&utm_medium=cpc&utm_content=AT:%u8ba2%u623f|GT:Exact-E&utm_campaign=AC:Baidu|GT&utm_term=%u8ba2%u623f&utm_account=8123879&tag=b8c7cf2bac464271875dbe8f58246ea0">Agoda订房网站</option>
		<option value="http://www.csair.com/cn/index.shtml?WT.mc_id=sem-baidu-pkw-pa01-hydt-hsjp-airchina&WT.srch=1">中国南方航空</option>
		<option value="http://flights.ctrip.com/?mkt_header=bdnm&AllianceID=108294&sid=767751&ouid=v1c5a1ss_UGcOawQwVG0KP1ZmCGkMPgI4AWxVJw==&popup=close&autoawaken=close&sourceid=2189">国内特价机票</option>
		<option value="http://www.china-embassy.org/">中国驻美大使馆</option>
		<option value="http://www.onegreen.net/maps/HTML/48074.html">中国旅游地图</option>
</select>

<select class="yqlj_3" name="yqlj_2" size="1" onchange="javascript:window.open(this.options[this.selectedIndex].value)">
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