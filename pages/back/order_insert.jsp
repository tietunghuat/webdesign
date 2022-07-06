<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%;
	String username = request.getParameter("uname");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String pay = request.getParameter("pay");
	String address = request.getParameter("address");
	String address2 = request.getParameter("address2");
	String total = request.getParameter("total");

	
	String cart = "SELECT * FROM basketball.`cart` WHERE `memberID` = '" + username+"'";
	PreparedStatement ps = con.prepareStatement(cart);
	ResultSet rs = ps.executeQuery();
	String product = "";
	while(rs.next()){
		product += rs.getString("name") + ",";
	}
	
	
	String sql = "INSERT INTO basketball.`order` (`memberName`,`name`,`gender`,`email`,`phone`,`pay`,`address`,`address2`,`product`,`total`)";
	sql += " VALUES('"+username+"','"+name+"','"+gender+"','"+email+"','"+phone+"','"+pay+"','"+address+"','"+address2+"','"+product+"','"+total+"')";
	
	con.createStatement().execute(sql);	

	
	out.print("<script>location.href='member.jsp';alert('訂購成功！');</script>");
	
	
%>