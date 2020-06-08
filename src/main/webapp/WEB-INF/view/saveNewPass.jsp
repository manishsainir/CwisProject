<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>change Password</title>
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
				<form class="login100-form validate-form" method="post"
					action="changePasswordA">
					<span class="login100-form-title p-b-45"> Change Password </span> <span
						class="error-subheader2 p-t-20 p-b-15"> Enter your
						password. </span>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"
							id="password" required="required"> <span
							class="focus-input100"></span> <span class="label-input100">New
							Password</span>
					</div>
					<input type="hidden" name="loginId" value="${loginId}">

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="confirmpassword"
							id="confirmpassword" required="required"> <span
							class="focus-input100"></span> <span class="label-input100">Confirm
							Password</span>
					</div>
					<label id="error" style="color: red"></label>
					<div class="container-login100-form-btn p-t-30">
						<button class="login100-form-btn" type="submit" id="submit">Reset
							My Password</button>
					</div>

					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											$("#submit").prop("disabled", true);
											console.log("ready");
											$("#confirmpassword")
													.keyup(
															function() {
																$("#submit")
																		.prop(
																				"disabled",
																				true);
																console
																		.log("blur");
																if ($(
																		"#password")
																		.val() == $(
																		"#confirmpassword")
																		.val()) {
																	console
																			.log("confirm");
																	$("#submit")
																			.prop(
																					"disabled",
																					false);
																	$("#error")
																			.text(
																					"");
																} else {
																	$("#error")
																			.text(
																					"confirm password is not matched");
																}
															})
										})
					</script>

				</form>
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