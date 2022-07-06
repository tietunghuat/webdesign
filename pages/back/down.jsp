<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
		String ball_number = request.getParameter("ball_number");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String content = request.getParameter("content");
		String username=request.getParameter("username");
		String id=request.getParameter("id");
		String password1=request.getParameter("password1");
		String email=request.getParameter("email");
       String url="jdbc:mysql://localhost:3306/?serverTimezone=UTC";
        String user="root";
        String password="1234";
		String sql="USE basketball";
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url,user,password);
            out.println("連線MySQL成功");
        } catch (ClassNotFoundException e) {
            out.println("找不到驅動類");
        }catch(SQLException e){
            out.println("連線MySQL失敗");
        }

try{
           Statement stmt=conn.createStatement();
           String sql9=" update basketball.merchandise set name='"+name+"' where ball_number='"+ball_number+"'";
           stmt.executeUpdate(sql9); 
		   String sql8=" update basketball.merchandise set price='"+price+"' where ball_number='"+ball_number+"'";
           stmt.executeUpdate(sql8); 
		   String sql7=" update basketball.merchandise set quantity='"+quantity+"' where ball_number='"+ball_number+"'";
           stmt.executeUpdate(sql7); 
		   String sql6=" update basketball.merchandise set content='"+content+"' where ball_number='"+ball_number+"'";
		   stmt.executeUpdate(sql6); 
		   %>
			
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="refresh" content="0; url=backstage.jsp">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	
</body>
</html>
        <%}catch(SQLException e){
            out.println("新增商品失敗");
        }
		%>
		
		
		<%
		try{
           Statement stmt=conn.createStatement();
           String sql12=" update basketball.member set username='"+username+"' where id='"+id+"'";
           stmt.executeUpdate(sql12); 
		   String sql13=" update basketball.member set email='"+email+"' where id='"+id+"'";
           stmt.executeUpdate(sql13); 
		   String sql14=" update basketball.member set password='"+password1+"' where id='"+id+"'";
           stmt.executeUpdate(sql14); 
		   %>
			
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="refresh" content="0; url=backstage.jsp">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	
</body>
</html>
        <%}catch(SQLException e){
            out.println("新增使用者資訊失敗");
        }
		%>
