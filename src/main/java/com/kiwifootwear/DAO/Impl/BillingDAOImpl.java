package com.kiwifootwear.DAO.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.kiwifootwear.DAO.BillingDAO;
import com.kiwifootwear.model.Billing;

public class BillingDAOImpl implements BillingDAO {
	
	private Connection con;
	private PreparedStatement ps;
	private int res;
	
	public int insert(Billing b) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement("insert into Billing(HouseNo,StreetNo,LandMark,city,state,zipcode,username)values(?,?,?,?,?,?,?)");
			ps.setInt(1, b.getHouseNo());
			ps.setInt(2,b.getStreetNo());
			ps.setString(3,b.getLandMark());
			ps.setString(4,b.getCity());
			ps.setString(5,b.getCity());
			ps.setInt(6,b.getZipcode());
			ps.setString(7,b.getUserName());
				
			res=ps.executeUpdate();
			System.out.println(res);
			
			if(res>0) {
				System.out.println("record inserted");
				return 1;
			}
			
			else {
				System.out.println("record not inserted");
			}
		}
			
		catch(Exception ex) {
			ex.printStackTrace();
		}
			
		return 0;
		
	}
	
}
