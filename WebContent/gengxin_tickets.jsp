<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.*"%>
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
		
		UpdateTicketsDao dao = new UpdateTicketsDao();
		int rs = dao.UpdateTickets(checi, qidian, zhongdian,
				shijian, piaojia, shengyu);
		if(rs == 1){
			JOptionPane.showMessageDialog(null,"修改成功，确认后查看所有车票");
			request.getRequestDispatcher("show_tickets.jsp").forward(request, response);
		}else if(rs == 0){
			out.print("修改失败，此车次不存在");
		}else{
			out.print("系统异常");
		}


%>


</body>
</html>