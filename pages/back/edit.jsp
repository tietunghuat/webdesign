<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%> 
<%@include file="db.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後端管理系統</title>
    <link href="https://fonts.googleapis.com/css2?family=New+Tegomin&display=swap" rel="stylesheet">
    <style>
      @import url("style.css");
    </style>
    <script data-require="jquery@3.1.1" data-semver="3.1.1"
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css" />
    <script src="plus_minus.js"></script>
</head>
<script>
			function ooxx(){
				alert('刪除成功!');
			}
			</script>
<body>
<center>

    <header>
        <h1>後端管理系統</h1>
         <a href="index.jsp"> <button>回首頁</button></a>
         <a href="logout.jsp"> <button>登出</button></a>
    </header>
    <div>
        <table>
            <tr class="tr1">
                <td>ID</td>
                <td>商品名稱</td>
                <td>價格</td>
                <td>庫存</td>
                <td>介紹</td>
                <td>功能</td>
            </tr>
			
<%
							String sql1 = "SELECT * FROM basketball.merchandise";
					request.setCharacterEncoding("utf-8");
					PreparedStatement pstmt =null;
					ResultSet rs =null;
					pstmt=con.prepareStatement(sql1);
					rs=pstmt.executeQuery();
					String ball_number = "";
					String name = "";
					String price = "";
					String quantity = "";
					String content = "";
					
					while (rs.next()) {

						ball_number = rs.getString("ball_number");
						name = rs.getString("name");
						price = rs.getString("price");
						quantity = rs.getString("quantity");
						content = rs.getString("content");
%>
			<form action="down.jsp"  method="POST">
            <tr>
                <td><%=rs.getString("ball_number")%></td>
                <td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
                <td><input type="text" name="price" value="<%=rs.getString("price")%>"></td>
                <td><div class="quantity buttons_added">
                    <input type="button" value="-" class="minus" name="min">
					<input type="number" step="1" min="1" max="" name="quantity" value="<%=rs.getString("quantity")%>"
                        title="Qty" class="input-text qty text" size="4" pattern="" inputmode="">
					<input type="button" value="+"class="plus" name="max">
                </div></td>
                <td><input type="text" name="content" value="<%=rs.getString("content")%>"></td>
                <td>
                <button class="button2"><input type="text" name="ball_number" value="<%=rs.getString("ball_number")%>" hidden>完成編輯</button></a>
                <form action="delete.jsp"><button class="button2" onclick="ooxx()"><input type="text" name="delete" value="<%=rs.getString("ball_number")%>" hidden>刪除資料</button></form>
                </td>
            </tr>
			</form>
			<%}%>
        </table>
    </div>
   
</center>
<div>
	<center> <h1>會員管理</h1></center>
	<center>
        <table>
            <tr class="tr1">
                <td>ID</td>
                <td>帳號</td>
                <td>密碼</td>
                <td>email</td>
                <td>功能</td>
				
            </tr>
			<%
			String sql2 = "SELECT * FROM basketball.member";
			PreparedStatement pstmt1 =null;
			ResultSet rs1 =null;
			pstmt1=con.prepareStatement(sql2);
			rs1=pstmt1.executeQuery();
			
				String username="";
			String id="";
			String password="";
			String email="";
			while(rs1.next()) {
		
			id = rs1.getString("id");
			username = rs1.getString("username");
			password = rs1.getString("password");
			email = rs1.getString("email");
			%>
			<form action="down.jsp"  method="POST">
            <tr>
                <td><%=rs1.getString("id")%></td>
                <td><input type="text" name="username" value="<%=rs1.getString("username")%>"></td>
                <td><input type="text" name="password1" value="<%=rs1.getString("password")%>"></td>
                <td><input type="text" name="email" value="<%=rs1.getString("email")%>"></td>
                <td>
              <button class="button2"><input type="text" name="id" value="<%=rs1.getString("id")%>" hidden>完成編輯</button></a>
                <form action="delete.jsp"><button class="button2" onclick="ooxx()"><input type="text" name="delete" value="<%=rs1.getString("id")%>" hidden>刪除資料</button></form>
                </td>
            </tr>
			</form>
<%}%>
	</center>
</body>

</html>