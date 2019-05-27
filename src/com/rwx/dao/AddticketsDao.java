package com.rwx.dao;

import java.sql.*;

public class AddticketsDao {
	public int Addtickets(String checi, String qidian, String zhongdian, String shijian, String piaojia,
			String shengyu) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			String sql = "insert into web_train(checi,qidian,zhongdian,shijian,piaojia,shengyu)values('" + checi + "','"
					+ qidian + "','" + zhongdian + "','" + shijian + "','" + piaojia + "','" + shengyu + "')";
			int row = stmt.executeUpdate(sql);
			int count = 0;
			if (row > 0) {
				count = 1;
				return count;
			}else {
				count = 0;
				return count;
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}
}
