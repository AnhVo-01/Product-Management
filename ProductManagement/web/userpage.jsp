
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="#" class="btn">View All</a>
                    </div>
                    <hr style="border: 0; height: 1px; background-color: #000;">
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
                                <h4 id="outN">Customer Name</h4>
                                <span id="outID">ID</span>
                            </td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-phone fa-1x"></i></td>
                            <td>numbers</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-envelope fa-1x"></i></td>
                            <td>username@email.com</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-fax"></i></td>
                            <td>(Empty)</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-city fa-1x"></i></td>
                            <td>City Name</td>
                        </tr>
                        <tr>
                            <td><i class="fa-solid fa-location-dot fa-1x"></i></td>
                            <td><address>Street Address</address></td>
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
