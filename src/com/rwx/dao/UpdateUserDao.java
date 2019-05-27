package com.rwx.dao;

import java.sql.*;

public class UpdateUserDao {
	public int UpdateUser(String name1, String name2, String pwd, String rename, String t, String em) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			String sql = "update web_user set username='" + name2 + "',password='" + pwd
					+ "',repassword='" + pwd + "',realName='" + rename + "',tel='" + t + "',email='" + em
					+ "'where username='" + name1 + "'";
			int rs = stmt.executeUpdate(sql);

			int count = -1;
			if (rs > 0) {
				count = 1;
			}else if(rs == 0) {
				count = 0;
			}
			return count;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}

	}
}