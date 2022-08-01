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
	Users List
	<table border="1">
		<tr>
			<td>FirstName</td>
			<td>LastName</td>
			<td>Email</td>
			<td>Gender</td>
			<td>UserType</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${listUsers }" var="l">
			<tr>
				<td>${l.firstName}</td>
				<td>${l.lastName}</td>
				<td>${l.email}</td>
				<td>${l.gender}</td>
				<td>${l.userType}</td>
				<td> <a href="deleteusers/${l.userId}">delete</a> 
					<a href="getDataById?userId=${l.userId }">Update</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>