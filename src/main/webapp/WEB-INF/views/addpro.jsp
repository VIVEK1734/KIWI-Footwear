<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>ADD PRODUCT | ADMIN</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    
    <link href="<c:url value="resources/css/header.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/index.css" />" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    
    <!-- add icon link -->
        <link rel="icon" href="resources/images/pic-3.png" type="image/x-icon">
</head>
<body>
	<!-- Image and text -->
		<nav class="navbar navbar-light" style="background-color: black">
	  		<a class="navbar-brand" href="" style="color: white">
	    		<img src="resources/images/pic-3.png" width="30" height="30" class="d-inline-block align-top">
	    		KIWI Footwear
	  		</a>
			
			<ul class="nav justify-content-end">
  				<li class="nav-item active">
	    			<a class="nav-link" href="" style="color: #90EE90">HOME</a>
	  			</li>
	  				
	  			<li class="nav-item">
	   				<a class="nav-link" href="Product" style="color: white" target="_blank">ALL PRODUCTS</a>
 				</li>
	  			
		  		<li class="nav-item">
	    			<a class="nav-link active" href="About.jsp" style="color: white" target="_blank">ABOUT US</a>
	  			</li>
	  				
	  			<li class="nav-item">
	    			<a class="nav-link active" href="login.jsp" style="color: white" target="_blank">LOGIN</a>
	  			</li>
					
				<li class="nav-item">
	    			<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
	  			</li>
	  		</ul>	 
		</nav>
		
	<!-- Add Product -->
		<div class="container-wrapper">
		    <div class="container">
		        <div class="page-header">
		            <h1>ADD PRODUCT</h1>
		
		
		            <p class="lead">Fill the below information to add a product:</p>
		        </div>
		
		        <form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
		            <div class="form-group">
		                <label class="control-label" for="productImage">IMAGE</label>
		                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
		            </div>
		            		            
		            <div class="form-group">
		                <label for="name">PRODUCT ID</label>
		                <form:errors path="productID" cssStyle="color:#ff0000;" />
		                <form:input path="productID" id="id" class="form-Control" />
		            </div>
		            
		            <div class="form-group">
		                <label for="name">PRODUCT NAME</label>
		                <form:errors path="productName" cssStyle="color:#ff0000;" />
		                <form:input path="productName" id="nm" class="form-Control" />
		            </div>
		
		            <div class="form-group">
		                <label for="price">PRICE</label>
		                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
		                <form:input path="productPrice" id="price" class="form-Control" />
		            </div>
		
		            <div class="form-group">
		                <label for="quantity">QUANTITY</label>
		                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
		                <form:input path="unitInStock" id="qty" class="form-Control" />
		            </div>
		
		            <div class="form-group">
		                <label for="description">DESCRIPTION</label>
		                <form:textarea path="productDescription" id="desc" class="form-Control" />
		            </div>
		
		            <br/><br/>
		
		        	<input type="submit" value="submit" class="btn btn-default">
		        	<a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
				</form>
			</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br>		
</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>