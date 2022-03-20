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
                        <a href="ProductList">
                            <i class="fa-solid fa-box fa-lg icon"></i>
                            <span class="text nav-text">Product</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class="fa-solid fa-user-group fa-lg icon"></i>
                            <span class="text nav-text">Customers</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="transport.jsp">
                            <i class="fa-solid fa-truck fa-lg icon"></i>
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
                        <c:set var="linkToRedirect">
                            <c:choose>
                                <c:when test="${sessionScope.user.status.isAdmin == true}">
                                    AccountList
                                </c:when>
                                <c:otherwise>
                                    WarningAcc.html
                                </c:otherwise>
                            </c:choose>
                        </c:set>
                        <a href="${linkToRedirect}">
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

        <!-- Customer details list -->
        <div class="details">
            <div class="card-box recent-orders">
                <div class="card-header">
                    <h2>Customer</h2>
                </div>
                <hr style="border: 0; height: 1px; background-color: #000;">
                <div class="table-scroll">
                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Phone</td>
                                <td>City</td>
                                <td>Address</td>
                                <td>More</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.CusList}" var="c" varStatus="loop">
                                <tr id="show-info">                      
                                    <td id="inN"><c:out value="${c.name}"/></td>
                                    <td id="inID" style="display: none;"><c:out value="${c.cusid}"/></td>
                                    <td id="inP"><c:out value="${c.phone}"/></td>
                                    <td id="inE" style="display: none;"><c:out value="${c.email}"/></td>
                                    <td id="inF" style="display: none;"><c:out value="${c.fax}"/></td>
                                    <td id="inZ" style="display: none;"><c:out value="${c.cusAddress.zipcode}"/></td>
                                    <td id="inC"><c:out value="${c.cusAddress.city}"/></td>
                                    <td id="inA"><address><c:out value="${c.cusAddress.street}"/></address></td>
                                    <td id="inR" style="display: none;"><c:out value="${c.cusAddress.country}"/></td>
                                    <td><i class="fa-solid fa-circle-info"></i></td>
                                </tr>
                                <tr>
                                </c:forEach>
                        </tbody>
                    </table>
                </div>
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
                            <h4 id="outN">Customer Name</h4>
                            <span id="outID">ID</span>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone: </td>
                        <td id="outP">N/A</td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td id="outE">N/A</td>
                    </tr>
                    <tr>
                        <td>Fax: </td>
                        <td id="outF">N/A</td>
                    </tr>
                    <tr>
                        <td>Zip Code: </td>
                        <td id="outZ">N/A</td>
                    </tr>
                    <tr>
                        <td>City: </td>
                        <td id="outC">N/A</td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td><address id="outA">N/A</address></td>
                    </tr>
                    <tr>
                        <td>Country: </td>
                        <td id="outR"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <script>
        const btn = document.querySelectorAll('#show-info'),
            x = document.querySelectorAll("#inN"),
            xID = document.querySelectorAll("#inID"),
            xP = document.querySelectorAll("#inP"),
            xE = document.querySelectorAll("#inE"),
            xF = document.querySelectorAll("#inF"),
            xC = document.querySelectorAll("#inC"),
            xA = document.querySelectorAll("#inA"),
            xR = document.querySelectorAll("#inR"),
            xZ = document.querySelectorAll("#inZ");
            
        const y = document.querySelector("#outN"),
            yID = document.querySelector("#outID"),
            yP = document.querySelector("#outP"),
            yE = document.querySelector("#outE"),
            yF = document.querySelector("#outF"),
            yC = document.querySelector("#outC"),
            yA = document.querySelector("#outA"),
            yR = document.querySelector("#outR"),
            yZ = document.querySelector("#outZ");

        const name = [], id = [], phone = [], email = [], fax = [], city = [], addr = [], country = [], zip = [];

        for (let z = 0; z < btn.length; z++) {
            btn[z].onclick = () => {
                for (let i = 0; i < x.length; i++) {
                    name[i] = x[i].textContent;
                    id[i] = xID[i].textContent;
                    phone[i] = xP[i].textContent;
                    email[i] = xE[i].textContent;
                    fax[i] = xF[i].textContent;
                    city[i] = xC[i].textContent;
                    addr[i] = xA[i].textContent;
                    country[i] = xR[i].textContent;
                    zip[i] = xZ[i].textContent;
                }

                y.textContent = name[z];
                yID.textContent = "ID: " + id[z];
                yP.textContent = phone[z];
                yE.textContent = email[z];
                yF.textContent = fax[z];
                yC.textContent = city[z];
                yA.textContent = addr[z];
                yR.textContent = country[z];
                yZ.textContent = zip[z];
            };
        };
    </script>
    <script src="js/navController.js"></script>
</body>
</html>
