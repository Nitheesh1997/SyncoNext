package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtility {
	private static Connection connection = null;

	public static Connection getConnection() throws Exception {
		if (connection != null)
			return connection;
		else {
			
			Class.forName("com.mysql.jdbc.Driver");			
			connection = DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/service_provider","root","bablu");;
			return connection;
		}
		
	}
}