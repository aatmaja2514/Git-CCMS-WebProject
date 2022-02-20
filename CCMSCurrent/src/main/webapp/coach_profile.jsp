<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CCMS</title>
  
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
//current
  	String url = "jdbc:mysql://localhost:3306/ccms";
	String user = "root";
	String pwd = "271879";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	String session_Email_Id = session.getAttribute("Email").toString();
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
                ResultSet ab1 = abc.executeQuery("SELECT Club_Name FROM clubs WHERE Club_Id = '" + session_Club_Id + "'");
                if(ab1.next())
                {
                %>
                <h4><%= ab1.getString(1) %><% } %></h4>
        </div>
          
        <ul>
            <li><a href="coach.jsp"><i class="bi bi-clipboard-data"></i>Dashboard</a></li>
            <li><a href="coach_notifications.jsp"><i class="bi bi-bell-fill"></i>Notifications</a></li>
            <li><a href="all_cmembers.html"><i class="bi bi-people-fill"></i>Club Members</a></li>
            <li><a href="all_cteam.jsp"><i class="bi bi-person-check-fill"></i>Team</a></li>
            <li><a  href="challenge.jsp"><i class="bi bi-bullseye"></i>Challenge</a></li>
            <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li>
            <li class="active"><a href=""><i class="bi bi-person-circle"></i>My Profile</a></li>
        </ul>
      </div>
      <!-- sidebar -->

    <div class="edit-profile-container" id="coach-edit-profile">

        <div class="div1">
          <div class="profile-image">
            <img src="assets/images/profile1.jfif" alt="" height="150" width="150">
          </div>
          <div class="div2">
            
            <!-- form -->
            <form action="" method = "POST">
            <div class="club-dropdown">
            <%
            	Statement club_name = con.createStatement();
            	ResultSet cn = club_name.executeQuery("SELECT Club_Id FROM coach WHERE Email = '" + session_Email_Id + "'");
            	if(cn.next())
            	{
            		Statement a = con.createStatement();
                	ResultSet ab = a.executeQuery("SELECT Club_Name FROM clubs WHERE Club_Id = '" + cn.getString(1) + "'");
                	if(ab.next())
                	{
                		
                	
            %><h5>Head Coach of <%= ab.getString(1) %></h5>
              <!-- <input name = "club_name" type="text" class="form-control" id="club_name"  value = "" readonly> -->
              <%}} %>
            	
            </div>
            <a>Change profile photo</a>
            <input type="file" class="form-control" id="uploadpic">
          </div>
        </div>
        <!-- div1   -->

        <div class="title1">
            <div class="divider"></div>
            <h4> Personal information</h4>
        </div>
<%
Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery("SELECT * FROM coach WHERE Email = '" + session_Email_Id + "'");
if(rs1.next())
{
%>

        <div class="profile-form">
          <div class="form-div1">
            <div class="form-row">
              <div class="form-group col-md-10">
                <label for="inputname">Name</label>
                <input name = "coach_name" type="text" class="form-control" id="inputname" value = "<%= rs1.getString(3) %>" placeholder="Name" required>
              </div><br>
               <div class="form-group col-md-10">
                <label for="inputemail">Email</label>
                <input name = "coach_email" type="text" class="form-control" id="inputemail" value = "<%= rs1.getString(4) %>" placeholder="Email"  required >
              </div><br>
              <div class="form-group col-md-10">
                <label for="inputcontact">Contact</label>
                <input name = "coach_contact" type="text" class="form-control" id="inputcontact" value = "<%= rs1.getString(5) %>" placeholder="Contact" required>
              </div><br>
               <div class="form-group col-md-10">
                <label for="inputage">Age</label>
                <input name = "coach_age" type="number" class="form-control" id="inputage" value = "<%= rs1.getString(6) %>" placeholder="Age" required>
              </div><br>
               <div class="form-group col-md-10">
                <label for="inputexp">Experience</label>
                <input name = "coach_experience" type="text" class="form-control" id="inputage" value = "<%= rs1.getString(9) %>" placeholder="Experience" required>
              </div><br>
              </div>
              </div>
          
          <!-- form-div1 -->
          
        <div class="form-div2">
              <div class="form-row">
              <div class="form-group col-md-10">
                <label for="inputnewpassword">New Password</label>
                <input name = "coach_npass" type="password" class="form-control" id="inputnewpassword" placeholder="Leave blank if you don't want to edit previous password" >
              </div><br>
              <div class="form-group col-md-10">
                <label for="inputconfirmpassword">Confirm Password</label>
                <input name = "coach_cpass" type="password" class="form-control" id="inputconfirmpassword" placeholder="Confirm New Password">
              </div>
            </div>
          </div>
          <!-- div2 -->
        
        <%
          try
          {
        	  //how update email...session email how will we change??
        	  String coach_name = request.getParameter("coach_name");
        	  String coach_email = request.getParameter("coach_email");
        	  String coach_contact = request.getParameter("coach_contact");
        	  String coach_experience = request.getParameter("coach_experience");
        	  String coach_age = request.getParameter("coach_age");
        	  String coach_npass = request.getParameter("coach_npass");
        	  String coach_cpass = request.getParameter("coach_cpass");
        	  
        	  
        	  if(coach_name != null && coach_email != null  && coach_contact != null && coach_age != null && coach_experience != null )
        	  {
        		  
        		  //SELECT table1.column1, table2.column2 FROM table1, table2 WHERE table1.column1 = table2.column1;
        		  Statement s = con.createStatement();
        		  ResultSet rs2 = s.executeQuery("SELECT admin.Email, coach.Email, member.Email FROM admin,coach,member WHERE admin.Email = '" + coach_email + "' OR coach.Email = '" + coach_email + "' OR member.Email = '" + coach_email + "'");
        		  if(rs2.next())
        		  {
        			  Statement st4 = con.createStatement();
            		  ResultSet rs4 = s.executeQuery("SELECT Coach_Id FROM coach WHERE Email = '" + rs2.getString(2) + "' AND Coach_Id = '" + rs1.getString(2) + "'");
            		  if(!rs4.next())
            		  {
            			  %>
                		  <script>
               					alert("Email is already present");
               			  </script>
                		 <%
            		  }
            		  else
            		  {
            			  String update_profile = "UPDATE coach SET Coach_Name = ?, Contact = ?, Age = ?, Email =?, Experience = ?  WHERE Email = '" + session_Email_Id + "' ";
            			  
        				  PreparedStatement pst1 = con.prepareStatement(update_profile);
        				  pst1.setString(1,coach_name);
        				  pst1.setString(2,coach_contact);
        				  pst1.setString(3,coach_age);
        				  pst1.setString(4,coach_email);
        				  pst1.setString(5,coach_experience);
        				  session.setAttribute("Email",coach_email);
        				  pst1.executeUpdate();
        				 
        				  if(!coach_cpass.equals("") && !coach_npass.equals(""))
        				  //if(admin_cpass != null && admin_npass != null)
            			  {
            				  if(coach_npass.equals(coach_cpass))
            				  {
            					  Statement pwdupdate = con.createStatement();
            					  //pwdupdate.executeUpdate("UPDATE admin SET Password = '121' WHERE Email = '" + session.getAttribute("Email").toString() +"'");
            					  pwdupdate.executeUpdate("UPDATE coach SET Password = '" + coach_cpass + "' WHERE Email = '" + coach_email +"'");
            					  System.out.println("HII");
            					  System.out.println(coach_cpass + "abc");
            				  }
            				  else
            				  {%>
            					  <script>
            					  		alert("Both password fields should be same");
            					  </script>
            				  <%}
            			  }
            		  }
        		  	}
        		  
            	  response.sendRedirect("coach.jsp");

        	    
        	  }
          }
         
          
          catch(Exception e)
          {
        	  System.out.println(e);
          }
 
}
          %>
        
    
        </div>
        <!-- profile-form -->

      
      <div class="title2">
        <div class="divider"></div>
        <h4> Practise sessions</h4>
      </div>

      <div class="save-btn">
        <button type="submit">Update</button>
      </div>
    </form>

      </div>
      <!-- edit-profile-container -->
</div>
   
   <!-- wrapper -->

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