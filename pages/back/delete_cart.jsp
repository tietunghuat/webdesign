<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>


<%
		
		if (session.getAttribute("username")!=null) {
			String username = session.getAttribute("username").toString();

			String path = request.getParameter("pd_name") + ".jsp?pd_name=" + request.getParameter("pd_name");
			String pd_name = request.getParameter("pd_name");
			String quantity = request.getParameter("amount");
			String image = request.getParameter("image");
			String price = "";
		
			String pd_sql = "SELECT * FROM basketball.`basketball_pages` WHERE `pd_name` = '" + pd_name+".jsp'";
			
			
			PreparedStatement pd_ps = con.prepareStatement(pd_sql);
			ResultSet pd_rs = pd_ps.executeQuery();
			
			 String idno[]= request.getParameterValues("idno");
			 for(int j=0;j<idno.length;j++){
			
			String sql ="delete from basketball.`cart` where `id`='"+idno[j]+"'";
			
			con.createStatement().execute(sql);

			out.print("	<script>self.location=document.referrer</script>");
			
	}}else{
			out.print("<script>alert('請先登入會員！');location.href='login.jsp'</script>");
		}
	
%>