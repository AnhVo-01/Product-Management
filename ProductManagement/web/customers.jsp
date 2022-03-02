<%-- 
    Document   : customers
    Created on : Feb 28, 2022, 9:55:29 AM
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
        <title>Customers</title>
        <link rel="stylesheet" href="css/customer.css">
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
                    <span class="name">${sessionScope.user.displayname}</span>
                    <span class="profession">Product management</span>
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
                        <a href="AccountList">
                            <i class="fa-solid fa-lock fa-lg icon"></i>
                            <span class="text nav-text">Accounts</span>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="bottom-content">
                <li class="">
                    <a href="LogoutServlet">
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
            <div class="text">Customers Management</div>
        </div>

        <!-- order details list -->
        <div class="details">
            <div class="card-box recent-orders">
                <div class="card-header">
                    <h2>Customer</h2>
                </div>
                <hr style="border: 0; height: 1px; background-color: #000;">
                <table>
                    <thead>
                        <tr>
                            <td>Name</td>
                            <td>Phone</td>
                            <td>City</td>
                            <td>Address</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.CusList}" var="c" varStatus="loop">
                            <tr id="show-info">                      
                                <td id="text"><c:out value="${c.name}"/></td>
                                <td id="text" style="display: none;"><c:out value="${c.cusid}"/></td>
                                <td id="text"><c:out value="+(84) ${c.phone}"/></td>
                                <td id="text" style="display: none;"><c:out value="${c.email}"/></td>
                                <td id="text" style="display: none;"><c:out value="${c.fax}"/></td>
                                <td id="text"><c:out value="${c.cusAddress.city}"/></td>
                                <td id="text"><address><c:out value="${c.cusAddress.street}"/></address></td>
                            </tr>
                            <tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <!-- customer - info -->
            <div class="card-box recent-cus">
                <div class="card-header">
                    <h2>Info</h2>
                </div>
                <hr style="border: 0; height: 1px; background-color: #000;">
                <table>
                    <tr>
                        <td width ="60px"><i class="fa-solid fa-circle-user fa-3x imgBx"></i></td>
                        <td>
                            <h4 id="out-text">Customer Name</h4>
                            <span id="out-text">ID</span>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone: </td>
                        <td id="out-text">numbers</td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td id="out-text">username@email.com</td>
                    </tr>
                    <tr>
                        <td>Fax: </td>
                        <td id="out-text">(Empty)</td>
                    </tr>
                    <tr>
                        <td>City: </td>
                        <td id="out-text">City Name</td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td><address id="out-text">Street Address</address></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <script>
        const btn = document.querySelector('#show-info'),
            x = document.querySelectorAll("#text"),
            y = document.querySelectorAll("#out-text");
        const text = [];
        btn.addEventListener("click" , () =>{
            for (let i = 0; i < x.length; i++) {
                text[i] = x[i].innerText;
            }
            for(let j = 0; j < y.length; j++){
                y[j].innerHTML = text[j];
            }
        });
    </script>
    <script src="js/navController.js"></script>
</body>
</html>
