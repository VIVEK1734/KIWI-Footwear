package com.kiwifootwear.DAO.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.kiwifootwear.model.Shipping;
import com.kiwifootwear.DAO.ShippingDAO;

public class ShippingDAOImpl implements ShippingDAO {
	
	private Connection con;
	private PreparedStatement ps;
	private int res;
		
	public int insert(Shipping sh){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement("insert into Shipping(HouseNo,StreetNo,LandMark,city,state,zipcode,username)values(?,?,?,?,?,?,?)");
			ps.setInt(1, sh.getHouseNo());
			ps.setInt(2,sh.getStreetNo());
			ps.setString(3,sh.getLandMark());
			ps.setString(4,sh.getCity());
			ps.setString(5,sh.getState());
			ps.setInt(6,sh.getZipcode());
			ps.setString(7,sh.getUserName());
				
			res=ps.executeUpdate();
			
			if(res>0){
				System.out.println("record inserted");
				return 1;
			}
			
			else{
				System.out.println("record not inserted");
			}
		}
			
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return 0;
		
	}

}
