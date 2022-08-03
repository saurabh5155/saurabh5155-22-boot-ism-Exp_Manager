<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
</head>
<body>
	::::::Add Payment::::::
	<f:form action="addPayment" method="post" modelAttribute="paymentBean" >
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
		
		<div id="amount">
			<div>Amount:</div><f:input path="amount" />
			<br>
			<br>
			<f:errors path="amount"></f:errors>
		</div>
		
		<label id = "cardNumberLable">Card Number:</label>
		<label id="upiIdLabel">Upi Id:</label>
		
		<div id="cardNumber">
			<f:input path="cardNumber" />
			<br>
			<br>
			<f:errors path="cardNumber"></f:errors>
		</div>
		
		
		<input type="submit" value="SUBMIT">
	</f:form>

<script type="text/javascript">
	$(document).ready(function(){
		let amount = document.getElementById("amount");
		amount.setAttribute("style","display:none")
		document.getElementById("cardNumber").setAttribute("style","display:none")
		document.getElementById("upiIdLabel").setAttribute("style","display:none")
		document.getElementById("cardNumberLable").setAttribute("style","display:none")
		
		
		$("#paymentType").change(function(){
		let paymentType = document.getElementById("paymentType").value;
		
		
		
		if(paymentType == "select") {
			document.getElementById("cardNumber").setAttribute("style","display:none")
			document.getElementById("amount").setAttribute("style","display:none")
			document.getElementById("upiIdLabel").setAttribute("style","display:none")
			document.getElementById("cardNumberLable").setAttribute("style","display:none")
		}
		
		
		if(paymentType == "Cash") {
			document.getElementById("cardNumber").setAttribute("style","display:none")
			document.getElementById("amount").setAttribute("style","display:block")
			document.getElementById("upiIdLabel").setAttribute("style","display:none")
			document.getElementById("cardNumberLable").setAttribute("style","display:none")
		}
		
		if(paymentType == "Credit Card"){
			document.getElementById("cardNumber").setAttribute("style","display:block")
			document.getElementById("amount").setAttribute("style","display:block")
			document.getElementById("upiIdLabel").setAttribute("style","display:none")
			document.getElementById("cardNumberLable").setAttribute("style","display:block")
		}
		
		if(paymentType == "Debit Card"){
			document.getElementById("cardNumber").setAttribute("style","display:block")
			document.getElementById("amount").setAttribute("style","display:block")
			document.getElementById("upiIdLabel").setAttribute("style","display:none")
			document.getElementById("cardNumberLable").setAttribute("style","display:block")
		}
		
		if(paymentType == "UPI"){
			document.getElementById("cardNumber").setAttribute("style","display:block")
			document.getElementById("amount").setAttribute("style","display:block")
			document.getElementById("upiIdLabel").setAttribute("style","display:block")
			document.getElementById("cardNumberLable").setAttribute("style","display:none")
		}
		
		/* alert("paymentType"+paymentType); */
		})
	})
</script>
</body>
</html>