<%@page import="controller.htmlPaging"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <link rel="stylesheet" href="css/products.css">
    <script src="https://kit.fontawesome.com/a4edd5786f.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="img/logo.png">
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
    <div class="main">
        <div class="home">
            <div class="text">Product Management</div>
        </div>

        <!-- order details list -->
        <div class="details">
            <div class="card-box recent-orders">
                <div class="card-header">
                    <h2>Products</h2>
                    <div class="status status-header">
                        <span class="status sell">Are Selling</span>
                        <span class="status dis">Discontinued</span>
                    </div>
                </div>
                <hr style="border: 0; height: 1px; background-color: #000;">
                <form action="ProductOrderBy" method="GET">
                    <table id="myTable">
                        <thead>
                            <tr>
                                <td><span class="status status_add"><i class="fa-solid fa-circle-plus add_more"></i></span></td>
                                <td>
                                    ProductID <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="oid" class="select">
                                        <option>option</option>
                                        <option <c:if test="${sessionScope.temp eq 'A-Z'}">selected</c:if>>A-Z</option>
                                        <option <c:if test="${sessionScope.temp eq 'Z-A'}">selected</c:if>>Z-A</option>                                    
                                    </select>
                                </td>
                                <td>
                                    Name <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="" class="select">
                                        <option value="">option</option>
                                        <option value="">A-Z</option>
                                        <option value="">Z-A</option>
                                    </select>
                                <td>
                                    Color <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="" class="select">
                                        <option value="">All</option>
                                        <option value="">Black</option>
                                        <option value="">Blue</option>
                                        <option value="">Grey</option>
                                        <option value="">Red</option>
                                        <option value="">Silver</option>
                                        <option value="">Yellow</option>
                                    </select>
                                </td>
                                <td>
                                    Price <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="" class="select">
                                        <option value="">option</option>
                                        <option value="">A-Z</option>
                                        <option value="">Z-A</option>
                                    </select>
                                <td>
                                    Category <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="" class="select">
                                        <option value="">All</option>
                                        <option value="">Bikes</option>
                                        <option value="">Components</option>
                                        <option value="">Accessories</option>
                                    </select>
                                </td>
                                <td>
                                    Model <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                    <select name="" class="select">
                                        <option value="">option</option>
                                        <option value="">A-Z</option>
                                        <option value="">Z-A</option>
                                    </select>
                                </td>
                                <td>Status
                                    <span class="accept"><input style="cursor: pointer;" type="submit" value="OK"></span>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.PList}" var="p" varStatus="loop">
                                <tr class="form">
                                    <td>
                                        <span class="status">
                                            <a style="color: #000;" href="#"><i class="fa-solid fa-trash-can remove"></i></a>
                                        </span>
                                    </td>
                                    <td id="inID"><c:out value="${p.productID}"/></td>
                                    <td id="inN"><c:out value="${p.name}"/></td>
                                    <td id="inCo"><c:out value="${p.color}"/></td>
                                    <td id="inP"><c:out value="${p.price}"/></td>
                                    <td id="inCa"><c:out value="${p.subName}"/></td>
                                    <td id="inM"><c:out value="${p.modelID}"/></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${a.status.isAdmin == true}">
                                                <span id="edit-Btn" class="status dis"><i class="fa-solid fa-pen"></i></span>
                                            </c:when>
                                            <c:otherwise>
                                                <span id="edit-Btn" class="status sell"><i class="fa-solid fa-pen"></i></span>
                                            </c:otherwise>
                                        </c:choose>                                   
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
            <%
                Integer pageindex = (Integer) session.getAttribute("pageindex");
                Integer totalpage = (Integer) session.getAttribute("totalpage");
                Integer pagesize = (Integer) session.getAttribute("pagesize");
            %>
            <nav class="paging">
                <%=htmlPaging.pager(pagesize, pageindex, totalpage)%> 
            </nav>
            
            <div class="end">
                <i class="far fa-copyright"> This page was created by Anh Vo - 2022</i>
            </div>
        </div>
    </div>
     <!-- Add-more --------------------------------------- -->
     <div class="Popup" id="myModal">
        <div class="Set_page">
            <span class="close-btn" id="close-set">&times;</span>
            <div style="padding: 20px 40px 0 40px;">
                <h1>Add Account</h1>
                <hr style="border: 0; height: 1px; background-color: #000; margin: 15px 0;">
            </div>
            <div class="Set-pop">
                <div class="options">
                    <h3>User Name</h3>
                    <input id="user-name" type="text" name="uname" placeholder="User Name" required>
                    <span id="name-error"></span>
                </div>
                <div class="options">
                    <h3>Password</h3>
                    <input id="user-pass" type="password" name="upass" placeholder="Password" required>
                    <span id="pass-error"></span>
                </div>
                <div class="options">
                    <h3>Display Name</h3>
                    <input type="text" name="udisplay" placeholder="Display Name" required>
                </div>
                <div class="options">
                    <h3>Email</h3>
                    <input id="user-email" type="email" name="uemail" placeholder="Email (optional)">
                    <span id="email-error"></span>
                </div>
                <div class="options">
                    <h3>Status</h3>
                    <input type="radio" value="isMod" name="status"> isMod
                    <input type="radio" value="isAdmin" name="status"> isAdmin
                </div>
            </div>

            <div class="submit-btn">
                <button class="opt-btn" type="submit" name="created"><i class="fa-solid fa-circle-plus"></i> Create</button>
            </div>    
        </div>
    </div>

    <!-- Edit --------------------------------------- -->
    <div class="Popup" id="myEdit">
        <div class="Set_page">
            <span class="close-btn" id="close-set">&times;</span>
            <div style="padding: 20px 40px 0 40px;">
                <h1>Edit Account</h1>
                <hr style="border: 0; height: 1px; background-color: #000; margin: 15px 0;">
            </div>
            <div class="Set-pop">
                <div class="options">
                    <h3>User ID</h3>
                    <input type="text" id="outID">
                </div>
                <div class="options">
                    <h3>User Name</h3>
                    <input type="text" id="outN">
                </div>
                <div class="options">
                    <h3>Password</h3>
                    <input type="text" id="outP">
                </div>
                <div class="options">
                    <h3>Display Name</h3>
                    <input type="text" id="outDP">
                </div>
                <div class="options">
                    <h3>Email</h3>
                    <input type="email" id="outE">
                </div>
                <div class="options">
                    <h3>Status</h3>
                    <input type="radio"> isMod
                    <input type="radio"> isAdmin
                </div>
            </div>

            <div class="submit-btn">
                <button class="opt-btn save-btn" type="submit" name="created"><i class="fa-solid fa-floppy-disk"></i> Save</button>
            </div>    
        </div>
    </div>

    <script>
        const filter = document.querySelectorAll(".opt-filter"),
            showOpt = document.querySelectorAll(".select"),
            acceptBtn = document.querySelector(".accept");

        for (let i = 0; i < filter.length; i++){
            filter[i].onclick = () => {
                if (showOpt[i].style.display === "block"){
                    showOpt[i].style.display = "none";
                    acceptBtn.style.display = "none";
                }else{
                    acceptBtn.style.display = "block";
                    showOpt[i].style.display = "block";
                }
            };
        };
    </script>
    <script src="js/navController.js"></script>
</body>
</html>
