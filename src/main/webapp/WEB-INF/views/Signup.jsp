<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Signup

<form action="users" method="post">
	FirstName:<input type="text" name="firstName"> <br><br>
	LastName:<input type="text" name="lastName"><br><br>
	
	Gender:::<br><br>
	Male:
	<input name="gender" type="radio" value="male"><br><br>
	Female:
	<input name="gender" type="radio" value="female"><br><br>
		
	Email:<input type="text" name="email"><br><br>
	Password:<input type="text" name="password"><br><br>
	
	<input type="submit" value="SUBMIT">
</form>
</body>
</html>