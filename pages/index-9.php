<?php include "header.php" ?>
 <header class="header-image ken-burn-center light" data-parallax="true" data-natural-height="500" data-natural-width="1920" data-bleed="0" data-image-src="media/hd-wide-5.jpg" data-offset="0">
        <div class="container">
            <h1>Contact us</h1>
            <h2>Complete the form below and one of our team members will reach out shortly.</h2>
        </div>
    </header>
 <main>
  
        <section class="section-base">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="title">
                            <h2>Want to get in touch?</h2>
                            <p>CONTACT US</p>
                        </div>
                        


<script language="javascript">

function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}

</script>

<form method="post" name="mainform" class="form-box form-ajax" onsubmit="return checkform()"><input type="hidden" name="form_id" value="16946998467517"><input type="hidden" name="form_token" value="69b6bd000b89c190d7971faa0026b156">
<input type="hidden" name="a" value="support">
<input type="hidden" name="action" value="send">

 <div class="row">
<div class="col-lg-6"> <p>Name</p>
<input type="text" name="name" value="" class="input-text"></div>

 <div class="col-lg-6">
<p>Email</p>
<input type="text" name="email" value="" class="input-text"></div>
</div>
<p>Messagge</p>
<textarea name="messagge" class="input-textarea"></textarea>


 <button class="btn btn-xs" type="submit">Send messagge</button>
</form>


                                            </div>
                    <div class="col-lg-6">
                        <div class="container">
                <div class="title">
                    <h2>Our contacts</h2>
                    <p>Information</p>
                </div>
                <ul class="text-list text-list-line">
                    <li><b>Address</b><hr><p><?php echo $addr; ?></p></li>
          <br>
                    <li><b>Support Email</b><hr><p><?php echo $email; ?></p></li>
           
                </ul>
                <hr class="space-sm">
                
            </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

 <?php include "footer.php" ?>