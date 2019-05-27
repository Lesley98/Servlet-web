<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<%@ page import="com.rwx.dao.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线购票</title>
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

	<div id="sub2">
		<hr>
		<p align="center">
			<font size="5" color="blue">
				欢迎来到任我行&nbsp;&nbsp;&nbsp;&nbsp;祝您旅途愉快 </font>
		</p>
		<hr>
		<p align="center">查看车票信息</p>
	</div>

	<div class="QueryRs" align="center">
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<%
			String qidian = request.getParameter("qidian");
			String zhongdian = request.getParameter("zhongdian");
			String shijian = request.getParameter("shijian");

			QueryTicketsDao dao = new QueryTicketsDao();
			int result = dao.QueryTickets(qidian, zhongdian, shijian);

			if (result != 0) {
				out.print("<br><strong>查询成功" + "</strong><br><br>");
				out.print("<br><strong>" + shijian + "&nbsp;&nbsp;" + "日" + "起点为" + "&nbsp;&nbsp;" + qidian
						+ "&nbsp;&nbsp;" + "终点为" + "&nbsp;&nbsp;" + zhongdian + "&nbsp;&nbsp;" + "的列车尚有余票" + result
						+ "张。</strong>");
			} else if (result == 0) {
     			out.print("未查询到相应车票");
			} else {
				out.print("系统异常");
			}
		%><br> <br> <br> <input type="button" name="btn_1"
			value="确认购买" id="buy" onclick="buy()">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" name="btn_2"
			value="返回上一级" onclick="back()">
	</div>
	
	<script type="text/javascript">
		function buy() {
			
			gp.style.display = "block";
		}
	</script>

	<div class="gp" id="gp">
		<div class="gpk" id="gpk">
			<fieldset>
				<legend align="center">
					<strong>输入购票信息</strong>
				</legend>
				<br>
				<table>
					<tr>
						<td>乘车人姓名：</td>
						<td><input type="text" placeholder="请输入真实姓名"
							name="buy_people"></td>
					</tr>
					<tr>
						<td>乘车人性别：</td>
						<td><input type="radio" name="gender" checked="checked">
							男 <input type="radio" name="gender"> 女</td>
					</tr>
					<tr>
						<td>购票种类：</td>
						<td><select>
								<option value="zp">站票</option>
								<option value="yz">硬座</option>
								<option value="yw">硬卧</option>
								<option value="rw">软卧</option>
								<option value="rw">高级下铺</option>
						</select></td>
					</tr>
					<tr>
						<td>联系方式：</td>
						<td><input type="email" placeholder="请输入电邮地址" name="buy_em"></td>
					</tr>
					<tr>
						<td>扣款卡号：</td>
						<td><input type="text" placeholder="请输入银行卡账号" name="buy_card"></td>
					</tr>
				</table>
			</fieldset>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;
			<button id="btn_buy">确认购买</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
			<button id="btn_cancel" onclick="cancel();">取消购买</button>

		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("button#btn_buy").click(function() {
				layer.confirm('请确认车票信息，准确无误后购买', {
					btn : [ '确认购买', '我再看看' ]
				}, function() {
					layer.prompt({
						title : '请输入购票张数',
						formType : 3
					}, function(text, index) {
						layer.close(index);
						layer.msg('购票成功！您成功购买了' + text + '张车票');
					});
					var gpk = document.getElementById('gp');
					gpk.style.display = "none";
				}, function() {
				});
			});
		});
		
	</script>
	<script type="text/javascript">
		function cancel() {
			var gpk = document.getElementById('gp');
			gpk.style.display = "none";
		}
	</script>
	<script type="text/javascript">
		function back() {
			window.history.go(-1);
		}
	</script>

	<div class="Query_yqlj">
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