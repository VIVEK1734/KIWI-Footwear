<%@ include file="/WEB-INF/views/template/header.jsp" %>

<script>  
function validateform(){  
var hno=document.billForm.hno.value;
var strt=document.billForm.strt.value;
var lmrk=document.myForm.Lmrk.value;
var city=document.myForm.city.value; 
var state=document.myForm.state.value;

var zipcode=document.myForm.zipcode.value;  




if (hno==null || hno==""){  
	  alert("House No can't be blank");  
	  return false;  
	}
	else if(strt==null || strt=="")
		{
		alert("street No can't be blank");  
		  return false;
		}
	
	else if(lmrk==null || lmrk==""){
		alert("Land Mark can't be blank");
	}
		

	else if(city==null || city==""){
		alert("City can't be blank");
	}
		

	else if(state==null || state==""){
		alert("state can't be blank");
	}

	else if(zipcode==null || zipcode==""){
		alert("zipcode can't be blank");
	}
		
		
	
	}  
</script>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Billing Address</h1>

			<p class="lead">Please fill Your Billing Details</p>
		</div>

		<form name="billForm" action="billingAddress" method="post">

			<h3></h3>

			<div class="form-group">
				<label for="houseno">House No</label> <input type="text" required="required"
					autocomplete="off" name="hno" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="streetno">Street No</label> <input type="text" required="required"
					autocomplete="off" name="Strtno" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="Lmrk">Land mark</label> 

				<input type="text" required autocomplete="off" name="Lmrk" required="required"
					class="form-Control" />
			</div>

			<div class="form-group">
									
  <label for="sel1">City</label>
  <select class="form-control" id="sel1" name="City" required="required">
    <option value="">Select City</option>
<option value="Mumbai">Mumbai</option>
<option value="Delhi">Delhi</option>
<option value="Chennai">Chennai</option>
<option value="Kolkata">Kolkata</option>
<option value="Bengaluru">Bengaluru</option>
<option value="Hyreabad">Hyreabad</option>
<option value="Ahmedabad">Ahmedabad</option>
<option value="Surat">Surat</option>
<option value="pune">pune</option>
<option value="Jaipur">Jaipur</option>
<option value="Lucknow">Lucknow</option>
<option value="Kanpur">Kanpur</option>
<option value="Nagpur">Nagpur</option>
<option value="Ghaziabad">Ghaziabad</option>
<option value="Agra">Agra</option>
</select>
</div>


			<!--  <div class="form-group">
				<label for="state">State</label> <input type="text" required
					autocomplete="off" name="state" class="form-Control"   />--> 
					
	<div class="form-group">
									
  <label for="sel1">State:</label>
  <select class="form-control" id="sel1" name="state" required="required">
    <option value="">Select State</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Delhi">Delhi</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="West Bengal">West Bengal</option>
<option value="Karnataka">Karnataka</option>
<option value="CTelangana">Telangana</option>
<option value="Gujarat">Gujarat</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Delhi">Delhi</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
</select>
</div>

			<div class="form-group">
				<label for="zipcode">Zipcode</label> <input type="text" required="required"
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