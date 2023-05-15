<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
</head>

<body>
	<%@ include file="header.jsp" %>

    <!-- Navbar Start -->
    <div class="container-fluid">
    <!-- 여기 -->
       <div class="row border-top px-xl-5 justify-content-center">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="home" class="nav-item nav-link">Home</a>
                            <a href="shop" class="nav-item nav-link">Shop</a>
                            <a href="cart" class="nav-item nav-link">Shopping Cart</a>
                        </div>
                        <!-- login - o -->
                        <div class="navbar-nav ml-auto py-0">
                            <a href="login" class="nav-item nav-link">Login</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">WELCOME</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Login</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Login Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Login</span></h2>
        </div>
        <div class="row px-xl-5 flex-column align-items-center justify-content-center">
        	<!-- 여기 -->
            <div class="col-lg-7 mb-5 d-flex flex-row justify-content-center">
                <div class="contact-form">
                    <div id="success"></div>
                    <form action="/login" name="loginForm" id="loginForm" method="POST" novalidate="novalidate" >
                        <div class="control-group mb-2">
                            <input type="text" class="form-control" id="id" placeholder="Id" name="id"
                                required="required" data-validation-required-message="Please enter your id" style="width: 300px;"/>
                        </div>
                        <div class="control-group mb-3">
                            <input type="password" class="form-control" id="pw" placeholder="Password" name="pw"
                                required="required" data-validation-required-message="Please enter your password" style="width: 300px;"/>
                        </div>
                        <div>
                            <!-- id 변경함 -->
                            <button class="btn btn-primary py-2 px-4" type="submit" id="loginButton">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Login End -->


<%@ include file="footer.jsp" %>


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="/resources/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="/resources/js/main.js"></script>
</body>

</html>
