<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>LOGIN | KIWI Footwear</title>
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
    				<a class="nav-link active" href="" style="color: #90EE90">LOGIN</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link" href="signup.jsp" style="color: white" target="_blank">SIGN UP</a>
  				</li>
			</ul>
		</nav>

	<!-- Log In -->
		<div class="container-wrapper">
		    <div class="container">
		        <div id="login-box">
		            <h2 style="text-align: center; font: arial">Login with Username and Password</h2>
		
		            <c:if test="${not empty msg}">
		                <div class="msg">${msg}</div>
		            </c:if>
		
		
		            <form action="login" method="post">
		                <c:if test="${not empty error}">
		                    <div class="error" style="color: #ff0000;">${error}</div>
		                </c:if>
		
		                <div class="form-group">
		                    <label for="username">User Name: </label>
		                    <input type="text" id="username" name="unm" class="form-control" />
		                </div>
		            
		                <div class="form-group">
		                    <label for="password">Password:</label>
		                    <input type="password" id="password" name="pwd" class="form-control" />
		                </div>
		                
		                <div>
		                	<select name="type">
								<option value="Admin">Admin</option>
								<option value="Customer">Customer</option>
							</select>
		                </div><br>
		                
		                <center><button><input type="submit" value="LOGIN" class="btn btn-default"></button>&nbsp;
		                <button><input type="reset" value="RESET" class="btn btn-default"></button>
		               	<%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
		            </form>
		        </div>
		    </div>
		</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>