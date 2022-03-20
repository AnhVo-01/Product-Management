<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile page - Socialbook</title>
    <link rel="stylesheet" href="css/userpage.css">
    <script src="js/Jquery.js"></script>
</head>

<body>
    <header>
        <div class="nav-left">
            <h1>${sessionScope.user.displayname}</h1>
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
                    <a href="#">
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

    <!-- -------------------------------------------------------------- -->
    <div class="profile-container">
        <div class="profile-details">
            <div class="pd-left">
                <div class="pd-row">
                    <img src="img/user.jpg" class="pd-image">
                    <i class="fa-solid fa-camera edit-icon"></i>
                    <div>
                        <h3>${sessionScope.user.displayname}</h3>
                        <p>ID: ${sessionScope.user.id}</p>
                    </div>
                </div>
            </div>
            <div class="pd-right">
                <span class="button">
                    <a href="userpage.jsp"><i class="fa-solid fa-house icon"></i> Home</a>
                </span>
            </div>
        </div>

        <div class="profile-info">
            <div class="info-col">
                <div class="profile-intro">
                    <h3>Info</h3>
                    <hr>
                    <ul>
                        <li><i class="fa-solid fa-phone fa-1x icon"></i>${sessionScope.cus.phone}</li>
                        <li><i class="fa-solid fa-envelope fa-1x icon"></i>${sessionScope.cus.email}</li>
                        <li><i class="fa-solid fa-fax icon"></i>${sessionScope.cus.fax}</li>
                        <li><i class="fa-solid fa-city fa-1x icon"></i>${sessionScope.cus.cusAddress.city}</li>
                        <li><i class="fa-solid fa-location-dot fa-1x icon"></i>${sessionScope.cus.cusAddress.street}</li>
                    </ul>
                </div>
            </div>
            <div class="post-col">
                <form action="UserController" method="POST">
                    <div class="write-post-container">
                        <div class="profile">
                            <h3>Profile</h3>
                            <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button>
                        </div>
                        <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                        <div class="post-input-container">
                            <div style="display: none;">
                                <input type="text" name="cid" value="${sessionScope.cus.cusid}">
                            </div>
                            <div>
                                <h5>Name</h5>
                                <input type="text" name="cname" value="${sessionScope.cus.name}">
                            </div>
                            <div>
                                <h5>Phone</h5>
                                <input type="text" name="cphone" value="${sessionScope.cus.phone}">
                            </div>
                            <div>
                                <h5>Email</h5>
                                <input type="text" name="cmail" value="${sessionScope.cus.email}">
                            </div>
                            <div>
                                <h5>Fax</h5>
                                <input type="text" name="cfax"
                                       <c:choose>
                                           <c:when test="${not empty sessionScope.cus.fax}">
                                               value="${sessionScope.cus.fax}"
                                           </c:when>
                                           <c:otherwise>
                                               value="N/A"
                                           </c:otherwise>
                                       </c:choose>>
                            </div>
                            <div>
                                <h5>zip code</h5>
                                <input type="text" name="zip" value="${sessionScope.cus.cusAddress.zipcode}">
                            </div>
                            <div>
                                <h5>City</h5>
                                <input type="text" name="city" value="${sessionScope.cus.cusAddress.city}">
                            </div>
                            <div>
                                <h5>Address</h5>
                                <input type="text" name="adds" value="${sessionScope.cus.cusAddress.street}" style="width: 300px;">
                            </div>
                            <div>
                                <h5>Country</h5>
                                <input type="text" name="country" value="${sessionScope.cus.cusAddress.country}">
                            </div>
                        </div>
                    </div>
                </form>
                
                <form action="UserController" method="GET">
                    <div class="write-post-container">
                        <div class="profile">
                            <h3>Account</h3>
                            <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button>
                        </div>
                        <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                        <div class="post-input-container">
                            <div style="display: none;">
                                <input type="text" name="sid" value="${sessionScope.user.id}">
                            </div>
                            <div style="display: none;">
                                <input type="text" name="userN" value="${sessionScope.user.username}">
                            </div>
                            <div style="display: none;">
                                <input type="email" name="email" value="${sessionScope.user.email}">
                            </div>
                            <div>
                                <h5>Display Name</h5>
                                <input type="text" name="display" value="${sessionScope.user.displayname}">
                            </div>
                            <div>
                                <h5>Password</h5>
                                <input type="password" name="userP" value="${sessionScope.user.password}">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer>
        <i class="far fa-copyright"> This page was created by Anh Vo - 2022</i>
    </footer>
    <script src="js/userpage.js"></script>
</body>
</html>