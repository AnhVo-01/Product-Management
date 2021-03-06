
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <script src="js/Jquery.js"></script>
    <link rel="stylesheet" href="css/userpage.css">
</head>
<body>
    <header>
        <div class="nav-left">
            <h1 id="get-title">${sessionScope.user.displayname}</h1>
            <ul>
                <li><i class="fa-solid fa-bell fa-lg"></i></li>
            </ul>
        </div>
        <div class="nav-right">
            <div class="search-box">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Search">
            </div>
            <div class="nav-user-icon online" onclick="settingsMenuToggle()">
                <img src="img/user.jpg" alt="profile-pic">
            </div>
        </div>
        
        <!-- ------------- settings menu ---------------- -->
        <div class="settings-menu">
            <!-- <div id="dark-btn">
                <span></span>
            </div> -->
            <div class="settings-menu-inner" style="padding: 20px;">
                <div class="user-profile">
                    <img src="img/user.jpg">
                <div>
                    <p>${sessionScope.user.displayname}</p>
                </div>
            </div>
            <hr>
            <div class="user-profile">
                <img src="img/feedback.png">
                <div>
                    <p>Give Feedback</p>
                    <a href="#">Help us to bring the best experience</a>
                </div>
            </div>
            <hr>

            <div class="setting-links">
                <a href="userprofile.jsp">
                    <img src="img/setting.png" class="setting-icon">Settings Account
                </a>
                <img src="img/arrow.png" width="10px">
            </div>
            <div class="setting-links">
                <a href="#">
                    <img src="img/help.png" class="setting-icon">Help & Support 
                </a>
                <img src="img/arrow.png" width="10px">
            </div>
            <div class="setting-links">
                <a href="#">
                    <img src="img/display.png" class="setting-icon">Display & Accessibility
                </a>
                <img src="img/arrow.png" width="10px">
            </div>
            <div class="setting-links">
                <a href="LogoutServlet">
                    <img src="img/logout.png" class="setting-icon">Logout
                </a>
                <img src="img/arrow.png" width="10px">
            </div>
            </div>
        </div>
    </header>
    <div class="container">
        <!-- main -->
        <div class="main">
            <!-- order details list -->
            <div class="details">
                <div class="card-box recent-orders">
                    <div class="card-header">
                        <h2><i class="fa-solid fa-cart-shopping"></i> My Order</h2>
                        <a href="orderdetails.jsp" class="btn">View Details</a>
                    </div>
                    <hr style="border: 0; height: 1px; background-color: #000;">
                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>Freight</td>
                                <td>Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.orderList}" var="o" varStatus="loop">
                                <tr>
                                    <td>
                                        <c:out value="${o.product.name}"/> <br>
                                        <small style="color: #1795ce;">Color: <c:out value="${o.product.color}"/></small>
                                    </td>
                                    <td><c:out value="${o.quantity}"/></td>
                                    <td>$<fmt:formatNumber type="number" maxFractionDigits="2" value="${o.totalprice}"/></td>
                                    <td><c:out value="${o.shipper}"/></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${not empty o.shipDate}">
                                                <span class="status-delivered">Delivered</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="status-inprogress">In process</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>  
                            </c:forEach>   
                        </tbody>
                    </table>
                </div>

                <!-- new customer -->
                <div class="card-box recent-cus">
                    <div class="card-header">
                        <h2><i class="fa-solid fa-address-card"></i> Profile</h2>
                    </div>
                    <hr style="border: 0; height: 1px; background-color: #000;">
                    <table>
                        <tr>
                            <td width ="60px"><i class="fa-solid fa-circle-user fa-3x imgBx"></i></td>
                            <td>
                                <h4 id="outN">${sessionScope.cus.name}</h4>
                                <span id="outID">ID: ${sessionScope.cus.cusid}</span>
                            </td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-phone fa-1x"></i></td>
                            <td>${sessionScope.cus.phone}</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-envelope fa-1x"></i></td>
                            <td>${sessionScope.user.email}</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-fax"></i></td>
                            <td>${sessionScope.cus.fax}</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-city fa-1x"></i></td>
                            <td>${sessionScope.cus.cusAddress.city}</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-location-dot fa-1x"></i></td>
                            <td><address>${sessionScope.cus.cusAddress.street}</address></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        window.onclick = function(event) {
            if (event.target == edit) {
                edit.style.display = "none";
            }
        };
        document.title = document.getElementById("get-title").textContent;
    </script>
    <script src="js/userpage.js"></script>
</body>
</html>
