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
 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

 
  <link href="assets/styles.css" rel="stylesheet">
  <link href="assets/login-styles.css" rel="stylesheet">
  
  
</head>

<body class="login-body">
<%
//current
  	String url = "jdbc:mysql://localhost:3306/ccms";
	String user = "root";
	String pwd = "271879";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
  %>
  
  <%
  try{
	  Statement stg4 = con.createStatement();
	  ResultSet rs2 = stg4.executeQuery("SELECT Challenge_Id, Challenge_Date, Challenge_Time FROM challenge");
	  while (rs2.next()) 
	  {
	      String datetime = rs2.getString(2).concat(" ").concat(rs2.getString(3));
	      
	      SimpleDateFormat sdformat = new SimpleDateFormat("E, MMM dd yyyy h:mm a");
	      Date d2 = sdformat.parse(datetime);

	      Calendar cal = Calendar.getInstance();
	      Date current_date = sdformat.parse(sdformat.format(new Date()));
	      String current_date1 = sdformat.format(cal.getTime());
	      current_date = sdformat.parse(current_date1);

	      if (d2.compareTo(current_date) < 0) 
	      {
	    	  Statement stg5 = con.createStatement();
              stg5.executeUpdate("UPDATE challenge SET match_status = 'Finished' WHERE Challenge_Id = '" + rs2.getString(1) + "'");
              
              Statement stg6 = con.createStatement();
              stg6.executeUpdate("DELETE FROM team WHERE Challenge_Id = '" + rs2.getString(1) + "'");
              
             /* Statement stg7 = con.createStatement();
              ResultSet rs7 = stg7.executeQuery("SELECT Challenge_Id, Member_Id, Status FROM member");
              
              while(rs7.next())
              {
              	String str_chids = rs7.getString(1);
              	
                  String Array_chids[] = str_chids.split(" ");
                  
                  int i = 0;
                  for ( i = 0; i < Array_chids.length; i++) 
                  {
                  		Statement stg11 = con.createStatement();
                      	ResultSet rs11 = stg11.executeQuery("SELECT match_status FROM challenge WHERE Challenge_Id = '" + Array_chids[i] + "'");
                     	rs11.next();
                      	if(rs11.getString(1).equals("Finished"))
                      	{
                           if(i < 0 || i >= Array_chids.length) 
                           {
                      		break;
                           }
                       
                           String[] Array_chids_updated = new String[Array_chids.length - 1];
                       
                           for (int y = 0, k = 0; i < Array_chids.length; i++) 
                           {
                                if (y == i) 
                                {
                                    continue;
                                }
                       
                                Array_chids_updated[k++] = Array_chids[i];
                      		}
                           
                          StringBuffer strbuffer = new StringBuffer();
                          for(String str : Array_chids_updated) 
                          {
                          	strbuffer.append(str).append(" ");
                          }
                          
                          if(rs7.getString(3).equals("MS"))
                          {
                          	Statement update_ch_id = con.createStatement();
                          	update_ch_id.executeUpdate("UPDATE member SET Status = 'M', Challenge_Id = '" + strbuffer.toString() + "' WHERE Member_Id = '" + rs7.getString(2) + "'");
                          }
                          else if(rs7.getString(3).equals("TS"))
                          {
                          	Statement update_ch_id = con.createStatement();
                          	update_ch_id.executeUpdate("UPDATE member SET Status = 'T', Challenge_Id = '" + strbuffer.toString() + "' WHERE Member_Id = '" + rs7.getString(2) + "'");
                          }
                      }
                  }
              }
	          /*Statement post_challenge_member_status1 = con.createStatement();
	          post_challenge_member_status1.executeUpdate("UPDATE member SET Status = 'M' WHERE Status = 'MS' AND Challenge_Id = '" + rs2.getString(1) + "'");
	          
	          Statement post_challenge_member_status2 = con.createStatement();
	          post_challenge_member_status2.executeUpdate("UPDATE member SET Status = 'T' WHERE Status = 'TS' AND Challenge_Id = '" + rs2.getString(1) + "'");*/
	      }  
	  }
  }catch(Exception e){
	  System.out.println(e);
  }



%>
 <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

       <!--<a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
      <!-- Uncomment below if you prefer to use a text logo -->
      <h1 class="logo mr-auto"><a href="index.jsp">SPORTIFY</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="index.jsp#centertext">Home</a></li>
          <li><a class="nav-link scrollto" href="index.jsp#about">About</a></li>
          <li><a class="nav-link scrollto" href="clubs.jsp">Clubs</a></li>
          <li><a class="nav-link scrollto" href="#shop">Shop</a></li>
          <li><a class="nav-link scrollto" href="index.jsp#contact">Contact</a></li>
          <!-- <li><a class="nav-link scrollto" href="#admin">Admin</a></li> -->

          <!-- <li class="nav-link scrollto"><a href="#"><span>Log In as</span> <i class="bi bi-chevron-down"></i></a> -->
            <ul>
              <li class="nav-link scrollto dropdown"><a href="#"><span>Log In as</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                  <li><a href="coach.jsp">Coach</a></li>
                  <li><a href="#">Member/Team</a></li>
                  <li><a href="#">Administrator</a></li>
                </ul>
              </li>
              
            </ul>

        </ul>        
      </nav>
    </div>  
  </header> 

  <div class="login-container">
    <div class="forms-container">
      <div class="signin-signup">
        <form class="sign-in-form" method = "POST">
          <h2 class="title">Log In</h2>

          <span id="login-error"></span>
          <div class="input-field">
            <select name="role" id="role">
              <option value=""> Who are you ? </option>
              <option value="coach"> Coach </option>
              <option value="member_team"> Member/Team Member </option>
              <option value="admin"> Administrator </option>
            </select>
          </div>
          <div class="input-field">
            <i class="bi bi-person-fill"></i>
            <input type="text" name = "email" placeholder="Email" />
          </div>
          <div class="input-field">
            <i class="bi bi-lock-fill"></i>
            <input type="password" name = "pwd" placeholder="Password" />
          </div><br>
          <div>
            <input type="checkbox"> <span> Remember Me</span>
          </div>
          <input type="submit" value="Login" class="btn solid" /> 
          <div class="forgotpwd">
            <a href="forgot_pwd.jsp">Forgot Passowrd ?</a> 
          </div><br>
          <!-- <p class="social-text">Or Login with social platforms</p> -->
          <div class="social-media">
            <a href="#" class="social-icon">
              <i class="bi bi-facebook"></i>
            </a>
            <a href="#" class="social-icon">
              <i class="bi bi-twitter"></i>
            </a>
            <a href="#" class="social-icon">
              <i class="bi bi-google"></i>
            </a>
            <a href="#" class="social-icon">
              <i class="bi bi-linkedin"></i>
            </a>
          </div>
        </form>
        
        <%
				try
				{
					String cmta = request.getParameter("role");
				
					String email = request.getParameter("email");
					String password = request.getParameter("pwd");
					
					session.setAttribute("user_role",cmta);
					
					if(cmta.equals("coach"))
					{
						 String check_login = "Select Club_Id,Email,Password from coach where Email = ? AND Password = ? ";
						 PreparedStatement pst1 = con.prepareStatement(check_login);
						 pst1.setString(1, email);
						 pst1.setString(2, password);
						 ResultSet rs1 = pst1.executeQuery();
						 
						 if(rs1.next())
						 {
							 int flag = 0;
							 Statement st = con.createStatement();
							 ResultSet rs = st.executeQuery("SELECT Status FROM clubs WHERE Club_Id = '" + rs1.getString(1)+ "'");
							 rs.next();
							 if(rs.getString(1).equals("Pending") || rs.getString(1).equals("Disapproved"))
							 {
								 flag = 1;
							 }
							 
							 if(flag == 0){
								 session.setAttribute("Email",email);
								 session.setAttribute("Club_Id",rs1.getString(1));
								 response.sendRedirect("coach.jsp"); 
							 }
							 else
							 {
							 %>
								<script>
								//alert("Invalid");
								document.getElementById("login-error").innerHTML = "Your club is not approved. Please contact admin.";
								</script> 
							 <%}
						 }
						 else
						 {
						 %>
							<script>
							//alert("Invalid");
							document.getElementById("login-error").innerHTML = "Error occured.";
							</script> 
						 <%}
						 
					}
					else if(cmta.equals("member_team"))
					{
						 String check_login = "Select Club_Id,Email,Password from member where Email = ? AND Password = ?";
						 PreparedStatement pst1 = con.prepareStatement(check_login);
						 pst1.setString(1, email);
						 pst1.setString(2, password);
						 ResultSet rs1 = pst1.executeQuery();
						 
						 if(rs1.next())
						 {
							 int flag = 0;
							 Statement st = con.createStatement();
							 ResultSet rs = st.executeQuery("SELECT Status FROM clubs WHERE Club_Id = '" + rs1.getString(1)+ "'");
							 rs.next();
							 if(rs.getString(1).equals("Pending") || rs.getString(1).equals("Disapproved"))
							 {
								 flag = 1;
							 }
							 
							
							 if(flag == 0){
								 session.setAttribute("Email",email);
								 session.setAttribute("Club_Id",rs1.getString(1));
								 response.sendRedirect("member_notifications.jsp");
							 }
							 else
							 {
							 %>
								<script>
								//alert("Invalid");
								document.getElementById("login-error").innerHTML = "Your club is not approved.";
								</script> 
							 <%}
						 }
						 else
						 {%>
							<script>
                			document.getElementById("login-error").innerHTML = "Invalid Credentials.";
                			</script>
						 <%}
						
					}

					else if(cmta.equals("admin"))
					{

						String check_login = "Select Email,Password from admin where Email = ? AND Password = ?";
						 PreparedStatement pst1 = con.prepareStatement(check_login);
						 pst1.setString(1, email);
						 pst1.setString(2, password);
						 ResultSet rs1 = pst1.executeQuery();
						 
						 if(rs1.next())
						 {
							 session.setAttribute("Email",email);
							 response.sendRedirect("admin_login.jsp");
						 }
						 else
						 {%>
							<script>
                document.getElementById("login-error").innerHTML = "Invalid Credentials.";
                </script> 
						 <%}
						
					}
					
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				%>
        
        <form onsubmit = "return validateRegForm()" action = "add_rec_after_register.jsp" method = "POST" class="sign-up-form" id="sign-up-form" name="sign-up-form"><br><br><br>
          <h2 class="title">Registration</h2>
          <span id="reg-error"></span>
          
          <a href="">Explore our clubs ?</a>
          
          <div class="input-field">
          <%
     				 Statement st = con.createStatement();
    				 ResultSet rs = st.executeQuery("Select Club_Id,Club_Name from clubs WHERE Status = 'Approved' ");
    				 
     			 %>
						<select name="club-session" id="club-session" onmouseout="validateclubselection()" required>
							<option value="">Choose Club & Session...</option>
							<%
             	while(rs.next())
				      { 
             		Statement st1 = con.createStatement();
            	  	ResultSet rs1 = st1.executeQuery("Select Session_Id,Start_Time,End_Time FROM session WHERE Club_Id = '" +rs.getString(1) + "' AND Current_Capacity < Max_Capacity ");
          
            	  	while(rs1.next())
            	  	{
            	  	
				          %>
				
							<option value =<%=rs1.getString(1) %>>
								<%= rs.getString(2) %> (<%= rs1.getString(2) %> - <%= rs1.getString(3) %>)  </option>
							<% }} %>
            
            </select>
          </div>

          <div class="input-field">
            <select name="interested_status" id="interested_status" class="interested_status" onmouseout="validatestatusselection()">
              <option value=""> Choose Interested Status ... </option>
              <option value="Batting"> Batting </option>
              <option value="Fielding"> Fielding </option>
              <option value="Bowling">Bowling </option>
              <option value="All Rounder">All Rounder </option>
            </select>
          </div>
         
         
         <%--  <script>
          function retrieve_session(Clubid_obj)
          {
        	  var Clubid = Clubid_obj.value;
        	 
        	  <%
     	 	 Statement st1 = con.createStatement();
     	  	 ResultSet rs1 = st1.executeQuery("Select Session_Id,Start_Time,End_Time FROM session WHERE Club_Id = '" + Clubid + "'");
     	  %>
     	  
          }
          
          </script>
          <div class="input-field">
            <select  name="session" id="session" required>
            
              <option value=""> Choose Club Session...</option>
              <%
              while(rs1.next())
				      { 
              %>
             
							<option value=<%=rs1.getString(1) %>> <%= rs1.getString(2)%> - <%= rs1.getString(3) %></option>
							<% } %>
             
            </select> 
          </div>--%>


          <div class="input-field" id="fname-div">
            <i class="bi bi-person-lines-fill"></i>
            <input name="fname" id="fname" onblur="validateName()" type="text" placeholder="Full Name" required/>
          </div>
          <div class="input-field">
            <i class="bi bi-envelope-fill"></i>
            <input name = "mail" type="email" placeholder="Email" required/>
          </div>
          <div class="input-field" id="contact-div">
            <i class="bi bi-telephone-fill"></i>
            <input name = "contact" onblur="validate_con()" type="text" placeholder="Contact" required/>
          </div>
          
          <div class="input-field" id="age-div">
            <i class="bi bi-calendar-fill"></i> 
            <input name = "age" onmouseout="validate_age()" onkeyup="validatePwd()" type="number" placeholder="Completed Age" required/>
          </div>
          <div class="input-field" id="pwd-div">
            <i class="bi bi-lock-fill"></i>
            <input name = "pass" onclick="passowrdPlaceholder()" type="password" placeholder="Password" required/>
          </div>
          
          <div class="input-field">
            <i class="bi bi-lock-fill"></i>
            <input type="password" name = "re-pass" placeholder="Re-enter Password" required/>
          </div>
          <input type="submit" class="btn" value="Register Me" /><br>
          
          
        </form>
      </div>
    </div>

    <div class="panels-container">
      <div class="panel left-panel">
        <div class="content">
          <h3>New here ?</h3>
          <p>
            Join us by letting us know you and your interests !
          </p>
          <button class="btn transparent" id="sign-up-btn">
            Register
          </button>
        </div>
        <!-- <img src="assets/images/login2.png" class="login-image" alt="" /> -->

      </div>
      <div class="panel right-panel">
        <div class="content">
          <h3>One of us ?</h3>
          <p>
            If your account already exists, Log In instead.
          </p>
          <button class="btn transparent" id="sign-in-btn">
            Log In
          </button>
        </div>
        <!-- <img src="assets/images/login2.png" class="login-image" alt="" /> -->
      </div>
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
  <script src="./assets/functions.js"></script>
</body>

<!-- ANIMATION -->

<script>
  const sign_in_btn = document.querySelector("#sign-in-btn");
  const sign_up_btn = document.querySelector("#sign-up-btn");
  const container = document.querySelector(".login-container");

  sign_up_btn.addEventListener("click", () => {
    container.classList.add("sign-up-mode");
  });

  sign_in_btn.addEventListener("click", () => {
    container.classList.remove("sign-up-mode");
  });
</script>

</html>