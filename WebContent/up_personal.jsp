<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.rwx.dao.RegisterDao" %>
    <%@ page import = "javax.swing.*" %>
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
				String repwd = request.getParameter("repassword");
				String rename = request.getParameter("realName");
				String t = request.getParameter("tel");
				String em = request.getParameter("email");
				
				RegisterDao dao = new RegisterDao();
				int result = dao.Register(name, pwd, repwd, rename, t, em);
				if(result > 0){
					JOptionPane.showMessageDialog(null,"修改成功，确认跳转到登陆界面。");
					request.getRequestDispatcher("sign_in.jsp").forward(request, response);
					
				}else if(result == 0){
					out.print("用户名或密码有误");
				}else{
					out.print("系统异常");
				}
%>



</body>
</html>