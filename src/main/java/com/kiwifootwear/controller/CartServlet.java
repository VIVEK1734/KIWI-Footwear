package com.kiwifootwear.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.model.Product;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartServlet() {
        super();
    }
	
    Connection con;
	Statement stmt;
	ResultSet rs;
	int res,totalPrice=0;
		
	List<Product> productList=new ArrayList<Product>();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Product prod=new Product();
		String id=request.getParameter("id");

		
		try{
			MultipartFile Image;
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "VG", "Pritesh1@3");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from product where Id= "+id);

			while (rs.next()) {
				prod.setImage(rs.getMultipartFile("Image"));
				prod.setId(rs.getString("Id"));
				prod.setName(rs.getString("Name"));
				prod.setPrice(rs.getInt("Price"));
				prod.setQuantity(rs.getInt("Quantity"));
				prod.setDescription(rs.getString("Description"));
				totalPrice+=(prod.getQuantity())*(prod.getPrice());
			}
		}
		
		catch(Exception ex){
			ex.printStackTrace();
		}

		productList.add(prod);
		request.setAttribute("cartItems", productList);
		request.setAttribute("totalPrice", totalPrice);
		RequestDispatcher rd=request.getRequestDispatcher("viewCart.jsp");
		rd.forward(request, response);
	
	}
		
}