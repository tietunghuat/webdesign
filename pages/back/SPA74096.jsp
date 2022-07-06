	<%@page contentType="text/html"%>
	<%@page pageEncoding="UTF-8"%>
	<%@include file="db.jsp" %>
	<%
		String sql = "SELECT * FROM basketball.basketball_pages";
		
		
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		String username = session.getAttribute("username").toString();
		
		String pd_name = request.getParameter("pd_name");
		
		String sql_board = "SELECT * FROM basketball.guestbook WHERE `product_name` = '" + pd_name +"'";
		PreparedStatement ps_board = con.prepareStatement(sql_board);
		ResultSet rs_board = ps_board.executeQuery();
		
		
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
    <title>LeBron</title>
    <style>
        @import url(../../assets/css/header_footer.css);
        @import url(../../assets/css/SPA.css);
		@import url(../../assets/css/sidecart.css);
		@import url(../../assets/css/star.css);
    </style>
	 <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
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
						
						%></form>
						</div><a href='cart.jsp'><button class='cartcheck' id='checkmycart'>訂單結帳</button></a>
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

			<div class="detail">
				<%	
									while(rs.next())
								{
									if (rs.getString("ball_name").equals("SPA74096"))
									{			
										
										out.print("<img src="+rs.getString("image")+ " id='main'>");
										out.print("<h2>&nbsp;"+rs.getString("ball_name")+"</h2>");
										out.print("<h1>$"+rs.getString("price")+"&nbsp;</h1>");
										out.print("<hr size='5px' color='black' width='80%'>");
										out.print("<p>");
										out.print("<span>"+"材質:"+"</span>"+rs.getString("material"));
										out.print("</p>");
										out.print("<p>");
										out.print("<span>"+"適合場地:"+"</span>"+rs.getString("venue"));
										out.print("</p>");
										out.print("<p>");
										out.print("<span>"+"規格:"+"</span>"+rs.getString("size"));
										out.print("</p>");
										out.print("<p>");
										out.print("<span>"+"庫存:"+"</span>"+rs.getString("quantity"));
										out.print("</p>");
										out.print("<p>");
										out.print("<span>"+rs.getString("related")+"</span>");
										out.print("</p>");
										out.print("<a href="+rs.getString("page_one_html")+"?pd_name="+rs.getString("page_one_html").replace(".jsp","")+">"+"<img src="+rs.getString("page_one_image")+" id='second' style='margin-left: 35%;'></a>");
										out.print("<a href="+rs.getString("page_two_html")+"?pd_name="+rs.getString("page_two_html").replace(".jsp","")+">"+"<img src="+rs.getString("page_two_image")+" id='second' ></a><br>");
									%>
								<form action="add_cart.jsp"method="post"> <input type="text" name="image" value="<%=rs.getString("image")%>" hidden></form>
									
				<%}}					
				%>  
			   <div class="button">
					<span  id="reduce" onclick="reduce()" style="padding:10px;border:1px solid black">-</span>
					<input type="number" min="1" value="1" id="mount">
					<span  id="plus" onclick="plus()" style="padding:10px;border:1px solid black">+</span>
					<input type="button" value="加入購物車" id="join" onclick="addcart()">                
				</div>
			</div>
			<script>
				var mount=document.getElementById("mount");
				function plus(){
					mount.value=parseInt(mount.value)+1;
				}
				function reduce(){
					if(mount.value<=1){
						mount.value=1
					}
					else{
						mount.value=parseInt(mount.value)-1
					}
				}
			</script>

			 <div class="message">
            <h1 id="title">戰隊留言板</h1>
			
			<form name="form1" method="post" action="add.jsp">
            <div class="write">
			
				<span>PRODUCT:</span><br><input type="text" id="pd_name" name="pd_name" value=<%=pd_name%> readonly><br> 
                <span>EMAIL:</span><br><input type="email" name="mail"><br> 
                <span>MESSAGE:</span><br><textarea  wrap="soft" name="content"></textarea>
                <input type="submit" value="SUBMIT" id="submit" >			
		
			
			
            </div>
			<div class="stars">
                        
                            <input class="star star-5" id="star-5" type="radio" name="star" value="5"/>
                            <label class="star star-5" for="star-5"></label>
                            <input class="star star-4" id="star-4" type="radio" name="star" value="4"/>
                            <label class="star star-4" for="star-4"></label>
                            <input class="star star-3" id="star-3" type="radio" name="star" value="3"/>
                            <label class="star star-3" for="star-3"></label>
                            <input class="star star-2" id="star-2" type="radio" name="star" value="2"/>
                            <label class="star star-2" for="star-2"></label>
                            <input class="star star-1" id="star-1" type="radio" name="star" value="1" checked/>
                            <label class="star star-1" for="star-1"></label>
                        
            </div>
			</form>
            <hr color="#666666">
			<div class="comment">
			
				
			<%
			while(rs_board.next()){
				out.print("<div class='comment2'>");
				out.print("<img src='../../assets/image/person.png' style='height: 125px; float: left;background-color: white;'>");
				out.print("<h2>"+rs_board.getString("Mail")+"</h2>");
				out.print("<p>"+rs_board.getString("Content")+"</p>");
				out.print("<p style='font-size:10px;'>"+rs_board.getString("time")+"</p>");
				for(int i=0;i<Integer.parseInt(rs_board.getString("star"));i++){
					out.print("<input class='star star-2' id='star-1' type='radio' checked style='  color: #FE7;'>");
					out.print("<label class='star star-2' style='  color: #FE7;text-shadow: 0 0 20px #952;'></label>");
				}
				out.print("</div>");
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
			var pd_name =   document.getElementById("pd_name").value;

			function opencart() {
			  document.getElementById("CartSidebar").style.width = "30%";
			  document.getElementById("main").style.marginLeft = "30%";
			  document.getElementById("cartopenid").style.zIndex = "-1";

			}
			
			function addcart(){
				var quantity = document.getElementById("mount").value
				location.href = "add_cart.jsp?pd_name="+ pd_name +"&amount=" + quantity;
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