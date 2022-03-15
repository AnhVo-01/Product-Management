
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
        <div class="top-bar">
            <div class="search">
                <h1>Hello ${sessionScope.user.displayname}</h1>
            </div>
            <div class="user">
                <img src="img/logo.png" onclick="settingsMenuToggle()">
            </div>
        </div>
    </header>
    <div class="container">
        <!-- main -->
        <div class="main">
            <!-- card -->
            <div class="card-box">
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
            </div>

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
                        <h2>Profile</h2>
                        <span id="edit-Btn" class="status status-delivered"><i class="fa-solid fa-pen"></i></span>
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
                            <td id="outP">numbers</td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td id="outE">username@email.com</td>
                        </tr>
                        <tr>
                            <td>Fax: </td>
                            <td id="outF">(Empty)</td>
                        </tr>
                        <tr>
                            <td>Zip Code: </td>
                            <td id="outZ"></td>
                        </tr>
                        <tr>
                            <td>City: </td>
                            <td id="outC">City Name</td>
                        </tr>
                        <tr>
                            <td>Address: </td>
                            <td><address id="outA">Street Address</address></td>
                        </tr>
                        <tr>
                            <td>Country: </td>
                            <td id="outR"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <!-- ------------- settings menu ---------------- -->
            <div class="settings-menu">
                <div id="dark-btn">
                    <span></span>
                </div>
                <div class="settings-menu-inner" style="padding: 20px;">
                <div class="user-profile">
                    <img src="img/user.jpg">
                    <div>
                        <p>John Nicholson</p>
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
                    <a href="#" id="edit-Btn">
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
                    <a href="login.html">
                        <img src="img/logout.png" class="setting-icon">Logout
                    </a>
                    <img src="img/arrow.png" width="10px">
                </div>
            </div>
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
                <div class="options" style="display: none;">
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
            </div>

            <div class="submit-btn">
                <button class="opt-btn save-btn" type="submit" name="created"><i class="fa-solid fa-floppy-disk"></i> Save</button>
            </div>    
        </div>
    </div>
    <script>
        const edit = document.getElementById("myEdit"),
            save = document.querySelector(".form"),
            span = document.querySelectorAll("#close-set");

        const btn1 = document.querySelector("#edit-Btn"),
            sBtn = document.querySelectorAll(".save-btn");

        btn1.onclick = function() {
            edit.style.display = "block";
        };

        span[0].onclick = function() {
            edit.style.display = "none";
        };

        window.onclick = function(event) {
            if (event.target == edit) {
                edit.style.display = "none";
            }
        };
        document.title = ;
    </script>
    <script src="js/userpage.js"></script>
</body>
</html>
