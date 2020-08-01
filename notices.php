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

    <title>Notifications || <?php echo $title ?></title>


    

    <!-- Custom Fonts -->


    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css">
  
<link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap.min.css">
<script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/js/dataTables.bootstrap.min.js"></script>
<
</head>

<body id="page-top" class="index" data-speed="4"">
<?php include ("includes/header.php") ?>
<section id="partners" class="first">
  <div class="container rrow">
        <div class="col-md-12 yellow">
       <div class="col-md-12">
            <div class="text-box wow slideInLeft" style="margin-top:1%;visibility: visible; animation-name: slideInLeft;">
              <table class="table table-bordered" style="color:#000;background-color: #fff;">
    <thead>
      <tr>
        <th style="width:10%;">Sno</th>
        <th style="width:70%;">Title</th>
        <th style="width:15%;">Posted</th>
        <th style="width:5%;">Visits</th>
      </tr>
    </thead>
    <tbody>
    <?php
    $qu=mysql_query("SELECT * FROM notifications WHERE visibility='1' ORDER BY nid DESC");
    while ($quf=mysql_fetch_array($qu)) {
    $today=date('m-d-Y');
      ?>
      <tr>
        <td><?php echo $quf['nid'];?></td>
        <td><div class="panel-group">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#collapse<?php echo $quf['nid'];?>" onclick=updatecount("<?php echo $quf['nid'];?>")><?php echo $quf['title'];?><?php if($today==$quf['added_date']){echo "<img src='img/2.gif'>";}?></a>
      </h4>
    </div>
    <div id="collapse<?php echo $quf['nid'];?>" class="panel-collapse collapse">
      <div class="panel-body"><?php echo $quf['description'];?></div>
      <div class="panel-body"><?php echo $quf['attachments'];?></div>
      <div class="panel-footer">sd/-<br><?php echo $quf['sd'];?></div>
    </div>
  </div>
</div></td>
        <td><?php echo $quf['time'];?></td>
        <td><?php echo $quf['views'];?></td>
      </tr>
    <?php } ?>
    </tbody>
  </table>
          </div>

        </div>
 </div>   
</div>
</section>

<?php include ("includes/footer.php") ?>


<!--JavaScript -->
<script src="js/jquery.min.js" defer=""></script>
<script src="script.js"></script>
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
