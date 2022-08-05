<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="css.jsp"></jsp:include>]
</head>
<body>
<jsp:include page="CoustomerHeader.jsp"></jsp:include>

<jsp:include page="CoustomerSidebar.jsp"></jsp:include>
Home <br><br>

<a href="category">Add Category</a><br><br>
<a href="listCategory">List Category</a><br><br>
<a href="listSubAndCategory">listSubAndCategory</a><br><br>
<a href="addPayment">addPayment</a><br><br>
<a href="exp">AddExp</a><br><br>
<a href="listExp">ListExp</a><br><br>
<a href="getByUserId">AddpaymentOnExsitingPayment</a><br><br>
<a href="logout">logout</a><br><br>
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>