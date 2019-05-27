<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.AddticketsDao" %>
<%@ page import ="javax.swing.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%
		String checi = request.getParameter("checi");
		String qidian = request.getParameter("qidian");
		String zhongdian = request.getParameter("zhongdian");
		String shijian = request.getParameter("shijian");
		String piaojia = request.getParameter("piaojia");
		String shengyu = request.getParameter("shengyu");
		
		AddticketsDao dao = new AddticketsDao();
		
		int result = dao.Addtickets(checi,qidian,zhongdian,shijian,piaojia,shengyu);
		if(result > 0){
			JOptionPane.showMessageDialog(null,"添加成功，确认后查看所有车票信息");
			request.getRequestDispatcher("show_tickets.jsp").forward(request, response);
		}else if(result == 0){
			out.print("输入有误");
		}else{
			out.print("系统异常");
		}
%>
</body>
</html>