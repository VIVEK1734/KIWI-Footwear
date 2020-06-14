<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>BUY LATEST & EXCLUSIVE FOOTWEARS | KIWI Footwear</title>

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
	  			
	  			<li class="cart">
    				<a href="viewCart.jsp" style="color: white">
    					<img src="<c:url value="resources\images\cart.png" />" width="30" height="30"> [0]
    				</a>
   			 	</li>
	  		</ul>	 
		</nav>
</body>
</html>