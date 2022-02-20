<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.util.Calendar"%>
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
	String pwd = "271879";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String session_Club_Id = session.getAttribute("Club_Id").toString();
	String mem_email = session.getAttribute("Email").toString();
	int flag = 0;
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
                <h4>club name</h4>
            </div>
            
            <ul>
            
         
                
                <!-- <li class="active"><a href=""><i class="bi bi-clipboard-data"></i>Dashboard</a></li> -->
                <li class="active"><a href=""><i class="bi bi-bell-fill"></i>Notifications</a></li>
                <li><a href=""><i class="bi bi-clipboard-check"></i>Club Coach</a></li>
                <li><a href="all_mmembers.html"><i class="bi bi-people-fill"></i>Club Members</a></li>
                <li><a href=""><i class="bi bi-person-check-fill"></i>Team</a></li>
                <li><a href="cart.html"><i class="bi bi-cart3"></i>My Cart</a></li>
                <!-- <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li> -->
                <li><a href=""><i class="bi bi-person-circle"></i>Edit My Profile</a></li>
            </ul>
       </div>

        
        <div class="member-login">
            <!-- <div class="member-welcome">
                Hi, playername! start watever.. 
            </div> -->
            <div class="member-noti">
                <div class="tabs">
                  <div class="active" onclick="window.location.href='member_notifications.jsp'" >All</div> 
                  <div class="divider-tabs"></div>
                  <div onclick="window.location.href='member_notifications.jsp'" >Matches</div> 
                  <div class="divider-tabs"></div>
                  <div onclick="window.location.href='member_notifications.jsp'" >By Coach</div> 
                </div>
                <div class="noti-content">
                    <table class="table table-sm table-dark">
                        <thead>
                          <tr>
                            <tr>
					                      <th scope="col">#</th>
					                      <th scope="col">Description</th>
					                      <th scope="col">Date</th>
					                      <th scope="col">Time</th>
					                      <th scope="col"></th>
					                      <th scope="col"></th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                    try
                    {
                    	//ststus s swap
                    	Statement st2 = con.createStatement();
        	      	  	ResultSet rs2 = st2.executeQuery("SELECT Member_Id,Email FROM member WHERE Status = 'T' OR Status = 'S' AND Club_Id = '" + session_Club_Id + "'");
        	      	  	while(rs2.next())
        	      	  	{
        	      	  		if(rs2.getString(2).equals(mem_email))
        	      	  		{
        	      	  			flag = 1;
        	      	  			break;
        	      	  		}
        	      	  	}
        	      	  	if(flag == 1)
        	      	  	{
        	      	  		Statement st = con.createStatement();
        		      	  	ResultSet rs= st.executeQuery("Select * FROM notifications_team WHERE Visibility = '"+ session_Club_Id +"' ORDER BY Notification_No DESC");
        		      	  	
	        	      	  		Statement st1 = con.createStatement();
	        		      	  	ResultSet rs1 = st1.executeQuery("Select COUNT(*) FROM notifications_team WHERE Visibility = '"+ session_Club_Id +"'");
	        		      	  	if(rs1.next())
	        		      	  	{
	        			      	  	for(int i = 1; i <= rs1.getInt(1); i++)
	        			      	  	{
	        			      	  		while(rs.next())
	        			      	  		{
		        			      	  		%>
		        	                          <tr>
		        	                            <th scope="row"><%= i++ %></th>
		        	                            <td><%= rs.getString(3) %></td>
		        	                            <td><%= rs.getString(4) %></td>
		        	                            <td><%= rs.getString(5) %></td>
		        	                            <%
		        	                            if(rs.getString(6).equals("match"))
							                     {
		        	                            %>
		        	                            <td><button type="submit"><a href = "approve_challenge_team.jsp?member_id=<%= rs2.getString(1) %>"><i class="bi bi-check"></i> Accept</a></button></td>
							                    <td><button type="submit"><a href = "approve_challenge_team.jsp?member_id=<%= rs2.getString(1) %>"><i class="bi bi-x"></i> Reject</a></button></td>
							                    <%}%>
		        	                          </tr>
		        	                        
		        	                       
		        	                      <%
	        			      	  		}
	        	                    }
	        	      		} 
        	      	  	}
        	      	  	else
        	      	  	{
	        	      	  	Statement st = con.createStatement();
	    		      	  	ResultSet rs= st.executeQuery("Select * FROM notifications_members WHERE Visibility = '"+ session_Club_Id +"' OR Visibility = 'all' ORDER BY Notification_No DESC");
	    		      	  	
	        	      	  		Statement st1 = con.createStatement();
	        		      	  	ResultSet rs1 = st1.executeQuery("Select COUNT(*) FROM notifications_members WHERE Visibility = '"+ session_Club_Id +"' OR Visibility = 'all'");
	        		      	  	if(rs1.next())
	        		      	  	{
	        			      	  	for(int i = 1; i <= rs1.getInt(1); i++)
	        			      	  	{
	        			      	  		while(rs.next())
	        			      	  		{
		        			      	  		%>
		        	                          <tr>
		        	                            <th scope="row"><%= i++ %></th>
		        	                            <td><%= rs.getString(3) %></td>
		        	                            <td><%= rs.getString(4) %></td>
		        	                            <td><%= rs.getString(5) %></td>
		        	                            <td></td>
		        	                            <td></td>
		        	                          </tr>
		        	                      <%
	        			      	  		}
	        	                    }
	        	      			} 
        	      	  	}
        	                      
                    }
                    catch(Exception e)
                    {
                    	System.out.println(e);
                    }%>
                        
	        	      	  </tbody>
		        	    </table> 		
        	 
                </div>
            </div>
            <div class="member-profile">
              <div class="divider"></div>
              <div class="title">My profile</div>
              <div class="divider"></div>
              <div class="status">Status : Member</div>
              <div class="profile-image">
                <img src="assets/images/player1.jpg" alt="" height="200" width="200">
              </div>
              
              <div class="details">
                <dl class="row">

                   <dt class="col-sm-4">Club</dt>
                  <dd class="col-sm-6">ClubName</dd> 

                  <dt class="col-sm-4">Name</dt>
                  <dd class="col-sm-6">name</dd>
                
                  <dt class="col-sm-4">Email Id</dt>
                  <dd class="col-sm-6">
                    abc@gmail.com
                    <!-- <p>Donec id elit non mi porta gravida at eget metus.</p> -->
                  </dd>
                
                  <dt class="col-sm-4">Contact</dt>
                  <dd class="col-sm-6">9876567890</dd>

                  <dt class="col-sm-4">Age</dt>
                  <dd class="col-sm-6">17 yrs</dd>

                  <dt class="col-sm-4">Interest</dt>
                  <dd class="col-sm-8">Batsman</dd>

                  <dt class="col-sm-4">Session</dt>
                  <dd class="col-sm-8">ID - TIME</dd>

                </dl> 

                <div class="edit-button">
                  <button>Edit</button>
                </div>
  
              </div>
              <!-- details -->
              </div>
            </div>
        </div>  

       
      </div>
      <!-- sidebar -->

    </div>
    <!-- wraper -->

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