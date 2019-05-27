<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.LoginDao"%>
<%@ page import="javax.swing.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>

	<% 
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		LoginDao dao = new LoginDao();
		int result = dao.Login(name, pwd);
		if(result > 0){
			JOptionPane.showMessageDialog(null,"登陆成功，确认跳转到购票界面。");
			request.getRequestDispatcher("buy_tickets.jsp").forward(request, response);
			
		}else if(result == 0){
			out.print("用户名或密码有误");
			request.getRequestDispatcher("sign_in.jsp").forward(request,response);
		}else{
			out.print("系统异常");
		}
%>
</body>
</html>