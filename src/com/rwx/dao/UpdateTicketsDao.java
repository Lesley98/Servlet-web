package com.rwx.dao;

import java.sql.*;
public class UpdateTicketsDao {
	public int UpdateTickets(String checi, String qidian, String zhongdian, String shijian, String piaojia, String shengyu){
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/rwx";
			String user = "root";
			String password = "123";
			conn = DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement();
			String sql = "update web_train set qidian='"+qidian+"',zhongdian='"+zhongdian+"',shijian='"+shijian+"',shengyu='"+shengyu+"'where checi='"+checi+"'";
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