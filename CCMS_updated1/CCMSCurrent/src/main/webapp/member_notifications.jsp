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
	String date_time = "";
	String venue = "";
	String chid = "";
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
                <li class="active"><a href="member_notifications.jsp"><i class="bi bi-bell-fill"></i>Notifications</a></li>
                <li><a href="member_coach_profile.jsp"><i class="bi bi-clipboard-check"></i>Club Coach</a></li>
                <li><a href="all_mmembers.jsp"><i class="bi bi-people-fill"></i>Club Members</a></li>
                <li><a href="all_mteam.jsp"><i class="bi bi-person-check-fill"></i>Team</a></li>
                <!--<li><a href="cart.html"><i class="bi bi-cart3"></i>My Cart</a></li>
                 <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li> -->
                <li><a href="member_profile.jsp"><i class="bi bi-person-circle"></i>Edit My Profile</a></li>
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
                        String mem_id = "";
                    try
                    {
                    	//ststus s swap
                    	Statement st2 = con.createStatement();
        	      	  	ResultSet rs2 = st2.executeQuery("SELECT Member_Id,Email FROM member WHERE Status = 'T' AND Club_Id = '" + session_Club_Id + "'");
        	      	  	while(rs2.next())
        	      	  	{
        	      	  		if(rs2.getString(2).equals(mem_email))
        	      	  		{
        	      	  			mem_id = rs2.getString(1);
        	      	  			flag = 1;
        	      	  			break;
        	      	  		}
        	      	  	}
        	      	  	
        	      	  Statement st5 = con.createStatement();
	      	      	  ResultSet rs55 = st5.executeQuery("SELECT Member_Id,Email,Challenge_Id FROM member WHERE Status = 'MS' AND Club_Id = '" + session_Club_Id + "'");
	      	      	  	while(rs55.next())
	      	      	  	{
	      	      	  		if(rs55.getString(2).equals(mem_email))
	      	      	  		{
	      	      	  		 	mem_id = rs55.getString(1);
	      	      	  			chid = rs55.getString(3);
	      	      	  			flag = 2;
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
	        			      	  			if(!rs.getString(7).equals("")){
			        			      	  		Statement st6 = con.createStatement();
		                		      	  		ResultSet rs6= st6.executeQuery("Select Venue_id, Challenge_Date, Challenge_Time FROM challenge WHERE Challenge_Id = '"+ rs.getString(7) +"'");
			        			      	  		if(rs6.next()){
				        			      	  		date_time = " on " + rs6.getString(2) + ", " + rs6.getString(3);
				        			      	  		
				        			      	  		Statement st9 = con.createStatement();
		                		      	  			ResultSet rs9= st9.executeQuery("SELECT Venue_Name, Venue_Address FROM venue WHERE Venue_Id = '"+ rs6.getString(1) +"'");
		                		      	  			rs9.next();
		                		      	  			venue = " at " + rs9.getString(2) + ", " + rs6.getString(2);
			        			      	  		}
	        			      	  			}
	        			      	  			
                		      	  			Statement st3 = con.createStatement();
	                		      	  		ResultSet rs3= st3.executeQuery("Select Email FROM member WHERE Member_Id = (SELECT Member_Id FROM team WHERE Club_Id='"+ session_Club_Id +"')");
	                		      	  		int flag00 = 0;
	                		      	  		while(rs3.next()){
	                		      	  			if(rs3.getString(1).equals(mem_email)){
	                		      	  				flag00 = 1;
	                		      	  			}
	                		      	  		}
	                		      	  		if(flag00 == 1)
	                		      	  		{
		                		      	  		%>
			        	                          <tr>
			        	                            <th scope="row"><%= i++ %></th>
			        	                            <td><%= rs.getString(3) + date_time + venue%></td>
			        	                            <td><%= rs.getString(4) %></td>
			        	                            <td><%= rs.getString(5) %></td>
			        	                            <%
			        	                            if(rs.getString(6).equals("match"))
								                     {
				        	                            %>
				        	                            <td>You have approved for this match.</td>
									                    <td></td>
									                    <%
								                    }
								                    %>
			        	                          </tr>
			        	                        
			        	                       
			        	                      	<%
	                		      	  		}
	                		      	  		else
	                		      	  		{
			        			      	  		%>
			        	                          <tr>
			        	                            <th scope="row"><%= i++ %></th>
			        	                            <td><%= rs.getString(3)+ date_time + venue %></td>
			        	                            <td><%= rs.getString(4) %></td>
			        	                            <td><%= rs.getString(5) %></td>
			        	                            <%
			        	                            if(rs.getString(6).equals("match"))
								                     {
			        	                            	
			        	                            %>
			        	                            <td><button type="submit"><a href = "team_approval.jsp?member_id=<%= mem_id %>&status=approved"><i class="bi bi-check"></i> Accept</a></button></td>
								                    <td><button type="submit"><a href = "team_approval.jsp?member_id=<%= mem_id %>&status=disapproved"><i class="bi bi-x"></i> Reject</a></button></td>
								                    <%}%>
			        	                          </tr>
			        	                        
			        	                       
			        	                      	<%
	                		      	  		}
	        			      	  		}
	        	                    }
	        	      		} 
        	      	  	}
        	      	  	else if(flag == 0)
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
		        			      	  		if(!rs.getString(7).equals("")){
			        			      	  		Statement st6 = con.createStatement();
		                		      	  		ResultSet rs6= st6.executeQuery("Select Venue_id, Challenge_Date, Challenge_Time FROM challenge WHERE Challenge_Id = '"+ rs.getString(7) +"'");
			        			      	  		if(rs6.next()){
				        			      	  		date_time = " on " + rs6.getString(2) + ", " + rs6.getString(3);
				        			      	  		
				        			      	  		Statement st9 = con.createStatement();
		                		      	  			ResultSet rs9= st9.executeQuery("SELECT Venue_Name, Venue_Address FROM venue WHERE Venue_Id = '"+ rs6.getString(1) +"'");
		                		      	  			rs9.next();
		                		      	  			venue = " at " + rs9.getString(2) + ", " + rs6.getString(2);
			        			      	  		}
	        			      	  			}
		        			      	  		
			        			      	  	Statement st3 = con.createStatement();
	                		      	  		ResultSet rs3= st3.executeQuery("Select Email FROM member WHERE Member_Id = (SELECT Member_Id FROM team WHERE Club_Id='"+ session_Club_Id +"')");
	                		      	  		int flag00 = 0;
	                		      	  		while(rs3.next()){
	                		      	  			if(rs3.getString(1).equals(mem_email)){
	                		      	  				flag00 = 1;
	                		      	  			}
	                		      	  		}
	                		      	  		if(flag00 == 1)
	                		      	  		{
			        			      	  		%>
			        	                          <tr>
			        	                            <th scope="row"><%= i++ %></th>
			        	                            <td><%= rs.getString(3) + date_time + venue %></td>
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
        	      	  	
        	      	  	else if(flag == 2)
        	      	  	{
        	      	  		//team side
        	      	  		Statement st0 = con.createStatement();
        		      	  	ResultSet rs0= st0.executeQuery("Select * FROM notifications_team WHERE Visibility = '"+ session_Club_Id +"' AND Challenge_Id = '" + chid + "' AND Noti_Category = 'match'  ORDER BY Notification_No DESC");
        		      	  	while(rs0.next())
	        			    {
	        			      if(!rs0.getString(7).equals(""))
	        			      {
			        				Statement st06 = con.createStatement();
		                		 	ResultSet rs06= st06.executeQuery("Select Venue_id, Challenge_Date, Challenge_Time FROM challenge WHERE Challenge_Id = '"+ chid +"'");
			        				if(rs06.next())
			        				{
					        			date_time = " on " + rs06.getString(2) + ", " + rs06.getString(3);
					        			      	  		
					        			Statement st09 = con.createStatement();
			                		    ResultSet rs09= st09.executeQuery("SELECT Venue_Name, Venue_Address FROM venue WHERE Venue_Id = '"+ rs06.getString(1) +"'");
			                		    rs09.next();
			                		   	venue = " at " + rs09.getString(2) + ", " + rs06.getString(2);
			        			    }
	        			     }
	        			      	  			
                		      	  			Statement st3 = con.createStatement();
	                		      	  		ResultSet rs3= st3.executeQuery("Select Email FROM member WHERE Member_Id = (SELECT Member_Id FROM team WHERE Club_Id='"+ session_Club_Id +"')");
	                		      	  		int flag00 = 0;
	                		      	  		while(rs3.next()){
	                		      	  			if(rs3.getString(1).equals(mem_email)){
	                		      	  				flag00 = 1;
	                		      	  			}
	                		      	  		}
	                		      	  		if(flag00 == 1)
	                		      	  		{
		                		      	  		%>
			        	                          <tr>
			        	                            <th scope="row">*</th>
			        	                            <td><%= rs0.getString(3) + date_time + venue%></td>
			        	                            <td><%= rs0.getString(4) %></td>
			        	                            <td><%= rs0.getString(5) %></td>
			        	                            <%
			        	                            if(rs0.getString(6).equals("match"))
								                     {
				        	                            %>
				        	                            <td>You have approved for this match.</td>
									                    <td></td>
									                    <%
								                    }
								                    %>
			        	                          </tr>
			        	                        
			        	                       
			        	                      	<%
	                		      	  		}
	                		      	  		else
	                		      	  		{
			        			      	  		%>
			        	                          <tr>
			        	                            <th scope="row">*</th>
			        	                            <td>You have been selected as team player for this match.<%= rs0.getString(3)+ date_time + venue %></td>
			        	                            <td><%= rs0.getString(4) %></td>
			        	                            <td><%= rs0.getString(5) %></td>
			        	                            <%
			        	                            if(rs0.getString(6).equals("match"))
								                     {
			        	                            	
			        	                            %>
			        	                            <td><button type="submit"><a href = "team_approval.jsp?member_id=<%= mem_id %>&status=approved"><i class="bi bi-check"></i> Accept</a></button></td>
								                    <td><button type="submit"><a href = "team_approval.jsp?member_id=<%= mem_id %>&status=disapproved"><i class="bi bi-x"></i> Reject</a></button></td>
								                    <%
								                    }
								                    %>
			        	                          </tr>
			        	                        
			        	                       
			        	                      	<%
	                		      	  		}
	        			      	  		}
	        	                    
	        	      		
    		      	  		
        	      	  		
        	      	  		
        	      	  		//member side
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
	        			      	  		if(!rs.getString(7).equals(""))
	        			      	  		{
		        			      	  		Statement st6 = con.createStatement();
	                		      	  		ResultSet rs6= st6.executeQuery("Select Venue_id, Challenge_Date, Challenge_Time FROM challenge WHERE Challenge_Id = '"+ rs.getString(7) +"'");
		        			      	  		if(rs6.next())
		        			      	  		{
			        			      	  		date_time = " on " + rs6.getString(2) + ", " + rs6.getString(3);
			        			      	  		
			        			      	  		Statement st9 = con.createStatement();
	                		      	  			ResultSet rs9= st9.executeQuery("SELECT Venue_Name, Venue_Address FROM venue WHERE Venue_Id = '"+ rs6.getString(1) +"'");
	                		      	  			rs9.next();
	                		      	  			venue = " at " + rs9.getString(2) + ", " + rs6.getString(2);
		        			      	  		}
        			      	  			}
	        			      	  		%>
	        	                          <tr>
	        	                            <th scope="row"><%= i++ %></th>
	        	                            <td><%= rs.getString(3) + date_time + venue %></td>
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
                    	System.out.println(e+"ji");
                    }%>
                        
	        	      	  </tbody>
		        	    </table> 		
        	 
                </div>
            </div>
            
            <%
            String status = "";
            PreparedStatement st10 = con.prepareStatement("SELECT * FROM member WHERE Email = ?");
            st10.setString(1, mem_email);
            ResultSet rs10 = st10.executeQuery();
            rs10.next();
            %>
            
            <div class="member-profile">
              <div class="divider"></div>
              <div class="title">My profile</div>
              <div class="divider"></div>
             
              <%
              if(rs10.getString(11).equals("M") || rs10.getString(11).equals("S")){
            	  status = "Member";
              }
              else{
            	  status = "Team";
              }
              %>
              
              <div class="status">Status : <%= status %></div>
              <div class="profile-image">
                <img src="assets/images/player1.jpg" alt="" height="200" width="200">
              </div>
              
              <div class="details">
                <dl class="row">
				
				<%
				PreparedStatement st11 = con.prepareStatement("SELECT Club_Name FROM clubs WHERE Club_Id = ?");
	            st11.setString(1, rs10.getString(8));
	            ResultSet rs11 = st11.executeQuery();
	            rs11.next();
				%>
				
                   <dt class="col-sm-4">Club</dt>
                  <dd class="col-sm-6"><%= rs11.getString(1) %></dd> 

                  <dt class="col-sm-4">Name</dt>
                  <dd class="col-sm-6"><%= rs10.getString(3) %></dd>
                
                  <dt class="col-sm-4">Email Id</dt>
                  <dd class="col-sm-6">
                    <%= rs10.getString(4) %>
                  </dd>
                
                  <dt class="col-sm-4">Contact</dt>
                  <dd class="col-sm-6"><%= rs10.getString(5) %></dd>

                  <dt class="col-sm-4">Age</dt>
                  <dd class="col-sm-6"><%= rs10.getString(6) %></dd>

                  <dt class="col-sm-4">Interest</dt>
                  <dd class="col-sm-8"><%= rs10.getString(10) %></dd>
				
				
					<%
					PreparedStatement st12 = con.prepareStatement("SELECT Start_Time, End_Time FROM session WHERE Session_Id = ?");
		            st12.setString(1, rs10.getString(9));
		            ResultSet rs12 = st12.executeQuery();
		            rs12.next();
					%>
					
                  <dt class="col-sm-4">Session</dt>
                  <dd class="col-sm-8"><%= rs10.getString(9) + " - " + rs12.getString(1) +" to " + rs12.getString(2) %></dd>

                </dl> 

                <div class="edit-button">
                  <button onclick="window.location = 'member_profile.jsp'">Edit</button>
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