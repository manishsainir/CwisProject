<%@page import="com.cwis.utils.Basemethods"%>
<nav class="navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" onClick="return false;" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse"
				aria-expanded="false"></a> <a href="#" onClick="return false;"
				class="bars"></a> <a class="navbar-brand" href="index.html"> <img
				src="<%=request.getContextPath() %>/adminResources/image/logo.png"
				alt="" /> <span class="logo-name">Cwis</span>
			</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#" onClick="return false;"
					class="sidemenu-collapse"> <i class="nav-hdr-btn ti-align-left"></i>
				</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown user_profile">
					<div class="dropdown-toggle" data-toggle="dropdown">
						<img alt="user" src="<%=request.getContextPath() %>/adminResources/image/avatar.png" height=35px width="35px">
					</div>
					<ul class="dropdown-menu pullDown">
						<li class="body">
							<ul class="user_dw_menu">
								<li><a href="profile" > <i
										class="material-icons">person</i>Profile
								</a></li>
								<li><a href="/logout"> <i class="material-icons">power_settings_new</i>Logout
								</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="fullscreen"><a href="javascript:;"
					class="fullscreen-btn"> <i class="nav-hdr-btn ti-fullscreen"></i>
				</a></li>
				

			</ul>
		</div>
	</div>
</nav>