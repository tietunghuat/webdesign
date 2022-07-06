<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<%@include file="db.jsp" %>
<% 

if(request.getParameter("username") !=null && request.getParameter("password") != null)
{
	session.setAttribute("username",request.getParameter("username"));


	if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin"))
	{
		response.sendRedirect("backstage.jsp") ;
		con.close();//結束資料庫連結
	}
	
	

	
	else{
		String sql = "SELECT * FROM basketball.member WHERE `username`='" +request.getParameter("username") + "'  AND `password`='" + request.getParameter("password") + "'"  ;
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		rs.next();
		if(rs.getString("username") == null){
			response.sendRedirect("login.jsp");
			con.close();//結束資料庫連結
		}
		else{
			String modify = "SELECT  A.`user_id` FROM basketball.member_info as `A` JOIN basketball.member AS `B` ON A.`user_id` =' " + request.getParameter("username")+ "'";
			PreparedStatement md_ps=con.prepareStatement(modify);
			ResultSet md_rs = md_ps.executeQuery();
			
			
			if (!md_rs.next()){
				response.sendRedirect("modify.jsp");
			}
			else{
				response.sendRedirect("allproduct.jsp");
			}
			con.close();//結束資料庫連結
		}
	}
}


/*		String a=rs.getString(7);

		if(session.getAttribute("id")){
			sql="UPDATE `member` SET `id`= '1' WHERE `email`='"+request.getParameter("email")+"'";
			response.sendRedirect("modify.jsp") ;}			
		else{
			response.sendRedirect("allproduct.jsp") ;
		}
*/
		%>
