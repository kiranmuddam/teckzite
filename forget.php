<?php 
session_start();
include 'site-settings.php' ;
if(isset($_SESSION['stuid'])==true){
  echo '<script>window.location="index"</script>' ;
}
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

    <title>Forget || <?php echo $title ?></title>


    

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
<?php
if(isset($_POST['reset'])==true){
  $ip=$_SERVER['REMOTE_ADDR'];
  $id=stripslashes(mysql_real_escape_string($_POST['reg_id']));
  $branch=stripslashes(mysql_real_escape_string($_POST['reg_branch']));
  $year=stripslashes(mysql_real_escape_string($_POST['reg_year']));
  $mob=stripslashes(mysql_real_escape_string($_POST['reg_mob']));
  $exam=stripslashes(mysql_real_escape_string($_POST['reg_epass']));
  $npass=stripslashes(mysql_real_escape_string($_POST['reg_npass']));
  $ncpass=stripslashes(mysql_real_escape_string($_POST['reg_ncpass']));
  $ss=mysql_fetch_array(mysql_query("SELECT * FROM users where stuid='$id'"));
  $mobile=$ss['phone'];
  $sss=mysql_fetch_array(mysql_query("SELECT * FROM data where stuid='$id'"));
  $mobiles=$sss['phone'];
  $s=mysql_query("SELECT * FROM data where stuid='$id'  and passwd='$exam' and year='$year' and branch='$branch' and ($mob='$mobile' || $mob='$mobiles') ");
  $c=mysql_num_rows($s);
  if($c==1){
    if($npass==$ncpass){
      $epass=md5($npass);
    $k=mysql_query("UPDATE users set passwd='$epass' where stuid='$id'");
      if($k==true){
        echo'<script>alert("Password Reset Successful");</script>';
        mysql_query("INSERT INTO forget_data (stu_id,stu_ip,result) values ('$id','$ip','Success')");
      }else{
        echo'<script>alert("Some fields are missing");</script>';
         mysql_query("INSERT INTO forget_data (stu_id,stu_ip,result) values ('$id','$ip','Fields Missing')");
      }
  }else{
    echo'<script>alert("Passwords are does not match");</script>';
     mysql_query("INSERT INTO forget_data (stu_id,stu_ip,result) values ('$id','$ip','Pwds not matched')");
  }
}else{
echo'<script>alert("Invalid details Check it once");</script>';
 mysql_query("INSERT INTO forget_data (stu_id,stu_ip,result) values ('$id','$ip','Invalid details')");
}
}
?>
<section id="partners" class="first">
	<div class="container rrow">
		<div class="row text-center">
    		<div class="col-md-12 yellow">
         	  <div class="row"><br>
           		  <div class="col-lg-12">
           		  
                

           		  <div class="col-lg-12"><div class="alert alert-success">For any technical assistance(like forgot password), write to us at <strong>admin@teckzite.in</strong> or ping us at <b>9010932254 or 9052021756</b></div></div>


              
                  <!--div class="col-lg-6">
                    <h3 style="color:#000">Login Here</h3><br>
                     <form id="loginform" class="form-horizontal" action="javascript:void(0)" method="POST" onsubmit="dolog()">
          <table class="table table-stripped table-bordered">
            
            <tr>
              <td colspan="2"><center><a href="tzids.php" target="_blank">Click here if you forgot your Teckzite ID</a> <img src="img/1.gif"></center></td>
            </tr>
            <tr>
              <td><span class="fa fa-user"></span> University ID/Teckzite ID</td>
              <td><input id="stuid" type="text" name="stuid" class="form-control" placeholder="University ID / Teckzite ID"></td>
            </tr>
              <tr>
              <td><span class="fa fa-lock"></span> Password</td>
              <td><input id="passwd" type="password" name="password" class="form-control" placeholder="Password"></td>
            </tr>
            <tr>
              <td></td>
              <td><button onclick="dolog()" type="submit" class="btn btn-success" id="btn-login" name="login" style="width:15%">Login</button></td>
            </tr>
       </table>  
       </form>                                            
         </div--> 
             
              <div class="col-lg-6">
                <h3 style="color:#000">Reset Here</h3><br>

                 <?php
 $isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Site Registrations'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{?>


                <form id="regform" class="form-horizontal" action="forget.php" method="POST">
          <table class="table table-stripped table-bordered">    
          <tr>
              <td><span class="fa fa-user"></span>University ID</td>
              <td><input type="text" name="reg_id" id="reg_id" class="form-control" placeholder="Enter University ID"></td>
            </tr>                          
             <tr>
              <td><span class="fa fa-graduation-cap"></span> Year</td>
              <td>
                <select class="form-control" id="reg_year" name="reg_year">
                  <option value="Select">Select</option><?php $year=mysql_query("SELECT * FROM year_categories");while($year_fet=mysql_fetch_array($year)){echo "<option value='".$year_fet['year']."'>".$year_fet['year']."</option>";}?>
              </select>
              </td>
            </tr>
            <tr>
              <td><span class="fa fa-user"></span> Branch</td>
              <td>
                <select class="form-control" id="reg_branch" name="reg_branch">
                 <option value="Select">Select</option>
                 <option value="CSE">CSE</option>
                 <option value="ECE">ECE</option>
                 <option value="MECH">MECH</option>
                 <option value="CIVIL">CIVIL</option>
                 <option value="CHEM">CHEM</option>
                 <option value="MME">MME</option>
                 <option value="IT">PUC</option>
              </select>
              </td>
            </tr>
            
           <tr>
              <td><span class="fa fa-phone"></span> Mobile Number</td>
              <td><input type="tel" name="reg_mob" class="form-control" placeholder="Enter Mobile Number"></td>
            </tr>
      
            <tr>
              <td><span class="fa fa-unlock"></span>Exam Password</td>
              <td><input type="password" name="reg_epass"  class="form-control" placeholder="Enter Exam Password"></td>
            </tr>
            <tr>
              <td><span class="fa fa-unlock"></span> New Password</td>
              <td><input type="password" name="reg_npass"  class="form-control" placeholder="Enter New Password"></td>
            </tr>
             <tr>
              <td><span class="fa fa-unlock"></span> Confirm New Password</td>
              <td><input type="password" name="reg_ncpass"  class="form-control" placeholder=" Re-Enter Password"></td>              
            </tr>   
              
               
          
            <tr>
              <td></td>
              <td><button  class="btn btn-success" style="width:auto" name="reset" id="btn-register" type="submit">Reset Password</button></td>
            </tr>                    
       </table>  
       </form>
       



       <?php } else { ?>
  <tr><td><div class="alert alert-danger"><strong>Sorry!</strong> Registrations are closed</div></td></tr>
<?php }?>                                            
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
