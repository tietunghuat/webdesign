<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>


<%
		
		if (session.getAttribute("username")!=null) {
			String username = session.getAttribute("username").toString();

			String path = request.getParameter("pd_name") + ".jsp?pd_name=" + request.getParameter("pd_name");
			String pd_name = request.getParameter("pd_name");
			String quantity = request.getParameter("amount");
			String price = "";
			String pd_sql = "SELECT * FROM basketball.`basketball_pages` WHERE `pd_name` = '" + pd_name+".jsp'";
			String image = request.getParameter("image");
			
			PreparedStatement pd_ps = con.prepareStatement(pd_sql);
			ResultSet pd_rs = pd_ps.executeQuery();
			
			while (pd_rs.next()) {
				pd_name = pd_rs.getString("ball_name");
				price = pd_rs.getString("price");
				image = pd_rs.getString("image");
			}
			String sql = "INSERT INTO basketball.`cart`(`memberID`, `name` ,`quantity`,`price`,image) VALUES('"+username+"','"+pd_name+"','"+quantity+"','"+(Integer.parseInt(price)*Integer.parseInt(quantity))+"','"+image+"');";
			con.createStatement().execute(sql);	

			out.print("	<script>self.location=document.referrer</script>");
		}else{
			out.print("<script>alert('請先登入會員！');location.href='login.jsp'</script>");
		}
		


%>