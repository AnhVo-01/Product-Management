<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tracking</title>
    <link rel="stylesheet" href="css/transport.css">
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
                        <a href="Customer">
                            <i class="fa-solid fa-user-group fa-lg icon"></i>
                            <span class="text nav-text">Customers</span>
                        </a>
                    </li>                  

                    <li class="nav-link">
                        <a href="#">
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
                        <a <c:choose>
                                <c:when test="${sessionScope.user.status.isAdmin == true}">
                                    href="AccountList"
                                </c:when>
                                <c:otherwise>
                                    href="WarningAcc.html"
                                </c:otherwise>
                            </c:choose>>
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
    <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"  
        url="jdbc:sqlserver://localhost:1433;databaseName=PDM"  
        user="sa"  password="123456"/>
        
    <sql:query dataSource="${db}" var="rs">  
        SELECT * FROM [Tracking] 
    </sql:query> 
    <div class="main">
        <div class="home">
            <div class="text">Tracking</div>
        </div>
        <div class="details">
            <c:forEach var="result" items="${rs.rows}">
                <div class="card-box recent-cus">
                    <div class="card-header">
                        <img src="img/<c:out value="${result.Logo}"/>">                   
                        <h2><c:out value="${result.Title}"/></h2>
                    </div>
                    <hr style="border: 0; height: 1px; background-color: #000;">
                    <table>
                        <tr>
                            <td width ="50px"><img src="img/<c:out value="${result.Picture}"/>"></td>
                            <td>
                                <h4><c:out value="${result.CompanyName}"/></h4>
                                <span>ID: <c:out value="${result.ID}"/></span>
                            </td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-phone"></i></td>
                            <td><c:out value="${result.Phone}"/></td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-fax"></i></td>
                            <td><c:out value="${result.Fax}"/></td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-envelope"></i></td>
                            <td><c:out value="${result.Email}"/></td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-location-dot"></i></td>
                            <td><address ><c:out value="${result.Address}"/></address></td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-globe"></i></td>
                            <td><a href="<c:out value="${result.Website}"/>" target="_blank"><c:out value="${result.Website}"/></a></td>
                        </tr>
                        <tr>
                            <td><i class="fa-brands fa-facebook-square"></i></td>
                            <td><a href="<c:out value="${result.Facebook}"/>" target="_blank"><c:out value="${result.Facebook}"/></a></td>
                        </tr>
                    </table>
                </div>
            </c:forEach>  
        </div>
    </div>

    <script src="js/navController.js"></script>               
</body>
</html>
