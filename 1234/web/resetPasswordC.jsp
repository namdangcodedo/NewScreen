<%-- 
    Document   : jsp.jsp
    Created on : 03-10-2023, 01:09:39
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Khôi phục mật khẩu </title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" href="css/cssResetPass/main.css"/>
        <link rel="stylesheet" type="text/css" href="css/cssResetPass/style.css">
        <link rel="stylesheet" type="text/css" href="css/cssResetPass/util.css">


        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    </head>

    <body>
        <header id="header" class="site-header">


        <nav id="header-nav" class="navbar navbar-expand-lg py-3">
            <div class="container">
                <a class="navbar-brand" href="HomePage.jsp">
                    <img src="images/main-logo.png" class="logo">
                </a>
                <button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false" aria-label="Toggle navigation">
                    <svg class="navbar-icon">
                    <use xlink:href="#navbar-icon"></use>
                    </svg>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar" aria-labelledby="bdNavbarOffcanvasLabel">
                    <div class="offcanvas-header px-4 pb-0">
                        <a class="navbar-brand" href="HomePage.">
                            <img src="images/main-logo.png" class="logo">
                        </a>
                        <button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas" aria-label="Close" data-bs-target="#bdNavbar"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul id="navbar" class="navbar-nav text-uppercase justify-content-start justify-content-lg-center align-items-start align-items-lg-center flex-grow-1">
                            <li class="nav-item">
                                <a class="nav-link me-4 active" href="homePage.jsp">Home</a>
                            </li>
                          
                            <li class="nav-item">
                                <a class="nav-link me-4" href="shop.html">Shop</a>
                            </li>
                           
                            <li class="nav-item">
                                 <a href="Views/admin/DashBoard.jsp" onclick="goToPage(1)">Admin</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link me-4 dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu animate slide border">
                                    <li>
                                        <a href="about.html" class="dropdown-item fw-light">About <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="dropdown-item fw-light">Shop <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="single-product.html" class="dropdown-item fw-light">Single Product <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="cart.jsp" class="dropdown-item fw-light">Cart <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="checkout.html" class="dropdown-item fw-light">Checkout <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="blog.html" class="dropdown-item fw-light">Blog <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="single-post.html" class="dropdown-item fw-light">Single Post <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="contact.html" class="dropdown-item fw-light">Contact <span
                                                class="badge bg-primary">Pro</span></a>
                                    </li>
                                    <li>
                                        <a href="productList.jsp" class="dropdown-item fw-light">Products List <span class="badge bg-primary">Pro</span></a>
                                    </li>
                                </ul>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link text-decoration-underline me-4" href="https://templatesjungle.gumroad.com/l/bookly-bookstore-ecommerce-bootstrap-html-css-website-template" target="_blank">Get Pro</a>
                            </li>
                        </ul>
                       
                        
                        
                        
                        <div class="user-items d-flex">
                            <ul class="d-flex justify-content-end list-unstyled mb-0">
                                <li class="search-item pe-3">
                                    <a href="#" class="search-button">
                                        <svg class="search">
                                        <use xlink:href="#search"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="pe-3">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <svg class="user">
                                        <use xlink:href="#user"></use>
                                        </svg>
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
                                                                <button class="nav-link text-capitalize active" id="nav-sign-in-tab" data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button" role="tab" aria-controls="nav-sign-in" aria-selected="true">Sign In</button>
                                                                <button class="nav-link text-capitalize" id="nav-register-tab" data-bs-toggle="tab" data-bs-target="#nav-register" type="button" role="tab" aria-controls="nav-register" aria-selected="false">Register</button>
                                                            </div>
                                                        </nav>
                                                        <div class="tab-content" id="nav-tabContent">
                                                            <div class="tab-content" id="nav-tabContent">
                                                            <div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel" aria-labelledby="nav-sign-in-tab">
                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="sign-in">Username or email address *</label>
                                                                    <input type="text" minlength="2" name="username" placeholder="Your Username" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>
                                                                <div class="form-group pb-3">
                                                                    <label class="mb-2" for="sign-in">Password *</label>
                                                                    <input type="password" minlength="2" name="password" placeholder="Your Password" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>
                                                                <label class="py-3">
                                                                    <input type="checkbox" required="" class="d-inline">
                                                                    <span class="label-body">Remember me</span>
                                                                    <span class="label-body"><a href="resetPasswordC.jsp" class="fw-bold">Forgot Password</a></span>
                                                                </label>
                                                                <a href="userProfile.jsp"><button type="submit" name="submit" class="btn btn-dark w-100 my-3">Login</button></a>
                                                                <div class="text-center my-3">or</div>
                                                                <button type="button" class="btn btn-dark w-100 my-3" >
                                                                    <img src="https://img.icons8.com/color/16/000000/google-logo.png" class="me-2"> Sign in with Google
                                                                </button>
                                                                <button type="button" class="btn btn-dark w-100 my-3">
                                                                    <img src="https://img.icons8.com/color/16/000000/facebook-new.png" class="me-2"> Sign in with Facebook
                                                                </button>
                                                            </div>
                                                            <div class="tab-pane fade" id="nav-register" role="tabpanel" aria-labelledby="nav-register-tab">
                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="username">Your user name *</label>
                                                                    <input type="text" minlength="2" name="username" placeholder="Your user name" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="account">Your account *</label>
                                                                    <input type="text" minlength="2" name="account" placeholder="Your account" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="email">Your email address *</label>
                                                                    <input type="email" minlength="2" name="email" placeholder="Your email address" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="phone">Your phone number *</label>
                                                                    <input type="tel" minlength="2" name="phone" placeholder="Your phone number" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="address">Your address *</label>
                                                                    <input type="text" minlength="2" name="address" placeholder="Your address" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group py-3">
                                                                    <label class="mb-2" for="password">Password *</label>
                                                                    <input type="password" minlength="2" name="password" placeholder="Password" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <div class="form-group pb-3">
                                                                    <label class="mb-2" for="confirm-password">Password again *</label>
                                                                    <input type="password" minlength="2" name="confirm-password" placeholder="Password again" class="form-control w-100 rounded-3 p-3" required>
                                                                </div>

                                                                <button type="submit" name="submit" class="btn btn-dark w-100 my-3">Register</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="wishlist-dropdown dropdown pe-3">
                                    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                        <svg class="wishlist">
                                        <use xlink:href="#heart"></use>
                                        </svg>
                                    </a>
                                    <div class="dropdown-menu animate slide dropdown-menu-start dropdown-menu-lg-end p-3">
                                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                                            <span class="text-primary">Your wishlist</span>
                                            <span class="badge bg-primary rounded-pill">2</span>
                                        </h4>
                                        <ul class="list-group mb-3">
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">The Emerald Crown</a>
                                                    </h5>
                                                    <small>Special discounted price.</small>
                                                    <a href="#" class="d-block fw-medium text-capitalize mt-2">Add to cart</a>
                                                </div>
                                                <span class="text-primary">$2000</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">The Last Enchantment</a>
                                                    </h5>
                                                    <small>Perfect for enlightened people.</small>
                                                    <a href="#" class="d-block fw-medium text-capitalize mt-2">Add to cart</a>
                                                </div>
                                                <span class="text-primary">$400</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between">
                                                <span class="text-capitalize"><b>Total (USD)</b></span>
                                                <strong>$1470</strong>
                                            </li>
                                        </ul>
                                        <div class="d-flex flex-wrap justify-content-center">
                                            <a href="#" class="w-100 btn btn-dark mb-1" type="submit">Add all to cart</a>
                                            <a href="cart.jsp" class="w-100 btn btn-primary" type="submit">View cart</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-dropdown dropdown">
                                    <a href="cart.jsp" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">
                                        <svg class="cart">
                                        <use xlink:href="#cart"></use>
                                        </svg><span class="fs-6 fw-light">(02)</span>
                                    </a>
                                    <div class="dropdown-menu animate slide dropdown-menu-start dropdown-menu-lg-end p-3">
                                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                                            <span class="text-primary">Your cart</span>
                                            <span class="badge bg-primary rounded-pill">2</span>
                                        </h4>
                                        <ul class="list-group mb-3">
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">Secrets of the Alchemist</a>
                                                    </h5>
                                                    <small>High quality in good price.</small>
                                                </div>
                                                <span class="text-primary">$870</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between lh-sm">
                                                <div>
                                                    <h5>
                                                        <a href="single-product.html">Quest for the Lost City</a>
                                                    </h5>
                                                    <small>Professional Quest for the Lost City.</small>
                                                </div>
                                                <span class="text-primary">$600</span>
                                            </li>
                                            <li class="list-group-item bg-transparent d-flex justify-content-between">
                                                <span class="text-capitalize"><b>Total (USD)</b></span>
                                                <strong>$1470</strong>
                                            </li>
                                        </ul>
                                        <div class="d-flex flex-wrap justify-content-center">
                                            <a href="cart.jsp" class="w-100 btn btn-dark mb-1" type="submit">View Cart</a>
                                            <a href="CartCheckout.jsp" class="w-100 btn btn-primary mb-1" type="submit">Go to checkout</a>
                                            <a href="orderHistory.jsp" class="w-100 btn btn-primary" type="submit">Order History</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    </header>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="https://img.freepik.com/premium-vector/3d-password-field-with-padlock-isolated_169241-6460.jpg" alt="IMG">
                    </div>
                    <form action="sendLinkResetPass" method="post"> <span class="login100-form-title">
                            <b>Reset Password   </b>
                        </span>

                        <div class="wrap-input100 validate-input">

                            <input class="input100" type="text" placeholder="Input your email" name="emailInputReset"
                                   value="" required>

                            <span class="symbol-input100">
                                <i class='bx bx-mail-send' ></i>
                            </span>
                        </div>


                        <div >
                            <input  type="submit"  onclick="return validateEmail();" value="Send"/>
                        </div>  
                        <div class="text-center p-t-12">

                        </div><p class="text-danger" style="color: blue ; background-color: white ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess}
                        </p>
                    </form>



                    <a class="txt2" href="HomePage.jsp">
                        Back
                    </a>


                </div>
            </div>
        </div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
        <script>
                                function validateEmail() {
                                    // Lấy giá trị địa chỉ email từ trường input
                                    var email = document.querySelector('input[name="emailInputReset"]').value;

                                    // Sử dụng biểu thức chính quy để kiểm tra định dạng email
                                    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

                                    if (!emailRegex.test(email)) {
                                        alert("Vui lòng nhập địa chỉ email hợp lệ.");
                                        return false;
                                    }

                                    // Nếu địa chỉ email hợp lệ, cho phép form gửi đi
                                    return true;
                                }
        </script>
    </body>
</html>