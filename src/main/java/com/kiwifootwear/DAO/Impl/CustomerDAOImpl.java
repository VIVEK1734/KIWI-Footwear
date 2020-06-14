package com.kiwifootwear.DAO.Impl;

import com.kiwifootwear.DAO.CustomerDAO;
import com.kiwifootwear.model.Customer;
import java.sql.*;

public class CustomerDAOImpl implements CustomerDAO {

	public Connection con;
	public PreparedStatement ps;
	public int res;

	public int insert(Customer c) {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement(
					"insert into Customer(name,username,password,address,emailid,phoneno,type) values (?,?,?,?,?,?,?)");
			ps.setString(1, c.getName());
			ps.setString(2, c.getUsername());
			ps.setString(3, c.getPassword());
			ps.setString(4, c.getAddress());
			ps.setString(5, c.getEmailid());
			ps.setString(6, c.getPhoneno());
			ps.setString(7, c.getType());
			
			res = ps.executeUpdate();

			if (res > 0) {
				System.out.println("Record Successfully Inserted");
				return 1;
			} 
			
			else {
				System.out.println("Error inserting the record");
				return 0;
			}
			
		}

		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}

}
