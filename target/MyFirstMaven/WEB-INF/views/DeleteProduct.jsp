<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
    <title>PRODUCT DELETE | ADMIN</title>
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    <link href="<c:url value="/css/header.css" />" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    
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
				   		<a class="nav-link" href="index.jsp" style="color: white">HOME</a>
					</li>
				  				
					<li class="nav-item">
				   		<a class="nav-link" href="Product" style="color: white" target="_blank">ALL PRODUCTS</a>
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
					
					<li class="active">
				   		<a class="nav-link" href="" target="_blank">ADMIN</a>
					</li>
				</ul>
			</nav>
		
	<!-- Delete Produt -->			
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<center><h1>Admin Delete page!!!</h1></center>
					<h1>Delete Product</h1>
		
					<p class="lead">Please Delete Your Product Here</p>
				</div>
		
				<form action="delete" method="post">
					<h3>Delete</h3>
		
					<div class="form-group">
						<label for="pid">PRODUCT ID</label> <input type="text" required
							autocomplete="off" name="pid" class="form-Control" />
					</div><br>
		
					<input type="submit" value="Delete" class="btn btn-default">
				</form>
			</div>
		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
</body>
</html>

<%@ include file="footer.jsp" %>