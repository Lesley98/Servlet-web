<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上旅游服务系统</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href='http://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<script src="jquery/jquery-3.3.1.min.js"></script>
	<script src="layer/layer.js"></script>

	<script type="text/javascript">
		$(function() {
			$("a#cannot").click(function(e) {
				layer.msg('请先登录', {
					icon : 6,
					time : 3000
				});
				e.preventDefault();
				window.setTimeout("window.location='sign_in.jsp'", 3000);
			});

			$("a#cannot2").click(function(e) {
				layer.msg('请先登录', {
					icon : 6,
					time : 3000
				});
				e.preventDefault();
				window.setTimeout("window.location='sign_in.jsp'", 3000);
			});
		})
	</script>

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
					<li class="selected"><a href="main.jsp">主页</a></li>
					<li><a href="hot_city.jsp">热门城市</a></li>
					<li><a href="buy_tickets.jsp" id="cannot">在线购票</a></li>
					<li><a href="sign_up.jsp">注册账号</a></li>
					<li><a href="find_friends.jsp" id="cannot2">找寻旅友</a></li>
					<li><a href="sign_in.jsp">登陆账号</a></li>
					<li><a href="personal_center.jsp">个人中心</a></li>
					<li><a href="about_us.jsp">关于我们</a></li>
					<li><a href="be_vip.jsp">开通会员</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<div class="lunbo">
	
	<div id="demo" class="main_calendar">
			<div id="ca"></div>

			<div id="dd"></div>
		</div>
		
		
		<div id="lunbo">
			<ul>
				<li><a href="http://www.ewuzhen.com/index.htm"><img
						alt="wuzhen" src="images/lunbo_1.jpg" height="350" width="800px"></a></li>
				<li><a
					href="https://www.8pig.com/country/244-244-null-null-null-null-1.html?utm_source=baidu&utm_keyword_id=58997661825&channel=sem#B_vid=6063664327819017795"><img
						alt="chongqing" src="images/lunbo_2.jpg" height="350"
						width="850px"></a></li>
				<li><a href="http://www.cqta.gov.cn/"><img alt=""
						src="images/lunbo_3.jpg" height="350" width="850px"></a></li>
				<li><a href="https://xian.cncn.com/"><img alt="xian"
						src="images/lunbo_4.jpg" height="350" width="850px"></a></li>
				<li><a
					href="https://www.booking.com/city/ca/sydney.zh.html?aid=872177;label=baidu-gwj96ETaozGxxLevHqXnhw-19175579719&utm_source=baidu&utm_medium=cpc&utm_campaign=Canada&utm_term=gwj96ETaozGxxLevHqXnhw"><img
						alt="xini" src="images/lunbo_5.jpg" height="350" width="850px"></a></li>
				<li><a href="http://www.xzlyxl.com/about/"><img
						alt="xizang" src="images/lunbo_6.jpg" height="350" width="850px"></a></li>
				<li><a href="http://www.mafengwo.cn/jd/23934/gonglve.html"><img
						alt="jiangnan" src="images/lunbo_7.jpg" height="350" width="850px"></a></li>
				<li><a href="https://www.russia-online.cn/"><img
						alt="eluosi" src="images/lunbo_8.jpg" height="350" width="850px"></a></li>
			</ul>
		</div>
	
	</div>
	
		<script src="js/jquery.js"></script>
		<script src="js/calendar.js"></script>
		<script>
			$('#ca').calendar({
				width : 320,
				height : 320,
				data : [ {
					date : '2015/12/24',
					value : 'Christmas Eve'
				}, {
					date : '2015/12/25',
					value : 'Merry Christmas'
				}, {
					date : '2016/01/01',
					value : 'Happy New Year'
				} ],
				onSelected : function(view, date, data) {
					console.log('view:' + view)
					alert('date:' + date)
					console.log('data:' + (data || 'None'));
				}
			});

			$('#dd').calendar({
				trigger : '#dt',
				zIndex : 999,
				format : 'yyyy-mm-dd',
				onSelected : function(view, date, data) {
					console.log('event: onSelected')
				},
				onClose : function(view, date, data) {
					console.log('event: onClose')
					console.log('view:' + view)
					console.log('date:' + date)
					console.log('data:' + (data || 'None'));
				}
			});
		</script>

	<script type="text/javascript">
		var li = document.getElementById('lunbo').getElementsByTagName("li");
		var num = 0;
		var len = li.length;

		setInterval(function() {
			li[num].style.display = "none";
			num = ++num == len ? 0 : num;
			li[num].style.display = "inline-block";

		}, 1800);
	</script>

	<div class="yqlj">
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