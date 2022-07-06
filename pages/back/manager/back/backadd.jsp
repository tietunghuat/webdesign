<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

    <%
		String ball_name = request.getParameter("ball_name");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String venue = request.getParameter("venue");
		String username=request.getParameter("username");
		String id=request.getParameter("id");
		String password1=request.getParameter("password1");
		String email=request.getParameter("email");
        String url="jdbc:mysql://localhost:3306/InternetDesign?useUnicode=true&characterEncoding=UTF-8";
        String user="root";
        String password="1234";
		String sql="USE basketball";
        Connection conn=null;
         try {
            Class.forName("com.mysql.jdbc.Driver");
            out.println("載入驅動類成功");
            conn=DriverManager.getConnection(url,user,password);
            out.println("連線MySQL成功");
        } catch (ClassNotFoundException e) {
            out.println("找不到驅動類");
        }catch(SQLException e){
            out.println("連線MySQL失敗");
        }

        try{
            Statement stmt=conn.createStatement();
            String addUser="insert into basketball.basketball_pages(ball_name,name,image,price,material,venue,size,quantity) values('"+ball_number+"','"+name++"',"+"'null','"+price"','null','"+venue+"','null','"+quantity+"')";

			stmt.executeUpdate(addUser); %>

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
            out.println("新增商品資訊失敗");
        }
		
try{
	Statement stmt=conn.createStatement();
	String addmember ="insert into basketball.member(id,username,`password`,email) values('"+id+"','"+username+"','"+password1+"','"+email+"')";
 stmt.executeUpdate(addmember);
	
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