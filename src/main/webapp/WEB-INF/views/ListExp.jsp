<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	List Category
	<table border="1">
		<tr>
			<td>Exp Id</td>
			<td>Exp Name</td>
			<td>Exp Date</td>
			<td>Exp Amount</td>
			<td>Category Name</td>
			<td>Sub	Category Name</Name>
			<td>Payment Mode</td>
		</tr>
		<c:forEach items="${listExp }" var="l">
			<tr>
				<td>${l.expId}</td>
				<td>${l.expName}</td>
				<td>${l.date}</td>
				<td>${l.expAmount}</td>
				<td>${l.categoryName}</td>
				<td>${l.subcategory_name}</td>
				<td>${l.paymentMode}</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>