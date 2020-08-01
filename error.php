<?php 
session_start();
include 'site-settings.php' ;

?>
<!DOCTYPE html>
<html lang="en">
<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="It is Using for Technical Fest">
    <meta name="author" content="Smartquint">
     <meta property="og:site_name" content="Teckzite">
     <meta property="og:image" content="">

    <title>Error || <?php echo $title ?></title>


    

    <!-- Custom Fonts -->


    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="assets/css/font-awesome/css/font-awesome.min.css">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css">
     <link rel="stylesheet" type="text/css" href="assets/css/ulak.css" />

</head>
<body id="page-top" class="index" data-speed="4"">
<?php include ("includes/header.php") ?>
<section id="partners" class="first">
    <div class="container rrow">
        <div class="row text-center">
            <div class="col-md-12 yellow">
              <div class="row"><br>
                  <div class="col-lg-12">
                  <div class="col-lg-12"><div class="alert alert-danger"><strong>Sorry Your Session is not good.It Seems to be hackable.</strong>Please write it  to us at <strong>admin@teckzite.in</strong> or ping us at <b>9010932254 or 9052021756</b></div></div>
                  <div class="col-lg-12"><div class="alert alert-success">For any technical assistance(like forgot password), write to us at <strong>admin@teckzite.in</strong> or ping us at <b>9010932254 or 9052021756</b></div></div>                                                                                          
         </div> 
 

    </div>
  </div>    
</div>
      </div>
    </div>
  </div>
</div>
</div>
</section>

<?php include ("includes/footer.php") ?>


<!--JavaScript -->
   <script src="js/jquery.min.js"></script>    
   <script src="assets/js/mce.min.js"></script>    
    <script src="assets/js/bootstrap.min.js"></script>
     <script src="js/script.js"></script>
            <script src="assets/js/ulak.js"></script>
    <script>
    $(function(){ 
     var navMain = $("#bs-example-navbar-collapse-1");
     navMain.on("click", "a", null, function () {
         navMain.collapse('hide');
     });
 });
 </script>
    
    
</body>

</html>
