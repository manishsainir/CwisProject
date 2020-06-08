<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Feedback</title>
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
	rel="stylesheet">
<!-- You can choose a theme from css/styles instead of get all themes -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
	rel="stylesheet" />

<link
	href="<%=request.getContextPath()%>/adminResources/css/dynamicStar.css"
	rel="stylesheet" />

</head>

<body class="light">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="loading-img-spin"
					src="<%=request.getContextPath()%>/adminResources/image/loading.png"
					alt="admin">
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->
	<!-- Top Bar -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- #Top Bar -->
	<div>
		<!-- Left Sidebar -->
		<aside id="leftsidebar" class="sidebar">
			<!-- Menu -->

			<jsp:include page="userMenu.jsp"></jsp:include>


			<!-- #Menu -->
		</aside>
		<!-- #END# Left Sidebar -->
		<!-- Right Sidebar -->

		<!-- #END# Right Sidebar -->
	</div>
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">Feedback</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a href="userIndex.jsp">
									<i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">ManageFeedback</a></li>
							<li class="breadcrumb-item active">SendFeedback</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Basic Validation -->

			<span class="star-cb-group"> <input type="radio" id="rating-5"
				name="rating" value="5" /> <label for="rating-5">5</label> <input
				type="radio" id="rating-4" name="rating" value="4" checked="checked" />
				<label for="rating-4">4</label> <input type="radio" id="rating-3"
				name="rating" value="3" /> <label for="rating-3">3</label> <input
				type="radio" id="rating-2" name="rating" value="2" /> <label
				for="rating-2">2</label> <input type="radio" id="rating-1"
				name="rating" value="1" /> <label for="rating-1">1</label> <input
				type="radio" id="rating-0" name="rating" value="0"
				class="star-cb-clear" /> <label for="rating-0">0</label>
			</span>

			<%-- <div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<div class="card">
						<div class="header">
							<h2>
								<strong>Feedback</strong>
							</h2>

						</div>
						<div class="body">

							<%@taglib prefix="f"
								uri="http://www.springframework.org/tags/form"%>
							<f:form id="form_validation" method="POST"
								modelAttribute="feedbackData" action="insertFeedback">

								<div class="form-group form-float">
									<div class="form-line">
										<f:textarea name="description" cols="30" rows="5"
											class="form-control no-resize" required="" path="description" />
										<label class="form-label">Description</label>
									</div>

								</div>


								</br>
								</br>
								<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>

							</f:form>
						</div>

					</div>


				</div>
			</div>
			<!-- #END# Basic Validation -->

		 --%>
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<!-- Demo Js -->
</body>

</html>