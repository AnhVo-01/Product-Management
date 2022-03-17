<%-- 
    Document   : index
    Created on : Feb 27, 2022, 9:55:25 PM
    Author     : AnhVo-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
    <script src="js/Jquery.js" crossorigin="anonymous"></script>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cooky : cookies) {
                if (cooky.getName().equals("username")) {
                    request.setAttribute("u_name", cooky.getValue());
                }
                if (cooky.getName().equals("password")) {
                    request.setAttribute("u_pass", cooky.getValue());
                }
            }
        }
    %>
</head>
<body>
    <header>
        <div class="nav-left">
            <h1>Login Page</h1>
        </div>
        <div class="nav-right"></div>
    </header>
    <div class="container">
        <div>
            <img src="img/brand.jpg" alt="background" class="img-bg">
        </div>
        <div class="main-container">
            <div class="main-content">
                <!-- ---------- account-page ---------------------------- -->
                <div class="account-page">
                    <div class="ln0">
                        <h1><i class="fa-solid fa-boxes-stacked"></i> Product Management</h1>
                    </div>
                    <div class="ln1">Recent logins</div>
                    <div class="ln2">Click your picture or add an account.</div>
                    <div class="account-login">
                        <div class="acc own bor">
                            <a href="#">
                                <div class="acc own ava">
                                    <img src="img/ava.png">
                                </div>
                                <div class="acc own text" style="color: #1876f2;">Administrator</div>
                            </a>
                        </div>

                        <a class="acc more bor" href="#">
                            <div onclick="register()">
                                <div class="acc more ava">
                                    <i class="add"></i>
                                </div>
                                <div class="acc more text" style="color: #1876f2;">Add Account</div>
                            </div>
                        </a>
                    </div>   
                </div>

                <div class="form-container">
                    <div class="form-btn">
                        <span onclick="login()">Login</span>
                        <span onclick="register()">Register</span>
                        <hr id="Indicator">
                    </div> 

                    <div class="in-form">
                        <!-- login---------------------------------- -->
                        <form action="LoginServlet" method="POST" id="LoginForm">
                            <p <c:if test="${not empty mess}">class="alert"</c:if>>${mess}</p>
                            <div class="input-text">
                                <input type="text" name="username" placeholder="Username" value="${u_name}">
                            </div>
                            <div class="input-text">
                                <input type="password" name="password" placeholder="Password" value="${u_pass}" id="myInput">
                                <i class="fa-regular fa-eye-slash showPass"></i>
                            </div>
                            <div class="save-pass">
                                <label class="save-pass-container">Remember password
                                    <input type="checkbox" name="remember">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <button type="submit" class="btn">Login</button>
                            <a href="#" style="color: blue;">Forgotten password?</a>
                        </form>

                        <!-- register-------------------------------- -->
                        <form action="UserController" method="GET" id="RegForm">
                            <div class="input-text">
                                <input type="email" name="uemail" placeholder="Email">
                            </div>
                            <div class="input-text">
                                <input type="text" name="udisplay" placeholder="Display Name">
                            </div>
                            <div class="input-text">
                                <input type="text" name="uname" placeholder="Username">
                            </div>
                            <div class="input-text">
                                <input type="password" name="upass" placeholder="Password">
                                <i class="fa-regular fa-eye-slash showPass"></i>
                            </div>
                            <button type="submit" class="btn">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p><i class="far fa-copyright"></i> Copyright 2022 - Made by AnhVo</p>
    </footer>
    <script>
        var LoginForm = document.getElementById("LoginForm");
        var RegForm = document.getElementById("RegForm");
        var Indicator = document.getElementById("Indicator");
        var x = document.getElementById("myInput");
        var show = document.querySelector(".showPass");

        show.onclick = () => {     
            if (x.type === "password") {
                x.type = "text";
                show.classList.replace("fa-eye-slash","fa-eye");
            } else {
                x.type = "password";
                show.classList.replace("fa-eye","fa-eye-slash");
            }
        };

        function register(){
            RegForm.style.transform = "translateX(0px)";
            LoginForm.style.transform = "translateX(-300px)";
            Indicator.style.transform = "translateX(105px)";
        }

        function login(){
            RegForm.style.transform = "translateX(300px)";
            LoginForm.style.transform = "translateX(0px)";
            Indicator.style.transform = "translateX(0px)";
        }
    </script>

</body>
</html>
