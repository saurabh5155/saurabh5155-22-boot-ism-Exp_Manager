<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
											<h4 class="card-title">Category</h4>
										</div>
										<div class="card-body">
											<f:form action="addCategory" method="post"
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
</body>
</html>