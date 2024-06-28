<%-- 
    Document   : AccountListManagement
    Created on : Jun 24, 2024, 8:32:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Director | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="Developed By M Abdur Rokib Promy">
        <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="${pageContext.request.contextPath}/css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="${pageContext.request.contextPath}/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- Date Picker -->
        <link href="${pageContext.request.contextPath}/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
        <!-- Daterange picker -->
        <link href="${pageContext.request.contextPath}/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- iCheck for checkboxes and radio inputs -->
        <link href="${pageContext.request.contextPath}/css/iCheck/all.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <style>
            /*        body {
                        font-family: Arial, sans-serif;
                    }*/
            .chart-container {
                width: 80%;
                margin: auto;
            }
        </style>


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

        <style type="text/css">

        </style>
        <style> /*        body {
                        font-family: Arial, sans-serif;
                    }*/
            .chart-container {
                width: 80%;
                margin: auto;
            }
            .account-img{
                max-width: 30% !important;
                height: auto;
            }
            .action-buttons {
    display: flex;
    justify-content: space-between;
}

.action-buttons button {
    padding: 5px 10px;
    margin-right: 5px;
    cursor: pointer;
    background-color: #007bff; /* Màu xanh dương thông thường */
    color: white; /* Màu chữ trắng */
    border: none;
    border-radius: 3px;
    transition: background-color 0.3s ease; /* Thêm hiệu ứng chuyển màu mượt mà */
}

.action-buttons button {
    background-color: white; /* Màu nền khi hover là trắng */
    color: #007bff; /* Màu chữ chuyển thành xanh dương */
}

            body {
                font-family: Arial, sans-serif;
            }
            .table {
                width: 100%;
                border-collapse: collapse;
                background-color: #f8f8f8;
                box-shadow: 0 2px 3px rgba(0,0,0,0.1);
            }
            .table th, .table td {
                text-align: left;
                padding: 12px;
                border-bottom: 1px solid #ddd;
            }
            th {
                background-color: #f0f0f0;
            }
            .account-img {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                object-fit: cover;
            }
            .action-buttons button {
                padding: 6px 12px;
                margin-right: 2px; /* Reduced margin to make buttons closer */
                border: none;
                cursor: pointer;
            }
            .action-buttons button:hover {
                background-color: #e0e0e0;
            }
        </style>
    
    </head>


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->


    <body class="skin-black">
        <header class="header">
            <a href="index.html" class="logo">
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
                                                    <img src="img/26115.jpg" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Director Design Team

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Today</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 days</small>
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
        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="data:image/jpeg;base64,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" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p>Hello, KienNT</p>

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
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->

                 <ul class="sidebar-menu">
                     
                       

                      

                        <li >

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

                </ul>

            </section>
            <!-- /.sidebar -->
        </aside>


        <aside class="right-side">

            <!-- Main content -->
            <section class="content">
                <div class="row">


                </div><!-- /.row -->
                <div class="row">
                    <div class="col-xs-12">
                        <div class="panel">
                            <header class="panel-heading">Account List Management</header>
                            <!-- <div class="box-header"> -->
                            <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                            <!-- </div> -->
                            <div class="panel-body table-responsive">
                                <div class="box-tools m-b-15">
                                    <div class="input-group">
                                        <button>
                                            <a href="AddAccount.jsp">Add New</a>
                                        </button>
                                        <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <table class="table">
                                    <tr>
                                        <th>Name</th>
                                        <th>Phone Number</th>
                                        <th>Role</th>
                                        <th>Email</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                            <button ><a href="AccountDetails.jsp">View</a></button>
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                              <button ><a href="AccountDetails.jsp">View</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                              <button ><a href="AccountDetails.jsp">View</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                              <button ><a href="AccountDetails.jsp">View</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                              <button ><a href="AccountDetails.jsp">View</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://scontent.fhan20-1.fna.fbcdn.net/v/t39.30808-1/333524254_6284612941599739_7081379125548767883_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeHRIPsVeTpcCnNOz0c3jMgy0PnbB8GAMNjQ-dsHwYAw2MP_M_Zcld0VKjBOwb0Uhf-O9xxwh573SozPFTzYs2St&_nc_ohc=Ql1_XKJVdHwQ7kNvgEyV3IO&_nc_ht=scontent.fhan20-1.fna&oh=00_AYA8iJH4_N3E_1PY2_voORUcfMXpAKzyD06pKXdZtNVYrw&oe=667F42F9" class="account-img" alt="User Image" /> Cao Quynh Nga</td>
                                        <td>0987654321</td>
                                        <td>Admin</td>
                                        <td>Ngakiuu@gmail.com</td>
                                        <td class="action-buttons">
                                              <button ><a href="AccountDetails.jsp">View</a></button>
                                        </td>
                                    </tr>
                                    
                                </table>
                                <ul class="pagination pagination-sm pull-right">
                                    <li><a href="#">«</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">»</a></li>
                                </ul>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                </div>
            </section><!-- /.content -->
            <div class="footer-main">
                Copyright &copy Director, 2014
            </div>
        </aside><!-- /.right-side -->      

        <!-- jQuery 2.0.2 -->
        <script>
            function viewItem(itemId) {
            alert('View item with ID ' + itemId);
            // Implement your view logic here, e.g., redirect to view page
            }

            function updateItem(itemId) {
            alert('Update item with ID ' + itemId);
            // Implement your update logic here, e.g., redirect to update page
            }
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

        <script src="js/plugins/chart.js" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
            <!-- calendar -->
            <script src="${pageContext.request.contextPath}/js/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>

            <!-- Director App -->
            <script src="${pageContext.request.contextPath}/js/Director/app.js" type="text/javascript"></script>

            <!-- Director dashboard demo (This is only for demo purposes) -->
            <script src="${pageContext.request.contextPath}/js/Director/dashboard.js" type="text/javascript"></script>

            <!-- Director for demo purposes -->
        <script type="text/javascript">
            $('input').on('ifChecked', function (event) {
                    // var element = $(this).parent().find('input:checkbox:first');
                    // element.parent().parent().parent().addClass('highlight');
                    $(this).parents('li').addClass("task-done");
            console.log('ok');
        });
            $('input').on('ifUnchecked', function (event) {
                    // var element = $(this).parent().find('input:checkbox:first');
// element.parent().parent().parent().removeClass('highlight');
                    $(this).parents('li').removeClass("task-done");
            console.log('not');
        });
        </script>
        <script>
            $('#noti-box').slimScroll({
                    height: '400px',
                    size: '5px',
                    BorderRadius: '5px'
        });
            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                    checkboxClass: 'icheckbox_flat-grey',
                    radioClass: 'iradio_flat-grey'
            });
            </script>
                        <script type="text/javascript">
                            $(function () {
                    "use strict";
            //BAR CHART
            var data = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [
                    {
                    label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.2)",
                            strokeColor: "rgba(220,220,220,1)",
                            pointColor: "rgba(220,220,220,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: [65, 59, 80, 81, 56, 55, 40]
                    },
                    {
                    label: "My Second dataset",
                            fillColor: "rgba(151,187,205,0.2)",
                            strokeColor: "rgba(151,187,205,1)",
                            pointColor: "rgba(151,187,205,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(151,187,205,1)",
                            data: [28, 48, 40, 19, 86, 27, 90]
                    }
                    ]
            };
            new Chart(document.getElementById("linechart").getContext("2d")).Line(data, {
            responsive: true,
                    maintainAspectRatio: false,
            });
                });
                            // Chart.defaults.global.responsive = true;
                </script>
<script>
                function goToPage(PageNumber) {
        // Thực hiện các hành động cần thiết khi chuyển đến trang pageNumber
        // Ví dụ: chuyển đến URL mới, gọi hàm để load dữ liệu mới, ...
        alert("Bạn đang chuyển đến trang " + PageNumber);
        // Ví dụ: window.location.href = "your_new_page.jsp?page=" + pageNumber;
    }
</script>
    </body>
</html>
