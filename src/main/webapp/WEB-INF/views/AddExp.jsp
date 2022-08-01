<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
</head>
<body>
	::::::Add Exp::::::
	<f:form action="addExp" method="post" modelAttribute="expBean">
		
		Exp Name : <f:input path="expName"/><br><br>
		
		<input type="date" name="Date" ><br><br>
		
		Payment Mode:<f:select path="paymentId" >
				<c:forEach items="${listPayments }" var="p">
					<f:option value="${p.paymentId }">${p.paymentMode }/${p.amount }</f:option>
				</c:forEach>
		</f:select>
		<br>
		<br>${paymentBig }
		<f:errors path="paymentId"></f:errors>
		
		Exp	Amount: <f:input path="expAmount"/> <br><br>
		
		Category:<f:select path="categoryId" id="category">
					<f:option value="select">Select</f:option>
				<c:forEach items="${listCategory }" var="c">
					<f:option value="${c.categoryId }">${c.categoryName }</f:option>
				</c:forEach>
		</f:select>
		<br>
		<br>
		<f:errors path="categoryId"></f:errors>
		
	
		Sub	Category:<f:select path="subCategoryId" id="subCategory">
				<f:option value="">select ..</f:option>
		</f:select>
		<br>
		<br>
		<f:errors path="categoryId"></f:errors>
		
		
		<input type="submit" value="SUBMIT">
	</f:form>



<script>
	
		$(document).ready(function(){
			$("#category").change(function(){
			var id = document.getElementById("category").value;
						let url = "http://localhost:9595/listSubCategoryById?categoryId="+id;	
						 	 
						$.get(url)
						.done(function(data){
							console.log("gj"+data);
							let subcategory = $("#subCategory");
							subcategory.empty() 
								for(let i=0;i<data.length;i++){ 
								if(data[i].categoryId == id){
									subcategory.append(`<option value=`+data[i].subCategoryId+`>`+data[i].subcategory_name+`</option>`);
								}
							}
							
						}).fail(function(){
							console.log("something went wrong"); 
						});
			})	
		})
		
		
	</script>
</body>
</html>