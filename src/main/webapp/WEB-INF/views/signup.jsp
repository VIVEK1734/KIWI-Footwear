<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SIGN UP | KIWI Footwear</title>

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
    				<a class="nav-link active" href="login.jsp" style="color: white" target="_blank">LOGIN</a>
  				</li>
  				
  				<li class="nav-item">
    				<a class="nav-link active" href="signup.jsp" style="color: #90EE90">SIGN UP</a>
  				</li>
			</ul>
		</nav>

	<!-- Sign Up -->	
		<script>  
			function validateform(){  
			var name=document.myForm.nm.value;
			var username=document.myForm.unm.value; 
			var password=document.myForm.pwd.value;
			var email=document.myForm.edi1.value;
			var atposition=email.indexOf("@");  
			var dotposition=email.lastIndexOf(".");  
			
			var ph=document.myForm.ph.value;  
			var adrs=document.myForm.adrs.value;  
			
			
			
			
			if (name==null || name==""){  
			  alert("Name can't be blank");  
			  return false;  
			}
			else if(username==null || username=="")
				{
				alert("UserName can't be blank");  
				  return false;
				}
			else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
				  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
				  return false;  
				  } 
			else if(ph==null || ph==""){
				alert("phone no can't be blank");
			}
				
			else if(password.length<6){  
			  alert("Password must be at least 6 characters long.");  
			  return false;  
			  }  
			}  
		</script>  
	
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<h1 style="text-align: center; font: arial">Register User</h1>
		
					<p class="lead">Please fill in your information below</p>
				</div>
		
				<form name="myForm" action="signup" method="post" onsubmit="return validateform()">
		
					<h3>Basic Information</h3>
		
					<div class="form-group">
						<label for="name">Name</label> <input type="text" required
							autocomplete="off" name="nm" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="name">UserName</label> <input type="text" required
							autocomplete="off" name="unm" class="form-Control" />
					</div>
		
					<div class="form-group">
						<label for="Email">Email</label> 
		
						<input type="email" name="eid1" class="form-Control" />
					</div>
		
					<div class="form-group">
						<label for="phone">Phone</label> <input type="text" required
							autocomplete="off" name="ph" class="form-Control" />
					</div>
		
		
		
					<div class="form-group">
						<label for="password">Password</label> <input type="password" required
							autocomplete="off" name="pwd" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="Addres">Address</label> <input type="text" required
							autocomplete="off" name="adrs" class="form-Control" />
					</div><br>
		
					<center><button><input type="submit" value="SUBMIT" class="btn btn-default"></button>&nbsp;
					<button><a href="index.jsp" class="btn btn-default">CANCEL</a></button>
				</form>
			</div>
		</div><br><br><br><br><br>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>