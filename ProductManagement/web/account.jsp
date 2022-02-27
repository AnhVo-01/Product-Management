<%-- 
    Document   : account
    Created on : Feb 25, 2022, 10:55:13 AM
    Author     : AnhVo-PC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="stylesheet" href="css/account.css">
        <script src="https://kit.fontawesome.com/a4edd5786f.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="sidebar close">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="images/logo.png">
                    </span>

                    <div class="text logo-text">
                        <span class="name">TomatoTM</span>
                        <span class="profession">Time management</span>
                    </div>
                </div>
                <i class="fa-solid fa-angle-right fa-sm toggle"></i>
            </header>

            <div class="menu-bar">
                <div class="menu">

                    <li class="search-box">
                        <i class="fa-solid fa-magnifying-glass fa-lg icon"></i>
                        <input type="text" placeholder="Search...">
                    </li>

                    <ul class="menu-links">
                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-house fa-lg icon"></i>
                                <span class="text nav-text">Dashboard</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-user-group fa-lg icon"></i>
                                <span class="text nav-text">Customers</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-bell fa-lg icon"></i>
                                <span class="text nav-text">Notifications</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-chart-pie fa-lg icon"></i>
                                <span class="text nav-text">Analytics</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-heart fa-lg icon"></i>
                                <span class="text nav-text">Likes</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="#">
                                <i class="fa-solid fa-lock fa-lg icon"></i>
                                <span class="text nav-text">Accounts</span>
                            </a>
                        </li>

                    </ul>
                </div>

                <div class="bottom-content">
                    <li class="">
                        <a href="#">
                            <i style="transform: rotate(180deg);" class="fa-solid fa-right-from-bracket fa-2xl icon"></i>
                            <span class="text nav-text">Logout</span>
                        </a>
                    </li>

                    <li class="mode">
                        <div class="sun-moon">
                            <i class="fa-solid fa-moon fa-lg icon moon"></i>
                            <i class="fa-solid fa-sun fa-lg icon sun"></i>
                        </div>
                        <span class="mode-text text">Dark mode</span>

                        <div class="toggle-switch">
                            <span class="switch"></span>
                        </div>
                    </li>               
                </div>
            </div>
        </nav>

        <!-- main -->
        <div class="main">
            <div class="home">
                <div class="text">Accounts Management</div>
            </div>

            <!-- order details list -->
            <div class="details">
                <div class="card-box recent-orders">
                    <div class="card-header">
                        <h2>Accounts</h2>
                        <!-- <a href="#" class="btn">View All</a> -->
                        <div class="status-header">
                            <span class="status_user">User</span>
                            <!-- <span class="status-inprogress">In Progress</span> -->
                            <span class="status_mod">Mod</span>
                            <span class="status_admin">Admin</span>
                        </div>
                    </div>
                    <hr>
                    <!-- <button onclick="myCreateFunction()">Create row</button> -->

                    <table id="myTable">
                        <thead>
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>User Name</th>
                                <th>Password</th>
                                <th>Display Name</th>
                                <th>Email</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Account> list = (ArrayList<Account>) request.getAttribute("StudentList"); 
                                for (Account acc : list) {
                            %>
                            <tr>
                                <td><a class="remove" href="#" onclick="warning(<%=acc.getId()%>)"><i class="fa-solid fa-trash-can"></i></a></td>
                                <td><%=acc.getId()%></td>
                                <td><%=acc.getUsername()%></td>
                                <td><%=acc.getPassword()%></td>
                                <td><%=acc.getDisplayname()%></td>
                                <td><%=acc.getEmail()%></td>
                                <td>
                                    <span class="status_admin status"><i class="fa-solid fa-pen"></i></span>
                                </td>
                            </tr>
                            <%};%>
                        </tbody>
                    </table>
                </div>

                <div class="end">
                    <i class="far fa-copyright"> This page was created by Anh Vo - 2022</i>
                </div>
            </div>
        </div>

        <script>
            function warning(id){
                var option = confirm('Do you want to continue?');
                if(option === true){
                    window.location.href = 'StudentDelete?sid='+id;
                }
            }
        
            const body = document.querySelector('body'),
            sidebar = body.querySelector('nav'),
            toggle = body.querySelector(".toggle"),
            searchBtn = body.querySelector(".search-box"),
            modeSwitch = body.querySelector(".toggle-switch"),
            modeText = body.querySelector(".mode-text");

            let main = document.querySelector('.main');

            toggle.addEventListener("click" , () =>{
                sidebar.classList.toggle("close");
                main.classList.toggle('active');
            })

            searchBtn.addEventListener("click" , () =>{
                sidebar.classList.toggle("close");
                main.classList.toggle('active');
            })

            modeSwitch.addEventListener("click", () => {
                body.classList.toggle("dark");

                if (body.classList.contains("dark")) {
                    modeText.innerText = "Light mode";
                } else {
                    modeText.innerText = "Dark mode";

                }
            });
        </script>
    </body>
</html>
