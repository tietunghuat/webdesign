<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%> 

<html>
<head>
</head>   
<body>    
<%@include file="db_con.jsp"%>



<%
			request.setCharacterEncoding("utf-8");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String username=request.getParameter("username");
			String password1=request.getParameter("password1");
			String sql1 = "INSERT INTO `member`(email, password,username)"+"VALUES('"+email+"','"+password+"','"+username+"')";
			con.createStatement().execute(sql1);
			response.sendRedirect("login.jsp");
			
%>
                                




</body>
</html>