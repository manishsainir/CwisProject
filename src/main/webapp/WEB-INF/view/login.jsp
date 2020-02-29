<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Login</title>
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
				<form class="login100-form validate-form"
					action="/j_spring_security_check" method="POST">
					<span class="login100-form-title p-b-45"> Login </span>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="username"> <span
							class="focus-input100"></span> <span class="label-input100">Email</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"> <span
							class="focus-input100"></span> <span class="label-input100">Password</span>
					</div>
					<div class="flex-sb-m w-full p-t-15 p-b-20">
						<!-- <div class="form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox" value="">
								Remember me <span class="form-check-sign"> <span
									class="check"></span>
							</span>
							</label>
						</div>
						 -->

						<div>
							<a href="#" class="txt1"> Forgot Password? </a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">Login</button>
					</div>
					<div class="text-center p-t-45 p-b-20">
						<span class="txt2"> <a href="register">or sign up using
						</a></span>
					</div>
					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fab fa-facebook-f"></i>
						</a> <a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fab fa-twitter"></i>
						</a>
					</div>
				</form>
				<div class="login100-more"
					style="background-image: url('<%=request.getContextPath()%>/adminResources/image/bg-01.png');">
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