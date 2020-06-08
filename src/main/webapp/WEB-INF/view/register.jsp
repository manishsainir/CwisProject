<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Register</title>
<!-- Favicon-->
<link rel="icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico"
	type="image/x-icon">
<!-- Plugins Core Css -->
<link href="<%=request.getContextPath() %>/adminResources/css/app.min.css" rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath() %>/adminResources/css/style.css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/adminResources/css/extra_pages.css" rel="stylesheet" />
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
				<f:form class="login100-form validate-form" action="insert" modelAttribute="registerVO">
					<span class="login100-form-title p-b-45"> Register </span>
					<div class="wrap-input100 validate-input"
						data-validate="Firstname is required">
						<f:input class="input100" type="text" name="firstName" path="firstName"/> <span
							class="focus-input100"></span> <span class="label-input100">First Name</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Lastname is required">
						<f:input class="input100" type="text" name="lastName" path="lastName"/> <span
							class="focus-input100"></span> <span class="label-input100">Last Name</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Enter valid email address">
						<f:input class="input100" type="text" path="loginVO.username"/> <span
							class="focus-input100"></span> <span class="label-input100">Email</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Enter valid email address">
						<f:input class="input100" type="text" path="phone"/> <span
							class="focus-input100"></span> <span class="label-input100">Phone no.</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<f:input class="input100" type="password" path="loginVO.password"/> <span
							class="focus-input100"></span> <span class="label-input100">Password</span>
					</div>
					<div class="flex-sb-m w-full p-t-15 p-b-20">
						<div>
							<a href="login" class="txt1"> Already Registered? </a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" value="Register">Register</button>
					</div>
					
				</f:form>
				<div class="login100-more"
					style="background-image: url('<%=request.getContextPath() %>/adminResources/image/bg-02.png');">
				</div>
			</div>
		</div>
	</div>
	<!-- Plugins Js -->
	<script src="<%=request.getContextPath() %>/adminResources/js/app.min.js"></script>
	<!-- Extra page Js -->
	<script src="<%=request.getContextPath() %>/adminResources/js/pages.js"></script>
</body>

</html>