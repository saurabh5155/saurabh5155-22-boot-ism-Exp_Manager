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
	::::::Add Category::::::
	<f:form action="addCategory" method="post" modelAttribute="categoryBean">
		Email:<f:input path="categoryName"/> <br><br>
		<f:errors path="categoryName"></f:errors>
		<input type="submit" value="SUBMIT">
	</f:form>
	
	
</body>
</html>