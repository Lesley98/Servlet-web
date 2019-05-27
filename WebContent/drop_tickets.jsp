<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.DropticketsDao"%>
<%@ page import="javax.swing.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		String checi = request.getParameter("checi");

		DropticketsDao dao = new DropticketsDao();

		int result = dao.Droptickets(checi);
		if (result > 0) {
			JOptionPane.showMessageDialog(null, "删除成功，确认后查看所有票务");
			request.getRequestDispatcher("show_tickets.jsp").forward(request, response);
		} else if (result == 0) {
			out.print("删除有误");
		} else {
			out.print("系统异常");
		}
	%>
</body>
</html>