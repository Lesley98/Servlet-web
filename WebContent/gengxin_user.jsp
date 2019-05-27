<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.UpdateUserDao"%>
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
		String name1 = request.getParameter("name1");
		String name2 = request.getParameter("name2");
		String pwd = request.getParameter("pwd");
		String rename = request.getParameter("rename");
		String t = request.getParameter("tel");
		String em = request.getParameter("em");
		UpdateUserDao dao = new UpdateUserDao();
		int rs = dao.UpdateUser(name1, name2, pwd, rename, t, em);
		if(rs == 1){
			JOptionPane.showMessageDialog(null,"修改成功，确认后查看所有用户");
			request.getRequestDispatcher("show_user.jsp").forward(request, response);
		}else if(rs == 0){
			out.print("修改失败，查无此用户");
		}else{
			out.print("系统异常");
		}
%>



</body>
</html>