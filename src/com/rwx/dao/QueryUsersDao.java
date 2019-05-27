package com.rwx.dao;

import java.sql.*;

public class QueryUsersDao {
	public int QueryUsers(String name) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			String sql = "select count(*) from web_user where username = '"+name+"'";
			rs = stmt.executeQuery(sql);
			
			int count = -1;
			if(rs.next()) {
				count = rs.getInt(1);
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