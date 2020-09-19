package com.login.dao;

import java.sql.*;
import java.sql.DriverManager;

import com.mysql.jdbc.Statement;

public class LoginDao 
{
	/*
	 * String url = "jdbc:mysql://localhost:3307/broadway";
	 * String username ="root";
	 * String password="";
	 */
	String sql = "SELECT * FROM navin where uname=? and pass=?";
	public boolean check(String uname, String pass) {
	 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/broadway","root","");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, uname);
			st.setString(2, pass);
			
			
			ResultSet rs = st.executeQuery();
			//System.out.println(rs);

			
			  if (rs.next()) 
			  { 
				  return true; }
			 
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}
}
