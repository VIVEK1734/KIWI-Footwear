 <%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Enter Billing Address</h1>

			<p class="lead">Please fill in your information below</p>
		</div>

		<form action="billingAddress" method="post">

			<h3>Basic Information</h3>

			<div class="form-group">
				<label for="houseno">House No</label> <input type="text" required
					autocomplete="off" name="hno" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="streetno">Street No</label> <input type="text" required
					autocomplete="off" name="Strtno" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="Lmrk">Land mark</label> 

				<input type="text" required autocomplete="off" name="Lmrk"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="city">City</label> <input type="text" required
					autocomplete="off" name="city" class="form-Control" />
			</div>



			<div class="form-group">
				<label for="state">State</label> <input type="text" required
					autocomplete="off" name="state" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="zipcode">Zipcode</label> <input type="text" required
					autocomplete="off" name="zipcode" class="form-Control" />
			</div>

			<br /> <input type="submit" value="submit" class="btn btn-default">
			

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

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
