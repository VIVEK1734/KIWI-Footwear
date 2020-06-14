package com.kiwifootwear.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.BillingDAOImpl;
import com.kiwifootwear.model.Billing;

@WebServlet("/billingAddress")
public class BillingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BillingServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user= (String)getServletContext().getAttribute("username");

		if(user!=null){
			int HouseNo=Integer.parseInt(request.getParameter("hno"));
			int StreetNo=Integer.parseInt(request.getParameter("Strtno"));
			String LandMark=request.getParameter("Lmrk");
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			int zipcode=Integer.parseInt(request.getParameter("zipcode"));
	
			Billing b=new Billing();
			b.setHouseNo(HouseNo);
			b.setStreetNo(StreetNo);
			b.setLandMark(LandMark);
			b.setCity(city);
			b.setState(state);
			b.setZipcode(zipcode);
			b.setUserName(user);
			
			BillingDAOImpl  bdi=new BillingDAOImpl();
			int res=bdi.insert(b);
				
			if(res>0) {
				RequestDispatcher rd=request.getRequestDispatcher("ShippingAddress.jsp");
				rd.forward(request,response);
			}
				
			else {
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				rd.include(request, response);
			}
		
		}
		
		else {
			response.sendRedirect("PleaseLogin.jsp");
		}
	
	}
	
}
