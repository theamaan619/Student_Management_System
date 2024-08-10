package com.conn;

import java.sql.*;

public class DBConnect {
	private static Connection conn = null;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_dbs","root","Amaan619");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
