package com.kiwifootwear.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.ShippingDAOImpl;
import com.kiwifootwear.model.Shipping;

@WebServlet("/shippingAddress")
public class ShippingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShippingServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user=(String) getServletContext().getAttribute("username");
	
		int HouseNo=Integer.parseInt(request.getParameter("hno"));
		int StreetNo=Integer.parseInt(request.getParameter("Strtno"));
		String LandMark=request.getParameter("Lmrk");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		int zipcode=Integer.parseInt(request.getParameter("zipcode"));

		Shipping sh=new Shipping();
		sh.setHouseNo(HouseNo);
		sh.setStreetNo(StreetNo);
        sh.setLandMark(LandMark);
		sh.setCity(city);
		sh.setState(state);
		sh.setZipcode(zipcode);
		sh.setUserName(user);
		
		ShippingDAOImpl  bdi=new ShippingDAOImpl();
		int res=bdi.insert(sh);
				
		if(res>0) {
			RequestDispatcher rd=request.getRequestDispatcher("Thankyou.jsp");
			rd.include(request,response);
		}
		
		else {
			RequestDispatcher rd=request.getRequestDispatcher("error.html");
			rd.include(request, response);
		}
		
	}

}