<i class="scroll-top-btn scroll-top show"></i>
       <footer class="light">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <h4><?php echo $name; ?> </h4>
                    <p>We strive to create value for our clients and employees while adhering to principles of excellence and trust</p>
                  
                </div>
                <div class="col-lg-3">
                    <h4>Who We Are</h4>
                    <ul class="icon-list icon-line">
                            
                                    <li><a href="index-3.php?a=about">ABOUT US</a></li>
                                <li><a href="index-4.php?a=values">PURPOSE AND VALUES</a></li>
                                <li><a href="index-5.php?a=license">REGULATORY INFORMATION</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <h4>Useful Links</h4>
                    <ul class="icon-list icon-line">
                        <li><a href="index-1.php?a=home">HOME</a></li>
                            
                                    <li><a href="index-8.php?a=faq">FAQ</a></li>
                                    <li><a href="index-9.php?a=support">CONTACT US</a></li>
                                                                        <li><a href="../login">LOGIN</a></li>
                                    <li><a href="../register">REGISTER</a></li>
                                                                
                    </ul>
                </div>
                <div class="col-lg-4">
                    <ul class="text-list text-list-line">
                        <li><b>Address:</b><hr><p><?php echo $addr; ?></p></li><br>
                        <li><b> Email</b><hr><p><?php echo $email; ?></p></li>
                   
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bar">
            <div class="container">
                <span>Copyright © <?php echo $name; ?></span><br>
                <span><a href="index-9.php?a=support">Support</a> | <a href="index-14.php?a=rules">Privacy policy</a></span>
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
	
 
<?php echo $chat; ?>
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
                Link: [false, 'index-2.php', '_blank']

            });
        });
	</script>

</html>