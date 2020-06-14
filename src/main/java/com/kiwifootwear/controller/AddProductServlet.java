package com.kiwifootwear.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kiwifootwear.DAO.Impl.ProductDAOImpl;
import com.kiwifootwear.model.Product;

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddProductServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String img=request.getParameter("img");
		String id=request.getParameter("id");
		String pname=request.getParameter("nm");
		int price=Integer.parseInt(request.getParameter("price"));
		int qty=Integer.parseInt(request.getParameter("qty"));
		String desc=request.getParameter("desc");
			
		Product p=new Product();
		p.setImage(img);
		p.setId(id);
		p.setName(pname);
		p.setPrice(price);
		p.setQuantity(qty);
		p.setDescription(desc);
		
		ProductDAOImpl pdi=new ProductDAOImpl();
		int res=pdi.insert(p);
			
		System.out.println(res);
		if(res==1) {
				
			RequestDispatcher rd=request.getRequestDispatcher("RecordInserted.jsp");
			rd.forward(request, response);
		}
			
		else {
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	
	}

}