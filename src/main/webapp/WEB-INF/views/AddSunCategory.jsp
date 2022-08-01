<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="false"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	::::::Add Sub Category::::::
	<f:form action="addSubCategory" method="post" modelAttribute="subCategoryBean">
		<input type="hidden" value="${subCategoryBean.categoryId }" name="categoryId"> <br><br>
		Sub Category:<f:input path="subcategory_name"/> <br><br>
		<f:errors path="subcategory_name"></f:errors>
		<input type="submit" value="SUBMIT">
	</f:form>
	
	
</body>
</html>