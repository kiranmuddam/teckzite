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

    <title>Team || <?php echo $title ?></title>


    

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
        <div class="col-md-12 pink">
            <div class="row">
                <div class="col-lg-12 text-center">
                         <h2 class="section-heading" style="color:#363839; padding: 0 0 20px; padding-top:40px; width:100%; text-align:left;"><strong style="color:#e61763">Updated Soon...</strong></h2-->
                          <div id="container"></div>
        
                         <!--p class="white_txt_org white_txt_org_spk" style="padding-top:50px;">Meet this year’s team of Teckzite<br></p>
                </div>
            <!--h4 class="title">Webteam</h4>
              <div id="team">
<div class="col-md-1" ></div>
       <div class="col-md-15 col-sm-4 col-xs-6 speakers_pcx  "> 
       <a href="#" data-toggle="modal" data-target="#cyril">
         <img src="img\prathap.jpg" class="img-responsive img-rounded blue_circle"> </a>
             
       <div class="speakers_name">Prathap Puppala</div>
             <div class="speakers_firm">CEO-SmartQuint</div>
             <div class="speakers_firm">prathap@smartquint.com</div>
       </div>
      
             <div class="col-md-15 col-sm-4 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#clement">
        <img src="img\kiran.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Kiranbabu Muddam</div>
             <div class="speakers_firm">CTO-SmartQuint</div>
             <div class="speakers_firm">kiran@smartquint.com</div>
       </div>
       
      <div class="col-md-15 col-sm-4 col-xs-6 speakers_pcx "> <a href="#" data-toggle="modal" data-target="#fernando">
           <img src="img\siva.jpg" class="img-responsive img-rounded blue_circle" > </a>
             <div class="speakers_name">Siva Nagaraju Gamidi</div>
             <div class="speakers_firm">Design Lead-SmartQuint</div>
             <div class="speakers_firm">sivanagaraju@smartquint.com</div>
      </div>
      
             <div class="col-md-15 col-sm-4 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#whitney">
        <img src="img\maneesh.jpg" class="img-responsive img-rounded yellow_circle"> </a>
       <div class="speakers_name">Maneeswar Mutyala</div>
             <div class="speakers_firm">Design Lead-SmartQuint</div>
             <div class="speakers_firm">maneeswar@smartquint.com</div>
       </div>
       </div>
      
       <!--div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#conte">
        <img src="img\speakers\del_conte.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Flaminia Del Conte</div>
             <div class="speakers_firm">Livework</div>
       </div>
       
      <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx ">
          <a href="#" data-toggle="modal" data-target="#michael">
           <img src="img\speakers\michael.jpg" class="img-responsive img-rounded blue_circle" alt="Cinque Terre"> </a>
             <div class="speakers_name">Michael May</div>
             <div class="speakers_firm"> Wrisk</div>
      </div>
      
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#schillio">
        <img src="img\speakers\schillio.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Joël Schillio</div>
             <div class="speakers_firm">UX/UI Designer, Founder, Designers Team</div>
       </div>
       
      <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx">
      <a href="#" data-toggle="modal" data-target="#matthias">
           <img src="img\speakers\matthias.jpg" class="img-responsive img-rounded blue_circle" alt="Cinque Terre"></a> 
             <div class="speakers_name">Matthias Tretter</div>
             <div class="speakers_firm"> Mindnode</div>
      </div>
      
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#voychehovski">
        <img src="img\speakers\Voychehovski.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Sophia Voychehovski</div>
             <div class="speakers_firm">Founder and Lead UX Designer, Rewired</div>
       </div>
       
      <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#romain">
         <img src="img\speakers\romain.jpg" class="img-responsive img-rounded blue_circle"> </a>
       <div class="speakers_name">Romain Piel</div>
             <div class="speakers_firm">Deliveroo</div>
       </div>
       
         
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#szonstegard">
        <img src="img\speakers\sonstegard.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Siri Betts-Sonstegard</div>
             <div class="speakers_firm">Design Researcher & Service Designer, IBM Watson Health</div>
       </div>
       
       <!--<div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#ty">
         <img src="img/speakers/ty.jpg" class="img-responsive img-rounded blue_circle"> </a>
       <div class="speakers_name">Ty Smith</div>
             <div class="speakers_firm">Uber</div>
       </div>>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#jeannel">
        <img src="img\speakers\jeannel.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Olivier Jeannel</div>
             <div class="speakers_firm">CEO, RogerVoice<br>
               <br>
               <br>
             </div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#inami">
         <img src="img\speakers\inami.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Yasuhiro Inami</div>
             <div class="speakers_firm">CyberAgent</div>
       </div>
       
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#pohlmeyer">
        <img src="img\speakers\pohlmeyer.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">
Anna Pohlmeyer</div>
             <div class="speakers_firm">Assistant Professor, Dept. of Industrial Design, TU Delft</div>
       </div>
       
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#birch">
         <img src="img\speakers\birch.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Joe Birch</div>
             <div class="speakers_firm"> Buffer</div>
       </div>
       
              <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#lipkin">
        <img src="img\speakers\lipkin.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">David Lipkin</div>
             <div class="speakers_firm">Founder/Principal Method</div>
       </div>
       
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#ench">
         <img src="img\speakers\encz.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Benjamin Encz</div>
             <div class="speakers_firm">PlanGrid<br><br>

             </div>
       </div>
       
                     <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#egede">
        <img src="img\speakers\egede.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Lena Egede</div>
             <div class="speakers_firm">UX Expert & Advisor, Owner of UX Factor</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#watkins">
         <img src="img\speakers\watkins.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Jeff Watkins</div>
             <div class="speakers_firm">Metrocat</div>
       </div>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#paluch">
        <img src="img\speakers\paluch.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Magdalena Paluch</div>
             <div class="speakers_firm">Strategic Design Director BCG Digital Ventures</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#kosmaczewski">
         <img src="img\speakers\kosmaczewski.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Adrian Kosmaczewski</div>
             <div class="speakers_firm"> AKOSMA Training</div>
       </div>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#maurer">
        <img src="img\speakers\maurer.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Bill Maurer</div>
             <div class="speakers_firm">Director, Online Programs, Best Buddies International</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#knauss">
         <img src="img\speakers\knauss.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Dale Knauss</div>
             <div class="speakers_firm">VR/AR Lead, Presence</div>
       </div>
       
      <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#abbing">
        <img src="img\speakers\abbing.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Erik Roscam Abbing</div>
             <div class="speakers_firm">Livework</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#cochran">
         <img src="img\speakers\cochran.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Eric Cochran</div>
             <div class="speakers_firm">IFTTT</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#benigno">
        <img src="img\speakers\benigno.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Ashley Benigno</div>
             <div class="speakers_firm">Group Director, Fjord</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#caron">
         <img src="img\speakers\caron.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Etienne Caron</div>
             <div class="speakers_firm">Shopify</div>
       </div>
     
     <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#zadrozny">
        <img src="img\speakers\zadrozny.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Jacek Zadrożny</div>
             <div class="speakers_firm">Independent Digital Accessibility Expert, informaton.pl</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
        <a href="#" data-toggle="modal" data-target="#thomson">
         <img src="img\speakers\thomson.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">James Thomson</div>
             <div class="speakers_firm">Founder of TLA Systems Ltd</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#riordan">
        <img src="img\speakers\riordan.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Edward O'Riordan</div>
             <div class="speakers_firm">Intercom</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#sally">
        <img src="img\speakers\sally.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Sally Shepard</div>
             <div class="speakers_firm">iOS Developer & Accessibility Consultant at mostgood</div>
       </div>
       
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#kenna">
        <img src="img\speakers\kenna.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Hilary Kenna</div>
             <div class="speakers_firm">Head of Department of Technology & Psychology IADT</div>
       </div>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#zelazny">
        <img src="img\speakers\zelazny.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Stefan Zelazny</div>
             <div class="speakers_firm">Mobisol</div>
       </div>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#gregory">
        <img src="img\speakers\gregory.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Billy Gregory</div>
             <div class="speakers_firm">Senior Accessibility Engineer and Training Lead, The Paciello Group </div>
       </div>
       
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#svetlana">
        <img src="img\speakers\Svetlana.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Svetlana Isakova</div>
             <div class="speakers_firm">Developer Advocate at JetBrains</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#steinhard">
        <img src="img\speakers\steinhard.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Alexander Steinhart</div>
             <div class="speakers_firm">Psychologist, Facilitator, Design Thinker; Co-Founder ( OFFTIME )</div>
       </div>
       
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#sundell">
        <img src="img\speakers\sundell.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">John Sundell</div>
             <div class="speakers_firm">Hyper Oslo</div>
       </div>
       
       <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#long">
        <img src="img\speakers\long.jpg" class="img-responsive img-rounded yellow_circle"> </a>
      <div class="speakers_name">Frank Long</div>
             <div class="speakers_firm">Director of Frontend.com</div>
       </div>
        
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#karaskiewicz">
        <img src="img\speakers\karaskiewicz.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Jacek Karaśkiewicz</div>
             <div class="speakers_firm">Android dev, Braintri</div>
       </div>
        
        <div class="col-md-15 col-sm-3 col-xs-6 speakers_pcx  "> 
          <a href="#" data-toggle="modal" data-target="#grzechocinski">
        <img src="img\speakers\grzechocinski.jpg" class="img-responsive img-rounded blue_circle"> </a>
      <div class="speakers_name">Mateusz Grzechociński</div>
             <div class="speakers_firm">Freelance</div-->
       </div>
         
    </div>
  </div>
        
 </div>
     
</div></section>

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
