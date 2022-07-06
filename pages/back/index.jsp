<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%
	String sql = "SELECT * FROM basketball.index";
	
	
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	
	PreparedStatement ps_allstar = con.prepareStatement(sql);
	ResultSet rs_allstar = ps_allstar.executeQuery();
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
        @import url(../../assets/css/index.css);
		@import url('https://fonts.googleapis.com/css2?family=ZCOOL+QingKe+HuangYou&display=swap');
    </style>
</head>
<body>
    <div class="mask">
        <img src="../../assets/image/logo1.png" id="show">
        <div class="mask2"></div>
        <img src="../../assets/image/fireball.png" id="fireball">
    </div>
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
        <div class="slogan"><span>為慶祝CYIM資管男籃進八強 還沒止步!!</span> 
            <span>主力提到的明星球都5折~~!!</span>
        
        </div>
        <div class="team">
		<%	
				while(rs.next())
				{
					if (rs.getString("category").equals("image"))
					{
					out.print("<div>");
					out.print("<img src=" + rs.getString("image")+ ">");
					out.print("<span class='info'>"+rs.getString("content")+"</span>");
					out.print("</div>");
					}
				
				}
		%>
                
                
        </div>
        <div class="sale">
            <h2><span>H</span>
                <span>o</span>
                <span>t</span>&nbsp;
                <span>&</span>&nbsp;
                <span>S</span>
                <span>a</span>
                <span>l</span>
                <span>e</span>
            </h2>
            <div class="rank">
                <img src="../../assets/image/2.png">
                <img src="../../assets/image/1.png" style="width:150px;height:150px;">
                <img src="../../assets/image/3.png">
            </div>
			<%	
				while(rs_allstar.next())
				{
					if (rs_allstar.getString("category").equals("allstar"))
					{
					out.print("<div class='card'>");
					out.print("<a href="+ rs_allstar.getString("html") +"?pd_name="+rs_allstar.getString("html").replace(".jsp","")+ "><div class='box'><img src=" + rs_allstar.getString("image")+ "></div></a>");
					out.print("<P id='number'>"+rs_allstar.getString("name")+"</P>");
					out.print("<p id='introduction'>"+rs_allstar.getString("content")+"</p>");
					out.print("<a href="+rs_allstar.getString("html")+"?pd_name="+rs_allstar.getString("html").replace(".jsp","")+"><input type='button' value='了解更多!!' id='understand'></a>");
					out.print("</div>");
					}
				}
			%>
			
<%
     application.setAttribute("counter", "1");
     
%>
<div class="counter" style="text-align: center; font-size: 50px; font-family: 'ZCOOL QingKe HuangYou', cursive;color: white;">
<%
  
  int counter;
  String strNo = (String)application.getAttribute("counter");//讀application變數
  counter = Integer.parseInt(strNo); //轉成整數
  counter++;                                        //計數器加1
  strNo = String.valueOf(counter);    //轉成字串
  application.setAttribute("counter", strNo);//寫application變數
%>
您是第<%= counter %>位貴客！</h3>
</div>

        </div>
    </div>

    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>
</body>
</html>