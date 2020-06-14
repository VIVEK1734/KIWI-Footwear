<%@page import="java.util.ArrayList"%>
<%@page import="com.kiwifootwear.model.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>VIEW ALL OUR PRODUCTS HERE | KIWI Footwear</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    <link href="<c:url value="/css/header.css" />" rel="stylesheet">
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
  				<li class="nav-item">
    				<a class="nav-link active" href="index.jsp" style="color: white">HOME</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="" style="color: #90EE90">ALL PRODUCTS</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="About.jsp" style="color: white" target="_blank">ABOUT US</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="login.jsp" style="color: white" target="_blank">LOGIN</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
  				</li>
			</ul>
		</nav>
	
	<!-- All Products -->
		<div class="container-wrapper">
		    <div class="container">
		        <div class="page-header">
		            		            
		            <h1>All Products</h1>
		
		            <p class="lead">Checkout all the shoes available now!</p>
		        </div>
		
		        <table class="table table-striped table-hover" style="padding: 0px 0px">
		            <thead>
		                <tr class="bg-success">
		                    <th>IMAGE</th>
		                    <th>PRODUCT ID</th>
		                    <th>PRODUCT NAME</th>
		                    <th>PRICE</th>
		                    <th>QUANTITY</th>
		                    <th>DESCRIPTION</th>
		                </tr>
		            </thead>
		            
		            <%! 
		            	List<Product> list;
						Product p1;
					%>
					
					<%
		  				list=(List<Product>)request.getAttribute("product");
		  				
						for(Product p:list) {
							p1=p;
		  					
		  			%>
		            		<tr>
		                    	<td><%
		                    		out.print("<img src='+p.getImage()+' height=183px width=273px />");
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
		                    		<a href="viewProductDetail.jsp?q=<%=p1.getId() %>"><span class="glyphicon glyphicon-info-sign"></span></a>
		                    	</td>
		                	</tr>
		         	<%
		  				}
					%>
		        </table><br><br><br><br><br>
		        
		        <p style="text-align: center">
		    		<a href="login.jsp" class="btn btn-info btn-lg">
          				<span class="glyphicon glyphicon-log-out"></span> LOG OUT
        			</a>
      			</p> 
		    </div>
		</div><br><br><br><br><br>
</body>
</html>

<%@ include file="footer.jsp" %>