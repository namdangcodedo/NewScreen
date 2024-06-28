<%-- 
    Document   : OrderHistory
    Created on : Jun 24, 2024, 1:03:49 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Director | Simple Tables</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="Developed By M Abdur Rokib Promy">
        <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- google font -->
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <style>
            .select-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50; /* Màu nền của nút */
    color: white; /* Màu chữ của nút */
    text-align: center;
    text-decoration: none;
    border-radius: 5px; /* Bo tròn các góc */
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
}

.select-button:hover {
    background-color: #45a049; /* Màu nền khi di chuột qua */
}
            .submit-btn {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }
            .box-tools {
                display: flex;
                align-items: center;
                margin-bottom: 15px;
            }

            .box-tools section {
                margin-right: 10px;
            }

            .box-tools select {
                padding: 5px;
                font-size: 14px;
            }

            .box-tools .input-group {
                display: flex;
                align-items: center;
            }

            .box-tools .input-group input {
                width: 150px;
                padding: 5px;
                font-size: 14px;
            }

            .box-tools .input-group button {
                padding: 5px 10px;
                font-size: 14px;
            }


            .container h2 {
                margin-top: 0;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                display: block;
                margin-bottom: 5px;
            }
            .form-group input, .form-group select, .form-group textarea {
                width: calc(100% - 10px);
                padding: 8px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            .form-group textarea {
                height: 100px;
            }
            .form-group-inline {
                display: flex;
                justify-content: space-between;
            }
            .form-group-inline .form-group {
                flex: 1;
                margin-right: 10px;
            }
            .form-group-inline .form-group:last-child {
                margin-right: 0;
            }
            .payment-method, .order-status {
                display: flex;
                align-items: center;
                margin-bottom: 15px;
            }
            .payment-method label, .order-status label {
                margin-right: 10px;
            }
            .payment-method input, .order-status input {
                margin-right: 5px;
            }
            .totals {
                display: flex;
                justify-content: space-between;
                margin-bottom: 15px;
            }
            .submit-btn {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }
            .submit-btn:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index.html" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                Director
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Director Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">

                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>

                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span>Jane Doe <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">Account</li>

                                <li>
                                    <a href="#">
                                        <i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> Updates</a>
                                    <a href="#">
                                        <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span> Messages</a>
                                    <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                    <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                                                                                      "badge pull-right">11</span> FAQ</a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="#">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                        Profile
                                    </a>
                                    <a data-toggle="modal" href="#modal-user-settings">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                        Settings
                                    </a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="#"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                </li>
                            </ul>

                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hello, Jane</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>

                      <ul class="sidebar-menu">
                    

                      

                        <li class="active">

                    <ul class="sidebar-menu">
                     <li>
                        <a href="DashBoard.jsp">
                            <i class="fa fa-dashboard"></i> <span>Dash board</span>
                        </a>
                    </li>
                    <li>
                        <a href="AccountListManagement.jsp">
                            <i class="fa fa-dashboard"></i> <span>Account Manager</span>
                        </a>
                    </li>
                    
                    <li>

                            <a href="OrderList.jsp">
                                <i class="fa fa-glass"></i> <span>Manage Order</span>
                            </a>
                        </li>
                        <li>
                                    <a href="productList.jsp">
                                        <i class="fa fa-glass"></i> <span>Manage Product</span>
                                    </a>
                                </li>
                </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <header class="panel-heading">
                            <div class="new-order">
                                <h2>New Order</h2>
                                <div class="order-container">
                                    <div class="selected-products">
                                        <h3>Selected Products</h3>
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Picture</th>
                                                    <th>Product</th>
                                                    <th>Price</th>
                                                    <th>Quantity</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><img height="100px" width="100px" src="https://th.bing.com/th/id/R.09d9bce822589c25113a33f2f625ecd4?rik=vmInoBkNurrwbg&pid=ImgRaw&r=0" alt="Product Image"></td>
                                                    <td>Product Name1<br>Category NameX; Available: 5</td>
                                                    <td>3.101.000đ</td>
                                                    <td><input type="number" value="1"></td>
                                                    <td>3.101.000đ</td>
                                                </tr>
                                                <tr>
                                                    <td><img height="100px" width="100px" src="https://th.bing.com/th/id/R.09d9bce822589c25113a33f2f625ecd4?rik=vmInoBkNurrwbg&pid=ImgRaw&r=0" alt="Product Image"></td>
                                                    <td>Product Name4<br>Category NameZ; Available: 18</td>
                                                    <td>24.900đ</td>
                                                    <td><input type="number" value="2"></td>
                                                    <td>49.800đ</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        
                                        <td><a href="ProductSellect.jsp" class="select-button">Select More Product</a></td>
                                   
                                        <div style="margin-left:  87%">
                            <p>Sub Total: 3.150.800đ</p>
                            <p>Shipping Fee: 25.000đ</p>
                            <p><strong>Total: 3.175.800đ</strong></p>
                        </div>
                                    </div><!-- /.selected-products -->
                                </div><!-- /.order-container -->
                            </div><!-- /.new-order -->
                        </header><!-- /.panel-heading -->

                        <!-- Additional section -->

                       
                    </div>
                    <section class="panel">
                        <div class="row">
                            <div class="container">

                                <table class="table table-hover" border="0">
                                    <thead>
                                        <tr>
                                            <th><h2>Delivery Details</h2> 
                                            </th>
                                            <th> </th>
                                            <th>
                                                <h2> 
                                                    Status: Shipping Status
                                                </h2> </th>
                                        </tr>

                                    </thead>
                                </table>
                                <div class="form-group">
                                    <label for="fullName">Full name*</label>
                                    <input type="text" id="fullName" name="fullName" required>
                                </div>

                                <div class="form-group-inline">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" id="email" name="email">
                                    </div>

                                    <div class="form-group">
                                        <label for="mobile">Mobile</label>
                                        <input type="tel" id="mobile" name="mobile">
                                    </div>
                                </div>

                                <div class="form-group-inline">
                                    <div class="form-group">
                                        <label for="cityProvince">City/Province</label>
                                        <select id="cityProvince" name="cityProvince">
                                            <option value="">City/Province</option>
                                            <!-- Add options here -->
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="district">District</label>
                                        <select id="district" name="district">
                                            <option value="">District</option>
                                            <!-- Add options here -->
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="wards">Wards</label>
                                        <select id="wards" name="wards">
                                            <option value="">Wards</option>
                                            <!-- Add options here -->
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input type="text" id="address" name="address">
                                </div>
                                <div class="form-group">
                                    <label for="deliveryNotes">Delivery Notes</label>
                                    <textarea id="deliveryNotes" name="deliveryNotes"></textarea>
                                </div>



                                <div class="payment-method">
                                    <label>Payment Method:</label>
                                    <label><input type="radio" name="paymentMethod" value="cash" checked> Cash Payment</label>
                                    <label><input type="radio" name="paymentMethod" value="bank"> Bank Transfer</label>
                                    <label><input type="radio" name="paymentMethod" value="internet"> Internet Banking</label>
                                </div>
                                <div class="order-status">
                                    <label>Order Status:</label>
                                    <label><input type="radio" name="orderStatus" value="verified" checked> Verified</label>
                                    <label><input type="radio" name="orderStatus" value="paid"> Paid</label>
                                    <label><input type="radio" name="orderStatus" value="shipping"> Shipping</label>
                                    <label><input type="radio" name="orderStatus" value="shipped"> Shipped</label>
                                </div>



                                <button type="submit" class="submit-btn">Submit</button>
                            </div>
                        </div> 


                    </section>



                    <div><!-- /.row -->
                </section><!-- /.content -->                         </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>

        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Director App -->
        <script src="${pageContext.request.contextPath}/js/Director/app.js" type="text/javascript"></script>
    </body>
</html>

