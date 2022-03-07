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
        <link rel="stylesheet" href="css/style.css">
</head>
<body>
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
    <form name="login" action="LoginServlet" method="POST">
        <div class="Login-Popup" id="myModal">
            <div class="Log_page">
                <div class="login-pop">
                    <div>
                        <h1 style="text-align: center; color: #404040;">Login Account</h1>
                    </div>

                    <p <c:if test="${not empty mess}">class="alert"</c:if>>${mess}</p>
                        <hr style="border: 0; height: 1px; background-color: #9a9a9a; margin: 20px 0 10px;">

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

                    <!--Login button-->
                    <button type="submit" value="Login" class="btn">Login</button>
                    <a href="#" style="color: blue;">Forgotten password?</a>
                </div>
            </div>
        </div>
    </form>
                            
    <script>
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
    </script>
</body>
</html>
