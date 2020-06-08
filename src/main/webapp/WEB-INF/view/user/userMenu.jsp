
<%@page import="com.cwis.utils.Basemethods"%>
<div class="menu">
	<ul class="list">
		<li>
			<div class="sidebar-profile clearfix">
				<div class="profile-img">
					<i class="fas fa-user-alt"></i>
				</div>
				<div class="profile-info">
					<h3><%=Basemethods.getUser()%></h3>
				</div>
			</div>
		</li>

		<li class="active"><a href="index"> <i
				class="menu-icon ti-home"></i> <span>Dashboard</span>
		</a></li>


		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-home"></i> <span>Encrypt using
					following</span>
		</a>

			<ul class="ml-menu">
				<li class="active"><a href="textInput">Type Text</a></li>
				<li class="active"><a href="docInput">Upload docs</a></li>

			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-eye"></i> <span>View Encrypted Data</span>
		</a>
			<ul class="ml-menu">
				<li><a href="viewEncryptedImage">Encrypted Image</a></li>


			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-menu-alt"></i> <span>Decryption</span>
		</a>
			<ul class="ml-menu">
				<li><a href="decryption">Decrypt your data</a></li>
			</ul></li>

		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-headphone"></i> <span>Manage Complaint</span>
		</a>
			<ul class="ml-menu">
				<li><a href="addComplain">Post Complaint</a></li>
				<li><a href="userViewComplain">View Complaint</a></li>

			</ul></li>
		<li><a href="#" onClick="return false;" class="menu-toggle">
				<i class="menu-icon ti-star"></i> <span>Manage Feedback</span>
		</a>
			<ul class="ml-menu">
				<li><a href="addFeedback">Post Feedback</a></li>
				<li><a href="viewFeedback">View Feedback</a></li>
			</ul></li>
		<li class="active"><a href="/logout"> <i
				class="menu-icon ti-power-off"></i> <span>Logout</span>
		</a></li>
	</ul>
</div>