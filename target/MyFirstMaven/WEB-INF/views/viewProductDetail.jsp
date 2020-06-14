<%@page import="com.kiwifootwear.DAO.ProductDAO"%>
<%@page import="com.kiwifootwear.model.Product"%>
<%@page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title> | KIWI Footwear</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    <link href="<c:url value="css/header.css" />" rel="stylesheet">
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
			</ul>
		</nav>
		
	<!-- View Product Detail -->	
		<%!
			Product prod;
		%>

		<%
			int id=Integer.parseInt(request.getParameter("q"));
			
			System.out.println("view product detail "+id);
			
			Connection con;
			Statement stmt;
			ResultSet rs;
			int res;
				
			prod = new Product();
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "VG", "Pritesh1@3");
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from product where productid= "+id);
			
			while (rs.next()) {
				
				prod.setImage(rs.getString("Image"));
				prod.setId(rs.getString("Id"));
				prod.setName(rs.getString("Name"));
				prod.setPrice(rs.getInt("Price"));
				prod.setQuantity(rs.getInt("Quantity"));
				prod.setDescription(rs.getString("Description"));
			}
		%>

		<div class="container-wrapper">
		    <div class="container">
		        <div class="page-header">
		            <h1>Product Detail</h1>
		            <p class="lead">Here is the detail information of the product:</p>
		        </div>
		
		        <div class="container">
		            <div class="row">
		                <div class="col-md-5">
		                    <img src="<%=prod.getImage() %>" alt="image" style="width:100%"/>
		                </div>
		                <div class="col-md-5">
		                    
		                    <h3><%=prod.getName()%></h3>
		                    <p><strong>Price</strong>: &#8377;<%=prod.getPrice()%></p>
		                    <p><strong>Quantity</strong>: <%=prod.getQuantity()%></p>
		                    <p><strong>Description</strong>: <%=prod.getDescription()%></p>
		                   	<br/>
		
		                    <input type="hidden" name="id" value="<%=prod.getId()%>" />
		
		                    <p>
		                        <a href="viewProduct" class="btn btn-default">Back</a>
		                        <a href="addCart?id=<%=prod.getId() %>" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
		                        <a href="viewProduct" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> Shop More..</a>
		                    </p>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>     
        
<%@ include file="footer.jsp" %>