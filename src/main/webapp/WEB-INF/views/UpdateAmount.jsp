<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript"></script><jsp:include page="css.jsp"></jsp:include>
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
								<div class="col-xl-6 col-lg-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">Payment</h4>
										</div>
										<div class="card-body">
											<%-- <f:form action="addCategory" method="post"
												modelAttribute="categoryBean">
												<div class="basic-form">

													<div class="row">
														<div class="mb-3 col-md-6">
															<label class="form-label">Category Name</label>
															<f:input class="form-control" path="categoryName" />
															<f:errors path="categoryName"></f:errors>
														</div>
													</div>

												</div>
												<button type="submit" class="btn btn-primary">Submit</button>
											</f:form> --%>

											<f:form action="updateAmount" method="post"
												modelAttribute="paymentBean">
												<div class="basic-form">
												<label class="form-label">Payment Mode:</label>
												<f:select path="paymentMode" id="paymentType"
													cssClass="me-sm-2  form-control wide">
													<f:option value="select">Select</f:option>
													<f:option value="Cash">Cash</f:option>
													<f:option value="Credit Card">Credit Card</f:option>
													<f:option value="Debit Card">Debit Card</f:option>
													<f:option value="UPI">UPI</f:option>
												</f:select>
												<br>
												<br>
												<f:errors path="paymentMode"></f:errors>
												<div class="row">
													<div id="accNumber">
														Account Number:
														<f:select path="paymentId" id="acNumber"
															cssClass="me-sm-2  form-control wide">
															<f:option value="select">Select</f:option>
														</f:select>
														<br> <br>
														<f:errors path="paymentId"></f:errors>
													</div>
												</div>
												<div class="row">
													<div id="amount">
														<label class="form-label">Amount:</label>
														<f:input path="amount" class="form-control"/>
														<br> <br>
														<f:errors path="amount"></f:errors>
													</div>
												</div>

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
												document
												.getElementById(
														"accNumber")
												.setAttribute(
														"style",
														"display:none");
										document
												.getElementById(
														"amount")
												.setAttribute(
														"style",
														"display:none");
							$("#paymentType")
									.click(
											function() {

												var paymentType = document
														.getElementById("paymentType").value;
												
												if (paymentType == "select") {
													document
															.getElementById(
																	"accNumber")
															.setAttribute(
																	"style",
																	"display:none");
													document
															.getElementById(
																	"amount")
															.setAttribute(
																	"style",
																	"display:none");
												}

												else if (paymentType == "Cash") {
													document
															.getElementById(
																	"accNumber")
															.setAttribute(
																	"style",
																	"display:none");
													document
															.getElementById(
																	"amount")
															.setAttribute(
																	"style",
																	"display:block");
												}

												else if (paymentType == "Credit Card") {
													document
															.getElementById(
																	"accNumber")
															.setAttribute(
																	"style",
																	"display:block");
													document
															.getElementById(
																	"amount")
															.setAttribute(
																	"style",
																	"display:block");
												}

												else if (paymentType == "Debit Card") {
													document
															.getElementById(
																	"accNumber")
															.setAttribute(
																	"style",
																	"display:block");
													document
															.getElementById(
																	"amount")
															.setAttribute(
																	"style",
																	"display:block");
												}

												else if (paymentType == "UPI") {
													document
															.getElementById(
																	"accNumber")
															.setAttribute(
																	"style",
																	"display:block");
													document
															.getElementById(
																	"amount")
															.setAttribute(
																	"style",
																	"display:block");
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
																	let acNumber = $("#acNumber");
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