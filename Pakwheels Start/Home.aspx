<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pakwheels_Start.Home" %>


<!doctype html>
<html lang="en">
<head>

    <title>PAK WHEELS</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">

    <!-- Web Application Manifest -->

    <!-- Add to home screen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="xDocs">
    <link rel="icon" sizes="192x192" href="assets/img/basic/chrome-touch-icon-192x192.png">

    <!-- Add to home screen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Web Starter Kit">
    <link rel="apple-touch-icon" href="assets/img/basic/apple-touch-icon.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="assets/img/basic/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#55acee">
    <!-- Color the status bar on mobile devices -->
    <meta name="theme-color" content="#55acee">

    <!--========================================
    CSS
    ===========================================-->
    <!--3rd party plugins-->
    <link href="../assets/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/lib/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css">
    <!--custom icons for classified website-->
    <link href="../assets/css/adspoticons.css" rel="stylesheet" type="text/css">
    <!--main styles for template-->
    <link href="../assets/css/style.css" rel="stylesheet" type="text/css">
    <!--put your custom css on the file below-->
    <link href="../assets/css/custom.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="web-app">
        <div class="doc-header header-fixed">
            <div class="container">
                <div class="inner">
                    <div class="app-logo">
                        <button class="mobile-control mob-menu-trigger"><i class="adicon-hamburger"></i></button>
                        <a href="index.html">
                            <img src="../assets/img/basic/logo3.png" alt="adspot" width="220" height="100"></a>
                        <!--<h1>PAK WHEELS</h1>-->
                    </div>
                    <ul class="quick-actions circular-style">
                        <li class="dropdown-wrap wide">
                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                        <li><a class="nav-trigger" href="#"><i class="fa fa-navicon"></i></a></li>
                    </ul>
                </div>
                <div class="clearfix sticky-menu">

                    <ul class="main_nav">
                        <li class="active"><a href="home.aspx">Home</a></li>
                        <li><a href="Site%20Info/AboutUS.aspx">About Us</a></li>
                        <li><a href="Site%20Info/SiteFeedBack.aspx">Site Feedback</a></li>
                    </ul>
                    <ul class="quick-actions">
                        <li class="dropdown-wrap">
                            <a href="#">New Cars<i class="fa fa-caret-down"></i></a>
                            <div class="basic-dropdown">
                                <ul class="country-list">
                                    <li><a href="New%20Cars/NewCars.aspx">Cars Search </a></li>
                                    <li><a href="New%20Cars/NCarCompare.aspx">Car Comparison </a></li>
                                    <li><a href="New%20Cars/NewCarReview.aspx">Car Reviews</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="Login_Signup/PkLOgin.aspx">Login</a></li>
                        <li><a href="Login_Signup/PkSignUp.aspx">Register</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="app-canvas">
            <div class="main-banner imgAsBg hero-banner menu-on-top banner-overlay">
                <img src="assets/img/13.jpg" alt="dummy">
                <div class="inner">
                    <div class="container">
                        <header class="text-normal">
                          
                            <h2>Buy & Sell <strong>Any Car</strong></h2>
                            <p class="text-uppercase">World’s Biggest Classified Marketplace</p>
                        </header>
                        <div class="text-center">
                            <a href="Used Cars/PostAd.aspx" class="btn btn-transparent btn-small">Post An Ad</a>
                            <a href="Used%20Cars/SearchAds.aspx" class="btn btn-transparent btn-small">Search Ads</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555-->
        </div>
        <footer class="doc-footer style2 short">
            <div class="container">
                <div class="text-center">
                    <a href="#">
                        <img src="assets/img/basic/logo2.png" height="65" width="200" alt="logo"></a>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-md-6">
                        <p>&copy; ADSPOT - Classified</p>
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <div class="widget-social style2">
                            <div class="social-links">
                                <ul class="text-right">
                                    <li><a class="fa fa-facebook" href="https://www.facebook.com/"></a></li>
                                    <li><a class="fa fa-twitter" href="https://www.twitter.com"></a></li>
                                    <li><a class="fa fa-google-plus" href="https://plus.google.com/"></a></li>
                                    <li><a class="fa fa-instagram" href="https://www.instagram.com/"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>


    <!--========================================
    Javascript
    ===========================================-->
    <script src="assets/lib/jquery/dist/jquery.min.js"></script>
    <script src="assets/lib/slick-carousel/slick/slick.min.js"></script>
    <script src="assets/js/app.js"></script>

</body>

<!-- Mirrored from xvelopers.com/html/spot/home5.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 30 Oct 2016 20:00:23 GMT -->
</html>


