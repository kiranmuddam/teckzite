<?php 
session_start();
include 'site-settings.php' ?>
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

    <title>Schedule || <?php echo $title ?></title>


    

    <!-- Custom Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100i,300,300i,400,400i,700,700i,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet"> 

    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css">

</head>

<body id="page-top" class="index" data-speed="4"">
<?php include ("includes/header.php") ?>
<section id="partners" class="first">
	<div class="container rrow">
		<div class="row text-center">
    		<div class="col-md-12 yellow">
         	  <div class="row">
           		  <div class="col-lg-12 text-center">
           		  <h2 class="section-heading" style="color:#363839; padding: 0 0 20px; padding-top:40px; width:100%; text-align:left;"><strong style="color:#e61763">Updated Soon...</strong></h2>
      
    </div>
  </div>
        
 </div>
     
</div>
</section>

<?php include ("includes/footer.php") ?>


<!--JavaScript -->
   <script src="js/jquery.min.js"></script>
   <script src="assets/js/mce.min.js"></script>    
    <script src="assets/js/bootstrap.min.js" defer=""></script>
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
