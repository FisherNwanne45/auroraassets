<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!----------------- www.hyipcustomize.com ----------->
    <meta name="designer" href="https://hyipcustomize.com/">
    <title>Empic Company Limited | Digital Asset Investment Strategies for Professionals and Beginners. Backed by a team with deep experience in finance. ðŸš€</title>
    <meta name="description" content="We provide technology-driven wealth and investment management solutions for wealth managers, investment managers, and institutional and private investors.">
    <script src="themekit/scripts/jquery.min.js"></script>
    <script src="themekit/scripts/main.js"></script>
    <link rel="stylesheet" href="themekit/css/bootstrap-grid.css">
    <link rel="stylesheet" href="themekit/css/style.css">
    <link rel="stylesheet" href="themekit/css/glide.css">
    <link rel="stylesheet" href="themekit/css/magnific-popup.css">
    <link rel="stylesheet" href="themekit/css/content-box.css">
    <link rel="stylesheet" href="themekit/css/contact-form.css">
    <link rel="stylesheet" href="themekit/css/media-box.css">
    <link rel="stylesheet" href="skin.css">
    <link rel="icon" href="media/favicon.png">
</head>
<body>
    <div id="preloader"></div>
    <nav class="menu-top-logo menu-fixed" data-menu-anima="fade-in">
        <div class="container">
            <div class="menu-brand">
                <a href="index-1.htm?a=home">
                    <img class="logo-default scroll-hide" src="media/logo.png" alt="logo">
                    <img class="logo-retina scroll-hide" src="media/logo.png" alt="logo">
                    <img class="logo-default scroll-show" src="media/logo.png" alt="logo">
                    <img class="logo-retina scroll-show" src="media/logo.png" alt="logo">
                </a>
                
                
            </div>
            
            
            <i class="menu-btn"></i>
            <div class="menu-cnt">
                <ul id="main-menu">
                    
                            <li><a href="index-1.htm?a=home">Home</a></li>
                            
                        <li class="dropdown">
                            <a href="#">Who We Are</a>
                            <ul>
                                <li><a href="index-3.htm?a=about">ABOUT US</a></li>
                                <li><a href="index-4.htm?a=values">PURPOSE AND VALUES</a></li>
                                <li><a href="index-5.htm?a=license">REGULATORY INFORMATION</a></li>
                            </ul>
                            
                            <li class="dropdown">
                            <a href="#">Services</a>
                            <ul>
                                <li><a href="index-6.htm?a=asset">ASSET MANAGEMENT</a></li>
                                <li><a href="index-7.htm?a=banking">INVESTMENT BANKING</a></li>
                            </ul>
                            <li class="dropdown">
                            <a href="#">Support</a>
                            <ul>
                                <li><a href="index-8.htm?a=faq">FAQ</a></li>
                                <li><a href="index-9.htm?a=support">CONTACT US</a></li>
                            </ul>
                            <li class="dropdown">
                            <a href="#">Plans</a>
                            <ul>
                                <li><a href="index-10.htm?a=crypto">CRYPTO ASSET PLANS</a></li>
                                <li><a href="index-11.htm?a=estate">REAL ESTATE PLANS</a></li>
                              
                           
                            </ul>
                  
                  
                    
                   <li><a href="index-12.htm?a=login">Login</a></li>
                                    <li><a href="index-13.htm?a=signup">Signup</a></li>
                                        
                       
                   
                </ul>
                <div class="menu-right">
                    <div class="custom-area">
                      9 Lloyd St, Hereford HR1 2HB, <br> United Kingdom 🇬🇧
                    </div>
                   
         
                </div>
            </div>
        </div>
    </nav>
 <header class="header-image ken-burn-center light" data-parallax="true" data-natural-height="500" data-natural-width="1920" data-bleed="0" data-image-src="media/hd-wide-5.jpg" data-offset="0">
        <div class="container">
            <h1>Signup</h1>
           
            <ol class="breadcrumb">
                <li><a href="index-1.htm?a=home">Home</a></li>
                <li><a href="#">Signup</a></li>
            </ol>
        </div>
    </header>
 <main>
       
        <section class="section-base">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="title">
                            <h2>Signup</h2>
                          
                        </div>

 

 <script language="javascript">
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 
  
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
    alert("For username you should use English letters and digits only!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 
  
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retype your e-mail!");
    document.regform.email.focus();
    return false;
  }

  for (i in document.regform.elements) {
    f = document.regform.elements[i];
    if (f.name && f.name.match(/^pay_account/)) {
      if (f.value == '') continue;
      var notice = f.getAttribute('data-validate-notice');
      var invalid = 0;
      if (f.getAttribute('data-validate') == 'regexp') {
        var re = new RegExp(f.getAttribute('data-validate-regexp'));
        if (!f.value.match(re)) {
          invalid = 1;
        }
      } else if (f.getAttribute('data-validate') == 'email') {
        var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
        if (!f.value.match(re)) {
          invalid = 1;
        }
      }
      if (invalid) {
        alert('Invalid account format. Expected '+notice);
        f.focus();
        return false;
      }
    }
  }

  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }

  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 

 

<form method="post" onsubmit="return checkform()" class="form-box form-ajax" name="regform"><input type="hidden" name="form_id" value="16946998498863"><input type="hidden" name="form_token" value="410afcbbfa49f0df3179bb700e06bcc9">
<input type="hidden" name="a" value="signup">
<input type="hidden" name="action" value="signup">
<div class="row">
                                <div class="col-lg-6">
                                    <p>Your Full Name</p>
                                    <input type="text" name="fullname" value='' class="input-text">
                                </div>
 <div class="col-lg-6">
                                    <p>Your Username</p>
                                    <input type="text" name="username" value='' class="input-text">
                                </div>
 <div class="col-lg-6">
                                    <p>Password</p>
                                    <input type="password" name="password" value='' class="input-text">
                                </div>
                                <div class="col-lg-6">
                                    <p>Retype Password</p>
                                    <input type="password" name="password2" value='' class="input-text">
                                </div>
 <div class="col-lg-6">
                                    <p>Your Bitcoin Account</p>
<input type="text" class="input-text" name="pay_account[1006][Account ID]" value=""></div>
 <div class="col-lg-6">
                                    <p>Your USDT TRC20 Account</p>
<input type="text" class="input-text" name="pay_account[1007][Account ID]" value=""></div>
 <div class="col-lg-6">
                                    <p>E-mail Address</p>
                                    <input type="text" name="email" value='' class="input-text">
                                </div>
                                <div class="col-lg-6">
                                    <p>Retype E-mail Address</p>
                                    <input type="text" name="email1" value='' class="input-text">
                                </div>
 <div class="col-lg-6">
                                    <p>Your Upline</p>
                                     <input type="text" value=" ()" class="input-text" disabled="">
                                </div>


 <div class="col-lg-12">
                                    <input type="checkbox" name="agree" value="1"> I agree with <a href="index-14.htm?a=rules">Terms and conditions</a>
                                </div>
                            </div>
                            
                            <button class="btn btn-xs" type="submit">Signup</button>
</form>
            </div>
                </div>
            </div>
        </section>
    </main>
 <i class="scroll-top-btn scroll-top show"></i>
       <footer class="light">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h3>Empic Company Limited LLC</h3>
                    <p>We strive to create value for our clients and employees while adhering to principles of excellence and trust</p>
                  
                </div>
                <div class="col-lg-4">
                    <h3>Who We Are</h3>
                    <ul class="icon-list icon-line">
                            
                                    <li><a href="index-3.htm?a=about">ABOUT US</a></li>
                                <li><a href="index-4.htm?a=values">PURPOSE AND VALUES</a></li>
                                <li><a href="index-5.htm?a=license">REGULATORY INFORMATION</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h3>Useful Links</h3>
                    <ul class="icon-list icon-line">
                        <li><a href="index-1.htm?a=home">HOME</a></li>
                            
                                    <li><a href="index-8.htm?a=faq">FAQ</a></li>
                                    <li><a href="index-9.htm?a=support">CONTACT US</a></li>
                                                                        <li><a href="index-12.htm?a=login">LOGIN</a></li>
                                    <li><a href="index-13.htm?a=signup">REGISTER</a></li>
                                                                
                    </ul>
                </div>
                <div class="col-lg-4">
                    <ul class="text-list text-list-line">
                        <li><b>Address:</b><hr><p>9 Lloyd St, Hereford HR1 2HB, <br> United Kingdom 🇬🇧</p></li><br>
                        <li><b>Support Email</b><hr><p>support@empic.ltd</p></li>
                   
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bar">
            <div class="container">
                <span>Copyright Â© Empic Company Limited</span><br>
                <span><a href="index-9.htm?a=support">Support</a> | <a href="index-14.htm?a=rules">Privacy policy</a></span>
            </div>
        </div>
        <link rel="stylesheet" href="themekit/media/icons/iconsmind/line-icons.min.css">
        <script src="themekit/scripts/parallax.min.js"></script>
        <script src="themekit/scripts/glide.min.js"></script>
        <script src="themekit/scripts/magnific-popup.min.js"></script>
        <script src="themekit/scripts/tab-accordion.js"></script>
        <script src="themekit/scripts/imagesloaded.min.js"></script>
        <script src="themekit/scripts/progress.js" async=""></script>
        <script src="a0c361a166.js" crossorigin="anonymous"></script>

    </footer>
  
</body>
<!-- Earning notification start -->
<script type="text/javascript" src="css/alert/js/jquery.fake-notification.min.js"></script>




<script>
	  var count_particles, stats, update;
	  stats = new Stats;
	  stats.setMode(0);
	  stats.domElement.style.position = 'absolute';
	  stats.domElement.style.left = '0px';
	  stats.domElement.style.top = '0px';
	  document.body.appendChild(stats.domElement);
	  count_particles = document.querySelector('.js-count-particles');
	  update = function() {
	    stats.begin();
	    stats.end();
	    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
	      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
	    }
	    requestAnimationFrame(update);
	  };
	  requestAnimationFrame(update);
	</script>
	
	
	<!-- Smartsupp Live Chat script -->
<script type="text/javascript">
var _smartsupp = _smartsupp || {};
_smartsupp.key = '86fd42a62b29995c54a0ef0be51058d5fc6bc24f';
window.smartsupp||(function(d) {
  var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
  s=d.getElementsByTagName('script')[0];c=d.createElement('script');
  c.type='text/javascript';c.charset='utf-8';c.async=true;
  c.src='https://www.smartsuppchat.com/loader.js?';s.parentNode.insertBefore(c,s);
})(document);
</script>


    <script>
		$(document).ready(function() {
            $('#notification-1').Notification({
                // Notification varibles
                Varible1: ["Dirk", "Johnny", "Watkin ", "Alejandro",  "Vina",  "Tony",   "Ahmed","Jackson",  "Noah", "Aiden",  "Darren", "Isabella", "Aria", "John", "Greyson", "Peter", "Mohammed", "William",
                "Lucas", "Amelia", "Mason", "Mathew", "Richard", "Chris", "Mia", "Oliver"],
                Varible2: ["USA","UAE","ITALY", "FLORIDA",  "MEXICO",  "INDIA",  "CHINA",  "CAMBODIA",  "UNITED KINGDOM",  "GERMANY", "AUSTRALIA",  "BANGLADESH", "SWEDEN", "PAKISTAN", "MALDIVES", "SEYCHELLES",
                "BOLIVIA",
                 "SOUTH AFRICA", "ZAMBIA", "ZIMBABWE", "LEBANESE", "SAUDI ARABIA", "CHILE", "PEUTO RICO"],

                Amount: [100,2500,555,666,444,333,333],
                Content: '[Varible1] from [Varible2] has just Earned <b>$[Amount]</b>.',
                // Timer
                Show: ['stable', 5, 10],
                Close: 5,
                Time: [0, 23],
                // Notification style
                LocationTop: [true, '30%'],
                LocationBottom:[false, '10%'],
                LocationRight: [false, '10%'],
                LocationLeft:[true, '10px'],
                Background: '#000000',
                BorderRadius: 5,
                BorderWidth: 1,
                BorderColor: '#ffc552',
                TextColor: 'white',
                IconColor: '#ffffff',
                // Notification Animated
                AnimationEffectOpen: 'slideInUp',
                AnimationEffectClose: 'slideOutDown',
                // Number of notifications
                Number: 40,
                // Notification link
                Link: [false, 'index-2.html', '_blank']

            });
        });
	</script>

</html>
