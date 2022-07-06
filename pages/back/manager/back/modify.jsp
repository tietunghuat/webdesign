<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%> 
<%@ page import = "java.io.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify</title>
    <style>
        @import url(../assets/css/header_footer.css);
        @import url(../assets/css/modify.css);
    </style>
</head>
<body>
    <header>
        <div class="head">
            
            <a href="index.html"><div class="fire"><img src="../assets/image/logo.png" id="logo">
            <img src="../assets/image/logo3.png" id="logo2">
            </div></a>
            <ul>
                <a href="allproduct.jsp"><li>產品介紹</li></a>
                <a href="member.jsp"><li>會員專區</li></a>
                <a href="aboutus.jsp"><li>關於我們</li></a>
                <a href="logout.jsp"><li>登出</li></a>
            </ul>
            <div class="search"><input type="search" placeholder="請輸入關鍵字" style="height: 40px;">
                <input src="../assets/image/search.png" type="image" style="height: 40px;">
                
            </div> 
        </div>
    </header>

    <div class="contain">
        <h1>MODIFY</h1>
        <div class="photo">
            <div class="photo2"><img src="../assets/image/VIP.png"></div>
        </div>
        <div class="personal">
            <table action="modify1.jsp"  method="POST">
                <tr>
                    <td>名字</td>
                    <td><input type="text" id="name" required name="name"></td>
                    <td>電子郵件</td>
                    <td><input type="email" id="email" name="email"></td>
                </tr>
                <tr>
                    <td>性別</td>
                    <td><input type="radio" name="gender" id="man"><label for="man">男</label><input type="radio" name="gender" id="woman"><label for="woman">女</label></td>
                    <td>電話</td>
                    <td><input type="tel" name="phone" id="tel" required></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input type="text" id="address" required name="address"></td>
                    <td>生日</td>
                    <td><input type="date" id="birth" required name="birth"></td>
                </tr>
            </table>
            <a href="modify1.jsp"><input type="button" value="確定" id="lock" class="revise"></a>
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