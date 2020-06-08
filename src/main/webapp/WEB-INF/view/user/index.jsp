<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Dashboard</title>
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
<!-- You can choose a theme from css/styles instead of get all themes -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
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
		<section class="content">
			<div class="container-fluid">
				<div class="block-header">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<ul class="breadcrumb breadcrumb-style">
								<li class="breadcrumb-item 	bcrumb-1"><a href="index.html">
										<i class="material-icons">home</i> Home
								</a></li>
								<li class="breadcrumb-item active">Dashboard</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Widgets -->
				<div class="row">

					<div class="col-lg-3 col-sm-6">
						<div class="info-box7 l-bg-purple order-info-box7">
							<div class="info-box7-block">
								<h4 class="m-b-20">Total Files</h4>
								<h2 class="text-right">
									<i class="fas fa-file-image pull-left"></i><span>${numberOfFile}</span>
								</h2>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="info-box7 l-bg-orange order-info-box7">
							<div class="info-box7-block">
								<h4 class="m-b-20">Complaints</h4>
								<h2 class="text-right">
									<i class="fas fa-headset pull-left"></i><span>${complaintCount}</span>
								</h2>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="info-box7 l-bg-cyan order-info-box7">
							<div class="info-box7-block">
								<h4 class="m-b-20">Rating</h4>
								<h2 class="text-right">
									<i class="fas fa-star pull-left"></i><span>${avgfeedbackCount}</span>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<!-- #END# Widgets -->
				<!-- <div class="row">
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="card">
							<div class="header">
								<h2>
									<strong>Chart</strong> Sample
								</h2>
							</div>
							<div class="body">
								<div id="amChartLineHome"></div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</section>

	</div>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/chart.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/echarts.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/apexcharts.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/index.js"></script>
</body>

</html>