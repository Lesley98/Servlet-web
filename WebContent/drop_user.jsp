<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.rwx.dao.DeleteDao" %>
<%@ page import = "javax.swing.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drop user</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<%
			String name = request.getParameter("username");
			
			DeleteDao dao = new DeleteDao();
			int result = dao.Delete(name);
			if(result > 0){
				JOptionPane.showMessageDialog(null,"删除成功，确认查看所有用户");
				request.getRequestDispatcher("show_user.jsp").forward(request, response);
			}else if(result == 0){
				out.print("用户名有误");
			}else{
				out.print("系统异常");
			}
%>
</body>
</html>