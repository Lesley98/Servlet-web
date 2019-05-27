package com.rwx.jdbc;
import java.sql.*;

public class DBUtil {
	
	static String url="jdbc:mysql://localhost:3306/rwx";
	static String user="root";
	static String password="123";
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConn() {
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(url, user, password);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConn(Connection conn){		
		try {
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	}

