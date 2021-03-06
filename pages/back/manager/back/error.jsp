<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>

        *,:after,:before{
            -webkit-box-sizing:border-box;
              -moz-box-sizing: border-box;
                   box-sizing: border-box; 
                  
        }

        html,body{
            height:95%;
        }

        body{
            background-image: url(image/wbg.jpg);
            background-repeat:no-repeat;
            background-size:cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .loginwrap{
            width:100%;
            margin:auto;
            max-width:600px;
	        min-height:800px;
            position:relative;
            
        }

        .clearfix :after,
        .clearfix :before{
            content: '';
            display : table;
        }

        .clearfix :after {
            clear: both;
            display: block;
        }
        
        .login{
            border:5px solid rgb(228, 96, 8);
            position:absolute;
            padding:90px 70px 50px 70px;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10%;
            height:100%;
            width:100%;
        }

        .login .signinform,
        .login .signupform{
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            transform: rotateY(180deg);
            backface-visibility: hidden;
            transition: all 0.4s linear;
        }

        .login .signin,
        .login .signup{
            display: none;
        }

        .login .tab{
            font-size: 40px;
            font-weight: bolder;
            padding-bottom: 10px;
            margin:0 20px 10px 0;
            display:inline-block;
            border-bottom:2px solid transparent;
        }

        .login .signin:checked + .tab,
        .login .signup:checked + .tab {
            color: #fff;
            border-color: rgb(228, 96, 8);
        }

        .loginform {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .loginform .group {
            margin-bottom: 15px;
        }

        .loginform .group .label,
        .loginform .group .input,
        .loginform .group .button {
            outline:none;
            width: 100%;
            color: rgb(0, 0, 0);
            display: block;
        }

        .loginform .group .input,
        .loginform .group .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background:rgb(255, 255, 255);
        }

        .loginform .group input[data-type="password"] {
            text-security:circle;
        }

        .loginform .group input[type="checkbox"] {
            margin: 5% 3%;
        }

        .font{
            color:rgb(255, 255, 255);
            font-size: 20px;
            font-weight: bold;
        }

        /*.loginform .group img[data-type="password"] {
            width: 20px;
            height: 5px;
            position: absolute;  
            right: 0px; 
            margin: 15px;
        }*/

        .loginform .group .label {
            color: rgb(255, 255, 255);
            font-size: 20px;
            font-weight: bolder;
            margin:5px;
        }

        .loginform .group .input {
            color: rgb(0, 0, 0);
            font-size: 20px;
            font-weight: bolder;
            margin:5px;
        }

        .loginform .group .button {
            font-size: 20px;
            font-weight: bolder;
            margin-top: 6%;
            background: #ee9611;
            color:white;
            transition: all 0.5s;
            cursor: pointer;
        }

        label {
            color: rgb(255, 255, 255);
        }


        .login .signin:checked + .tab + .signup + .tab + .loginform .signinform {
            transform: rotate(0);
        }

        .login .signup:checked + .tab + .loginform .signupform {
            transform: rotate(0);
        }

        .loginform .group .button:hover{
            background: #ee8711;
        }

        .loginform .group .button:active{
            background: #ee6911;
            transform: translateY(6px);
        }
    </style>
</head>
<body>	

    <div class="loginwrap">
    <div class="login">
	 <form name="login" action="check.jsp"  method="POST">
        <input id="tab1" type="radio" name="tab" class="signin" checked>
        <label for="tab1" class="tab">??????</label>
        <input id="tab2" type="radio" name="tab" class="signup">
        <label for="tab2" class="tab">??????</label>
        <div class="loginform">
            <div class="signinform">
                <div class="group">
                    <label for="account" class="label">??????</label>
                    <input id="account" type="text" class="input" name="username" placeholder="???????????????">
                </div>
                <div class="group">
                    <label for="pass" class="label">??????</label>
                    <input id="pass" type="password" class="input" name="password" data-type="password" placeholder="???????????????">
                    <input type="checkbox" onclick="showpassword()" data-type="text"><font class="font">????????????</font>
                    <!--<img id="demo_img" onclick="showpassword()" src="hide.png">-->
                </div>
<h4><font color="red">*?????????????????????</font></h4>
                <div class="group">
                    <input type="submit" class="button" value="??????"> 
                </div>
            </div>
			</form>
            <div class="signupform">
			<form  action="register1.jsp"  method="POST">
                <div class="group">
                    <label for="account" class="label">??????</label>
                    <input id="account" type="text" class="input" placeholder="???????????????" name="username">
                </div>
                <div class="group">
                    <label for="setpass" class="label">??????</label>
                    <input id="setpass" type="password" class="input" data-type="password" placeholder="???????????????" name="password">
                </div>
                <div class="group">
                    <label for="checkpass" class="label">????????????</label>
                    <input id="checkpass" type="password" class="input" data-type="password" placeholder="?????????????????????" name="password1">
                    <input type="checkbox" onclick="showsetpassword()" data-type="text"><font class="font">????????????</font>
                </div>
                <div class="group">
                    <label for="setemail" class="label">??????</label>
                    <input id="setemail" type="text" class="input" placeholder="?????????????????????" name="email">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="??????">
                </div>
				</form>
            </div>
        </div>
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