<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>

<%@include file="db.jsp" %>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url(../../assets/css/header_footer.css);
        @import url(../../assets/css/member.css);      
    </style>
</head>
<body>
<%
	String sql = "";
	String order_sql = "";
	String name = "";
	String email = "";
	String gender = "";
	String telephone = "";
	String address = "";
	String born_date = "";
	ResultSet rs = null;
	ResultSet order_rs = null;
	
	if(session.getAttribute("username")!=null){
		sql = "SELECT * FROM basketball.member_info where `user_id` = '" + session.getAttribute("username").toString() +"'";
		rs = con.createStatement().executeQuery(sql);
		if(rs.next()){
			name = rs.getString("name");
            email = rs.getString("email");
            gender = rs.getString("gender");
            telephone = rs.getString("telephone");
            address = rs.getString("address");
            born_date = rs.getString("born_date");
		}
		
//		order_sql = "SELECT * FROM basketball.`order` WHERE `memberName` = '" + session.getAttribute("username").toString() + "'";
//		order_rs = con.createStatement().executeQuery(order_sql);		


%>
    <header>

        <div class="head">
            
            <a href="index.jsp"><div class="fire"><img src="../../assets/image/logo.png" id="logo">
            <img src="../../assets/image/logo3.png" id="logo2">
            </div></a>
            <ul>
                <a href="allproduct.jsp"><li>產品介紹</li></a>
                <a href="member.jsp"><li>會員專區</li></a>
                <a href="aboutus.jsp"><li>關於我們</li></a>
				<%
											if (session.getAttribute("username") != null) {
				%>
												<a href="logout.jsp"><li>登出</li></a>
                                                
				<%
										    if(session.getAttribute("username").equals("admin")){
				%>
                                            
										      <a href="backstage.jsp"><li style="visibility:visible;">後臺</li></a>

				<%
											
											}
                                            else{%>
                                              
										      <a href="backstage.jsp"><li style="visibility:hidden;">後臺</li></a> 

                                            <%}
                                            }else{%>
												<a href="login.jsp"><li>登入/註冊</li></a>
                                                <a href="backstage.jsp"><li style="visibility:hidden;">後臺</li></a>
				<%}
				%>
				
				
            <li>
            <form action="search.jsp"><div class="search"><input type="search" placeholder="請輸入關鍵字" style="height: 40px;" name="search">
                <input src="../../assets/image/search.png" type="image" style="height: 40px;">
            </div> </form></li>
            </ul>
        </div>
    </header>

    <div class="contain">
        <div class="photo">
            <div class="photo2"><img src="../../assets/image/VIP.png"></div>
        </div>
        <div class="personal">
            <p><%=name%></p>
            <p><%=email%></p>
            <p><%=gender%></p>
            <p><%=telephone%></p>
            <p><%=address%></p>
            <p><%=born_date%></p>
        </div>

        <div class="order_search">
            <table>
                <tr>
                    <td>訂單編號</td>
                    <td>內容</td>
                    <td>價錢</td>
                    <td>狀況</td>
                </tr>
				
				<%
				order_sql = "SELECT * FROM basketball.`order` WHERE `memberName` = '" + session.getAttribute("username").toString() + "'";
				order_rs = con.createStatement().executeQuery(order_sql);
				if(order_rs.next()==false){
					out.print("<td>尚無訂單</td>");
				}else{
//					while(order_rs.next()){
						out.print("<td>" + order_rs.getString("id") + "</td>");
						out.print("<td>" + order_rs.getString("product") + "</td>");
						out.print("<td>" + order_rs.getString("total") + "</td>");
						if (order_rs.getString("status").equals("1"))
							out.print("<td>已送達</td>");
						else
							out.print("<td>未送達</td>");
//					}
				}

				%>

            </table>
        </div>        
        <p id="saying">Be Yourself</p>
        <div class="go">
        <a href="allproduct.jsp"><input type="button" value="立即前往購物!!"></a>
        <a href="cart.jsp"><input type="button" value="查看我的購物車"></a>
        </div>
    </div>

    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>
</body>
<%
	}
	else{
		con.close();
		response.sendRedirect("login.jsp");


	}
%>
</html>