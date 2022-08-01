<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	::::::Add Payment::::::
	<f:form action="addPayment" method="post" modelAttribute="paymentBean">
		Payment Mode:<f:select path="paymentMode" >
					<f:option value="cash">Cash</f:option>
					<f:option value="cc">CC</f:option>
					<f:option value="dc">DC</f:option>
					<f:option value="paytm">paytm</f:option>
		</f:select>
		<br>
		<br>
		<f:errors path="paymentMode"></f:errors>
		
		Amount:<f:input path="amount" />
		<br>
		<br>
		<f:errors path="amount"></f:errors>

		<input type="submit" value="SUBMIT">
	</f:form>


</body>
</html>