<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%

String url = "jdbc:mysql://localhost:3306/ccms";
String user = "root";
String pwd = "271879";

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(url, user, pwd);

	//String session_Club_Id = session.getAttribute("Club_Id").toString();
	String mem_id = request.getParameter("mem_id");
	String swapped_mem_id = request.getParameter("swapped_id");

	PreparedStatement st = con.prepareStatement("UPDATE member SET Status = ? WHERE Member_Id = ?");
	st.setString(1, "TS");
	st.setString(2, mem_id);
	st.executeUpdate();
	
	PreparedStatement st1 = con.prepareStatement("UPDATE member SET Status = ? WHERE Member_Id = ?");
	st1.setString(1, "MS");
	st1.setString(2, swapped_mem_id);
	st1.executeUpdate();
	
	response.sendRedirect("challenge.jsp");

%>