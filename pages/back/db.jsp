<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8");%>


<%
	// step 1 register sql driver
	
	Class.forName("com.mysql.jdbc.Driver");
	
	
	// step 2 connent databse
	
	String url = "jdbc:mysql://localhost:3306/?serverTimezone=UTC";
	Connection con=DriverManager.getConnection(url,"root","1234");
	
%>