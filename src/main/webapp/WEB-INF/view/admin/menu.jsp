<div class="menu">
	<ul class="list">


		<li>
			<div class="sidebar-profile clearfix">
				<div class="profile-img">
					<img
						src="<%=request.getContextPath()%>/adminResources/image/avatar.png"
						alt="profile">
				</div>
				<div class="profile-info">
					<h3>Admin</h3>
					<p>Welcome Admin !</p>
				</div>
			</div>
		</li>

		<li class="active"><a href="index"> <i
				class="menu-icon ti-home"></i> <span>Dashboard</span>
		</a></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-user"></i> <span>Manage User</span>
		</a>
			<ul class="ml-menu">
				<li><a href="viewUser">View User</a></li>
			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-headphone"></i> <span>Manage Complaint</span>
		</a>
			<ul class="ml-menu">
				<li><a href="viewComplain">View Complaint</a></li>

			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-star"></i> <span>Manage Feedback</span>
		</a>
			<ul class="ml-menu">
				<li><a href="viewFeedback">View Feedback</a></li>
			</ul></li>
		<li class="active"><a href="/logout"> <i
				class="menu-icon ti-power-off"></i> <span>Logout</span>
		</a></li>
	</ul>
</div>