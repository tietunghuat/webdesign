<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%
if(session.getAttribute("username")!=null){
	String sql = "SELECT * FROM basketball.merchandise";
	
	
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	
	PreparedStatement ps_out = con.prepareStatement(sql);
	ResultSet rs_out = ps_out.executeQuery();
	
	PreparedStatement ps_both = con.prepareStatement(sql);
	ResultSet rs_both = ps_both.executeQuery();
	
	PreparedStatement ps_bothtwo = con.prepareStatement(sql);
	ResultSet rs_bothtwo = ps_bothtwo.executeQuery();
	
	PreparedStatement ps_boththree = con.prepareStatement(sql);
	ResultSet rs_boththree = ps_boththree.executeQuery();
	
	PreparedStatement ps_allstar = con.prepareStatement(sql);
	ResultSet rs_allstar = ps_allstar.executeQuery();

	String username = session.getAttribute("username").toString();
	String sql_cart = "SELECT * FROM basketball.`cart`";
	PreparedStatement ps_cart = con.prepareStatement(sql_cart);
	ResultSet rs_cart = ps_cart.executeQuery();

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>產品介紹</title>
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
            	<script>
						document.getElementById("checkboxId").checked;
							</script>
					
					<div id="CartSidebar" class="sidebar">
					
						<!--<a href="javascript:void(0)" class="closebtn" onclick="closecart()">X</a>-->
						<form action='delete_cart.jsp' method='post'><div class="sidebarcontent">
						
							<%
						int total = 0;
							while(rs_cart.next()){
								if(rs_cart.getString("memberID").equals(username)){
									total += Integer.parseInt(rs_cart.getString("price"));
									out.print("<div class='myproduct'>");
									out.print("<input type='checkbox' class='choosepro' name='idno' value='"+rs_cart.getString("id")+"'>");
									//
									out.print("<img src='"+rs_cart.getString("image")+"' class='smallpicture'>");
									///
									out.print("<div id='ballname1' class='ballname'>"+rs_cart.getString("name")+"</div>");
									out.print("<div class='qu'>購買數量&nbsp : &nbsp");
									out.print("<input type='number' min='1' max='999' value="+rs_cart.getString("quantity")+" id='quantity' class='amount' required>");
									out.print("共<label class='producttotal'>"+rs_cart.getString("price")+"<lebel>元</div></div>");		
								}
							}
							out.print("<div class='total'>共<label class='carttotal'>"+total+"</label>元&nbsp</div>");
							out.print("<a href='delete_cart.jsp'><button class='cartcheck' style='background-color: red; color:white;' >移除</button></a>");
						
						%>
						<a href='cart.jsp'><button class='cartcheck' id='checkmycart'>訂單結帳</button></a>
						</form>
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
				<h2>室內</h2>
				<div>
				<%	
				while(rs.next())
				{
					if (rs.getString("category").equals("indoor"))
					{
					out.print("<div class='card'>");
					out.print("<a href=" + rs.getString("html") + "?pd_name="+rs.getString("html").replace(".jsp","")+"><div class='box'><img src=" + rs.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs.getString("name")+"</p>");
					out.print("<a href="+rs.getString("html")+"?pd_name="+rs.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
                </div>  
                <h2>室外</h2>
				<div>
				<%
				while(rs_out.next())
				{
					if (rs_out.getString("category").equals("outdoor"))
					{
					out.print("<div class='card1'>");
					out.print("<a href=" + rs_out.getString("html")+ "?pd_name="+rs_out.getString("html").replace(".jsp","")+"><div class='box'><img src=" + rs_out.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs_out.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs_out.getString("name")+"</p>");
					out.print("<a href="+rs_out.getString("html")+"?pd_name="+rs_out.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
				</div>
                <h2>室內/外</h2>
				<div>
				<%
				while(rs_both.next())
				{
					if (rs_both.getString("ball_number").equals("SPA74096"))
					{
					out.print("<div class='card'>");
					out.print("<a href=" + rs_both.getString("html")+ "?pd_name="+rs_both.getString("html").replace(".jsp","")+ "><div class='box'><img src=" + rs_both.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs_both.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs_both.getString("name")+"</p>");
					out.print("<a href="+rs_both.getString("html")+"?pd_name="+rs_both.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
				<%
				while(rs_bothtwo.next())
				{
					if (rs_bothtwo.getString("ball_number").equals("SPA74077"))
					{
					out.print("<div class='card'>");
					out.print("<a href=" + rs_bothtwo.getString("html") + "?pd_name="+rs_bothtwo.getString("html").replace(".jsp","")+ "><div class='box'><img src=" + rs_bothtwo.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs_bothtwo.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs_bothtwo.getString("name")+"</p>");
					out.print("<a href="+rs_bothtwo.getString("html")+"?pd_name="+rs_bothtwo.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
				<%
				while(rs_boththree.next())
				{
					if (rs_boththree.getString("ball_number").equals("SPA74087"))
					{
					out.print("<div class='card'>");
					out.print("<a href=" + rs_boththree.getString("html") + "?pd_name="+rs_boththree.getString("html").replace(".jsp","")+ "><div class='box'><img src=" + rs_boththree.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs_boththree.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs_boththree.getString("name")+"</p>");
					out.print("<a href="+rs_boththree.getString("html")+"?pd_name="+rs_boththree.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
				
				</div>
                <h2>明星球 </h2>
                <div>
                <%
				while(rs_allstar.next())
				{
					if (rs_allstar.getString("category").equals("allstar"))
					{
					out.print("<div class='card'>");
					out.print("<a href=" + rs_allstar.getString("html")+ "?pd_name="+rs_allstar.getString("html").replace(".jsp","")+"><div class='box'><img src=" + rs_allstar.getString("image")+ " ></div></a> ");
					out.print("<P id='number'>"+rs_allstar.getString("ball_number")+"</P>");
					out.print("<p id='introduction'>"+rs_allstar.getString("name")+"</p>");
					out.print("<a href="+rs_allstar.getString("html")+"?pd_name="+rs_allstar.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
				%>
                </div>
            </div>
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
<%
}
	
	else{
		con.close();
		response.sendRedirect("login.jsp");


	}
%>