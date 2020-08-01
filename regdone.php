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
    <meta name="description" content="">
    <meta name="author" content="">
     <meta property="og:site_name" content="MCE 2017">
  	 <meta property="og:image" content="">

    <title>Teckzite</title>

    



    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="assets/css/font-awesome/css/font-awesome.min.css">
    <link href="assets/css/mce.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-submenu.css">
     <link rel="stylesheet" type="text/css" href="assets/css/ulak.css" />
<script type="text/javascript">
	function no(){
  document.getElementById('payment').innerHTML = 'I agreed to Pay Rs.300 for registration';
}
function yes(){
  document.getElementById('payment').innerHTML = 'I agreed to Pay Rs.500 for registration';
} 
</script>
</head>

<body id="page-top" class="index" data-speed="4"">
<?php include ("includes/header.php") ?>
<section id="partners" class="first">
	<div class="container rrow">
		<div class="row text-center">
    		<div class="col-md-12 yellow"><br>
          <?php                    
                    $get_value=mysql_real_escape_string(stripslashes($_GET['reg_id']));
                    $e=mysql_query("SELECT * FROM users where stuid='$get_value'");
                    if(mysql_num_rows($e)>=1){
                    while($r=mysql_fetch_array($e)){
                    ?>                  
  <table class="table table-bordered table-stripped">   
<div class="alert alert-success">
  <strong>Registered !</strong> Succesfully registered. Following Details are Used for Login
</div>
                    <tbody>                      
                    <tr>
                      <td><b>Teckzite Id</b></td>
                      <td><?php echo $r['tzid'] ?></td>
                    </tr>
                    <tr> 
                    <td><b>Name</b></td>                     
                      <td><?php echo $r['stuname'] ?></td>
                    </tr>   
                                  <tr>
                      <td><b>Referal Id</b></td>
                      <td><?php echo $r['tzid'] ?></td>
                    </tr>                                                                           
                    <?php } ?>
                  </tbody>
                  </table> 
                  <?php } else{ ?>
                  <div class="alert alert-danger">
  <strong>Sorry !</strong> Don't act Smart
</div>
                  <?php } ?>
                  <br>                                         
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
