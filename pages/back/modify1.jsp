<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%> 
<%@include file="db_con.jsp"%>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
%>
<%
if(session.getAttribute("email") != null ){

		sql = "UPDATE `member` SET `password`='"+request.getParameter("password")+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);
		sql = "UPDATE `member` SET `name`='"+name+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);	
		sql = "UPDATE `member` SET `gender`='"+request.getParameter("gender")+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);	
		sql = "UPDATE `member` SET `birth`='"+request.getParameter("birth")+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);		
		sql = "UPDATE `member` SET `phone`='"+request.getParameter("phone")+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);	
		sql = "UPDATE `member` SET `address`='"+address+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);	
		sql = "UPDATE `member` SET `email`='"+request.getParameter("email")+"' WHERE `email`='"+session.getAttribute("email")+"'";
		con.createStatement().execute(sql);
        session.setAttribute("email",request.getParameter("email"));
		con.close();//結束資料庫連結
		out.print("成功<a href='member.jsp'>按此</a>");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("失敗<a href='modify.jsp'>按此</a>");
	}

%>