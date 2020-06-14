<%@page import="java.util.ArrayList"%>
<%@page import="com.kiwifootwear.model.Product"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the shoes available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr class="bg-success">
                    <th>Image</th>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Price</th>
                </tr>
            </thead>
            
            <%! 
        		List<Product> list;
				Product p1;
			%>
		
			<%
  				list=(List<Product>)request.getAttribute("product");
  		
				for(Product p :list) {
					p1=p;
			%>
            
       		<tr>
        		<td><%
		  				out.print("<img src="+p.getImage()+" height=65px width=65px />");
				%></td>
		                    
		        <td><%
		  			out.print(p.getId());
		  		%></td>
		                    
		        <td><%
		  			out.print(p.getName());
		  		%></td>
		                    
		        <td>&#8377; <%
		  			out.print(p.getPrice());
		  		%></td>
		  						
		  		<td><%
		  			out.print(p.getQuantity());
		  		%></td>
		  						
		  		<td><%
		  			out.print(p.getDescription());
		  		%></td>
                    
            	<td>
            		<a href="UpdateProduct.jsp?q=<%=p1.getId() %>">
            			<span class="glyphicon glyphicon-info-sign"></span>
            		</a>
            	</td>
        	</tr>
        <% 
        	} 
        %>
    	</table>
	</div>
</div>

<%@ include file="footer.jsp" %>