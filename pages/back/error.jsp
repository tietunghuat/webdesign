<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
        @import url(../../assets/css/header_footer.css);
        @import url(../../assets/css/register.css);
        
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


 <div class="loginwrap">
    <div class="login"><form name="login" action="check.jsp"  method="POST">
        <input id="tab1" type="radio" name="tab" class="signin" checked>
        <label for="tab1" class="tab">登入</label>
        <input id="tab2" type="radio" name="tab" class="signup">
        <label for="tab2" class="tab">註冊</label>
        <div class="loginform">
            <div class="signinform">
                <div class="group">
                    <label for="account" class="label">帳號</label>
                    <input id="account" type="text" class="input" name="username" placeholder="請輸入帳號">
                </div>
                <div class="group">
                    <label for="pass" class="label">密碼</label>
                    <input id="pass" type="password" class="input" name="password" data-type="password" placeholder="請輸入密碼">
                    <input type="checkbox" onclick="showpassword()" data-type="text"><font class="font">顯示密碼</font>
                    <!--<img id="demo_img" onclick="showpassword()" src="hide.png">-->
                </div>
<h4><font color="red">*帳號與密碼不符</font></h4>
                <div class="group">
                    <input type="submit" class="button" value="登入"> 
                </div>
            </div>
            <div class="signupform">
                <div class="group">
                    <label for="account" class="label">帳號</label>
                    <input id="account" type="text" class="input" placeholder="請設定帳號" name="username">
                </div>
                <div class="group">
                    <label for="setpass" class="label">密碼</label>
                    <input id="setpass" type="password" class="input" data-type="password" placeholder="請設定密碼" name="password">
                </div>
                <div class="group">
                    <label for="checkpass" class="label">確認密碼</label>
                    <input id="checkpass" type="password" class="input" data-type="password" placeholder="請再次輸入密碼">
                    <input type="checkbox" onclick="showsetpassword()" data-type="text"><font class="font">顯示密碼</font>
                </div>
                <div class="group">
                    <label for="setemail" class="label" name="email">信箱</label>
                    <input id="setemail" type="text" class="input" placeholder="請設定信箱地址">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="註冊">
                </div>
            </div>
        </div></form>
    </div> 
	
    </div>     

    <div class="footer">
        <div class="footer1">
            <h3 align="center">準星版權所有</h3>
            <h3 align="center">email: a0906397408@gmail.com</h3>
        </div>
    </div>



        
    <script type="text/javascript">
    function showpassword(){
            var a = document.getElementById("pass");
            if (a.type == "password"){
                a.type = "text";
            }
            else{
                a.type = "password";
            }
        }
    function showsetpassword(){
            var a = document.getElementById("setpass");
            var b = document.getElementById("checkpass");
            if (a.type == "password"){
                a.type = "text";
                b.type = "text";
            }
            else{
                a.type = "password";
                b.type = "password";
            }
        }
        
        /*var demoImg = document.getElementById("demo_img");
        var demoinput = document.getElementById("pass");
        function showpassword(){
            if (demoinput.type == "password"){
                demoinput.type = "text";
                demo_img.src = "visible.png";
            }
            else{
                demoinput.type = "password";
                demo_img.src = "hide.png";
            }
        }*/
        
    </script>
</body>
</html>