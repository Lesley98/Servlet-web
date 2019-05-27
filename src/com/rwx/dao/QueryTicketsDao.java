package com.rwx.dao;

import java.sql.*;
public class QueryTicketsDao {
	public int QueryTickets(String qidian, String zhongdian, String shijian) {
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
			String sql = "select shengyu from web_train where qidian = '"+qidian+"'and zhongdian = '"+zhongdian+"' and shijian = '"+shijian+"'";
			rs = stmt.executeQuery(sql);
			int shengyu = 0;
				while(rs.next()) {
				shengyu = rs.getInt("shengyu");
			}
			return shengyu;
			
		}catch (ClassNotFoundException e){
			e.printStackTrace();
			return -1;
		}catch (SQLException e){
			e.printStackTrace();
			return -1;
		}
}
}