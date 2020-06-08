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
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
				<f:form class="login100-form validate-form" method="post"
					modelAttribute="loginVO" action="changePassword">
					<span class="login100-form-title p-b-45"> Reset Password </span>
					<span class="error-subheader2 p-t-20 p-b-15"> Enter your
						OTP. </span>

					<div class="wrap-input100 validate-input"
						data-validate="OTP is required">
						<input class="input100" type="text" name="otp" id="otp"
							required="required"> <span class="focus-input100"></span>
						<span class="label-input100">OTP</span>
					</div>
					<label style="color: red;" id="WrongOtp"></label>
					<f:hidden path="loginId" />
					<input hidden="true" id="Aotp" value="${otp}">
					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											console.log($("#Aotp").val());
											$("#WrongOtp").hide();
											$("#submit").prop("disabled", true);
											$("#otp")
													.keyup(
															function() {
																if ($(this)
																		.val() == $(
																		"#Aotp")
																		.val()) {
																	$(
																			"#WrongOtp")
																			.hide();
																	$("#submit")
																			.prop(
																					"disabled",
																					false);
																} else {
																	$(
																			"#WrongOtp")
																			.show();
																	$(
																			"#WrongOtp")
																			.text(
																					"wrong Otp please try again");
																	$("#submit")
																			.prop(
																					"disabled",
																					true);
																}
															})
										})
					</script>

					<div class="container-login100-form-btn p-t-30">
						<button class="login100-form-btn" type="submit" id="submit">Reset
							My Password</button>
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