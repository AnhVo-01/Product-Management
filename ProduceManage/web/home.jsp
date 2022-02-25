
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="js/Jquery.js"></script>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-users-cog"></i></span>
                        <span class="title">Brand Name</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-user"></i></span>
                        <span class="title">Customers</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-comment"></i></span>
                        <span class="title">Message</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-question-circle"></i></span>
                        <span class="title">Help</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-cog"></i></span>
                        <span class="title">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-lock"></i></span>
                        <span class="title">Password</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- main -->
        <div class="main">
            <div class="top-bar">
                <div class="toggle">
                    <i class="fas fa-bars"></i>
                </div>
                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <i class="fas fa-search"></i>
                        <!-- <img src="images/search.png"> -->
                    </label>
                </div>
                <div class="user">
                    <img src="images/user.jpg">
                </div>
            </div>

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
                        <h2>Recent Customers</h2>
                    </div>
                    <table>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img1.jpg"></div></td>
                            <td><h4>David<br><span>Italy</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img2.jpg"></div></td>
                            <td><h4>Muhammad<br><span>India</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img3.jpg"></div></td>
                            <td><h4>Amelia<br><span>France</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img4.jpg"></div></td>
                            <td><h4>Olivia<br><span>USA</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img5.jpg"></div></td>
                            <td><h4>Amit<br><span>Japan</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img6.jpg"></div></td>
                            <td><h4>Ashraf<br><span>India</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img7.jpg"></div></td>
                            <td><h4>Diana<br><span>Malaysia</span></h4></td>
                        </tr>
                        <tr>
                            <td width ="60px"><div class="imgBx"><img src="images/img5.jpg"></div></td>
                            <td><h4>Amit<br><span>Japan</span></h4></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
        
        <script>
        //menu toggle
        let toggle = document.querySelector('.toggle');
        let navigation = document.querySelector('.navigation');
        let main = document.querySelector('.main');

        toggle.onclick = function(){
            navigation.classList.toggle('active');
            main.classList.toggle('active');
        }

        //add hovered class in selected list item
        let list = document.querySelectorAll(',navigation li');
        function activeLink(){
            list.forEach((item) =>item.classList.remove('hovered'));
            this.classList.add('hovered');
        }
        list.forEach((item) => item.addEventListener('mouseover', activeLink));
    </script>
    </body>
</html>
