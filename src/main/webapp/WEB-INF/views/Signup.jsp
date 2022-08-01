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
	Signup

	<f:form action="users" method="post" modelAttribute="userBean">
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
	<%-- <form action="users" method="post">
		FirstName:<input type="text" name="firstName"> <br>
		<br> LastName:<input type="text" name="lastName"><br>
		<br> Gender:::<br>
		<br> Male: <input name="gender" type="radio" value="male"><br>
		<br> Female: <input name="gender" type="radio" value="female"><br>
		<br> Email:<input type="text" name="email"><br>
		<br> Password:<input type="text" name="password"><br>
		<br> <input type="submit" value="SUBMIT">
	</form> --%>
</body>
</html>