package com.rwx.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.rwx.dao.LoginDao;


@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		LoginDao dao = new LoginDao();
		int result = dao.Login(name, pwd);
		if(result > 0){
			JOptionPane.showMessageDialog(null,"登陆成功，确认跳转到购票界面。");
			request.getRequestDispatcher("buy_tickets.jsp").forward(request, response);
			
		}else if(result == 0){
			JOptionPane.showMessageDialog(null, "用户名或密码有误，请重新登录");
			request.getRequestDispatcher("sign_in.jsp").forward(request,response);
		}else{
			JOptionPane.showMessageDialog(null, "系统异常");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		
	}

}

