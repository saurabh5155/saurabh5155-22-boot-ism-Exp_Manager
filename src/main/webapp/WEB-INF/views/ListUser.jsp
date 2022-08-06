<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<div class="content-body">
		<!-- row -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12">
					<div class="row">
						<div class="col-xl-6">
							<div class="row">
								<div class="col-xl-12"></div>
								<%-- List Category
								<table border="1">
									<tr>
										<td>Id</Name>
										<td>Category Name</td>
										<td>UserId</td>
										<td>Action</td>
									</tr>
									<c:forEach items="${listCategory }" var="l">
										<tr>
											<td>${l.categoryId}</td>
											<td>${l.categoryName}</td>
											<td>${l.userId}</td>
											<td><a href="deleteCategory?categoryId=${l.categoryId}">delete</a>
												<a href="getDataByCatogeryId?categoryId=${l.categoryId}">Update</a>
												<a href="subCategory?categoryId=${l.categoryId}">Add Sub
													Category</a></td>
										</tr>
									</c:forEach>
								</table> --%>

								<div class="col-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">Profile Datatable</h4>
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<div id="example3_wrapper"
													class="dataTables_wrapper no-footer">


													<table id="example3" class="display dataTable no-footer"
														style="min-width: 845px" role="grid"
														aria-describedby="example3_info">
														<thead>
															<tr role="row">
																<th class="sorting_asc" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-sort="ascending"
																	aria-label=": activate to sort column descending"
																	style="width: 35px;">First Namae</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Name: activate to sort column ascending"
																	style="width: 73.7734px;">Last Name</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Department: activate to sort column ascending"
																	style="width: 91.7891px;">email</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Gender</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">User Type</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${listUsers }" var="l">
																<tr ole="row" class="odd">
																	<td>${l.firstName}</td>
																	<td>${l.lastName}</td>
																	<td>${l.email}</td>
																	<td>${l.gender}</td>
																	<td>${l.userType}</td>
																	<td><a class="btn btn-danger shadow btn-xs sharp" href="deleteusers/${l.userId}"><i class="fa fa-trash"></i></a>
																			<a class="btn btn-primary shadow btn-xs sharp me-1" href="getDataById?userId=${l.userId }"><i class="fas fa-pencil-alt"></i></a></td>
																</tr>
															</c:forEach>
														
														</tbody>
													</table>
													

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
		</div>
	</div>

	<jsp:include page="js.jsp"></jsp:include>
</body>
</html>