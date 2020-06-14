<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<html>
<head>
   	<meta charset="ISO-8859-1">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title></title>
	
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
	  			
	  			<li class="cart">
    				<a href="cart.jsp" style="color: #90EE90">
    					<img src="<c:url value="images\cart.png" />" width="30" height="30"> [0]
    				</a>
   			 	</li>
			</ul>
		</nav>
	
	<!-- Cart -->		
		<div class="colorlib-loader"></div>
	
		<div id="page">
			<nav class="colorlib-nav" role="navigation">
				<div class="top-menu">
					<div class="container">
						<div class="row">
							<div class="col-sm-7 col-md-9">
								<div id="colorlib-logo"><a href="index.html">Footwear</a></div>
							</div>
							<div class="col-sm-5 col-md-3">
				            <form action="#" class="search-wrap">
				               <div class="form-group">
				                  <input type="search" class="form-control search" placeholder="Search">
				                  <button class="btn btn-primary submit-search text-center" type="submit"><i class="icon-search"></i></button>
				               </div>
				            </form>
				         </div>
			         </div>
						<div class="row">
							<div class="col-sm-12 text-left menu-1">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li class="has-dropdown active">
										<a href="men.html">Men</a>
										<ul class="dropdown">
											<li><a href="product-detail.html">Product Detail</a></li>
											<li><a href="cart.html">Shopping Cart</a></li>
											<li><a href="checkout.html">Checkout</a></li>
											<li><a href="order-complete.html">Order Complete</a></li>
											<li><a href="add-to-wishlist.html">Wishlist</a></li>
										</ul>
									</li>
									<li><a href="women.html">Women</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li class="cart"><a href="cart.html"><i class="icon-shopping-cart"></i> Cart [0]</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="sale">
					<div class="container">
						<div class="row">
							<div class="col-sm-8 offset-sm-2 text-center">
								<div class="row">
									<div class="owl-carousel2">
										<div class="item">
											<div class="col">
												<h3><a href="#">25% off (Almost) Everything! Use Code: Summer Sale</a></h3>
											</div>
										</div>
										<div class="item">
											<div class="col">
												<h3><a href="#">Our biggest sale yet 50% off all summer shoes</a></h3>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</nav>
	
			<div class="breadcrumbs">
				<div class="container">
					<div class="row">
						<div class="col">
							<p class="bread"><span><a href="index.html">Home</a></span> / <span>Shopping Cart</span></p>
						</div>
					</div>
				</div>
			</div>
	
	
			<div class="colorlib-product">
				<div class="container">
					<div class="row row-pb-lg">
						<div class="col-md-10 offset-md-1">
							<div class="process-wrap">
								<div class="process text-center active">
									<p><span>01</span></p>
									<h3>Shopping Cart</h3>
								</div>
								<div class="process text-center">
									<p><span>02</span></p>
									<h3>Checkout</h3>
								</div>
								<div class="process text-center">
									<p><span>03</span></p>
									<h3>Order Complete</h3>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-pb-lg">
						<div class="col-md-12">
							<div class="product-name d-flex">
								<div class="one-forth text-left px-4">
									<span>Product Details</span>
								</div>
								<div class="one-eight text-center">
									<span>Price</span>
								</div>
								<div class="one-eight text-center">
									<span>Quantity</span>
								</div>
								<div class="one-eight text-center">
									<span>Total</span>
								</div>
								<div class="one-eight text-center px-4">
									<span>Remove</span>
								</div>
							</div>
							<div class="product-cart d-flex">
								<div class="one-forth">
									<div class="product-img" style="background-image: url(images/item-6.jpg);">
									</div>
									<div class="display-tc">
										<h3>Product Name</h3>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$68.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="1" min="1" max="100">
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$120.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<a href="#" class="closed"></a>
									</div>
								</div>
							</div>
							<div class="product-cart d-flex">
								<div class="one-forth">
									<div class="product-img" style="background-image: url(images/item-7.jpg);">
									</div>
									<div class="display-tc">
										<h3>Product Name</h3>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$68.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<form action="#">
											<input type="text" name="quantity" class="form-control input-number text-center" value="1" min="1" max="100">
										</form>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$120.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<a href="#" class="closed"></a>
									</div>
								</div>
							</div>
							<div class="product-cart d-flex">
								<div class="one-forth">
									<div class="product-img" style="background-image: url(images/item-8.jpg);">
									</div>
									<div class="display-tc">
										<h3>Product Name</h3>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$68.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="1" min="1" max="100">
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<span class="price">$120.00</span>
									</div>
								</div>
								<div class="one-eight text-center">
									<div class="display-tc">
										<a href="#" class="closed"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-pb-lg">
						<div class="col-md-12">
							<div class="total-wrap">
								<div class="row">
									<div class="col-sm-8">
										<form action="#">
											<div class="row form-group">
												<div class="col-sm-9">
													<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
												</div>
												<div class="col-sm-3">
													<input type="submit" value="Apply Coupon" class="btn btn-primary">
												</div>
											</div>
										</form>
									</div>
									<div class="col-sm-4 text-center">
										<div class="total">
											<div class="sub">
												<p><span>Subtotal:</span> <span>$200.00</span></p>
												<p><span>Delivery:</span> <span>$0.00</span></p>
												<p><span>Discount:</span> <span>$45.00</span></p>
											</div>
											<div class="grand-total">
												<p><span><strong>Total:</strong></span> <span>$450.00</span></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<div class="row">
						<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
							<h2>Related Products</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 col-lg-3 mb-4 text-center">
							<div class="product-entry border">
								<a href="#" class="prod-img">
									<img src="images/item-1.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
								</a>
								<div class="desc">
									<h2><a href="#">Women's Boots Shoes Maca</a></h2>
									<span class="price">$139.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
							<div class="product-entry border">
								<a href="#" class="prod-img">
									<img src="images/item-2.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
								</a>
								<div class="desc">
									<h2><a href="#">Women's Minam Meaghan</a></h2>
									<span class="price">$139.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
							<div class="product-entry border">
								<a href="#" class="prod-img">
									<img src="images/item-3.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
								</a>
								<div class="desc">
									<h2><a href="#">Men's Taja Commissioner</a></h2>
									<span class="price">$139.00</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
							<div class="product-entry border">
								<a href="#" class="prod-img">
									<img src="images/item-4.jpg" class="img-fluid" alt="Free html5 bootstrap 4 template">
								</a>
								<div class="desc">
									<h2><a href="#">Russ Men's Sneakers</a></h2>
									<span class="price">$139.00</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>

<%@ include file="footer.jsp" %>