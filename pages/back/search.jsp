<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>查詢結果</title>
    <style>
        @import url(../../assets/css/header_footer.css);
        @import url(../../assets/css/allproduct.css);
        @import url(../../assets/css/sidecart.css);
    </style>
</head>
<body>
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
    <div id="main">
        <div class="contain">
            <button id="cartcloseid" class="closebtn" onclick="closecart()"><img src="../../assets/image/cart.png" width="40px;">購物車<br>&#9668</button>
            <button id="cartopenid" class="openbtn" onclick="opencart()"><img src="../../assets/image/cart.png" width="40px;">購物車<br>&#9658</button>
                    
            
            <div id="CartSidebar" class="sidebar">
                <!--<a href="javascript:void(0)" class="closebtn" onclick="closecart()">X</a>-->
                <div class="sidebarcontent">
                    <div class="myproduct">
                        <input type="checkbox" id="choose" class="choosepro" checked="checked">
                        <img src="../../assets/basketball/indoor/SPA64281.jpg" class="smallpicture">

                        <div id="ballname1" class="ballname">

                        </div>

                        <div class="qu">
                            購買數量&nbsp : &nbsp
                            <input type="number" min="1" max="999" value="1" id="quantity" class="amount" required>
                            共<label class="producttotal">1000<lebel>元
                        </div>
                    </div>
                    <div class="myproduct">
                        <input type="checkbox" id="choose" class="choosepro" checked="checked">
                        <img src="../../assets/basketball/outside/SPA73298.png" class="smallpicture">

                        <div id="ballname2" class="ballname">

                        </div>

                        <div class="qu">
                            購買數量&nbsp : &nbsp
                            <input type="number" min="1" max="999" value="1" id="quantity" class="amount" required>
                            共<label class="producttotal">1000<lebel>元
                        </div>
                    </div>
                    <div class="myproduct">
                        <input type="checkbox" id="choose" class="choosepro" checked="checked">
                        <img src="../../assets/basketball/in_and_out/SPA74087.png" class="smallpicture">

                        <div id="ballname3" class="ballname">

                        </div>

                        <div class="qu">
                            購買數量&nbsp : &nbsp
                            <input type="number" min="1" max="999" value="1" id="quantity" class="amount" required>
                            共<label class="producttotal">1000<lebel>元
                        </div>
                    </div>
                    
                    <div class="myproduct">
                        <input type="checkbox" id="choose" class="choosepro" checked="checked">
                        <img src="../../assets/basketball/star/curry.png" class="smallpicture">

                        <div id="ballname4" class="ballname">

                        </div>

                        <div class="qu">
                            購買數量&nbsp : &nbsp
                            <input type="number" min="1" max="999" value="1" id="quantity" class="amount" required>
                            共<label class="producttotal">1000<lebel>元
                        </div>
                        
                    </div>
                

                    <div class="total">
                        共<label class="carttotal">4000</label>元&nbsp
                    </div>
                    <button class="cartcheck" style="background-color: red; color:white;">移除</button>
                    <button class="cartcheck" id="checkmycart">訂單結帳</button>
                </div>
            </div>

    <!--是否為會員-->

            <div class="windows" id="checkwindows">
                
                <div class="windowscontent">
                    <img class="windowsimg" style="background-image: url('../../assets/image/basket.png');">
                    <div class="windowsh1">
                        <h1>是否為會員?</h1>
                    </div>
                    <div>
                        <p><h3>親,您是否要使用會員身分訂購呢?</h3></p>
                    </div>
                    <div class="memberornot">
                        
                        <a href="../../pages/visitorcart.html" target="_blank"><input type="button" class="memberbtn" id="notmember" value="使用訪客身分訂購"></a>
                        <a href="../../pages/cart.html" target="_blank"><input type="button" class="memberbtn" id="isamember" value="使用會員身分訂購"></a>
                        
                    </div>    
                    
                </div>
                
            </div>
            <div class="room">
				<h2>查詢結果</h2>
<%	
	request.setCharacterEncoding("utf-8");
	String search=request.getParameter("search");
	request.getParameter("search");
	String sql1 = "SELECT * FROM basketball.merchandise WHERE ball_number LIKE '%" + search + "%' or name LIKE '%" + search + "%'or type LIKE '%" + search + "%'";
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	pstmt=con.prepareStatement(sql1);
	rs=pstmt.executeQuery();
	while(rs.next()){
%>
					<div class='card'>
					<a href=" +"../ .html><div class='box'><img src="<%=rs.getString("image")%>"></div></a>
					<P id='number'><%=rs.getString("ball_number") %></P>
					<p id='introduction'><%=rs.getString("name") %>)</p>
					<a href=<%=rs.getString("ball_number") %>.jsp><input type='button' value='了解更多!!' id='understand'></a>
					</div>
	<%}%>	

        </div>
    </div>
    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>

    <script>
        function opencart() {
          document.getElementById("CartSidebar").style.width = "30%";
          document.getElementById("main").style.marginLeft = "30%";
          document.getElementById("cartopenid").style.zIndex = "-1";
        }
        
        function closecart() {
          document.getElementById("CartSidebar").style.width = "0%";
          document.getElementById("main").style.marginLeft= "0";
          document.getElementById("cartopenid").style.zIndex = "1";
        }

        document.getElementById("ballname1").innerHTML="SPA64281";
        document.getElementById("ballname2").innerHTML="SPA73298";
        document.getElementById("ballname3").innerHTML="SPA74087";
        document.getElementById("ballname4").innerHTML="Curry紀念版籃球";
        

        var windows = document.getElementById("checkwindows");
        var btn = document.getElementById("checkmycart");

        btn.onclick = function() {
            windows.style.display = "block";
        }

        window.onclick = function(event) {
            if (event.target == windows) {
                windows.style.display = "none";
            }
        }

    </script>
</body>
</html>