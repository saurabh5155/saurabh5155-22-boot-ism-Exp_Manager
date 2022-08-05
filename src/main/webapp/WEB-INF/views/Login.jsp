<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="css.jsp"></jsp:include>
</head>
<body>
	<%-- ::::::Login::::::
	<f:form action="login" method="post" modelAttribute="loginBean">
		Email:<f:input path="email"/> <br><br>
		Password<f:input path="password"/><br><br>
		<input type="submit" value="SUBMIT">
	</f:form> --%>
	
	
	
	
	
	
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
                                    <f:form action="login" method="post" modelAttribute="loginBean">
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Email</strong></label>
                                            <f:input  class="form-control" path="email"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <f:input path="password"  class="form-control" />
                                        </div>
                                        <div class="row d-flex justify-content-between mt-4 mb-2">
                                            
                                            <div class="mb-3">
                                                <a href="page-forgot-password.html">Forgot Password?</a>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary btn-block">Sign Me In</button>
                                        </div>
                                    </f:form>
                                    <div class="new-account mt-3">
                                        <p>Don't have an account? <a class="text-primary" href="signup">Sign up</a></p>
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