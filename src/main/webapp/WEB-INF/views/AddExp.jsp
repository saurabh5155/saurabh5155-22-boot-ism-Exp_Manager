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
<jsp:include page="css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<!-- New -->
	<div class="content-body">
		<!-- row -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12">
					<div class="row">
						<div class="col-xl-6">
							<div class="row">
								<div class="col-xl-12"></div>
								<%-- 	<f:form action="addCategory" method="post"
									modelAttribute="categoryBean">
									Email:<f:input path="categoryName" />
									<br>
									<br>
									<f:errors path="categoryName"></f:errors>
									<input type="submit" value="SUBMIT">
								</f:form> --%>


								<div class="col-xl-6 col-lg-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">Exp</h4>
										</div>
										<div class="card-body">
											<f:form action="addExp" method="post"
												modelAttribute="expBean">
											<div class="basic-form">
												<div class="row">
													<label class="form-label">Exp Name :</label>
													<f:input path="expName" class="form-control" />
													<br> <br>
												</div>
												<label class="form-label">Date:</label>
												<input type="date" name="Date"
													class="datepicker-default form-control picker__input">
													
													
												<label class="form-label">Payment Mode:</label>
												<select id="paymentType" class="me-sm-2  form-control wide">
													<option value="select">Select</option>
													<option value="Cash">Cash</option>
													<option value="Credit Card">Credit Card</option>
													<option value="Debit Card">Debit Card</option>
													<option value="UPI">UPI</option>

												</select>

												
												
												<label class="form-label" id="aNumber">A/C Number:</label>
												<f:select path="paymentId" id="accNumber"  cssClass="me-sm-2  form-control wide">
												</f:select>
												${paymentBig }
												<f:errors path="paymentId"></f:errors>
		
	
		
		
												<label class="form-label">Exp Amount:</label>
												 <f:input path="expAmount" class="form-control"/>
												
		
												Category:<f:select path="categoryId" id="category"  cssClass="me-sm-2  form-control wide">
													<f:option value="select">Select</f:option>
													<c:forEach items="${listCategory }" var="c">
														<f:option value="${c.categoryId }">${c.categoryName }</f:option>
													</c:forEach>
												</f:select>
												<br>
												<br>
												<f:errors path="categoryId"></f:errors>
		
												<label class="form-label" id="subCat">Sub Category:</label>
													
											<f:select path="subCategoryId" id="subCategory"  cssClass="me-sm-2  form-control wide">
													<f:option value="">select ..</f:option>
												</f:select>
												<br>
												<br>
												<f:errors path="categoryId"></f:errors>


												<button type="submit" class="btn btn-primary">Submit</button>
												</div>
											</f:form>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="js.jsp"></jsp:include>



	<script>
		$(document)
				.ready(
						function() {
						document.getElementById("subCategory").setAttribute("style","display:none");
						document.getElementById("subCat").setAttribute("style","display:none");
							$("#category")
									.change(
											function() {
												var id = document
														.getElementById("category").value;
												let url = "http://localhost:9595/listSubCategoryById?categoryId="
														+ id;
												if(id=="select"){
													
												document.getElementById("subCategory").setAttribute("style","display:none");
												document.getElementById("subCat").setAttribute("style","display:none");
												}else{
												document.getElementById("subCategory").setAttribute("style","display:block");
												document.getElementById("subCat").setAttribute("style","display:block");
												
													
												}
												$
														.get(url)
														.done(
																function(data) {
																	console
																			.log("gj"
																					+ data);
																	let subcategory = $("#subCategory");
																	subcategory
																			.empty()
																	for (let i = 0; i < data.length; i++) {
																		if (data[i].categoryId == id) {
																			subcategory
																					.append(`<option value=`+data[i].subCategoryId+`>`
																							+ data[i].subcategory_name
																							+ `</option>`);
																		}
																	}

																})
														.fail(
																function() {
																	console
																			.log("something went wrong");
																});
											})

												document.getElementById("accNumber").setAttribute("style","display:none");
												document.getElementById("aNumber").setAttribute("style","display:none");
							$("#paymentType")
									.click(
											function() {
												var paymentType = document
														.getElementById("paymentType").value;
												if(paymentType=="Cash"){
													document.getElementById("accNumber").setAttribute("style","display:none");
													document.getElementById("aNumber").setAttribute("style","display:none");
												}
												
												else	if(paymentType=="Credit Card"){
													document.getElementById("accNumber").setAttribute("style","display:block");
													document.getElementById("aNumber").setAttribute("style","display:block");
												}
												
												else if(paymentType=="Debit Card"){
													document.getElementById("accNumber").setAttribute("style","display:block");
													document.getElementById("aNumber").setAttribute("style","display:block");
												}
												
												else if(paymentType=="UPI"){
													document.getElementById("accNumber").setAttribute("style","display:block");
													document.getElementById("aNumber").setAttribute("style","display:block");
												}  else if(paymentType=="select"){
													document.getElementById("accNumber").setAttribute("style","display:none");
													document.getElementById("aNumber").setAttribute("style","display:none");
													
												}

												let url = "http://localhost:9595/listpaymentByPaymentName?paymentName="
														+ paymentType;

												$
														.get(url)
														.done(
																function(data) {
																	console
																			.log("gj"
																					+ data);
																	let acNumber = $("#accNumber");
																	acNumber
																			.empty();
																	for (let i = 0; i < data.length; i++) {

																		acNumber
																				.append(`<option value=`+data[i].paymentId+`>`
																						+ data[i].cardNumber
																						+ `</option>`);
																	}

																})
														.fail(
																function() {
																	console
																			.log("something went wrong");
																});

											})
						})
	</script>
</body>
</html>