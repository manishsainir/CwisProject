<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Decryption</title>
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

	</div>
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">Decryption</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Decryption</a></li>
							<li class="breadcrumb-item active">Decrypt your Data</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Basic Validation -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>choose image to decrypt</strong>
							</h2>
						</div>
						<div class="body">
							<form id="form_validation" method="POST" action="decryptImage"
								enctype="multipart/form-data">

								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="inputKey"
											required="required"> <label class="form-label">Enter
											Key</label>
									</div>
								</div>
								<div class="file-field input-field">
									<div class="btn">
										<span>Image</span> <input type="file" name="file" accept="image/png" required="required">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text">
									</div>
								</div>


								<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
							</form>
						</div>
					</div>
					<c:set var="KeyExceptionHandling" value="${KeyExceptionHandling}" />
					<c:if test="${not empty KeyExceptionHandling}">
						<h5 style="color: red">
							<c:out value="${KeyExceptionHandling}"></c:out>
						</h5>
					</c:if>
					<c:set var="MessaageExceptionHandling"
						value="${MessaageExceptionHandling}" />
					<c:if test="${not empty MessaageExceptionHandling}">
						<h5 style="color: red">
							<c:out value="${MessaageExceptionHandling}"></c:out>
						</h5>
					</c:if>
				</div>
			</div>
		</div>
		<!-- #END# Validation Stats -->
	</section>
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