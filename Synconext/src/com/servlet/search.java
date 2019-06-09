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

public class search extends HttpServlet {
	
	
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
		
		String search=request.getParameter("search");		
		response.setContentType("text/html");
		String sql="Select * from isp where name =\""+search+"\"";
		try {
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			resultSet = statement.executeQuery(sql);
			resultSet.next();			
			
			String str="<tr><td>Name 			:"+resultSet.getString("name") +"</td></tr>"+
					  "<tr><td>Price			:"+resultSet.getString("lowest_price") +"</td></tr>"+
					  "<tr><td>Rating			:"+resultSet.getString("rating") +"</td></tr>"+
					  "<tr><td>Max Speed(mbps)		:"+resultSet.getString("max_speed") +"</td></tr>"+
					  "<tr><td>Description		:"+resultSet.getString("description") +"</td></tr>"+
					  "<tr><td>Contact No		:"+resultSet.getString("conatct_no") +"</td></tr>"+
					  "<tr><td>E-Mail			:"+resultSet.getString("email") +"</td></tr>"+
					  "<tr><td>URL				:"+resultSet.getString("url") +"</td></tr>";
			
			out.write(str);					  				
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	
	
	
	
}

