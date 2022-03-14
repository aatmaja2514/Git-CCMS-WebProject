<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="javax.activation.*"%>

<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.util.Calendar"%>

<%
String url = "jdbc:mysql://localhost:3306/ccms";
String user = "root";
String pwd = "271879";

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(url, user, pwd);

 // parameters
String status = request.getParameter("status");
String id = request.getParameter("id");
String desc = "";

//calender
Calendar cal = Calendar.getInstance();
SimpleDateFormat dateformat = new SimpleDateFormat("E, MMM dd yyyy");
SimpleDateFormat timeformat = new SimpleDateFormat("h:mm a");

//queries
String update_club = "UPDATE clubs SET Status = ? WHERE Club_Id = ?";
PreparedStatement pst = con.prepareStatement(update_club);
pst.setString(2, id);

if(status.equals("approve"))
{    	
	pst.setString(1, "Approved");
	pst.executeUpdate();
	
	String coach_noti = "INSERT INTO notifications_coach(Visibility,Description,Date,Time) Values(?,?,?,?)";
	PreparedStatement pst1 = con.prepareStatement(coach_noti);
	
	Statement st = con.createStatement();
    ResultSet rsps = st.executeQuery("SELECT COUNT(*) FROM session WHERE Club_Id = '" + id + "'");
    if(rsps.next())
    {
    	int count = rsps.getInt(1);
    	if(count == 0){
			count++;
    	}
    	desc = "Welcome coach, your club has been approved by Sportify. You can now make your club's practise session slots. <a href='coach_profile.jsp?count="+ count +">Click to edit.</a>";
    }
    	
    pst1.setString(1, id);
    pst1.setString(2, desc);
    pst1.setString(3, dateformat.format(cal.getTime()));
	pst1.setString(4, timeformat.format(cal.getTime()));
	
    pst1.executeUpdate();
}
else if(status.equals("disapprove"))
{
	pst.setString(1, "Disapproved");
	pst.executeUpdate();
}

/*Statement st_to = con.createStatement();
ResultSet rsto = st_to.executeQuery("SELECT Coach_Name FROM coach WHERE Status = 'Head' AND Club_Id = '" + id + "'");
rsto.next();

String to = "aditinarkar2004@gmail.com";
String from = "adunarkar2004@gmail.com"; 
String host = "localhost"; //or IP address  

//Get the session object  
Properties properties = System.getProperties();  
properties.setProperty("mail.smtp.host", host);  
Session ses = Session.getDefaultInstance(properties);  

//Setup mail server
/*properties.put("mail.smtp.host", host);
properties.put("mail.smtp.port", "465");
properties.put("mail.smtp.ssl.enable", "true");
properties.put("mail.smtp.auth", "true");

//Get the Session object.// and pass username and password
javax.mail.Session ses = Session.getInstance(properties, new javax.mail.Authenticator() 
{
    protected PasswordAuthentication getPasswordAuthentication() 
    {
        return new PasswordAuthentication(from, "aditi271879");
    }
});*/

// Used to debug SMTP issues
//ses.setDebug(true);

//compose the message  
/*try
{  
   MimeMessage message = new MimeMessage(ses);  
   message.setFrom(new InternetAddress(from));  
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
   message.setSubject("Ping");  
   message.setContent(
           "<h1>This is actual message embedded in HTML tags</h1>",
          "text/html"
          ); 

   // Send message  
   Transport.send(message);  
   System.out.println("message sent successfully....");  

}
catch (MessagingException mex) 
{
	System.out.println(mex);
} */ 
 

response.sendRedirect("admin_notifications.jsp");

%>