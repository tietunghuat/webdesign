<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%

			String user = session.getAttribute("username").toString();
			
			String name= request.getParameter("name");
			String email= request.getParameter("email");
			String sex= request.getParameter("sex");
			String telephone= request.getParameter("telephone");
			String address= request.getParameter("address");
			String birth= request.getParameter("birth");
		
		
			String sql = "INSERT INTO basketball.`member_info`(user_id,name,gender,address,email,telephone,born_date)";
			sql += " VALUES('" + user +"','"+ name+"','"+ sex + "','"+ address +"','"+email+"','"+telephone+"','"+birth+"');";

			con.prepareStatement(sql).execute();
			
			
			response.sendRedirect("member.jsp");




%>