package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionEx {
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
			return con;
	 }
		
}
