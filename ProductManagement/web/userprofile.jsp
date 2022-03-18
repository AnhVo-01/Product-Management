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
                        <a href="#">Help us to improve the new design</a>
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
                        <li><i class="fa-solid fa-phone fa-1x icon"></i> N/A</li>
                        <li><i class="fa-solid fa-envelope fa-1x icon"></i> N/A</li>
                        <li><i class="fa-solid fa-fax icon"></i> N/A</li>
                        <li><i class="fa-solid fa-city fa-1x icon"></i> N/A</li>
                        <li><i class="fa-solid fa-location-dot fa-1x icon"></i> N/A</li>
                    </ul>
                </div>
            </div>
            <div class="post-col">
                <div class="write-post-container">
                    <div class="profile">
                        <h3>Profile</h3>
                        <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button>
                    </div>
                    <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                    <div class="post-input-container">
                        <div>
                            <h5>Name</h5>
                            <input type="text" name="" value="Admin">
                        </div>
                        <div>
                            <h5>Phone</h5>
                            <input type="text" name="" value="0969127592">
                        </div>
                        <div>
                            <h5>Email</h5>
                            <input type="text" name="" value="anhvo.1305@gmail.com">
                        </div>
                        <div>
                            <h5>Fax</h5>
                            <input type="text" name="" value="N/A">
                        </div>
                        <div>
                            <h5>zip code</h5>
                            <input type="text" name="">
                        </div>
                        <div>
                            <h5>City</h5>
                            <input type="text" name="" value="Hanoi">
                        </div>
                        <div>
                            <h5>Address</h5>
                            <textarea name="" id="" cols="50" rows="3"></textarea>
                        </div>
                        <div>
                            <h5>Country</h5>
                            <input type="text" name="" value="VietNam">
                        </div>
                    </div>
                </div>
                
                <form action="UserController" method="GET">
                    <div class="write-post-container">
                        <div class="profile">
                            <h3>Account</h3>
                            <button class="button" type="submit"><i class="fa-regular fa-floppy-disk icon"></i> Save</button>
                        </div
                        <hr style="border: 0; height: 1px; background: #ccc; margin: 10px 0;">
                        <div class="post-input-container">
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