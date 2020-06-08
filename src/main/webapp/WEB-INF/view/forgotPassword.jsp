<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>forgot password</title>
<!-- Favicon-->
<link rel="icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico"
	type="image/x-icon">
<!-- Plugins Core Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"
	rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/adminResources/css/extra_pages.css"
	rel="stylesheet" />
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
				<f:form class="login100-form validate-form" modelAttribute="loginVO" method="post" action="checkForgotPassAuthenctication">
					<span class="login100-form-title p-b-45"> Reset Password </span>

					<span class="error-subheader2 p-t-20 p-b-15"> Enter your
						registered email address. </span>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<f:input class="input100" type="text" name="email" path="username"></f:input>
						<span class="focus-input100"></span> <span class="label-input100">Email</span>
					</div>
					${emailErrormsg }
					<div class="container-login100-form-btn p-t-30">
						<button class="login100-form-btn" type="submit">Reset My Password</button>
					</div>

					<div class="w-full p-t-25 text-center">

						<div>
							<a href="sign-in.html" class="txt1"> Login? </a>
						</div>
					</div>
				</f:form>
				<div class="login100-more"
					style="background-image: url('<%=request.getContextPath()%>/adminResources/image/bg-02.png');">
				</div>
			</div>
		</div>
	</div>

	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Extra page Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/pages.js"></script>


</body>
</html>