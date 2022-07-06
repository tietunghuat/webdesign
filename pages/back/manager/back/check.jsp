<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="db_con.jsp" %>
<% 

if(request.getParameter("username") !=null && request.getParameter("password") != null)
{
	if(request.getParameter("username").equals("choco") && request.getParameter("password").equals("123"))
	{
		session.setAttribute("username",request.getParameter("username"));
		response.sendRedirect("backstage.jsp") ;
		con.close();//結束資料庫連結
	}
	else{
		sql = "SELECT * FROM dbbasketball.member WHERE `username`='" +request.getParameter("username") + "'  AND `password`='" + request.getParameter("password") + "'"  ; 
		ResultSet rs =con.createStatement().executeQuery(sql);
		if(rs.next())
		{            
			session.setAttribute("username",request.getParameter("username"));
			response.sendRedirect("modify.jsp") ;
			con.close();//結束資料庫連結

		}
		else{
			con.close();//結束資料庫連結
			response.sendRedirect("error.jsp") ;
		}
	}
}


/*		String a=rs.getString(7);

		if(session.getAttribute("first")){
			sql="UPDATE `member` SET `first`= '1' WHERE `email`='"+request.getParameter("email")+"'";
		response.sendRedirect("modify.jsp") ;}			
		else{
			response.sendRedirect("allproduct.jsp") ;
		}
*/
		%>
