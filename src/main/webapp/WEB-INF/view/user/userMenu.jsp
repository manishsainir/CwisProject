<div class="menu">
	<ul class="list">
		<li>
			<div class="sidebar-profile clearfix">
				<div class="profile-img">
					<img
						src="<%=request.getContextPath()%>/adminResources/image/user.jpg"
						alt="profile">
				</div>
				<div class="profile-info">
					<h3>Sarah Deo</h3>
					<p>Welcome Admin !</p>
				</div>
			</div>
		</li>

		<li class="active"><a href="#" onClick="return false;"
			class="menu-toggle"> <i class="menu-icon ti-home"></i> <span>Home</span>
		</a>
			<ul class="ml-menu">
				<li class="active"><a href="index">Dashboard</a></li>
				<li class="active"><a href="secureData">YourData</a></li>
			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-user"></i> <span>ManageComplaint</span>
		</a>
			<ul class="ml-menu">
				<li><a href="userViewComplaint.jsp">viewComplaint</a></li>
				<li><a href="addComplaint">SendComplaint</a></li>
			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-eye"></i> <span>ManageFeedback</span>
		</a>
			<ul class="ml-menu">
				<li><a href="addFeedback">SendFeedback</a></li>
			</ul></li>
	</ul>
</div>