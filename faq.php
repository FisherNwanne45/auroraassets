<?php include "short.php" ?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> FAQ - <?php echo $name; ?> - Online Money Investment </title>
    <!-- favicon -->
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <!-- bootstrap -->
    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <!-- fontawesome icon  -->
    <link rel="stylesheet" href="asset/css/fontawesome.min.css">
    <!-- flaticon css -->
    <link rel="stylesheet" href="asset/fonts/flaticon.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="asset/css/animate.css">
    <!-- magnific popup -->
    <link rel="stylesheet" href="asset/css/modal-video.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="asset/css/slick.css">
    <link rel="stylesheet" href="asset/css/slick-theme.css">
    <!-- toastr js -->
    <link rel="stylesheet" href="asset/css/toastr.min.css">
    <!-- stylesheet -->
    <link rel="stylesheet" href="asset/css/style.css">
    <!-- responsive -->
    <link rel="stylesheet" href="asset/css/responsive.css">
</head>

    <body>

            <div class="notification-alert">
            <div class="notice-list">
                
            </div>
        </div>

        <div class="mobile-navbar-wrapper">

            <!-- header begin -->
            <div class="header header-style-4" id="header">
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-5 col-lg-3">
                                <div class="welcome-text">
                                    <p>Welcome to <?php echo $name; ?></p>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-9 d-xl-flex d-lg-flex d-block align-items-center">
                                <div class="part-right">
                                    <ul>
                                        <li>
                                            <span class="simple-text">Sever Time : </span>
                                            <div class="server-time">
                                                <div class="single-time clock-time">
                                                    <span class="icon">
                                                        <i class="far fa-clock"></i>
                                                    </span>
                                                    <span class="text">
                                                        <span id="hours"></span>
                                                        <span id="minutes"></span>
                                                        <span id="seconds"></span>
                                                    </span>
                                                </div>
                                                <div class="single-time">
                                                    <span class="icon">
                                                        <i class="fas fa-calendar-alt"></i>
                                                    </span>
                                                    <span class="text">
                                                        <span id="date"></span>
                                                        <span id="month"></span>
                                                        <span id="year"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="user-panel">
                                                <span>
                                                    <a href="login" class="login-btn">Login</a>or</span><a href="register" class="register-btn">Register</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="bottom">
                    <div class="container">
                        <div class="row justify-content-between">
                            <div class="col-xl-3 col-lg-2 d-xl-flex d-lg-flex d-block align-items-center">
                                <div class="row">
                                    <div class="col-4 d-xl-none d-lg-none d-block">
                                        <button class="navbar-toggler" type="button">
                                            <span class="dag"></span>
                                            <span class="dag2"></span>
                                            <span class="dag3"></span>
                                        </button>    
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-8 d-xl-block d-lg-block d-flex align-items-center justify-content-end">
                                        <div class="logo">
                                            <a href="index.php">
                                                <img src="asset/img/logo2.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-9 col-lg-10">
                                <div class="mainmenu">
                                    <div class="d-xl-none d-lg-none d-block">
                                        <div class="user-profile">
                                            
                                            <div class="log-out-area">
                                                 <a href="register">Register</a>
                                            </div>
                                        </div>
                                    </div>
                                    <nav class="navbar navbar-expand-lg">              

                                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                            <ul class="navbar-nav ml-auto">
                                                <li class="nav-item  show">
                                                   <a class="nav-link" href="index.php">Home<span class="sr-only">(current)</span></a>
                                                </li>

                                               
                                                <li class="nav-item">
                                                    <a class="nav-link" href="index.php#how">How it Works<span class="sr-only">(current)</span></a>
                                                </li>

                                                <li class="nav-item">
                                                    <a class="nav-link" href="index.php#plan">Pricing Plans </a>
                                                </li>
                                              

                                                <li class="nav-item">
                                                    <a class="nav-link" href="about.php">about  </a>
                                                </li>
                                                
                                                <li class="nav-item">
                                                    <a class="nav-link" href="faq.php">FAQ </a>
                                                </li>
                                                
                                                <li class="nav-item">
                                                    <a class="nav-link" href="contact.php">contact</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="login">Login </a>
                                                </li>
                                                <li class="nav-item join-now-btn">
                                                    <a class="nav-link" href="register">Join Now</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header end -->

            <!-- breadcrumb begin -->
            <div class="breadcrumb-oitila">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-9 col-8">
                            <div class="part-txt">
                                <h1>faq</h1>
                                <ul>
                                    <li>home</li>
                                    <li>faq details page</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-4 d-flex align-items-center">
                            <div class="part-img">
                                <img src="asset/img/breadcrumb-img.png" alt="image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb end -->

            <!-- faq begin -->
            <div class="faq">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-4">
                            <div class="faq-sidebar">
                                <div class="search-widget">
                                    <form>
                                        <input type="text" placeholder="Search here">
                                        <button type="submit"><i class="fas fa-search"></i></button>
                                    </form>
                                </div>
                                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">General Questions</a>
                                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Investment</a>
                                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Wallet</a>
                                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Your account</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8">
                            <div class="faq-content">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                        <div class="single-faq">
                                            <h4>HOW DO I OPEN AN ACCOUNT?</h4>
                                            <p>Complete our open an account link located on our investment products page or by clicking <a href="register">here</a>.</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>WHY INVEST IN DIGITAL ASSETS?</h4>
                                            <p>Digital Assets have historically shown low correlation to bonds, stocks or any other traditional assets. The Federal Reserve has described digital assets as a brand-new asset class and is intrigued by the innovation the asset brings to finance. Historically, cryptocurrencies have yielded strong Sharpe ratios over multi-year periods (High Sharpe ratios indicate high levels of investment return for the amount of risk taken.) When incorporated into an investment portfolio, digital assets may help increase an investor’s overall diversification due the historically low correlations that cryptocurrencies have had with traditional asset classes.</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>WHAT ARE THE USE CASES FOR CRYPTOCURRENCIES?</h4>
                                            <p>There are many use cases for cryptocurrencies, however, on a macro level, two use cases are in high demand. In countries where governments poorly manage their money supplies and create hyperinflation, the citizens of these countries have protected their wealth by moving commerce into cryptocurrencies.
<br>
You can see this in Venezuela and Africa in this world-wide heat map of cryptocurrency from: Coin Map.
<br>
Businesses and individuals needing to send payments across international borders have also become strong supporters of cryptocurrencies because they offer international remittance capabilities that are faster and less expensive than current methods.</p>
                                        </div>
                                    </div>
    
                                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                        <div class="single-faq">
                                            <h4>WHAT IS THE MINIMUM REQUIRED INVESTMENT?</h4>
                                            <p>The minimum account size to invest in any plan by is $100 USD. In certain instances, or at certain times, the investor may waive or modify the minimum investment. All minimum investment waivers and fee modifications are determined on a case-by-case basis at the sole discretion of the investor.</p>
                                        </div>
                                        <div class="single-faq">
                                            <h4>Is investing in Bitcoin a good idea?</h4>
                                            <p>Bitcoin works similarly to other financial assets and is subject to speculation and volatile rise and falls in the marketplace - be careful when deciding to enter..</p>
                                        </div>
                                        <div class="single-faq">
                                            <h4>How can you earn with Bitcoin?</h4>
                                            <p>Bitcoin purchased at a lower price and sold at a higher prices is marked as a profit. It's not a guarantee that the market will rise from your purchase price.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                        <div class="single-faq">
                                            <h4>How do I use my Bitcoin wallet?</h4>
                                            <p>A Bitcoin wallet is simply a method of storage for your coins. You can use the wallet to send and receive payments in Bitcoin securely.</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>How do you calculate the interest on my account?</h4>
                                            <p>Depending on each plan. Interest on your  is acquired Daily, Weekly, Bi-Weekly, Monthly and Yearly and credited to your available balance at the end of each cycle. You can use the calculator on the home page to calculate your plan expectations</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>How can I withdraw funds?</h4>
                                            <p>Login to your account using your username and password and check the Withdraw section.</p>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                        <div class="single-faq">
                                            <h4>How can I change  password?</h4>
                                            <p>Log into your  account and click on the "Account Settings". You can change your password there.</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>What if I can't log into my account because I forgot my password?</h4>
                                            <p>
Click <a href="forgot-password">forgot password link</a>, type your username or e-mail and you'll receive your account information.
</p>
                                        </div>
    
                                        <div class="single-faq">
                                            <h4>Can I do a direct deposit from my account balance?</h4>
                                            <p>Yes! To make a deposit, Simply login into your members account and click on Make Deposit and select the Deposit type.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- faq end -->

             <!-- footer begin -->
            <div class="footer">
                <div class="footer-top">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10">
                                <div class="about-widget">
                                    <a href="index.php" class="logo">
                                        <img src="asset/img/logo.png" alt="">
                                    </a>
                                    <p>Click on <a href="register">Join Now</a>  to create a free bitcoin account. Login with your email and confirm your Registration</p>
                                    <div class="social-links">
                                        <ul>
                                            <li>
                                                <a href="#0" class="single-link">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#0" class="single-link">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#0" class="single-link">
                                                    <i class="fab fa-instagram"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#0" class="single-link">
                                                    <i class="fab fa-pinterest-p"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-10">
                                <div class="link-widget">
                                    <h4 class="title">
                                        Useful links
                                    </h4>
                                    <ul>
                                        <li>
                                            <a href="about.php" class="single-link">
                                                About Us
                                            </a>
                                        </li>
                                        <li>
                                            <a href="index.php#how" class="single-link">
                                                How it Works
                                            </a>
                                        </li>
                                        <li>
                                            <a href="index.php#plan" class="single-link">
                                                Pricing Plan
                                            </a>
                                        </li>
                                        <li>
                                            <a href="faq.php" class="single-link">
                                                FAQ
                                            </a>
                                        </li>
                                        <li>
                                            <a href="contact.php" class="single-link">
                                                Terms & Policy
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-10">
                                <div class="newsletter-widget">
                                    <h4 class="title">
                                        Subscribe To Our Newsletter
                                    </h4>
                                    <form class="newsletter-form">
                                        <input type="text" placeholder="Enter Your Mail Address">
                                        <button class="def-btn def-small">
                                            Subscribe
                                        </button>
                                    </form>
                                    <p><?php echo $name; ?> is a leading Cryptocurrency trading Group that utilizes innovative proprietary technologies to provide managed cryptocurrency trading services to yield higher profits..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright-area">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-8 col-lg-8">
                                <p>Copyright © <a href="index.php"><?php echo $name; ?></a> - <?php echo $year; ?>. All Rights Reserved</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer end -->
            
        </div> <!-- mobile navbar wrapper end -->

        <div class="d-xl-none d-lg-none d-block">
            <div class="mobile-navigation-bar">
                <ul>
                    <li>
                        <a href="login">
                            <img src="asset/img/svg/profile.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="login">
                            <img src="asset/img/svg/money-transfering.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="register">
                            <img src="asset/img/svg/calculator.svg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#header">
                            <img src="asset/img/svg/arrow.svg" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="d-xl-block d-lg-block d-none">
            <div class="back-to-top-btn">
                <a href="#">
                    <img src="asset/img/svg/arrow.svg" alt="">
                </a>
            </div>
        </div>
     
        <!-- jquery -->
         <script src="asset/js/jquery.js"></script>
        <!-- popper js -->
        
        <script src="asset/popper.min.js"></script>
        <script src="asset/js/popper.min.js"></script>
        <!-- bootstrap -->
        <script src="asset/js/bootstrap.min.js"></script>
        <!-- modal video js -->
        <script src="asset/js/jquery-modal-video.min.js"></script>
        <!-- slick js -->
        <script src="asset/js/slick.min.js"></script>
        <!-- toastr js -->
        <script src="asset/js/toastr.min.js"></script>
        <!-- clock js -->
        <script src="asset/js/clock.min.js"></script>
        <!-- main -->
        <script src="asset/js/main.js"></script>
         <div class="mgm" style="display: none;">
<div class="txt" style="color:black;">Someone from <b></b> just withdrew <a href="en/btc/javascript:void(0);" onclick="javascript:void(0);"></a></div>
</div>

<style>
.mgm {
    border-radius: 7px;
    position: fixed;
    z-index: 90;
    bottom: 80px;
    right: 50px;
    background: #00FFE2;
    padding: 20px 27px;
    box-shadow: 0px 5px 13px 0px rgba(0,0,0,.3);
}
.mgm a {
    font-weight: 700;
    display: block;
    color:#f2d516;
}
.mgm a, .mgm a:active {
    transition: all .2s ease;
    color:#f2d516;
}
</style>
<script data-cfasync="false" src="en/btc/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.html"></script><script type="text/javascript">
var listCountries = ['Argentina', 'USA', 'Germany', 'France', 'Italy', 'South Korea', 'Australia', 'Norway', 'Canada', 'Argentina', 'Saudi Arabia', 'Mexico', 'Spain', 'Austria', 'Venezuela', 'South Africa', 'Sweden', 'South Korea', 'China', 'Italy', 'Germany', 'United Kingdom', 'Bahrain', 'Greece', 'Cuba', 'Bulgaria', 'Portugal', 'Austria', 'Cyprus', 'Panama', 'Asia', 'Norway', 'Netherlands', 'Switzerland', 'Belgium', 'Israel', 'Cyprus','Spain','Norway'];
    var listPlans = ['$2000','$1000','$50000','$15000','$10000','$100000','$20000','$1500','$30000','$40000','$1200','$60000','$3400', '$7000', '$25000', '$25000', '$35000', '$5000','$7000','$45000','$3500','$5000','$12500','$9500'];
    interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
    var run = setInterval(request, interval);

    function request() {
        clearInterval(run);
        interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
        var country = listCountries[Math.floor(Math.random() * listCountries.length)];
        var plan = listPlans[Math.floor(Math.random() * listPlans.length)];
        var msg = 'Someone from <b>' + country + '</b> just withdrew  <a href="en/btc/javascript:void(0);" onclick="javascript:void(0);">' + plan + ' .</a>';
        $(".mgm .txt").html(msg);
        $(".mgm").stop(true).fadeIn(300);
        window.setTimeout(function() {
            $(".mgm").stop(true).fadeOut(300);
        }, 6000);
        run = setInterval(request, interval);
    }
</script>

 <?php echo $chat; ?>
    </body>

</html>