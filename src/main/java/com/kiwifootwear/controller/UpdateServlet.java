package com.kiwifootwear.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.ProductDAOImpl;
import com.kiwifootwear.model.Product;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
    }

	List<Product> product;
		
	ProductDAOImpl pdi=new ProductDAOImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		product=pdi.viewAllProduct();
					
		if(product!=null) {
			request.setAttribute("product", product);
			RequestDispatcher rd=request.getRequestDispatcher("ViewProductAdmin.jsp");
			rd.forward(request, response);
		}
		
		else {
			response.sendRedirect("error.jsp");
		}
		
	}

}