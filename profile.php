<?php
session_start();
error_reporting(0);
if((!isset($_SESSION['stuid'])))
{
	header("location:login");
}?>
<?php 
session_start();
include_once 'site-settings.php' ?>
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

    <title>Profile ||<?php echo $title ?></title>


    

    <!-- Custom Fonts -->

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
           		  <div class="col-lg-12 text-center"><br>
                  <?php
                  $session_id=$_SESSION['stuid'];                  
                  if(isset($_POST['chpass'])){                    
                    $npass=mysql_real_escape_string($_POST['upass']);
                    $cnpass=mysql_real_escape_string($_POST['cupass']);
                    $nepass=md5($npass);
                    if($npass==$cnpass){
                      $w=mysql_query("UPDATE users SET passwd='$nepass' where stuid='$session_id' || tzid='$session_id'");
                      if($w==true){
                      $success='Successfully Changed';
                       }else{
                        $error='Some Fields are Missing';
                       }
                    }else{
                      $mismatch='Both Passwords are does not matched';
                    }
                  }

                  if(isset($_POST['edit'])){
                    $phone=mysql_real_escape_string($_POST['phone']);
                    $t=mysql_query("UPDATE users SET phone='$phone' where stuid='$session_id' || tzid='$session_id'");
                    if($t==true){
                     $success='Successfully Changed';
                    }else{
                      $error='Some Fields are Missing';
                    }
                  }
                  ?>
                  <?php
                  if(isset($success)){
                  ?>
                  <center>
                    <div class="alert alert-success">
                      <strong>Success !</strong><?php echo $success ?>
                    </div>
                  </center>
                  <?php
                }
                ?>
                <?php
                  if(isset($error)){
                  ?>
                  <center>
                    <div class="alert alert-danger">
                      <strong>Error!</strong><?php echo $error ?>
                    </div>
                  </center>
                  <?php
                }
                ?>
                <?php
                  if(isset($mismatch)){
                  ?>
                  <center>
                    <div class="alert alert-warning">
                      <strong>Warning !</strong><?php echo $mismatch ?>
                    </div>
                  </center>
                  <?php
                }
                ?>
                 <?php
                    $session_id=$_SESSION['stuid'];
                    $e=mysql_query("SELECT * FROM users where stuid='$session_id' || tzid='$session_id'");
                    while($r=mysql_fetch_array($e)){                      
                    ?> 
                  <h4 style="color:#000;">Your Details</h4>
                  <table style="width:100% !important;" >
                    <tr>
                      <td><a href="logout" class="btn btn-info" style="width:35%;float: left !important;">Logout Here</a></td>
                      <td><span class="badge badge-info" style="float:right !important;">Your Last Login: <?php echo $r['lasttime'];  ?></span></td>
                    </tr>
                  </table><br>
                  <?php if($r['paid']=="no"){?>
                <div class="col-lg-12"><div class="alert alert-danger">Complete your registration process by paying <strong>100/-</strong> at your respective hostel blocks from 05:00 PM to 07:00PM and 08:00 PM to 10:00PM every day.</b></div></div>
               <?php }  if($r['paid']=="yes"){?>

                <div class="col-lg-12"><div class="alert alert-success">Your registration process have been completed. Now you can register for events.</b> <a href="id" class="btn btn-info" style="width:35%;float: left !important;">Download ID Card</a></div></div>
               <?php }}?>
           		    <table class="table table-bordered table-stripped">
                    <thead>
                      <tr>
                        <th class="text-center">Teckzite ID</th>
                        <th class="text-center">Referal ID</th>
                        <th class="text-center">Name</th>
                        <th class="text-center">Your Details</th>
                        <th class="text-center">Year</th>
                        <th class="text-center">Branch</th>
                        <th class="text-center">University ID</th>                        
                      </tr>
                    </thead>
                    <tbody>  
                    <?php
                    $session_id=$_SESSION['stuid'];
                    $e=mysql_query("SELECT * FROM users where stuid='$session_id' || tzid='$session_id'");
                    while($r=mysql_fetch_array($e)){
                    ?>                  
                    <tr>
                      <td><?php echo $r['stuid'] ?></td>
                      <td><?php echo $r['tzid'] ?></td>
                      <td><?php echo $r['stuname'] ?></td>
                      <td><?php echo $r['email'] ?>&nbsp;,&nbsp;<?php echo $r['phone'] ?></td>
                      <td><?php echo $r['year'] ?></td>
                      <td><?php echo $r['branch'] ?></td>                      
                      <td><?php echo $r['stuid'] ?></td> 
                    </tr>
                    <?php } ?>
                  </tbody>
                  </table> <br>

             <h4 style="color:#000;">Event Registrations</h4>
                  <table class="table table-bordered table-stripped">
                    <thead>
                      <tr>
                        <th class="text-center">Sno</th>
                        <th class="text-center">Event Name</th>
                        <th class="text-center">Team ID</th>
                        <th class="text-center">Team</th>                     
                      </tr>
                    </thead>
                    <tbody>  
                    <?php
                    $session_id=$_SESSION['stuid'];
                    $e=mysql_query("SELECT * FROM event_registrations where regdone_by='$session_id' ");
                    while($r=mysql_fetch_array($e)){
                    ?>                  
                    <tr>
                      <td><?php echo $r['sno'] ?></td>
                      <td><?php echo $r['eventname'] ?></td>
                      <td><?php echo $r['teamid'] ?></td>
                      <td><?php echo $r['ids'] ?></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                  </table><br>


             <h4 style="color:#000;">Contact Messages</h4>
                  <table class="table table-bordered table-stripped">
                    <thead>
                      <tr>
                        <th class="text-center">Sno</th>
                        <th class="text-center">Message</th>
                        <th class="text-center">Reply</th>
                        <th class="text-center">Posted</th>                     
                      </tr>
                    </thead>
                    <tbody>  
                    <?php
                    $session_id=$_SESSION['stuid'];
                    $e=mysql_query("SELECT * FROM contact_messages where stuid='$session_id'");
                    while($r=mysql_fetch_array($e)){
                    ?>                  
                    <tr>
                      <td><?php echo $r['sno'] ?></td>
                      <td><?php echo $r['msg'] ?></td>
                      <td><?php echo $r['reply'] ?></td>
                      <td><?php echo $r['time'] ?></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                  </table><br>
                  <div class="col-md-14">
                    <div class="col-md-6">
                 <h4 style="color:#000;">Change Password</h4>
                 <form action="profile" method="POST">
                   <table class="table table-bordered table-stripped">
                    <tr>
                      <td>New Password</td>
                      <td><input type="password" name="upass" class="form-control" placeholder="New Password" required=""></td>
                    </tr>
                    <tr>
                      <td>Confirm Password</td>
                      <td><input type="password" name="cupass" class="form-control" placeholder="Confirm Password" required=""></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><button type="submit" name="chpass" class="btn btn-info" style="width:25%;">Change</button></td>
                    </tr>
                   </table>
                   </form> 
                   </div> 

                        <div class="col-md-6">
                 <h4 style="color:#000;">Edit Profile</h4>
                 <form action="profile" method="POST">
                   <table class="table table-bordered table-stripped">                  
                    <tr>
                      <td>Mobile Number</td>
                      <td><input type="phone" name="phone" class="form-control" placeholder="Mobile Number" required=""></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><button type="submit" name="edit" class="btn btn-info" style="width:15%;">Edit</button></td>
                    </tr>                    
                   </table> 
                 </form>
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
