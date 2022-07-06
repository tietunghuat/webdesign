<%@page import="java.sql.*"%>
<%@page pageEncoding="utf-8"%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/?serverTimezone=UTC";
String sql="";
Connection con=DriverManager.getConnection(url,"root","123456");	
sql="USE dbbasketball";
con.createStatement().execute(sql);
%>