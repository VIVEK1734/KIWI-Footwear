package com.kiwifootwear.DAO.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.kiwifootwear.DAO.LoginDao;

public class LoginDaoImpl implements LoginDao {

	public Connection con;
	public PreparedStatement ps;
	public int res;
	
	public int checkUser(String username, String password, String type) {

		boolean result=false;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement("select username,password,type from Customer where username=? and password=? and type=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3,type);
			result=ps.execute();
			 
			if(result) {
				return 1;
			}
				
			else {
				return 0;
			}
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
			return 0;
		}
		
	}

}