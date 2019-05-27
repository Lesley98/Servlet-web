package com.rwx.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import com.rwx.dao.RegisterDao;

@WebServlet("/RegisterServlet")

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		String repwd = request.getParameter("repassword");
		String rename = request.getParameter("realName");
		String t = request.getParameter("tel");
		String em = request.getParameter("email");
		
		RegisterDao dao = new RegisterDao();
		int result = dao.Register(name, pwd, repwd, rename, t, em);
		if(result > 0){
			JOptionPane.showMessageDialog(null,"注册成功，确认跳转到登陆界面。");
			request.getRequestDispatcher("sign_in.jsp").forward(request, response);
			
		}else if(result == 0){
			System.out.print("用户名或密码有误");
		}else{
			System.out.print("系统异常");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
