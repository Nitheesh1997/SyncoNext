package com.servlet;

import javax.servlet.http.HttpServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class sort extends HttpServlet {
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "service_provider";
		String userid = "root";
		String password = "bablu";
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String sort=request.getParameter("sort");
		response.setContentType("text/html");
		String sql="Select name,lowest_price from isp order by "+sort+" asc";
		
		try {
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while(resultSet.next())
			{
				out.write("<tr><td>"+resultSet.getString("name") +"</td>"+
				"<td>"+resultSet.getString("lowest_price")+"</td></tr>");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	
	
	
	
}

