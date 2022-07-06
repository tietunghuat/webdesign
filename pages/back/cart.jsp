<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%

	String username = session.getAttribute("username").toString();
	

	String cart_sql = "SELECT * FROM basketball.`cart` WHERE `memberID` = '" + username+"'";
	PreparedStatement cart_ps = con.prepareStatement(cart_sql);
	ResultSet cart_rs = cart_ps.executeQuery();


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url(../../assets/css/header_footer.css);
        @import url(../../assets/css/cart.css);

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

    <div class="contain">

        <form class="billform">
            <fieldset class=bill>
              <legend class="billlegend">
                <b>&nbsp訂購表&nbsp</b>
              </legend>
			                <label for="yourname"><i class=""></i> 會員帳號</label>

			   <input type="text" id="uname" value="<%=username%>" readonly>

              <label for="yourname"><i class=""></i> 您的姓名</label>
              <input type="text" id="yourname" name="yourname" placeholder="請輸入您的姓名">
              <label for="gender"><i class=""></i> 性別</label>
              <input type="radio" id="gender" name="gender" value="male" checked>男
              <input type="radio" id="gender" name="gender" value="female">女
              <label for="email"><i class=""></i> 電子信箱</label>
              <input type="text" id="email" name="email" placeholder="請輸入您的電子信箱">
              <label for="phone"><i class=""></i> 電話</label>
              <input type="text" id="phone" name="phone" placeholder="請輸入您的手機號碼">
              <label for="address"><i class=""></i> 地址</label>
              <input type="text" id="address" name="address" placeholder="請輸入收件地址">
              <label for="pay"><i class=""></i> 付款方式</label>
              <input type="radio" id="pay" name="pay" value="delivery" checked>貨到付款
              <input type="radio" id="pay" name="pay" value="PCSC711">超商取貨付款(7-11)
              <input type="text" id="address2" name="address2" placeholder="請輸入門市地址(貨到付款免填)">

              
            </fieldset>
            
            <div class="product">
                <div class="myproduct">
                    <h3>購物車 <span class="price">
						<i class="fa fa-shopping-cart"></i> 
							</h3>
                    <hr>
					
					<%
						int count = 0;
						int total = 0;
						while(cart_rs.next()){
							count++;
							total +=  Integer.parseInt(cart_rs.getString("price"));
							if (cart_rs.getString("name").equals("Stephen Curry"))
								out.print("<p><a href='curry.jsp?pd_name=curry'>Stephen Curry</a><span class='price'>數量"+cart_rs.getString("quantity")+"</span><span class='price'>$"+cart_rs.getString("price")+"</span></p>");
							else if (cart_rs.getString("name").equals("Kobe Bryant"))
								out.print("<p><a href='kobe.jsp?pd_name=kobe'>Kobe Bryant</a><span class='price'>數量"+cart_rs.getString("quantity")+"</span><span class='price'>$"+cart_rs.getString("price")+"</span></p>");
							else if (cart_rs.getString("name").equals("LeBron James"))	
								out.print("<p><a href='lebron.jsp?pd_name=lebron'>LeBron James</a><span class='price'>數量"+cart_rs.getString("quantity")+"</span><span class='price'>$"+cart_rs.getString("price")+"</span></p>");
							else
								out.print("<p><a href='" +cart_rs.getString("name")+ ".jsp?pd_name=" + cart_rs.getString("name")+"'>"+cart_rs.getString("name")+"</a><span class='price'>數量"+cart_rs.getString("quantity")+"</span><span class='price'>$"+cart_rs.getString("price")+"</span></p>");
						}
					%>
                    <hr>
					<p>商品 <span class="price"><b>共(<%=count%>)項</b></span></p>
                    <p>總共 <span class="price"><b>$<%=total%></b></span></p>
                </div>
             </div> 
              
        
          </form>
		
		
		<center>
			<input type="submit" value="確認送出" class="buy" onclick="order()">
		</center>


    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>
</body>
<script>
	
	function order(){
		var uname = document.getElementById("uname").value;
		var name = document.getElementById("yourname").value;
		var gender = document.getElementById("gender").value;
		var email = document.getElementById("email").value;
		var phone = document.getElementById("phone").value;
		var address = document.getElementById("address").value;
		var pay = document.getElementById("pay").value;
		var address2 = document.getElementById("address2").value;

		var path= "order_insert.jsp?uname=" + uname;
		path += "&name="+name+"&gender="+gender+"&email="+email;
		path += "&phone="+phone+"&address="+address+"&pay="+pay+"&address2="+address2+"&total="+<%=total%>;
		console.log(path);
		location.href = path;
	}

</script>

</html>