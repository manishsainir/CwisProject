<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Index</title>
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
		<div class="row clearfix">
			<div class="body">
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
				<f:form id="form_validation" method="post" novalidate="novalidate"
					action="addUserData" modelAttribute="userVo" enctype="multipart/form-data">
					<div class="row clearfix">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							</br>
							<h3>Enter Your File or Text</h3>
							<div class="card">
								<div class="header">
									<h2>
										<strong>Textarea</strong>
									</h2>
								</div>
								<div class="body">
									<div class="row clearfix">
										<div class="col-sm-12">
											<div class="form-group">
												<div class="form-line">

													<f:textarea rows="4" class="form-control no-resize"
														placeholder="Please type what you want..." path="textData"></f:textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h3>OR</h3>
						</div>

						<div class="col-sm-6">

							<div class="file-field input-field">
								<div class="btn">
									<span>File</span> <input type="file" name="file" multiple="multiple">
								</div>
								<div class="file-path-wrapper">
									<input class="file-path validate" type="text">
								</div>
							</div>

						</div>
						<div class="col-md-3">
							<label>Select Your Encryption technique</label>
							<f:select class="browser-default" path="algoType">
								<f:option value="">Choose your
									option</f:option>
								<f:option value="1">AES</f:option>
								<f:option value="2">DES</f:option>

							</f:select>
						</div>


						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h2>
								<strong>upload image</strong>
							</h2>
							<div>
								<div class="file-field input-field">
									<div class="btn">
										<span>Image</span> <input type="file" name="file" multiple="multiple">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text">
									</div>
								</div>
							</div>
						</div>
					</div>
					<input type="submit" class="btn btn-info waves-effect" value="Submit">
					
					<!-- <button type="submit" class="btn btn-info waves-effect">Submit</button> -->
				</f:form>
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