<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.util.Calendar"%>
 <%

 Calendar cal = Calendar.getInstance();
 SimpleDateFormat dateformat = new SimpleDateFormat("E, MMM dd yyyy");
 SimpleDateFormat timeformat = new SimpleDateFormat("h:mm a");
 
 String url = "jdbc:mysql://localhost:3306/ccms";
 String user = "root";
 String pwd = "271879";

 Class.forName("com.mysql.cj.jdbc.Driver");

 Connection con = DriverManager.getConnection(url, user, pwd);
	            String cname = request.getParameter("cname");
	            String vname = request.getParameter("vname");
            
    	  		String vadd = request.getParameter("vadd");
           		
        		
           		//if(vname != null && vadd != null)
           	//	{
           			String add_club = "INSERT INTO venue (Venue_Name, Venue_Address) VALUES (?,?)";
           			PreparedStatement pst = con.prepareStatement(add_club);
           			pst.setString(1,vname);
           			pst.setString(2,vadd);
           			pst.executeUpdate();
           			
           			String ai = "CALL autoinc_venue()";
                    Statement auto_inc = con.createStatement();
                    auto_inc.executeUpdate(ai);
           			
           	//	}
           		
           		
           		String cdesc = request.getParameter("cdesc");
           		String mcapacity = request.getParameter("mcapacity");
           		
           		Statement s1 = con.createStatement();
    	  		ResultSet r1 = s1.executeQuery("Select Venue_Id From venue ORDER BY Venue_No DESC");
    	  		if(r1.next())
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
    	  		
    	  		Statement st_club = con.createStatement();
        		ResultSet rs_new_club = st_club.executeQuery("SELECT Club_Id FROM clubs WHERE Status = 'Pending' ORDER BY Club_No DESC ");
        		rs_new_club.next();
    	  		String club_id = rs_new_club.getString(1);
    	  		
           		String hname = request.getParameter("hname");
            	String hemail = request.getParameter("hemail");
                String hcontact = request.getParameter("hcontact");
                String hage = request.getParameter("hage");
                String hexp = request.getParameter("hexp");
                String hpass = request.getParameter("hpass");
                String hrepass = request.getParameter("hrepass");
           		
           		
           	//	if(hname != null && hemail != null && hcontact != null && hage != null && hexp != null && hpass != null && hrepass != null )
           		//{
           			Statement st2 = con.createStatement();
            	  	ResultSet rs2 = st2.executeQuery("Select Email FROM coach WHERE Email = '" + hemail + "'");
            		
            	  	if(rs2.next())
            	  	{%> 
            	  		<script>
            	  			alert("Coach already exists.") ;
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
            	  		/*Statement s = con.createStatement();
            	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
            	  		if(r.next())
            	  		{*/
            	  			String add_club = "INSERT INTO coach (Coach_Name, Email, Contact, Age, Experience, Password, Status, Club_id) VALUES (?,?,?,?,?,?,'Head', '"+ club_id+"')";
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
            	  		//}
            	  	
	            	  	%>
	            	  	
<%
		           		String batting_coach = request.getParameter("batting_coach");
		              //  if(batting_coach != null)
		                //{
		                	//Statement s = con.createStatement();
		        	  		//ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
		        	  		//if(r.next())
		        	  		//{
		                		
		                		String add_batting_coach = "INSERT INTO coach(Coach_Name,Status,Club_id) VALUES (?,'Batting','"+ club_id +"')";
		                		PreparedStatement pst1 = con.prepareStatement(add_batting_coach);
		                		pst1.setString(1,batting_coach);
		                		pst1.executeUpdate();
		                		
		                		String ai1 = "CALL autoinc_coach2()";
			                    Statement auto_inc1 = con.createStatement();
			                    auto_inc1.executeUpdate(ai1);
		        	  		//}
		               // }
           		
           		
           		
		                String fielding_coach = request.getParameter("fielding_coach");
		               // if(fielding_coach != null)
		             //   {
		                	/*Statement s2 = con.createStatement();
		        	  		ResultSet r2 = s2.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
		        	  		if(r2.next())
		        	  		{
		              		*/
			              		String add_fielding_coach = "INSERT INTO coach(Coach_Name,Status,Club_Id) VALUES (?,'Fielding','"+ club_id+"')";
			              		PreparedStatement pst2 = con.prepareStatement(add_fielding_coach);
			              		pst2.setString(1,fielding_coach);
			              		pst2.executeUpdate();
			              		
			              		String ai2 = "CALL autoinc_coach2()";
			                    Statement auto_inc2 = con.createStatement();
			                    auto_inc.executeUpdate(ai2);
		        	  		//}
		              //  }
                
                
		                String bowling_coach = request.getParameter("bowling_coach");
		        		//if(bowling_coach != null)
		        		//{
		        			/*Statement s = con.createStatement();
		        	  		ResultSet r = s.executeQuery("Select Club_Id From clubs WHERE Club_name = '"+ cname +"'");
		        	  		while(r.next())
		        	  		{*/
			        			String add_bowling_coach = "INSERT INTO coach(Coach_Name,Status,Club_id) VALUES (?,'Bowling','"+ club_id+"')";
			            		PreparedStatement pst3 = con.prepareStatement(add_bowling_coach);
			            		pst3.setString(1,bowling_coach);
			            		pst3.executeUpdate();
			            		
			            		String ai3 = "CALL autoinc_coach2()";
			                    Statement auto_inc3 = con.createStatement();
			                    auto_inc3.executeUpdate(ai3);
		        	  		//}
		        		//}
                
		        		String query = "INSERT INTO notifications_admin(Description, Date, Time, Club_Id, Noti_Category) VALUES (?,?,?,?,?)";
		        		PreparedStatement pst31 = con.prepareStatement(query);
		        		
		        		
		        		
		        		//if(rs_new_club.next())
		        		//{
		        			String desc = "New Club request by" + hname +".<a href='admin_add_club_req.jsp?id="+ club_id +"'> Click to view.</a>";
			        		pst31.setString(1, desc);
			        		pst31.setString(2,  dateformat.format(cal.getTime()));
			        		pst31.setString(3, timeformat.format(cal.getTime()));
			        		pst31.setString(4, rs_new_club.getString(1));
			        		pst31.setString(5, "add club req");
			        		pst31.executeUpdate();
		        		//}
		        		
		        		%>
		        		
		        		<script>
		        		if(confirm("Your request is recieved to us, your club will be added to Sportify after approval.")==true)
		        			{
		        			location.href = "index.jsp";
		        			}
		        		</script>
           			<%}
            	  	
            	  	//response.sendRedirect("index.jsp");
           	//	}
            %>