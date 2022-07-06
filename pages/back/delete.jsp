<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


 <%
		String delete = request.getParameter("delete");
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
            String deletUser="delete from basketball.merchandise where merchandise.ball_number='"+delete+"'";
            stmt.executeUpdate(deletUser);%>
	
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
            out.println("刪除商品資訊失敗");
			out.print("請<a href='backstage.jsp'>按此</a>回系統!!");}%>
			
			 <%try{
            Statement stmt=conn.createStatement();
            String deletmember="delete from basketball.member where member.username='"+delete+"'";
            stmt.executeUpdate(deletmember);%>
	
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
            out.println("刪除使用者資訊失敗");
			out.print("請<a href='backstage.jsp'>按此</a>回系統!!");}%>