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

    <title>Contact || <?php echo $title ?></title>


    

    <!-- Custom Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato:100i,300,300i,400,400i,700,700i,900" rel="stylesheet"> 
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet"> 

    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css">
<style type="text/css">
  #contact{
    background-color:#f1f1f1;
    font-family: 'Roboto', sans-serif;
}

#contact .well{
    margin-top:30px;
    border-radius:0;
}

#contact .form-control{
    border-radius: 0;
    border:2px solid #1e1e1e;
}

#contact button{
    border-radius:0;
    border:2px solid #1e1e1e;
}

#contact .row{
    margin-bottom:30px;
}

@media (max-width: 768px) { 
    #contact iframe {
        margin-bottom: 15px;
    }
    
}
</style>
</head>

<body id="page-top" class="index" data-speed="4"">
<?php include ("includes/header.php") ?>
<section id="partners" class="first">
  <div class="container rrow">
    <div class="row text-center">
        <div class="col-md-12 yellow">
            <div class="row">
                <div class="col-lg-12 text-center">

<?php 
if(isset($_POST['submit'])){
   $stuid = $_SESSION['stuid'];
	$msg=mysql_real_escape_string($_POST['message']);
  $email=mysql_real_escape_string($_POST['email']);
	$ip=$_SERVER['REMOTE_ADDR'];
	$m=mysql_query("INSERT INTO contact_messages (stuid,msg,email,ip) values ('$stuid','$msg','$email','$ip')");
	if($m==true){
		$success='Successfully Sent';
	}else{
		$error='Some fields are missing';
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
      <strong>Sorry !</strong><?php echo $error ?>
    </div>
  </center>
    <?php
  }
  ?>
	<div class="row">
	  <div class="col-md-7">
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d7639.256697083003!2d80.8236087!3d16.7951561!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1519500856282" width="600" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

      <div class="col-md-5">
       <?php
if(isset($_SESSION['stuid'])){
    $stuid = $_SESSION['stuid'];
?>
        <form action="contact" class="form-horizontal" method="POST" role="form">
          <div class="form-group">
            <?php 
              echo '<input type="text" class="form-control" name="stuid" value="'.$stuid.'" placeholder="UserName"  disabled="">';            
            ?>                 
          </div>
          <div class="form-group">
            <input type="email" class="form-control" name="email"  placeholder="E-mail" required="">
          </div>
          <div class="form-group">
            <textarea class="form-control" name="message" rows="3" placeholder="Message" required=""></textarea>
          </div>
          <button class="btn btn-info" type="submit" name="submit" style="width:15%;">
              <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Submit
          </button>
        </form>
          <?php } else { ?>  

     <center>
              
                            <table class="table table-bordered table-responsive">
                                <tr>
                                    <th> E-mail </th>
                                    <th> Category</th>
                                    <th> Purpose</th>
                                </tr>
                                <tr>
                                <td>info@teckzite.in</td>
                                 <td>General Info</td>
                                  <td>General info of Technical events</td>
                            </tr>
                                <tr>
                                <td>support@teckzite.in</td>
                                 <td>General Assistance</td>
                                  <td>General assistance for Technical events</td>
                            </tr>
                                <tr>
                                <td>admin@teckzite.in or <i style="color: green;">9010932254</i></td>
                                 <td>Technical Assistance</td>
                                  <td>Technical Assistance for Technical events</td>
                            </tr>
                                <td>chem@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>Chemical branch related Queries</td>
                            </tr>
                                <tr>
                                <td>civil@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>Civil branch related Queries</td>
                            </tr>
                                <tr>
                                <td>cse@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>CSE branch related Queries</td>
                            </tr>
                                <tr>
                                <td>ece@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>ECE branch related Queries</td>
                            </tr>
                                <tr>
                                <td>mech@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>Mechanical branch related Queries</td>
                            </tr>
                                <tr>
                                <td>mme@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>MME branch related Queries</td>
                            </tr>
                                <tr>
                                <td>open2all@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>Open2all branch related Queries</td>
                            </tr>
                                <tr>
                                <td>puc@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>PUC related Queries</td>
                            </tr>
                                <tr>
                                <td>robotics@teckzite.in</td>
                                 <td>Queries</td>
                                  <td>Robotics related Queries</td>
                            </tr>
                               
                               
                                </tr>
                            </table>
                    
     </center>
      <?php } ?>      
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
