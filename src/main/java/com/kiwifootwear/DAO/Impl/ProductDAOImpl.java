package com.kiwifootwear.DAO.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.kiwifootwear.DAO.ProductDAO;
import com.kiwifootwear.model.Product;

public class ProductDAOImpl implements ProductDAO{

	private Connection con;
	private Statement stmt;
	private PreparedStatement ps;
	private int res;
	Product prod;
	List<Product> p = new ArrayList<Product>();
	public List<Product> viewAllProduct() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from product");
			
			while (rs.next()) {
				prod = new Product();
				prod.setImage(rs.getString("Image"));
				prod.setId(rs.getString("Id"));
				prod.setName(rs.getString("Name"));
				prod.setPrice(rs.getInt("Price"));
				prod.setQuantity(rs.getInt("Quantity"));
				prod.setDescription(rs.getString("Description"));
				
				p.add(prod);
			}
			
			return p;
		} 
		
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	public int insert(Product c) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement("insert into Product(Image,Id,Name,Price,Quantity,Description) values(?,?,?,?,?,?)");
			
			ps.setString(1,c.getImage());
			ps.setString(2,c.getId());
			ps.setString(3,c.getName());
			ps.setInt(4,c.getPrice());
			ps.setInt(5,c.getQuantity());
			ps.setString(6,c.getDescription());
			
			res=ps.executeUpdate();
			
			if(res>0) {
				System.out.println("record inserted");
				return 1;
			}
			
			else {
				System.out.println("record not inserted");
				return 0;
			}
					
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return 0;
	}
	
	public int delete(int id) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			ps = con.prepareStatement("delete from Product where Id=?");	
			ps.setInt(1,id);
	
			res=ps.executeUpdate();
		
			if(res>0) {
				System.out.println("record deleted");
				return 1;
			}
			
			else {
				System.out.println("record not deleted");
				return 0;
			}
			
		}

		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return 0;
		
	}
	
	public int update(Product p) {  
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			 ps = con.prepareStatement("update Product set Image=?,Name=?,Price=?,Quantity=?,Description=? where Id=?");	
			 ps.setString(1, p.getImage());
			 ps.setString(2, p.getName());
			 ps.setInt(3, p.getPrice());
			 ps.setInt(4, p.getQuantity());
			 ps.setString(5, p.getDescription());
			 ps.setString(6,p.getId());
				
			 res=ps.executeUpdate();
		
			 if(res>0) {
				 System.out.println("record Updated	");
				 return 1;
			 }
			
			 else {
				 System.out.println("record not Updated");
				 return 0;
			 }
			 
			}

			catch(Exception ex) {
				ex.printStackTrace();
			}
			
		 	return 0;

	}  
	
}