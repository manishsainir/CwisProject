<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>View Complaint</title>
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

			<jsp:include page="menu.jsp"></jsp:include>

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
								<h4 class="page-title">View Complaint</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a href="#"> <i
									class="fas fa-home"></i> Manage Complaint
							</a></li>
							<li class="breadcrumb-item active">View Complaint</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>Complaint Details</strong>
							</h2>

						</div>
						<div class="body">
							<div class="table-responsive">
								<div id="tableExport_wrapper"
									class="dataTables_wrapper dt-bootstrap4">

									<div id="tableExport_filter" class="dataTables_filter">
										<label>Search:<input type="search"
											class="form-control form-control-sm" placeholder=""
											aria-controls="tableExport"></label>
									</div>
									<table id="tableExport"
										class="display table table-hover table-checkable order-column m-t-20 width-per-100 dataTable"
										role="grid" aria-describedby="tableExport_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0"
													aria-controls="tableExport" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Name: activate to sort column descending"
													style="width: 158px;">Sr. No.</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Position: activate to sort column ascending"
													style="width: 259px;">Email</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Office: activate to sort column ascending"
													style="width: 114px;">Subject</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Age: activate to sort column ascending"
													style="width: 500px;">Description</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Salary: activate to sort column ascending"
													style="width: 76px;">Complaint Time</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 104px;">Action</th>

												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Salary: activate to sort column ascending"
													style="width: 76px;">Status</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Salary: activate to sort column ascending"
													style="width: 76px;">ReplyTime</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Salary: activate to sort column ascending"
													style="width: 76px;">Reply</th>
											</tr>
										</thead>
										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
										<c:forEach var="i" items="${viewComplaintData }" varStatus="j">
											<tbody>
												<tr role="row" class="odd">
													<td class="sorting_1">${j.count }</td>
													<td>${i.loginVO.username}</td>
													<td>${i.subject }</td>
													<td>${i.description }</td>
													<td>${i.complaintTime }</td>
													<td><c:if test="${i.status eq 'pending'}">

															<a href="replyComplain?complainId=${i.complaintId}"><button
																	type="button" class="btn btn-info waves-effect">Reply</button></a>

														</c:if></td>
													<td><c:if test="${i.status eq 'pending'}">

															<button type="button"
																class="btn btn-warning waves-effect">Pending</button>

														</c:if> <c:if test="${i.status eq 'success'}">

															<button type="button"
																class="btn btn-success waves-effect">Resolved</button>


														</c:if></td>
													<td>${i.replyTime }</td>
													<td>${i.reply }</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
									<!-- <div class="dataTables_info" id="tableExport_info"
										role="status" aria-live="polite">Showing 1 to 10 of 57
										entries</div>
									<div class="dataTables_paginate paging_simple_numbers"
										id="tableExport_paginate">
										<ul class="pagination">
											<li class="paginate_button page-item previous disabled"
												id="tableExport_previous"><a href="#"
												aria-controls="tableExport" data-dt-idx="0" tabindex="0"
												class="page-link">Previous</a></li>
											<li class="paginate_button page-item active"><a href="#"
												aria-controls="tableExport" data-dt-idx="1" tabindex="0"
												class="page-link">1</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="tableExport" data-dt-idx="2" tabindex="0"
												class="page-link">2</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="tableExport" data-dt-idx="3" tabindex="0"
												class="page-link">3</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="tableExport" data-dt-idx="4" tabindex="0"
												class="page-link">4</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="tableExport" data-dt-idx="5" tabindex="0"
												class="page-link">5</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="tableExport" data-dt-idx="6" tabindex="0"
												class="page-link">6</a></li>
											<li class="paginate_button page-item next"
												id="tableExport_next"><a href="#"
												aria-controls="tableExport" data-dt-idx="7" tabindex="0"
												class="page-link">Next</a></li>
										</ul>
									</div>
								 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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