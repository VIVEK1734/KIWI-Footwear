<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>ADD PRODUCT | ADMIN</title>
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
  				<li class="nav-item">
    				<a class="nav-link" href="index.jsp" style="color: white">HOME</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="About.jsp" style="color: white" target="_blank">ABOUT US</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="" style="color: #90EE90">ADMIN</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link active" href="login.jsp" style="color: white" target="_blank">LOGIN</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
  				</li>
			</ul>
		</nav>
        
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<center><h1>Admin add new product page!!!</h1></center>
					<h1>Add Product</h1>
					<p class="lead">Please Add Your New Product Here</p>
				</div>
		
				<form action="addProduct" method="post">
					<h3>Basic Information</h3>
					
					<div class="form-group">
						<label for="img">IMAGE</label> 
						
						<input type="text" required autocomplete="off" name="img" class="form-Control" />
					</div>
					
					<div class="form-group">
						<label for="id">PRODUCT ID</label> 
						
						<input type="text" required autocomplete="off" name="id" class="form-Control" />
					</div>
					
					<div class="form-group">
						<label for="nm">PRODUCT NAME</label> 
						
						<input type="text" required autocomplete="off" name="nm" class="form-Control" />
					</div>
	
					<div class="form-group">
						<label for="price">PRICE</label> 
						
						<input type="text" required autocomplete="off" name="price" class="form-Control" />
					</div>
		
					<div class="form-group">
						<label for="qty">QUANTITY</label> 
		
						<input type="text" required autocomplete="off" name="qty" class="form-Control" />
					</div>
		
					<div class="form-group">
						<label for="desc">DESCRIPTION</label> 
						
						<input type="text" required autocomplete="off" name="desc" class="form-Control" />
					</div><br>
		
					<center><button><a href="AddProductServlet"><input type="submit" value="ADD" class="btn btn-default"></a></button>&nbsp;
					<button><input type="reset" value="RESET" class="btn btn-default"></button>
				</form>
			</div>
		</div><br />
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
	
<%@include file="footer.jsp"%>