<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>ADMIN | KIWI Footwear</title>
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
	    		<img src="images/pic-3.png" width="32" height="32" class="d-inline-block align-top">
	    		KIWI Footwear
	  		</a>
			
			<!-- Navbar links -->
			<ul class="nav justify-content-end">
				<li class="nav-item">
			   		<a class="nav-link active" href="index.jsp" style="color: white">HOME</a>
				</li>
			  				
				<li class="nav-item">
			   		<a class="nav-link" href="Product" style="color: white" target="_blank">ALL PRODUCTS</a>
				</li>
			  				
				<li class="nav-item">
			   		<a class="nav-link dropdown" style="color: white">ABOUT</a>
			    </li>
			  				
				<li class="nav-item">
			   		<a class="nav-link" style="color: #90EE90">LOGIN</a>
				</li>
			  				
				<li class="nav-item">
			   		<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
				</li>
			</ul>
		</nav>
		
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron" style="background-color: black; color: white">
                <div class="container">
                    <h1>Product Added Successfully</h1>

                    <p>Add More Product?????</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="AdminMenu.jsp" class="btn btn-default">OK</a></p>
        </section>
</div>
</div>
</body><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp" %>
