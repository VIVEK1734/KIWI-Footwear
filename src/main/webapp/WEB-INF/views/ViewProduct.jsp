<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
		            		            
		            <h1>PRODUCT DETAIL</h1>
		
		            <p class="lead">Here is the detail information of the product:</p>
		        </div>
		
		        <div class="container" ng-app = "cartApp">
		        	<div class="row">
		        		<div class="col-md-5">
		        			<img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%" />
		        		</div>
		        		
		        		<div class="col-md-5">
		        			<h3>${product.productName}</h3>
		        			<p>${product.productDescription}</p>
		        			<p><strong>Manufacturer</strong>: ${product.productManufacturer}</p>
		        			<p><strong>Condition</strong>: ${product.productCondition}</p>
		        			<p>&#8377; ${product.productPrice}</p>
		        			
		        			<br>
		        			
		        			<c:set var="role" scope="page" value="${param.role}" />
		        			<c:set var="url" scope="page" value="/product/productList" />
		        			<c:if test="${role='admin'}">
		        				<c:set var="url" scope="page" value="/admin/productInventory" />
		        			</c:if>
		        			
		        			<p ng-controller="cartCtrl">
		        				<a href="<c:url value = "${url}" />" class="btn btn-default">BACK</a>
		        				<a href="#" class="btn btn-default" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span>ORDER NOW</a>
		        				<a href="<spring:url value = "/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>VIEW CART</a>
							</p>
		        		</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>