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

	<!-- new Start -->
	<body class="vh-100">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
									<div class="text-center mb-3">
										<a href="index.html"><img src="images/logo-full.png" alt=""></a>
									</div>
                                    <h4 class="text-center mb-4">Sign in your account</h4>
                                    <f:form action="users" method="post" modelAttribute="userBean">
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>FirstName</strong></label>
                                             <f:input path="firstName" class="form-control"/>
											<f:errors path="firstName"></f:errors>
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>LastName</strong></label>
											 <f:input path="lastName" class="form-control"/>
											 <f:errors path="lastName"></f:errors>
                                        </div>
                                        
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Gender:</strong></label>
                                            <label class="mb-1"><strong>Male</strong></label>
											 <f:radiobutton path="gender" value="Male" />
                                            <label class="mb-1"><strong>Female:</strong></label>
											 <f:radiobutton path="gender" value="Male" />
											 <f:errors path="gender"></f:errors>
                                        </div>
                                        
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Email</strong></label>
                                            <f:input  class="form-control" path="email"/>
                                        	<f:errors path="email"></f:errors>
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <f:input path="password"  class="form-control" />
                                            <f:errors path="password"></f:errors>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary btn-block">Sign Up In</button>
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
	
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>