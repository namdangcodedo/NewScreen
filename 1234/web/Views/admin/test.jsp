<%-- 
    Document   : Home
    Created on : Jun 23, 2024, 11:19:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Bookly - Bookstore eCommerce Website Template</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
             <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
         <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
           <link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- google font -->
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
        
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
       
<!--        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">-->


<!--        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">-->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
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
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="search" xmlns="http://www.w3.org/2000/symbolsvg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M11.5 2.75a8.75 8.75 0 1 0 0 17.5a8.75 8.75 0 0 0 0-17.5M1.25 11.5c0-5.66 4.59-10.25 10.25-10.25S21.75 5.84 21.75 11.5c0 2.56-.939 4.902-2.491 6.698l3.271 3.272a.75.75 0 1 1-1.06 1.06l-3.272-3.271A10.21 10.21 0 0 1 11.5 21.75c-5.66 0-10.25-4.59-10.25-10.25"
              clip-rule="evenodd" />
    </symbol>
    <symbol id="user" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd"
              d="M12 1.25a4.75 4.75 0 1 0 0 9.5a4.75 4.75 0 0 0 0-9.5M8.75 6a3.25 3.25 0 1 1 6.5 0a3.25 3.25 0 0 1-6.5 0M12 12.25c-2.313 0-4.445.526-6.024 1.414C4.42 14.54 3.25 15.866 3.25 17.5v.102c-.001 1.162-.002 2.62 1.277 3.662c.629.512 1.51.877 2.7 1.117c1.192.242 2.747.369 4.773.369s3.58-.127 4.774-.369c1.19-.24 2.07-.605 2.7-1.117c1.279-1.042 1.277-2.5 1.276-3.662V17.5c0-1.634-1.17-2.96-2.725-3.836c-1.58-.888-3.711-1.414-6.025-1.414M4.75 17.5c0-.851.622-1.775 1.961-2.528c1.316-.74 3.184-1.222 5.29-1.222c2.104 0 3.972.482 5.288 1.222c1.34.753 1.961 1.677 1.961 2.528c0 1.308-.04 2.044-.724 2.6c-.37.302-.99.597-2.05.811c-1.057.214-2.502.339-4.476.339c-1.974 0-3.42-.125-4.476-.339c-1.06-.214-1.68-.509-2.05-.81c-.684-.557-.724-1.293-.724-2.601"
              clip-rule="evenodd" />
    </symbol>
    </svg>
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
                        <li>
                            <a href="index.html">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="general.html">
                                <i class="fa fa-gavel"></i> <span>General</span>
                            </a>
                        </li>

                        <li>
                            <a href="basic_form.html">
                                <i class="fa fa-globe"></i> <span>Basic Elements</span>
                            </a>
                        </li>

                        <li class="active">
                            <a href="simple.html">
                                <i class="fa fa-glass"></i> <span>Order History</span>
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
                                        <div class="user-items d-flex">
                                            <ul class="d-flex justify-content-end list-unstyled mb-0">

                                                <li class="pe-3">
                                                    <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                        <button>  Sellect product </button>
                                                    </a>

                                                    <!-- Modal -->
                                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header border-bottom-0">
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="tabs-listing">
                                                                        <nav>
                                                                            <div class="nav nav-tabs d-flex justify-content-center" id="nav-tab" role="tablist">
                                                                                <button class="nav-link text-capitalize active" id="nav-sign-in-tab" data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button" role="tab" aria-controls="nav-sign-in" aria-selected="true">Sign</button>


                                                                                <!--                                                                <button class="nav-link text-capitalize" id="nav-register-tab" data-bs-toggle="tab" data-bs-target="#nav-register" type="button" role="tab" aria-controls="nav-register" aria-selected="false">Register</button>-->
                                                                            </div>
                                                                        </nav>



                                                                        <div class="tab-content" id="nav-tabContent">



                                                                            <div class="tab-pane fade active show" id="nav-select-product" role="tabpanel" aria-labelledby="nav-select-product-tab">
                                                                                <div class="input-group mb-3">
                                                                                    <input type="text" class="form-control" placeholder="Search products" aria-label="Search products" aria-describedby="button-search">
                                                                                    <button class="btn btn-outline-secondary" type="button" id="button-search">Search</button>
                                                                                </div>

                                                                                <div class="table-responsive">
                                                                                    <table class="table table-striped">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th>Name</th>
                                                                                                <th>Stock Quantity</th>
                                                                                                <th>Select Quantity</th>
                                                                                                <th>Action</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Product 1</td>
                                                                                                <td>10</td>
                                                                                                <td>
                                                                                                    <input type="number" class="form-control" value="1" min="1" max="10">
                                                                                                </td>
                                                                                                <td>
                                                                                                    <button type="button" class="btn btn-primary">Select</button>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Product 2</td>
                                                                                                <td>5</td>
                                                                                                <td>
                                                                                                    <input type="number" class="form-control" value="1" min="1" max="5">
                                                                                                </td>
                                                                                                <td>
                                                                                                    <button type="button" class="btn btn-primary">Select</button>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <!-- Add more rows as needed -->
                                                                                        </tbody>
                                                                                    </table>

                                                                                    <!-- Pagination -->
                                                                                    <nav aria-label="Table pagination">
                                                                                        <ul class="pagination justify-content-center">
                                                                                            <li class="page-item disabled">
                                                                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">&laquo;</a>
                                                                                            </li>
                                                                                            <li class="page-item active" aria-current="page">
                                                                                                <a class="page-link" href="#">1 <span class="sr-only"></span></a>
                                                                                            </li>
                                                                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                                                            <li class="page-item">
                                                                                                <a class="page-link" href="#">&raquo;</a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </nav>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </li>



                                            </ul>
                                        </div>






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

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Director App -->
        <script src="${pageContext.request.contextPath}/js/Director/app.js" type="text/javascript"></script>
    </body>




    

</html>