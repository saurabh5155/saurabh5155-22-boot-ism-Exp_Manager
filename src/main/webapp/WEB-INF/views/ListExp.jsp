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
										<td>Exp Id</td>
										<td>Exp Name</td>
										<td>Exp Date</td>
										<td>Exp Amount</td>
										<td>Category Name</td>
										<td>Sub Category Name</Name>
										<td>Payment Mode</td>
										<td>Action</td>
									</tr>
									<c:forEach items="${listExp }" var="l">
										<tr>
											<td>${l.expId}</td>
											<td>${l.expName}</td>
											<td>${l.date}</td>
											<td>${l.expAmount}</td>
											<td>${l.categoryName}</td>
											<td>${l.subcategory_name}</td>
											<td>${l.paymentMode}</td>
											<td><a href="deleteExp?expId=${l.expId}">DeleteExp</a>||
												<a href="listExpById?expId=${l.expId}">UpdateExp</a></td>
										</tr>
									</c:forEach>
								</table> --%>
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
																	style="width: 35px;">Id</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Name: activate to sort column ascending"
																	style="width: 73.7734px;">Exp Name</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Department: activate to sort column ascending"
																	style="width: 91.7891px;">Exp Date</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Exp Amount</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Category Name</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Sub Category Name</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Payment Mode</th>
																<th class="sorting" tabindex="0"
																	aria-controls="example3" rowspan="1" colspan="1"
																	aria-label="Gender: activate to sort column ascending"
																	style="width: 56.0156px;">Action</th>

															</tr>
														</thead>
														<tbody>


															<c:forEach items="${listCategory }" var="l">
																<tr role="row" class="odd">
																	<td>${l.categoryId}</td>
																	<td>${l.categoryName}</td>
																	<td>${l.subcategory_name}</td>
																	<td>
																		<%-- <a href="getDataByCatogeryId?categoryId=${l.categoryId}">Update</a> --%>
																		<a  href="subCategory?categoryId=${l.categoryId}"><svg
																				id="icon-logout" xmlns="http://www.w3.org/2000/svg"
																				class="text-danger" width="18" height="18"
																				viewBox="0 0 24 24" fill="none"
																				stroke="currentColor" stroke-width="2"
																				stroke-linecap="round" stroke-linejoin="round">
																				<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
																				<polyline points="16 17 21 12 16 7"></polyline>
																				<line x1="21" y1="12" x2="9" y2="12"></line></svg></a>
																	</td>
																</tr>
															</c:forEach>


															<c:forEach items="${listExp }" var="l">
																<tr>
																	<td>${l.expId}</td>
																	<td>${l.expName}</td>
																	<td>${l.date}</td>
																	<td>${l.expAmount}</td>
																	<td>${l.categoryName}</td>
																	<td>${l.subcategory_name}</td>
																	<td>${l.paymentMode}</td>
																	<td><a class="btn btn-danger shadow btn-xs sharp" href="deleteExp?expId=${l.expId}"><i
																			class="fa fa-trash"></i></a>
																		<a class="btn btn-primary shadow btn-xs sharp me-1" href="listExpById?expId=${l.expId}"><i class="fas fa-pencil-alt"></i></a></td>
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