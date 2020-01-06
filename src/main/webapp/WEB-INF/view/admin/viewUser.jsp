<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>ViewUser</title>
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
		<aside id="rightsidebar" class="right-sidebar">
			<ul class="nav nav-tabs tab-nav-right" role="tablist">
				<li role="presentation"><a href="#skins" data-toggle="tab"
					class="active">SKINS</a></li>
				<li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a>
				</li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel"
					class="tab-pane in active in active stretchLeft" id="skins">
					<div class="demo-skin">
						<div class="rightSetting">
							<p>GENERAL SETTINGS</p>
							<ul class="setting-list list-unstyled m-t-20">
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Save History <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Show Status <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Auto Submit Issue <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Show Status To All <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="rightSetting">
							<p>SIDEBAR MENU COLORS</p>
							<button type="button"
								class="btn btn-sidebar-light btn-border-radius p-l-20 p-r-20">Light</button>
							<button type="button"
								class="btn btn-sidebar-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
						</div>
						<div class="rightSetting">
							<p>THEME COLORS</p>
							<button type="button"
								class="btn btn-theme-light btn-border-radius p-l-20 p-r-20">Light</button>
							<button type="button"
								class="btn btn-theme-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
						</div>
						<div class="rightSetting">
							<p>SKINS</p>
							<ul class="demo-choose-skin choose-theme list-unstyled">
								<li data-theme="black" class="actived">
									<div class="black-theme"></div>
								</li>
								<li data-theme="white">
									<div class="white-theme white-theme-border"></div>
								</li>
								<li data-theme="purple">
									<div class="purple-theme"></div>
								</li>
								<li data-theme="blue">
									<div class="blue-theme"></div>
								</li>
								<li data-theme="cyan">
									<div class="cyan-theme"></div>
								</li>
								<li data-theme="green">
									<div class="green-theme"></div>
								</li>
								<li data-theme="orange">
									<div class="orange-theme"></div>
								</li>
							</ul>
						</div>
						<div class="rightSetting">
							<p>Disk Space</p>
							<div class="sidebar-progress">
								<div class="progress m-t-20">
									<div class="progress-bar l-bg-cyan shadow-style width-per-45"
										role="progressbar" aria-valuenow="45" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<span class="progress-description"> <small>26%
										remaining</small>
								</span>
							</div>
						</div>
						<div class="rightSetting m-b-15">
							<p>Server Load</p>
							<div class="sidebar-progress">
								<div class="progress m-t-20">
									<div class="progress-bar l-bg-orange shadow-style width-per-63"
										role="progressbar" aria-valuenow="63" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<span class="progress-description"> <small>Highly
										Loaded</small>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane stretchRight" id="settings">
					<div class="demo-settings">
						<p>GENERAL SETTINGS</p>
						<ul class="setting-list">
							<li><span>Report Panel Usage</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-green"></span>
									</label>
								</div></li>
							<li><span>Email Redirect</span>
								<div class="switch">
									<label> <input type="checkbox"> <span
										class="lever switch-col-blue"></span>
									</label>
								</div></li>
						</ul>
						<p>SYSTEM SETTINGS</p>
						<ul class="setting-list">
							<li><span>Notifications</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-purple"></span>
									</label>
								</div></li>
							<li><span>Auto Updates</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-cyan"></span>
									</label>
								</div></li>
						</ul>
						<p>ACCOUNT SETTINGS</p>
						<ul class="setting-list">
							<li><span>Offline</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-red"></span>
									</label>
								</div></li>
							<li><span>Location Permission</span>
								<div class="switch">
									<label> <input type="checkbox"> <span
										class="lever switch-col-lime"></span>
									</label>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</aside>
		<!-- #END# Right Sidebar -->
	</div>
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">viewComplaint</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a href="index.html">
									<i class="fas fa-home"></i> ManageComplaint
							</a></li>
							<li class="breadcrumb-item active">viewComplaint</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>Complaint</strong>
							</h2>
						</div>
						<div class="body">
							<div class="table-responsive">
								<div id="tableExport_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="dt-buttons">
										<button class="dt-button buttons-copy buttons-html5"
											tabindex="0" aria-controls="tableExport" type="button">
											<span>Copy</span>
										</button>
										<button class="dt-button buttons-csv buttons-html5"
											tabindex="0" aria-controls="tableExport" type="button">
											<span>CSV</span>
										</button>
										<button class="dt-button buttons-excel buttons-html5"
											tabindex="0" aria-controls="tableExport" type="button">
											<span>Excel</span>
										</button>
										<button class="dt-button buttons-pdf buttons-html5"
											tabindex="0" aria-controls="tableExport" type="button">
											<span>PDF</span>
										</button>
										<button class="dt-button buttons-print" tabindex="0"
											aria-controls="tableExport" type="button">
											<span>Print</span>
										</button>
									</div>
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
													style="width: 100px;">Sr. No.</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Position: activate to sort column ascending"
													style="width: 100px;">Name</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Office: activate to sort column ascending"
													style="width: 100px;">Email</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 100px;">Password</th>

												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 100px;">Role</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 100px;">Status</th>
												<th class="sorting" tabindex="0" aria-controls="tableExport"
													rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 100px;">Edit&nbsp;/&nbsp;Delete</th>
											</tr>
										</thead>
										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
										<c:forEach var="i" items="${userData}">
											<tbody>
												<tr role="row" class="odd">
													<td class="sorting_1">1</td>
													<td>${i.firstName }&nbsp;${i.lastName }</td>
													<td>${i.loginVO.username }</td>
													<td>${i.loginVO.password }</td>
													<td>${i.loginVO.role }</td>
													<td>${i.loginVO.status }</td>
													<td><a href="editUser?registerId=${i.registerId }">Edit</a>&nbsp;/&nbsp;<a
														href="deleteUser?registerId=${i.registerId }">Delete</a>
													<td>
											</tbody>
										</c:forEach>
									</table>
									<div class="dataTables_info" id="tableExport_info"
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