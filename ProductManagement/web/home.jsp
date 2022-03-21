
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/a4edd5786f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <nav class="sidebar close">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="img/logo.png">
                    </span>

                    <div class="text logo-text">
                        <span class="name">Product</span>
                        <span class="profession">Management</span>
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
                            <a href="Customer">
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
                <div class="text">Hello ${sessionScope.user.displayname}</div>
            </div>

            <!-- card -->
<!--            <div class="card-box">
                <div class="card">
                    <div>
                        <div class="numbers">1,504</div>
                        <div class="card-name">Daily Views</div>
                    </div>
                    <div class="iconBx">
                        <i class="far fa-eye"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">80</div>
                        <div class="card-name">Sales</div>
                    </div>
                    <div class="iconBx">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">284</div>
                        <div class="card-name">Comments</div>
                    </div>
                    <div class="iconBx">
                        <i class="fas fa-comments"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">$7,842</div>
                        <div class="card-name">Earning</div>
                    </div>
                    <div class="iconBx">
                        <i class="far fa-money-bill-alt"></i>
                    </div>
                </div>
            </div>-->

            <!-- order details list -->
            <div class="details">
                <div class="recent-orders">
                    <div class="card-header">
                        <h2>Recent Orders</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Payment</td>
                                <td>Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Star Refrigerator</td>
                                <td>$1200</td>
                                <td>Paid</td>
                                <td><span class="status-delivered">Delivered</span></td>
                            </tr>
                            <tr>
                                <td>Window Coolers</td>
                                <td>$110</td>
                                <td>Due</td>
                                <td><span class="status-pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Speakers</td>
                                <td>$620</td>
                                <td>Paid</td>
                                <td><span class="status-return">Return</span></td>
                            </tr>
                            <tr>
                                <td>HP Laptop</td>
                                <td>$110</td>
                                <td>Due</td>
                                <td><span class="status-inprogress">In Progress</span></td>
                            </tr>
                            <tr>
                                <td>Apple Watch</td>
                                <td>$1200</td>
                                <td>Paid</td>
                                <td><span class="status-delivered">Delivered</span></td>
                            </tr>
                            <tr>
                                <td>Wall Fan</td>
                                <td>$110</td>
                                <td>Paid</td>
                                <td><span class="status-pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Adidas Shoes</td>
                                <td>$620</td>
                                <td>Paid</td>
                                <td><span class="status-return">Return</span></td>
                            </tr>
                            <tr>
                                <td>Denim Shirts</td>
                                <td>$110</td>
                                <td>Due</td>
                                <td><span class="status-inprogress">In Progress</span></td>
                            </tr>
                            <tr>
                                <td>Casual Shoes</td>
                                <td>$575</td>
                                <td>Paid</td>
                                <td><span class="status-pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Wall Fan</td>
                                <td>$110</td>
                                <td>Paid</td>
                                <td><span class="status-pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Denim Shirts</td>
                                <td>$110</td>
                                <td>Due</td>
                                <td><span class="status-inprogress">In Progress</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- new customer -->
                <div class="recent-cus">
                    <div class="card-header">
                        <h2>Recent Customers</h2>
                    </div>
                    <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"  
                                       url="jdbc:sqlserver://localhost:1433;databaseName=PDM"  
                                       user="sa"  password="123456"/>

                    <sql:query dataSource="${db}" var="rs">  
                        SELECT TOP(8) * FROM [Customers] ORDER BY CustomerID DESC
                    </sql:query> 
                    <table>
                        <c:forEach var="result" items="${rs.rows}">
                            <tr>
                                <td width ="60px"><i class="fa-solid fa-circle-user fa-2xl imgBx"></i></td>
                                <td><h4><c:out value="${result.Name}"/><br><span><c:out value="${result.Country}"/></span></h4></td>
                            </tr>
                        </c:forEach>  
                    </table>
                </div>
            </div>
        </div>

        <script src="js/navController.js"></script>
    </body>
</html>
