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
	Update Users

	<f:form action="updateUser" method="post" modelAttribute="userBean">
		<f:hidden path="userId"/>
		FisrtName: <f:input path="firstName" />
		<f:errors path="firstName"></f:errors>
		<br>
		<br>
		LastName: <f:input path="lastName" />
		<f:errors path="lastName"></f:errors>
		<br>
		<br>
		Gender:<br>
		
		Male:<f:radiobutton path="gender" value="male" />
		<br>
		Female:<f:radiobutton path="gender" value="female" />
		<br>
		<br>
		<f:errors path="gender"></f:errors>
		email: <f:input path="email" />
		<s:errors path="email"></s:errors>
		<br>
		<br>
		password: <f:input path="password" />
		<f:errors path="password"></f:errors>
		<br>
		<br>
		<input type="submit" value="SUBMIT" />
	</f:form>
</body>
</html>