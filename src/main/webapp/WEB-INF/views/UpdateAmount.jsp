<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	<script type="text/javascript"></script>

<body>
	::::::Add Payment::::::
	<f:form action="updateAmount" method="post" modelAttribute="paymentBean">
		Payment Mode:<f:select path="paymentMode" id="paymentType">
					<f:option value="select">Select</f:option>
					<f:option value="Cash">Cash</f:option>
					<f:option value="Credit Card">Credit Card</f:option>
					<f:option value="Debit Card">Debit Card</f:option>
					<f:option value="UPI">UPI</f:option>
		</f:select>
		<br>
		<br>
		<f:errors path="paymentMode"></f:errors>
	
		<div id="accNumber">
		Account Number:<f:select path="paymentId" id="acNumber">	
			<f:option value="select">Select</f:option>
		</f:select>
		<br>
		<br>
		<f:errors path="paymentId"></f:errors>
		</div>

		<div id="amount">
			<div>Amount:</div>
			<f:input path="amount" />
			<br> <br>
			<f:errors path="amount"></f:errors>
		</div>
		
		
		
		<input type="submit" value="SUBMIT">
	</f:form>


<script>
	
		 $(document).ready(function(){
			$("#paymentType").click(function(){
			
				
			var paymentType = document.getElementById("paymentType").value;
				if(paymentType=="Cash"){
					document.getElementById("accNumber").setAttribute("style","display:none");
				}
				
				else	if(paymentType=="Credit Card"){
					document.getElementById("accNumber").setAttribute("style","display:block");
				}
				
				else if(paymentType=="Debit Card"){
					document.getElementById("accNumber").setAttribute("style","display:block");
				}
				
				else if(paymentType=="UPI"){
					document.getElementById("accNumber").setAttribute("style","display:block");
				} 
				
			
				
						let url = "http://localhost:9595/listpaymentByPaymentName?paymentName="+paymentType;	
						 	 
						$.get(url)
						.done(function(data){
							console.log("gj"+data);
							let acNumber = $("#acNumber");
							acNumber.empty();
								for(let i=0;i<data.length;i++){ 
								
									acNumber.append(`<option value=`+data[i].paymentId+`>`+data[i].cardNumber+`</option>`);
							}
							
						}).fail(function(){
							console.log("something went wrong"); 
						});
			
			})	
			
		}) 
		
		
	</script>
</body>
</html>