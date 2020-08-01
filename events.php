<?php
session_start();
require_once("site-settings.php");
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

    <title>Events || <?php echo $title ?></title>


    

    
    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/set2.css" rel="stylesheet">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css"> 
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/events_style.css">

</head>

<body id="page-top" class="index" data-speed="4" style="background-image:url('Black-Patterns.jpg') !important">

    <!-- Navigation -->
    
<?php include("includes/header.php"); ?>

   <section id="partners" class="first">
    <div class="container rrow">
        <div class="row text-center">
            <div class="col-md-12">
              <div class="row"  style="background-image:url('Black-Patterns.jpg') !important;">
                  <div class="col-lg-12">
                     <div class="row active-with-click">  
    <?php                      
      $x=0;
      $a=array("Red","Pink","Purple","Deep-Purple","Indigo","Blue","Light-Blue","Cyan","Teal","Green","Light-Green","Lime","Yellow","Amber","Orange","Deep-Orange","Brown","Grey","Blue-Grey");

        $brn=mysql_query("SELECT * FROM branch_categories");
        $eveco=0;
        while($branchf=mysql_fetch_array($brn)){
        $eveco++;
        $x++;      
       // $abcno = mt_rand(1,18); 
        $class = $a[$x%count($a)];
        ?>       
        <a href="events-branch?<?php echo $branchf['branch'];?>">
        <div class="col-md-3">
          
            <article class="material-card <?php echo $class ?>" style="background-color:#fff;border:2px solid #000 !important;">

                <h2>
                    <span><?php echo $branchf['displayname'];?></span>
                    <strong> <p style="text-transform:lowercase !important; font-size:17px;"> <?php echo $branchf['branch']?>@teckzite.in </p>
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container" style="margin-top:0px !important;">
                        <img class="imgclass" src="assets/img/<?php echo strtolower($branchf['branch']);?>.png">
                    </div>
                    <div class="mc-description">
                       <?php echo $branchf['description'];?>.
                    </div>
                </div>
                <!--<a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>-->
                <div class="mc-footer">  
                    <p style="text-transform:lowercase !important;font-weight:bolder !important; font-size:20px;"> <?php echo $branchf['branch']?>@teckzite.in </p>
                </div>
            </article>
        </div>
   </a>
      <?php } ?>

    </div>
  </div>
        
 </div>
     
</div>
</section>
<?php include 'includes/footer.php' ?>
<script>
    $(function(){ 
     var navMain = $("#bs-example-navbar-collapse-1");
     navMain.on("click", "a", null, function () {
         navMain.collapse('hide');
     });
 });
 </script> 
  <script src='js/jquery.min.js'></script>
  <script src="assets/js/bootstrap.min.js"></script> 
    <script  src="assets/js/events.js"></script>
</body>

</html>