<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>CCMS</title>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="assets/styles.css" rel="stylesheet">
<link href="assets/post-login.css" rel="stylesheet">

</head>

<body>
	<header id="coach-header" class="d-flex align-items-center">
		<!-- <div class="container d-flex align-items-center justify-content-between">  -->

		<!--<a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
		<!-- Uncomment below if you prefer to use a text logo -->
		<h1 class="logo">
			<a href="index.html">SPORTIFY</a>
		</h1>
		<!-- <img src="assets/images/logo1-removebg.png" alt="" width="130" height="100"> -->
		<!-- </div>   -->
	</header>
	<%
	String session_email = session.getAttribute("Email").toString();
	String url = "jdbc:mysql://localhost:3306/ccms";
	String user = "root";
	String pwd = "271879";

	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection con = DriverManager.getConnection(url, user, pwd);

	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from admin WHERE Email = '" + session_email + "'");

	while (rs.next()) {
	%>
	<div class="wrapper">
		<div class="sidebar">
			<div class="clublogo">
				<img src="assets/images/logo1-removebg.png" alt="">
				<h4>admin</h4>
			</div>

			<ul>
				<li class="active"><a href="admin_login.jsp"><i class="bi bi-clipboard-data"></i>Dashboard</a></li>
				<li><a href="admin_notifications.jsp"><i class="bi bi-bell-fill"></i>Notifications Tables</a></li>
				<li><a href=""><i class="bi bi-people-fill"></i>All Members</a></li>
				<!-- <li><a href=""><i class="bi bi-person-check-fill"></i>Team</a></li> -->
				<!-- <li><a href="challenge.html"><i class="bi bi-bullseye"></i>Challenge</a></li> -->
				<!-- <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li> -->
				<li><a href="admin_all_clubs.jsp"><i class="bi bi-filter-square-fill"></i>All Clubs</a></li>
				<li><a href=""><i class="bi bi-cart-plus"></i>Manage Inventory</a></li>
				<li><a href="admin_profile.jsp"><i class="bi bi-person-circle"></i>Edit Profile</a></li>
			</ul>
		</div>



		<div class="coach-dashboard">
			<div class="welcome">
				welcome
				<c:out value="${sessionScope.user_role}" />
				,
				<%=rs.getString(3)%></div>
			<div class="div1">
				<button class="count-container club-members">
					Total Members <br>
					<span id="member-count"> 30 </span>
				</button>
				<button class="count-container team-members">
					Total Clubs <br>
					<span id="team-count">30 </span>
				</button>
			</div>
			<div class="div2">
				<button class="count-container team-req">
					Club Requests <br>
					<span id="team-req-count"> 30 </span>
				</button>
				<button class="count-container challenge">
					Challenge Requests <br>
					<span id="challenge-count">30 </span>
				</button>
			</div>

			<div class="admin-profile">
				<div class="admin-profile-container">


					<div class="post-noti-admin">
						<form method="post">
			                <textarea placeholder="Enter message to post..." name="admin_msg_to_post"></textarea>
			                <button type="submit" name = "to_coaches" formaction="admin_post_noti.jsp?signal=to_coaches" >Post to coaches</button>
			                <button type="submit" name = "to_all" formaction = "admin_post_noti.jsp?signal=to_all">post To all</button>
			              </form>
					</div>

					<div class="divider"></div>
					<div class="head">My profile</div>
					<div class="divider"></div>

					<div class="admin-info">
						<dl class="row">

							<dt class="col-sm-4">Admin ID</dt>
							<dd class="col-sm-6"><%=rs.getString(2)%></dd>

							<dt class="col-sm-4">Name</dt>
							<dd class="col-sm-6"><%=rs.getString(3)%></dd>

							<dt class="col-sm-4">Email Id</dt>
							<dd class="col-sm-6">
								<%=rs.getString(4)%>
								<!-- <p>Donec id elit non mi porta gravida at eget metus.</p> -->
							</dd>

							<dt class="col-sm-4">Contact</dt>
							<dd class="col-sm-6"><%=rs.getString(6)%></dd>
							
							<%
							}
							%>
						</dl>
						<a href="admin_profile.jsp"><button	class="edit-admin-profile-btn">EDIT</button></a>
					</div>

				</div>
				<!-- admin-profile-container -->

				<div class="club-data">
					<div class="head">Club analysis</div>
					<div class="divider"></div>
					<div class="club-data-table">
						<table class="table table-dark table-borderless">

							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Club Name</th>
									<th scope="col">Current </th>
									<th scope="col">Maximum </th>
									<th scope="col">Percent </th>
								</tr>
							</thead>
							<%
							Statement st3 = con.createStatement();
							//ResultSet rs3 = st3.executeQuery("Select COUNT(*) from clubs");
							//while (rs3.next()) 
							//{
								//for (int i = 1; i <= rs3.getInt(1); i++) 
								//{
									Statement st1 = con.createStatement();
									ResultSet rs1 = st1.executeQuery("Select Club_Id,Club_Name, Max_Capacity from clubs WHERE Status = 'Approved'");

									while (rs1.next()) 
									{

								Statement st2 = con.createStatement();
								ResultSet rs2 = st2.executeQuery("SELECT COUNT(*) FROM member WHERE Club_Id = '" + rs1.getString(1) + "'");

								if (rs2.next()) 
								{
									float percent = (Float.parseFloat(rs2.getString(1)) / Float.parseFloat(rs1.getString(3))) * 100;
							%>
							<tbody>
								<tr>
									<th scope="row"><%=rs1.getString(1)%></th>
									<td><%=rs1.getString(2)%></td>
									<td><%=rs2.getString(1)%></td>
									<td><%=rs1.getString(3)%></td>
									<td><%=percent%>%</td>
								</tr>
								<%
								}
								}
								//}
								//}
								%>
							</tbody>
						</table>
					</div>
				</div>
				<!-- club-data -->
			</div>
			<!-- admin-profile -->

			<script>
				google.charts.load('current', {
					'packages' : [ 'corechart' ]
				});
				google.charts.setOnLoadCallback(drawChart);

				function drawChart() {

					var data = google.visualization.arrayToDataTable([
							[ 'Task', 'Hours per Day' ], [ 'Work', 11 ],
							[ 'Eat', 2 ], [ 'Commute', 2 ], [ 'Watch TV', 2 ],
							[ 'Sleep', 7 ] ]);

					var options = {
						title : 'My Daily Activities'
					};

					var chart = new google.visualization.PieChart(document
							.getElementById('piechart'));

					chart.draw(data, options);
				}
			</script>

			<div id="piechart"></div>

		</div>
	</div>
	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						&copy; Copyright <strong>Sportify Cricket Academy</strong>. All
						Rights Reserved
					</div>
					<div class="credits"></div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->


	<!-- Vendor JS Files -->
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/typed.js/typed.min.js"></script>
	<script src="assets/vendor/contact-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="./assets/scripts.js"></script>
</body>
</html>