package com.kiwifootwear.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.LoginDaoImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("unm").trim();
		String password = request.getParameter("pwd").trim();
		
		String Type = request.getParameter("type").trim();
		LoginDaoImpl ldi = new LoginDaoImpl();
		int res = ldi.checkUser(username, password, Type);
		
		if (res == 1) {
			System.out.println("login successfull!!!");
			getServletContext().setAttribute("username", username);
		
			if (Type.equals("Customer"))

			{
	            response.sendRedirect("Product");
			} 
			
			else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminMenu.jsp");
				rd.forward(request, response);
			}
		} 
		
		else {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
			System.out.println("Invalid User!!!");
		}

	}

}
