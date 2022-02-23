<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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
  
</head>

<body>
<%
  	String url = "jdbc:mysql://localhost:3306/ccms";
	String user = "root";
	String pwd = "271879";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
  %>
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
      <!-- Uncomment below if you prefer to use a text logo -->
      <h1 class="logo mr-auto"><a href="index.html">SPORTIFY</a></h1>
    </div>
</header>

<div class="requestto-add-club">
    <div class="div1">
        <div class="img">
            <img src="assets/images/logo1-removebg.png" alt="">
        </div>
        <div class="title">
            Fill up the form to request Sportify to add your club ...
        </div>
    </div>
    
    <form method = "POST" >
        <div class="div2">
            <div class="club-info">
                <div class="title">club information</div>
                <label for="">Club Name</label>
                <input type="text" name = "cname"><br>
                <label for="">Club Description</label>
                <input type="text" name = "cdesc"><br>
                <label for="" >Club Logo</label>
                <input type="file" name = "clogo">
                <label for="">Maximum Capacity</label>
                <input name = "mcapacity" type="number" style = "width: 100px; text-align: center; " max = "100" min = "10"><br>
            </div>

            <div class="venue-info">
                <div class="title">venue information</div>
                <label for="">Venue Name</label>
                <input type="text" name = "vname"><br>
                <label for="">Address</label>
                <input type="text" name = "vadd">
            </div>
    
            <div class="head-coach-info">
                <div class="title">head coach information</div>
                <label for="">Full Name</label>
                <input type="text" name = "hname"><br>
                <label for="">Email Id</label>
                <input type="text" name = "hemail">
                <label for="">Contact</label>
                <input type="text" name = "hcontact"><br>
                <label for="">Age</label>
                <input type="number" name = "hage"  type="number" style = " text-align: center; " min = "20">
                <label for="">Experience</label>
                <input type="text" name = "hexp"><br>
                <label for="">Password</label>
                <input type="password" name = "hpass">
                <label for="">Re-enter Password</label>
                <input type="password" name = "hrepass">
            </div>
       
            <div class="sub-coaches">
                <div class="title">subcoaches information</div>
                <label for="">Batting Coach</label>
                <input type="text" name = "batting_coach"><br>
                
                <label for="">Fielding Coach</label>
                <input type="text" name = "fielding_coach">
               
                <label for="">Bowling Coach</label>
                <input type="text" name = "bowling_coach">
              
            </div>
            <div class="session-info">
                <div class="title">session information</div>
            </div>
            <div class="div3">
                <button type="submit">Submit</button>
            </div>
        </div>
         <%
	            String cname = request.getParameter("cname");
	            String vname = request.getParameter("vname");
            
    	  		String vadd = request.getParameter("vadd");
           		
        		
           		if(vname != null && vadd != null)
           		{
           			String add_club = "INSERT INTO venue (Venue_Name, Venue_Address) VALUES (?,?)";
           			PreparedStatement pst = con.prepareStatement(add_club);
           			pst.setString(1,vname);
           			pst.setString(2,vadd);
           			pst.executeUpdate();
           			
           			String ai = "CALL autoinc_venue()";
                    Statement auto_inc = con.createStatement();
                    auto_inc.executeUpdate(ai);
           			
           		}
           		
           		
           		String cdesc = request.getParameter("cdesc");
           		String mcapacity = request.getParameter("mcapacity");
           		
           		Statement s1 = con.createStatement();
    	  		ResultSet r1 = s1.executeQuery("Select Venue_Id From venue WHERE Venue_Name = '"+ vname +"'");
    	  		while(r1.next())
    	  		{
	           		if(cname != null && cdesc != null && mcapacity != null)
	           		{
	           			String add_club = "INSERT INTO clubs(Club_name, club_desc, Max_capacity,Venue_Id) VALUES (?,?,?, '"+ r1.getString(1)+"')";
	           			PreparedStatement pst = con.prepareStatement(add_club);
	           			pst.setString(1,cname);
	           			pst.setString(2,cdesc);
	           			pst.setString(3,mcapacity);
	           			pst.executeUpdate();
	           			
	           			String ai = "CALL autoinc_clubs()";
	                    Statement auto_inc = con.createStatement();
	                    auto_inc.executeUpdate(ai);
	           			
	           		}
    	  		}
    	  		
    	  		
           		
           		
           		String hname = request.getParameter("hname");
            	String hemail = request.getParameter("hemail");
                String hcontact = request.getParameter("hcontact");
                String hage = request.getParameter("hage");
                String hexp = request.getParameter("hexp");
                String hpass = request.getParameter("hpass");
                String hrepass = request.getParameter("hrepass");
           		
           		
           		if(hname != null && hemail != null && hcontact != null && hage != null && hexp != null && hpass != null && hrepass != null )
           		{
           			Statement st2 = con.createStatement();
            	  	ResultSet rs2 = st2.executeQuery("Select Email FROM coach WHERE Email = '" + hemail + "'");
            		
            	  	if(rs2.next())
            	  	{%> 
            	  		<script>
            	  			alert("User already exists.") ;
            	  		</script>
            	  	<%}
            	  	else if(!hpass.equals(hrepass))
                  {%> 
            	  		<script>
            	  			alert("Passwords doesn't match. Please try again.");
            	  		</script>
            	  	<%}
            	  	else
            	  	{
            	  		Statement s = con.createStatement();
            	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
            	  		while(r.next())
            	  		{
            	  			String add_club = "INSERT INTO coach (Coach_Name, Email, Contact, Age, Experience, Password, Status, Club_id) VALUES (?,?,?,?,?,?,'Head', '"+ r.getString(1)+"')";
    	           			PreparedStatement pst = con.prepareStatement(add_club);
    	           			pst.setString(1,hname);
    	           			pst.setString(2,hemail);
    	           			pst.setString(3,hcontact);
    	           			pst.setString(4,hage);
    	           			pst.setString(5,hexp);
    	           			pst.setString(6,hpass);
    	           			pst.executeUpdate();
    	           			
    	           			String ai = "CALL autoinc_coach2()";
    	                    Statement auto_inc = con.createStatement();
    	                    auto_inc.executeUpdate(ai);
            	  		}
            	  	}
           			
           		}
           		
           		
           		
           		
           		String batting_coach = request.getParameter("batting_coach");
                if(batting_coach != null)
                {
                	Statement s = con.createStatement();
        	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
        	  		while(r.next())
        	  		{
                		
                		String add_batting_coach = "INSERT INTO coach(Coach_Name,Status,Club_id) VALUES (?,'Batting','"+ r.getString(1)+"')";
                		PreparedStatement pst1 = con.prepareStatement(add_batting_coach);
                		pst1.setString(1,batting_coach);
                		pst1.executeUpdate();
                		
                		String ai = "CALL autoinc_coach2()";
	                    Statement auto_inc = con.createStatement();
	                    auto_inc.executeUpdate(ai);
        	  		}
                }
           		
           		
           		
                String fielding_coach = request.getParameter("fielding_coach");
                if(fielding_coach != null)
                {
                	Statement s = con.createStatement();
        	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
        	  		while(r.next())
        	  		{
                		
              		
	              		String add_fielding_coach = "INSERT INTO coach(Coach_Name,Status,Club_id) VALUES (?,'Fielding','"+ r.getString(1)+"')";
	              		PreparedStatement pst2 = con.prepareStatement(add_fielding_coach);
	              		pst2.setString(1,fielding_coach);
	              		pst2.executeUpdate();
	              		
	              		String ai = "CALL autoinc_coach2()";
	                    Statement auto_inc = con.createStatement();
	                    auto_inc.executeUpdate(ai);
        	  		}
                }
                
                
                String bowling_coach = request.getParameter("bowling_coach");
        		if(bowling_coach != null)
        		{
        			Statement s = con.createStatement();
        	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
        	  		while(r.next())
        	  		{
	        			String add_bowling_coach = "INSERT INTO coach(Coach_Name,Status,Club_id) VALUES (?,'Bowling','"+ r.getString(1)+"')";
	            		PreparedStatement pst3 = con.prepareStatement(add_bowling_coach);
	            		pst3.setString(1,bowling_coach);
	            		pst3.executeUpdate();
	            		
	            		String ai = "CALL autoinc_coach2()";
	                    Statement auto_inc = con.createStatement();
	                    auto_inc.executeUpdate(ai);
        	  		}
        		}
                
                
            %>
        
    </form>
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
  </footer><!-- End Footer -->


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