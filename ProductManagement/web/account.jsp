<%-- 
    Document   : account
    Created on : Feb 25, 2022, 10:55:13 AM
    Author     : AnhVo-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account Page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/account.css">
    <script src="https://kit.fontawesome.com/a4edd5786f.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="img/ava.png">
                </span>

                <div class="text logo-text">
                    <span class="name">${sessionScope.AccoutList[0].displayname}</span>
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
                        <a href="home.jsp">
                            <i class="fa-solid fa-house fa-lg icon"></i>
                            <span class="text nav-text">Dashboard</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="Customer">
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
                            <i class="fa-solid fa-truck-fast fa-lg icon"></i>
                            <span class="text nav-text">Transport</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class="fa-solid fa-warehouse fa-lg icon"></i>
                            <span class="text nav-text">Warehouse</span>
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
                    <div class="status status-header">
                        <span class="status status_user">User</span>
                        <!-- <span class="status-inprogress">In Progress</span> -->
                        <span class="status status_mod">Mod</span>
                        <span class="status status_admin">Admin</span>
                    </div>
                </div>
                <hr>

                <table id="myTable">
                    <thead>
                        <tr>
                            <td>
                                <span class="status status_add">
                                    <i class="fa-solid fa-circle-plus add_more"></i>
                                </span>
                            </td>
                            <td>ID</td>
                            <td>User Name</td>
                            <td>Password</td>
                            <td>Display Name</td>
                            <td>Email</td>
                            <td>Status</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.AccoutList}" var="a" varStatus="loop">
                            <tr>
                                <td>
                                    <span class="status">
                                        <a href="AccountDelete?aid=${a.id}"><i class="fa-solid fa-trash-can remove"></i></a>
                                    </span>
                                </td>
                                <td><c:out value="${a.id}"/></td>
                                <td><c:out value="${a.username}"/></td>
                                <td><c:out value="${a.password}"/></td>
                                <td><c:out value="${a.displayname}"/></td>
                                <td><c:out value="${a.email}"/></td>
                                <td>
                                    <c:choose>
                                        <c:when test="${a.status.isAdmin == true}">
                                            <span class="status status_admin"><i class="fa-solid fa-pen"></i></span>
                                        </c:when>
                                        <c:when test="${a.status.isMod == true}">
                                            <span class="status status_mod"><i class="fa-solid fa-pen"></i></span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="status status_user"><i class="fa-solid fa-pen"></i></span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
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
                window.location.href = 'AccountDelete?aid='+id;
            }
        };
    </script>
    <script>
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
        });

        searchBtn.addEventListener("click" , () =>{
            sidebar.classList.toggle("close");
            main.classList.toggle('active');
        });

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
