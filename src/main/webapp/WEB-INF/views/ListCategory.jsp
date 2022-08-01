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
			<td>Id</Name>
			<td>Category Name</td>
			<td>Sub Category Name</td>
			<td>UserId</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${listCategory }" var="l">
			<tr>
				<td>${l.categoryId}</td>
				<td>${l.categoryName}</td>
				<td>${l.userId}</td>
				<td> <a href="deleteCategory?categoryId=${l.categoryId}">delete</a> 
					<%-- <a href="getDataByCatogeryId?categoryId=${l.categoryId}">Update</a> --%>
					<a href="subCategory?categoryId=${l.categoryId}">Add Sub Category</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>