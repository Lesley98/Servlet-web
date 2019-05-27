package com.rwx.dao;

import java.sql.*;

public class DropticketsDao {
	public int Droptickets(String checi) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			String sql = "delete from web_train where checi='"+checi+"'";
			int row = stmt.executeUpdate(sql);

			int count = -1;
			if (row > 0) {
				count = 1;
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
