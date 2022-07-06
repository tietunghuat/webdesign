<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%
	String sql = "SELECT * FROM basketball.aboutus";
	
	
	PreparedStatement ps_rearone = con.prepareStatement(sql);
	ResultSet rs_rearone = ps_rearone.executeQuery();
	
	PreparedStatement ps_reartwo = con.prepareStatement(sql);
	ResultSet rs_reartwo = ps_reartwo.executeQuery();
	
	PreparedStatement ps_frontone = con.prepareStatement(sql);
	ResultSet rs_frontone = ps_frontone.executeQuery();
	
	PreparedStatement ps_fronttwo = con.prepareStatement(sql);
	ResultSet rs_fronttwo = ps_fronttwo.executeQuery();
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>aboutus</title>
    <style>
        @import url(../../assets/css/aboutus.css);
        @import url(../../assets/css/header_footer.css);
        
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
        <p class="sentence1">關於我們</p><br>
        <p class="sentence2">ａｂｏｕｔ　ｕｓ．．．．</p>
        <table class="membertable">
            <tr>
                <td>
								<%	
								while(rs_rearone.next())
								{
									if (rs_rearone.getString("category").equals("rear_one"))
									{
									out.print("<div class='teammember'>");
									out.print("<div class='Lmember'>");
									out.print("<div class='Lcardb'"+"style='background-image: url("+rs_rearone.getString("background")+");'"+">");
									out.print("</div>");
									out.print("<div class='Lcardfr'"+"style='background-image: url("+rs_rearone.getString("image")+");'"+">");
									out.print("</div>");
									out.print("<div class='Lcontact'>");
									out.print("<label class='label'>");
									out.print(rs_rearone.getString("name")+"<br>");
									out.print("<h5>"+rs_rearone.getString("class")+"</h5>");
									out.print("<font class='font'>"+rs_rearone.getString("content")+"</font>");
									out.print("</label>");
									out.print("<div class='social'>");
									out.print("<a href="+rs_rearone.getString("fblink")+"target='_blank'>");
									out.print("<img src="+rs_rearone.getString("fbimage")+">");
									out.print("</a>");
									out.print("<a href="+rs_rearone.getString("iglink")+"target='_blank'>");
									out.print("<img src="+rs_rearone.getString("igimage")+">");
									out.print("</a>");
									out.print("<img src="+rs_rearone.getString("mailimage")+">");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									}			
									}
								%>          
                </td>
                <td>
				<%	
							while(rs_reartwo.next())
							{
								if (rs_reartwo.getString("category").equals("rear_two"))
									{
									out.print("<div class='teammember'>");
									out.print("<div class='member'>");
									out.print("<div class='cardb'"+"style='background-image: url("+rs_reartwo.getString("background")+");'"+">");
									out.print("</div>");
									out.print("<div class='cardfr'"+"style='background-image: url("+rs_reartwo.getString("image")+");'"+">");
									out.print("</div>");
									out.print("<div class='contact'>");
									out.print("<label class='label'>");
									out.print(rs_reartwo.getString("name")+"<br>");
									out.print("<h5>"+rs_reartwo.getString("class")+"</h5>");
									out.print("<font class='font'>"+rs_reartwo.getString("content")+"</font>");
									out.print("</label>");
									out.print("<div class='social'>");
									out.print("<a href="+rs_reartwo.getString("fblink")+"target='_blank'>");
									out.print("<img src="+rs_reartwo.getString("fbimage")+">");
									out.print("</a>");
									out.print("<a href="+rs_reartwo.getString("iglink")+"target='_blank'>");
									out.print("<img src="+rs_reartwo.getString("igimage")+">");
									out.print("</a>");
									out.print("<img src="+rs_reartwo.getString("mailimage")+">");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									}			
									}
				%>										            		
                </td>
             </tr>
             <tr>
                <td>
				<%	
								while(rs_frontone.next())
								{
									if (rs_frontone.getString("category").equals("front_one"))
									{
									out.print("<div class='teammember'>");
									out.print("<div class='Lmember'>");
									out.print("<div class='Lcardb'"+"style='background-image: url("+rs_frontone.getString("background")+");'"+">");
									out.print("</div>");
									out.print("<div class='Lcardfr'"+"style='background-image: url("+rs_frontone.getString("image")+");'"+">");
									out.print("</div>");
									out.print("<div class='Lcontact'>");
									out.print("<label class='label'>");
									out.print(rs_frontone.getString("name")+"<br>");
									out.print("<h5>"+rs_frontone.getString("class")+"</h5>");
									out.print("<font class='font'>"+rs_frontone.getString("content")+"</font>");
									out.print("</label>");
									out.print("<div class='social'>");
									out.print("<a href="+rs_frontone.getString("fblink")+"target='_blank'>");
									out.print("<img src="+rs_frontone.getString("fbimage")+">");
									out.print("</a>");
									out.print("<a href="+rs_frontone.getString("iglink")+"target='_blank'>");
									out.print("<img src="+rs_frontone.getString("igimage")+">");
									out.print("</a>");
									out.print("<img src="+rs_frontone.getString("mailimage")+">");
									out.print("</div>");
									out.print("</div>");

									out.print("</div>");
									out.print("</div>");
									}			
									}
								%>      
                    </div>
                </td>
                <td>
				<%	
								while(rs_fronttwo.next())
								{
									if (rs_fronttwo.getString("category").equals("front_two"))
									{
									out.print("<div class='teammember'>");
									out.print("<div class='member'>");
									out.print("<div class='cardb'"+"style='background-image: url("+rs_fronttwo.getString("background")+");'"+">");
									out.print("</div>");
									out.print("<div class='cardfr'"+"style='background-image: url("+rs_fronttwo.getString("image")+");'"+">");
									out.print("</div>");
									out.print("<div class='contact'>");
									out.print("<label class='label'>");
									out.print(rs_fronttwo.getString("name")+"<br>");
									out.print("<h5>"+rs_fronttwo.getString("class")+"</h5>");
									out.print("<font class='font'>"+rs_fronttwo.getString("content")+"</font>");
									out.print("</label>");
									out.print("<div class='social'>");
									out.print("<a href="+rs_fronttwo.getString("fblink")+"target='_blank'>");
									out.print("<img src="+rs_fronttwo.getString("fbimage")+">");
									out.print("</a>");
									out.print("<a href="+rs_fronttwo.getString("iglink")+"target='_blank'>");
									out.print("<img src="+rs_fronttwo.getString("igimage")+">");
									out.print("</a>");
									out.print("<img src="+rs_fronttwo.getString("mailimage")+">");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									out.print("</div>");
									}			
									}
								%>
                </td>
             </tr>   
        </table>>
    </div>

    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>
</body>
</html>