<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="tracking.jsp">
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
                        <a href="AccountList">
                            <i class="fa-solid fa-lock fa-lg icon"></i>
                            <span class="text nav-text">Accounts</span>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="bottom-content">
                <li class="">
                    <a href="#">
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
                <table id="myTable">
                    <thead>
                        <tr>
                            <td><span class="status status_add"><i class="fa-solid fa-circle-plus add_more"></i></span></td>
                            <td>ProductID</td>
                            <td>Name</td>
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
                            <td>Price</td>
                            <td>
                                Category <i style="cursor: pointer;" class="fa-solid fa-angles-down opt-filter"></i>
                                <select name="" class="select">
                                    <option value="">All</option>
                                    <option value="">Bikes</option>
                                    <option value="">Components</option>
                                    <option value="">Accessories</option>
                                </select>
                            </td>
                            <td>Model</td>
                            <td>Status</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="form">
                            <td>
                                <span class="status">
                                    <a style="color: #000;" href="#"><i class="fa-solid fa-trash-can remove"></i></a>
                                </span>
                            </td>
                            <td id="inID">680</td>
                            <td id="inN">HL Road Frame - Black, 58</td>
                            <td id="inCo">Black</td>
                            <td id="inP">1431.50</td>
                            <td id="inCa">Components</td>
                            <td id="inM">6</td>
                            <td>
                                <span id="edit-Btn" class="status sell"><i class="fa-solid fa-pen"></i></span>
                            </td>
                        </tr>
                        </tr>
                    </tbody>
                </table>
            </div>

            
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
            showOpt = document.querySelectorAll(".select");

        for (let i = 0; i < filter.length; i++){
            filter[i].onclick = () => {
                if (showOpt[i].style.display === "block"){
                    showOpt[i].style.display = "none";
                }else{
                    showOpt[i].style.display = "block";
                }
            };
        };
    </script>
    <script src="js/navController.js"></script>
</body>
</body>
</html>