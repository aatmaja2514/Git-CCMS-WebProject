<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CCMS</title>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
 <link href="assets/styles.css" rel="stylesheet">
 <link href="assets/post-login.css" rel="stylesheet">
 
</head>

<body>
<%
  	String url = "jdbc:mysql://localhost:3306/ccms";
	String user = "root";
	String pwd = "Aditya@27";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String session_Club_Id = session.getAttribute("Club_Id").toString();
  %>
    <header id="coach-header" class="d-flex align-items-center">
      <!-- <div class="container d-flex align-items-center justify-content-between">  -->
    
           <!--<a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
          <!-- Uncomment below if you prefer to use a text logo -->
          <h1 class="logo"><a href="index.html">SPORTIFY</a></h1>
          <!-- <img src="assets/images/logo1-removebg.png" alt="" width="130" height="100"> -->
        <!-- </div>   -->
    </header> 
   <div class="wrapper">
       <div class="sidebar">
            <div class="clublogo">
                <img src="assets/images/logo1-removebg.png" alt="" >
                 <%
                Statement abc = con.createStatement();
                ResultSet ab = abc.executeQuery("SELECT Club_Name FROM clubs WHERE Club_Id = '" + session_Club_Id + "'");
                if(ab.next())
                {
                	
                
                %>
                <h4><%= ab.getString(1) %><% } %></h4>
            </div>
            
            <ul>
                <li class="active"><a href=""><i class="bi bi-clipboard-data"></i>Dashboard</a></li>
                <li><a href="coach_notifications.jsp"><i class="bi bi-bell-fill"></i>Notifications</a></li>
                <li><a href="all_cmembers.jsp"><i class="bi bi-people-fill"></i>Club Members</a></li>
                <li><a href="all_cteam.jsp"><i class="bi bi-person-check-fill"></i>Team</a></li>
                <li><a href="challenge.jsp"><i class="bi bi-bullseye"></i>Challenge</a></li>
                <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li>
                <li><a href="coach_profile.jsp"><i class="bi bi-person-circle"></i>My Profile</a></li>
            </ul>
       </div>
  <%
  
  String session_email = session.getAttribute("Email").toString();


   Statement st = con.createStatement();
   ResultSet rs = st.executeQuery("Select * from coach WHERE Email = '" + session_email +"'");
 
   while(rs.next())
   {
 %>
      <div class="coach-dashboard">
        <div class="welcome">welcome  <c:out value="${sessionScope.user_role}"/>, <%= rs.getString(3) %><%} %></div>
        <div class="div1">
        <%
        
        String count = "SELECT COUNT(*) FROM member Where Club_Id = '" + session_Club_Id +"'";
        ResultSet c = st.executeQuery(count);
       
       while(c.next())
       {
    	   Statement pqr = con.createStatement();
    	   String count1 = "SELECT COUNT(*) FROM member WHERE Status = 'T' AND Club_Id = '" + session_Club_Id +"'";
           ResultSet c1 = pqr.executeQuery(count1);
           while(c1.next())
           {
       %>
          <button class="count-container club-members">
              Total Members 
              <br><span id="member-count"><%= c.getString(1) %></span>
          </button>
          <button class="count-container team-members">
              Team Formed
              <br><span id="team-count"><%= c1.getString(1) %> <%}} %> </span>
          </button>
        </div>
        <div class="div2">
          <button class="count-container team-req">
            Team Requests 
          <br><span id="team-req-count"> 30 </span>
          </button>
          <button class="count-container challenge">
              Challenge Requests
              <br><span id="challenge-count">30 </span>
          </button>
        </div>
        
        <div class="profile">
          <div class="profile-container">
            <div class="divider"></div>
            <div class="head">My profile</div>
            <div class="divider"></div>

            <div class="profile-div1">
              <div class="profile-img">
                 <img src="assets/images/profile1.jfif" alt=""> 
              </div>
            
              <div class="profile-content">
              <%
               Statement st1 = con.createStatement();
               ResultSet rs1 = st1.executeQuery("Select Coach_Name, Email, Contact, Age, Experience from coach WHERE Club_Id = '"+ session_Club_Id +"' AND Status = 'Head'");
        		while(rs1.next())
        		{
       			%>
                <dl class="row">

                  <!-- <dt class="col-sm-4">Club</dt>
                  <dd class="col-sm-6">ClubName</dd> -->

                  <dt class="col-sm-5">Name</dt>
                  <dd class="col-sm-6"> <%= rs1.getString(1) %></dd>
                
                  <dt class="col-sm-5">Email Id</dt>
                  <dd class="col-sm-6">
                   <%= rs1.getString(2) %>
                    <!-- <p>Donec id elit non mi porta gravida at eget metus.</p> -->
                  </dd>
                
                  <dt class="col-sm-5">Contact</dt>
                  <dd class="col-sm-6"><%= rs1.getString(3) %></dd>

                  <dt class="col-sm-5">Age</dt>
                  <dd class="col-sm-6"> <%= rs1.getString(4) %> yrs</dd>

                  <dt class="col-sm-5">Experience</dt>
                  <dd class="col-sm-6"> <%= rs1.getString(5) %></dd>
                  <%} %>
                </dl> 
  
              </div>
            <!-- profile content -->

            <div class="profile-session">

              <div class="subcoaches">
                <div class="divider1"></div>
                <h5>Club coaches</h5>
  
                <dl class="row">
  					<%
		               Statement st2 = con.createStatement();
		               ResultSet rs2 = st2.executeQuery("Select Coach_Name from coach WHERE Club_Id = '"+ session_Club_Id +"' AND Status = 'Batting'");
		        		if(rs2.next())
		        		{
		        			if(!rs2.getString(1).equals(""))
		        			{%>
       							<dt class="col-sm-4">Batting</dt>
                  				<dd class="col-sm-6"><%= rs2.getString(1) %></dd>
  							<%}
		        		}
		        			else
		        			{
		        			%>
		        			<dt class="col-sm-4">Batting</dt>
                  			<dd class="col-sm-6">N.A.</dd>
		        		<%} %>
  					<%
		               Statement st3 = con.createStatement();
		               ResultSet rs3 = st3.executeQuery("Select Coach_Name from coach WHERE Club_Id = '"+ session_Club_Id +"' AND Status = 'Fielding'");
		               if(rs3.next())
		        		{
		        			if(!rs3.getString(1).equals(""))
		        			{%>
      							<dt class="col-sm-4">Fielding</dt>
                 				<dd class="col-sm-6"><%= rs3.getString(1) %></dd>
 							<%}
		        		}
		        			else
		        			{
		        			%>
		        			<dt class="col-sm-4">Fielding</dt>
                 			<dd class="col-sm-6">N.A.</dd>
		        		<%} %>
 					<%
		               Statement st4 = con.createStatement();
		               ResultSet rs4 = st4.executeQuery("Select Coach_Name from coach WHERE Club_Id = '"+ session_Club_Id +"' AND Status = 'Bowling'");
		               if(rs4.next())
		        		{
		        			if(!rs4.getString(1).equals(""))
		        			{%>
     							<dt class="col-sm-4">Bowling</dt>
                				<dd class="col-sm-6"><%= rs4.getString(1) %></dd>
							<%}
		        		}
		        			else
		        			{
		        			%>
		        			<dt class="col-sm-4">Bowling</dt>
                			<dd class="col-sm-6">N.A.</dd>
		        		<%} %>
		           
                </dl>
              </div>

              <div class="divider1"></div>
              <h5>practise sessions</h5>

              <dl class="row">

                <dt class="col-sm-4">Team</dt>
                <dd class="col-sm-6">ClubName</dd> 

                <dt class="col-sm-4">Members</dt>
                <dd class="col-sm-6">Coachname</dd>

                <dt class="col-sm-4">Team</dt>
                <dd class="col-sm-6">ClubName</dd> 

                <dt class="col-sm-4">Members</dt>
                <dd class="col-sm-6">Coachname</dd>

              </dl>

              <button class="edit-coach">Edit</button> 
            </div>

          </div>
          <!-- profile-div1 -->
          </div>
        </div>  

        <script>
          google.charts.load('current', {'packages':['corechart']});
          google.charts.setOnLoadCallback(drawChart);

          function drawChart() {

            var data = google.visualization.arrayToDataTable([
            	<%
                String pcount = "SELECT COUNT(*) FROM member Where Club_Id = '" + session_Club_Id +"'";
                ResultSet s = st.executeQuery(pcount);
                
                while(s.next())
                {
                	Statement st10 = con.createStatement();
                	String tcount = "SELECT COUNT(*) FROM member WHERE Status = 'T' AND Club_Id = '" + session_Club_Id +"'";
                    ResultSet s1 = st10.executeQuery(tcount);
		            while(s1.next())
		            {
		            %>
             ['Task', 'Hours per Day'],
             ['Total Members', <%= s.getString(1) %>],
             ['Team Formed',   <%= s1.getString(1) %><%}} %>],
             ['Team Requests',     1],
             ['Challenge Requests',  2],
            ]);

            var options = {
              title: 'My Daily Activities'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

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
            &copy; Copyright <strong>Sportify Cricket Academy</strong>. All Rights Reserved
          </div>
          <div class="credits">
            
            
          </div>
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