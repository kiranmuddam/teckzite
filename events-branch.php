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

    <title>Branch Events || <?php echo $title ?></title>


    

    <!-- Custom Fonts -->
    

    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="js/animate.css" rel="stylesheet">    
    <link href="assets/css/set2.css" rel="stylesheet">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css"> 
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/events_style.css">
    <script type="text/javascript" src="js/wow.min.js"></script>

</head>

<body id="page-top" class="index" data-speed="4" >

 <?php include("includes/header.php"); ?>
<h1 style="text-align:center;" class="threed"><?php echo $brn_f['displayname'];?> EVENTS</h1>
   <section id="partners" class="first">
    <div class="container rrow">
        <div class="row text-center">
            <div class="col-md-12">
              <div class="row">
                  <div class="col-lg-12 text-center wow fadeIn animated">
                     <div class="row active-with-click">  
<?php
    $branchid= htmlentities(mysql_real_escape_string(trim($_SERVER['QUERY_STRING'])));
      $brn=mysql_query("SELECT * FROM branch_categories WHERE branch='$branchid'");
      $brn_f=mysql_fetch_array($brn);
     if(mysql_num_rows($brn)<1)  {echo "<script>alert('Invalid Branch');window.location='events';</script>";exit;}
     ?>
                             
        
       <?php
       $x=0;
      $a=array("Red","Pink","Purple","Deep-Purple","Indigo","Blue","Light-Blue","Cyan","Teal","Green","Light-Green","Lime","Yellow","Amber","Orange","Deep-Orange","Brown","Grey","Blue-Grey") ;
      shuffle(shuffle(shuffle($a)));
       $sql = mysql_query("select * from events where branch='$branchid' AND visibility=1");
      while($row = mysql_fetch_array($sql)){
        $x++;      
        //$abcno = mt_rand(0,18); 
        $class = $a[$x%count($a)];
        ?>  
              
              
 <a href="eventview?eid=<?php echo $row['eid'];?>" target="_blank">
        <div class="col-lg-3">
            <article class="material-card <?php echo $class ?>" style="background-color:#fff;border:2px solid #000 !important;">
                <h2>
                    <span><?php echo $row['eventname'];?></span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        <?php echo $row['branch'];?>
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container"  style="margin:0px !important;margin-top:0px !important;">
                    
                       <img class="imgclass" src="<?php echo "event_images/".$row['branch']."/".$row['imagename'];?>" >
                    </div>
                    <div class="mc-description" style="font-weight:bolder;">
                       Registrations: <?php echo $row['areregistrationson'];?>.
                    </div>
                </div>
                <!--<a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>-->
                <div class="mc-footer">
                    
                    <button onclick="javascript:window.location=eventview?eid=<?php echo $row['eid'];?>" class="btn btn-info" style="width:60%;background-color: #4A148C">
                    View Event                       
                    </button>
                   
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
<footer id="kontakt">
        <div class="container">
               <div class="row kont">
        
            <div class="col-md-3 col-xs-12 col-sm-4 follow">
                <ul class="list-unstyled">
                    <li class="footer_header">Follow us
                  </li>
                                   
                  <a href="https://www.facebook.com/teckzite" class="hvr-fade-facebook"><img src="img\fb_icon.png" width="50" height="50"></a>
                  <a href="https://twitter.com/teckzite" class="hvr-fade-twitter"><img src="img\twitter_icon.png" width="50" height="50"></a>
                  <a href="https://www.youtube.com/teckzite" class="hvr-fade-youtube"><img src="img\youtube_icon.png" width="50" height="50"></a>
       
              </ul>
            </div>
          <!-- <div class="col-md-3 col-xs-12 col-sm-4 foot_news" >
                <ul class="list-unstyled" >
                  <li class="name"><strong>NEWSLETTER:</strong></li>
                    <iframe id="salesmanagoIframe" style="margin: 0; padding: 0; width:370px; height:315px; overflow-y:hidden; overflow-x:hidden; border:none; background:#ffffff;" src="https://www.salesmanago.pl/cf/rvtrjfnxrvz1uhyt/test_mce.htm"></iframe>
                    
              </ul>
            </div> -->
            <div class="col-md-3 col-xs-12 col-sm-3 foot_org">
                <ul class="list-unstyled">
                    <li class="footer_header">Contact</li>
                    <li>For any Technical issues Please Mail to Us</li>
                   <li><a class="mail" href="mailto:admin@teckzite.in">admin@teckzite.in</a></li>
                   
              </ul>
            </div>

          <div class="col-md-3 col-xs-12 col-sm-3 foot_org">
                <ul class="list-unstyled">
                    <li class="footer_header">Support</li>
                   
                    <li><a class="mail" href="mailto:support@teckzite.in">support@teckzite.in</a></li>
                   
              </ul>
            </div>
            <div class="col-md-3 col-xs-12 col-sm-3 foot_org">
                <ul class="list-unstyled">
                    <li class="footer_header">Web Partner</li>
                   
                    <li><a href="https://www.smartquint.com"><img src="assets/img/webpartner.png" alt="SmartQuint"></a></li>
                   
              </ul>
            </div>
            
    </div>
 
</div> 
    </footer>
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
