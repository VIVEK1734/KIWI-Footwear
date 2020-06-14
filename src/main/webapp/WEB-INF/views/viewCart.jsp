<%@page import="com.kiwifootwear.model.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>BUY LATEST & EXCLUSIVE FOOTWEARS | KIWI Footwear</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    <link href="<c:url value="css/header.css" />" rel="stylesheet">
    <link href="<c:url value="css/index.css" />" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    
    <!-- add icon link -->
        <link rel="icon" href="images/pic-3.png" type="image/x-icon">
</head>
<body>
	<!-- Image and text -->
		<nav class="navbar navbar-light" style="background-color: black">
	  		<a class="navbar-brand" href="index.jsp" style="color: white">
	    		<img src="images/pic-3.png" width="30" height="30" class="d-inline-block align-top">
	    		KIWI Footwear
	  		</a>
			
			<ul class="nav justify-content-end">
  				<li class="nav-item active">
	    			<a class="nav-link" href="" style="color: white">HOME</a>
	  			</li>
	  				
	  			<li class="nav-item">
	   				<a class="nav-link" href="Product" style="color: white" target="_blank">ALL PRODUCTS</a>
 				</li>
	  			
		  		<li class="nav-item">
	    			<a class="nav-link active" href="login.jsp" style="color: white" target="_blank">ABOUT US</a>
	  			</li>
	  				
	  			<li class="nav-item">
	    			<a class="nav-link active" href="login.jsp" style="color: white" target="_blank">LOGIN</a>
	  			</li>
					
				<li class="nav-item">
	    			<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
	  			</li>
	  			
	  			<li class="cart">
    				<a href="viewCart.jsp" style="color: #90EE90">
    					<img src="<c:url value="images\cart.png" />" width="30" height="30"> [0]
    				</a>
   			 	</li>
	  		</ul>	 
		</nav>

	<!-- Cart -->
		<%! 
			List<Product> cartItems;
			Product p1;
		%>
			
		<%
			cartItems=(List<Product>)request.getAttribute("cartItems");
			String totalPrice=request.getAttribute("totalPrice");
		%>
			
		<div class="container-wrapper">
		    <div class="container">
		        <section>
		            <div class="jumbotron">
		                <div class="container">
		                    <h1>Cart</h1>
		                    <p>All the selected products in your shopping cart</p>
		                </div>
		            </div>
		        </section>
			
		        <section class="container">
		        	<div>
		                <div>
		                    <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
		          			<a href="BillingAddressForm.jsp" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
		                </div><br/><br/><br/>
			
		                <table class="table table-hover">
		                    <tr>
		                        <th>Product</th>
		                        <th>Unit Price</th>
		                        <th>Quantity</th>
		                        <th>Price</th>
		                   	</tr>
			                    
			                <%
								for(Product p:cartItems) {
									p1=p;	
			                %>
			                    
			                <tr>
			                	<td><%
									out.print(p.getName());
								%></td>
			                        
			                    <td><%
									out.print(p.getPrice());
								%></td>
			                        
			                    <td>	
			                    	<input type="number" name="qty" value="<% out.print(p.getQuantity()); %>" />
			                   	</td>
									
								<td><%
									out.print(p.getPrice());
								%></td>
			                       
			            	<%
								}
							%>
			                
			                <tr>
			                	<th>Grand Total</th>
			                    <th><%=totalPrice %></th>
			                </tr>
			            </table>
			
			            <a href="Product" class="btn btn-default">Continue Shopping</a>
			       </div>
			  	</section>
			</div>
		</div>

<%@ include file="footer.jsp" %>