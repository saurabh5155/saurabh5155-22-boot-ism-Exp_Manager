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
	::::::Login::::::
	<f:form action="login" method="post" modelAttribute="loginBean">
		Email:<f:input path="email"/> <br><br>
		Password<f:input path="password"/><br><br>
		<input type="submit" value="SUBMIT">
	</f:form>
	
	
</body>
</html>