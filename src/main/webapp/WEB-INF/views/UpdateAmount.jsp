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
<body>
	::::::Add Payment::::::
	<f:form action="addPayment" method="post" modelAttribute="paymentBean">
		Payment Mode:<f:select path="paymentMode" id="paymentType">
			<c:forEach items="${listPayment }" var="l">			
			<f:option value="${l.paymentId }">${l.paymentMode }</f:option>
			</c:forEach>
		</f:select>
		<br>
		<br>
		<f:errors path="paymentMode"></f:errors>

		Account Number:<f:select path="cardNumber" id="acNumber">	
			<f:option value="select">Select</f:option>
		</f:select>
		<br>
		<br>
		<f:errors path="paymentMode"></f:errors>
		

		<div id="amount">
			<div>Amount:</div>
			<f:input path="amount" />
			<br> <br>
			<f:errors path="amount"></f:errors>
		</div>
		
		
		
		<input type="submit" value="SUBMIT">
	</f:form>
<input type="hidden" value="${userId }" id="userId">${userId }
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
	
		$(document).ready(function(){
			$("#category").change(function(){
			var paymentType = document.getElementById("paymentType").value;
			var userId = document.getElementById("userId").value;
						let url = "localhost:9595/listpaymentByPaymentName?paymentName="+paymentType+"&userId="+userId;	
						 	 
						$.get(url)
						.done(function(data){
							console.log("gj"+data);
							let acNumber = $("#acNumber");
							acNumber.empty() 
								for(let i=0;i<data.length;i++){ 
								
									acNumber.append(`<option value=`+data[i].cardNumber+`>`+data[i].cardNumber+`</option>`);
							}
							
						}).fail(function(){
							console.log("something went wrong"); 
						});
			})	
		})
		
		
	</script>
</body>
</html>