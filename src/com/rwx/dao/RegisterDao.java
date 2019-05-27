package com.rwx.dao;
import java.sql.*;

public class RegisterDao {
	public int Register(String name, String pwd, String repwd, String rename, String t, String em) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement();
			String sql="insert into web_user(username,password,repassword,realName,tel,email)values('"+name+"','"+pwd+"','"+repwd+"','"+rename+"','"+t+"','"+em+"')";
			int row = stmt.executeUpdate(sql);
			
			int count = -1;
			if(row >0 ) {
				count = 1;
				
			}
			return count;
			
		}catch (ClassNotFoundException e){
			e.printStackTrace();
			return -1;
		}catch (SQLException e){
			e.printStackTrace();
			return -1;
		}
	}
}
