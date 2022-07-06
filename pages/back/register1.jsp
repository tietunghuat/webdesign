<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<html>
<head>
</head>   
<body>    
<%
	
			request.setCharacterEncoding("utf-8");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String username=request.getParameter("username");
			String password1=request.getParameter("password1");
			String sql = "INSERT INTO basketball.`member`(`email`, `password` ,`username`) VALUES('" + email +"','"+ password+"','"+ username + "');";
			con.createStatement().execute(sql);	
			response.sendRedirect("login.jsp");
			
%>
                                




</body>
</html>