package com.kiwifootwear.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.CustomerDAOImpl;
import com.kiwifootwear.model.Customer;

@WebServlet("/signup")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name,username,password,address,emailid,phno;
		name=request.getParameter("nm");
		username=request.getParameter("unm");
		password=request.getParameter("pwd");
		address=request.getParameter("adrs");
		emailid=request.getParameter("eid1");
		phno=request.getParameter("ph");

		
		Customer cust=new Customer();
		cust.setName(name);
		cust.setUsername(username);
		cust.setPassword(password);
		cust.setAddress(address);;
		cust.setEmailid(emailid);
		cust.setPhoneno(phno);
		cust.setType("Customer");
		
		CustomerDAOImpl cdi=new CustomerDAOImpl();
		int res=cdi.insert(cust);
		
		if(res==1) {
			response.sendRedirect("login.jsp");
		}
		
		else {
			response.sendRedirect("error.html");
		}
		
	}

}
