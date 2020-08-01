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

    <title>Login / Register || <?php echo $title ?></title>


    

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
           		  
                <div class="col-lg-12"><center><h3><a href="dashboard" target="_blank">Click here for Registration Dashboard<img src="img/3.gif"></a></h3> <h3><a href="forget" target="_blank">Click here to Reset Password<img src="img/3.gif"></a></h3></center></div>

           		  <div class="col-lg-12"><div class="alert alert-success">For any technical assistance(like forgot password), write to us at <strong>admin@teckzite.in</strong> or ping us at <b>9010932254 or 9052021756</b></div></div>


                <div class="col-lg-12"><div class="alert alert-danger">Complete your registration process by paying <strong>100/-</strong> at your respective hostel blocks from 05:00 PM to 07:00PM and 08:00 PM to 10:00PM every day.</b></div></div>

                <div class="col-lg-12"><div class="alert alert-success">Those who completed Registration process can download ID Card by clicking <b><a href="completed" target="_blank">10.11.3.55/tz/completed</a></b> or <b><a href="id" target="_blank">10.11.3.55/tz/id</a></b></b> <img src="img/2.gif"><div><span transparent;\"=""><b><u>Registration Process</u></b>:&nbsp;</span></div><div><span transparent;\"=""></span></div><div><span transparent;\"="">1. Online registration in website (Link:&nbsp;<b><a href="http://10.11.3.55/tz/login" target="_blank">10.11.3.55/tz/login</a></b>&nbsp; )&nbsp;</span></div><div><span transparent;\"="">2. Payment of Registration fee of Rs.100/- (For students of Nuzvid &amp; SKLM Campuses)&nbsp;</span></div><div><span transparent;\"="">3. Event Registration ( With University Id in website )</span></div></div></div>
         
                  <div class="col-lg-6">
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
              <td><a href="forget">Forget Password?</a></td>
              <td><button onclick="dolog()" type="submit" class="btn btn-success" id="btn-login" name="login" style="width:25%">Login</button></td>
            </tr>
       </table>  
       </form>                                            
         </div> 
             
              <div class="col-lg-6">
                <h3 style="color:#000">Register Here</h3><br>

                 <?php
 $isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Site Registrations'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{?>


                <form id="regform" class="form-horizontal" action="javascript:void(0)" method="POST">
          <table class="table table-stripped table-bordered">    
          <tr>
              <td><span class="fa fa-user"></span>University ID</td>
              <td><input type="text" name="reg_id" id="reg_id" class="form-control" placeholder="Enter University ID"></td>
            </tr>      
             <tr>
              <td><span class="fa fa-user"></span> Name</td>
              <td><input type="text" id="reg_name" name="reg_name" class="form-control" placeholder="Enter Name"></td>
            </tr> 
            <tr>
              <td><span class="fa fa-user"></span> Gender</td>
              <td>
                <select class="form-control" id="reg_gender" name="reg_gender">  
                <option value="Select">Select</option>              
                <option value="Male">Male</option>
                <option value="Female">Female</option>
              </select>
              </td>
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
              <td><input type="tel" name="reg_mob" id="reg_mob" class="form-control" placeholder="Enter MobileNumber"></td>
            </tr>
            
            <tr>
              <td><span class="fa fa-unlock"></span> Password</td>
              <td><input type="password" name="reg_upass" id="reg_upass" class="form-control" placeholder="Enter Password"></td>
            </tr>
             <tr>
              <td><span class="fa fa-unlock"></span> Confirm Password</td>
              <td><input type="password" name="reg_cupass" id="reg_cupass" class="form-control" placeholder=" Re-Enter Password"></td>              
            </tr>   
              
               
            <tr>
              <td></td>
              <td><input type="checkbox" name="terms" value="Yes">&nbsp; I agree to Teckzite terms & Conditions</td>
            </tr>
            <tr>
              <td></td>
              <td>
              	
              	<input type="checkbox" name="payment"  value="Yes">&nbsp;<span id="payment"> I agree to Pay Rs.100
                </span>
              </td>
            </tr>
            <tr>
              <td></td>
              <td><button  onclick="doreg()" class="btn btn-success" style="width:25%" name="register" id="btn-register" type="submit">Register</button></td>
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
