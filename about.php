<?php 
session_start();
include 'site-settings.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <meta property="og:site_name" content="<?php echo $title;?>">
  	 <meta property="og:image" content="">

     <title>About || <?php echo $title;?></title>

    

    <!-- Custom Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100i,300,300i,400,400i,700,700i,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet"> 

    <!-- Theme CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/css/set2.css" rel="stylesheet">
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
           		    <p class="white_txt_org" style="padding-top:50px;"> 
                    <!--
                    <strong>Idea Mixer - the networking game that will make meeting new people even more exciting! </strong><br>
           		      <br>
           		      What can I win? <br>
           		      - Free ticket for next year’s edition of MCE <br>
           		      - Free beers or soft drinks <br>
           		      - Inspiring books <br>
           		      - Sketch or IntelliJ licenses! <br>
           		      - Lots of fun :) <br>
  <br>
  <strong> How can I get my points?</strong><br>
           		      There will be challenges and tasks that involve… talking to others! This way you will meet new people but also get points. You may be asked to brew a super cool coffee, find a developer or a designer that can help you with a difficult question or take a photo with your new friends. It will be fun! <br>
  <br>
  <strong> How does it work?</strong><br>
           		      If you have already bought your ticket for MCE, you have probably received Idea Mixer invitation via e-mail - if not, it will probably happen in the next 3 days. Still nothing? Contact us <a href="mailto:idea.mixer@mceconf.com"><strong>here</strong></a>. After registering, you will be able to collect points during 2 days of the conference. But remember - each day of MCE you start all over again! Participants with the highest number of points will have a chance to get prizes and become networking gurus during After Party - this means you will have a lot (like A LOT) of free beers and drinks. <br>
  <br>
  <strong>When does it start?</strong><br>
           		      Actually, right now! You can look at the list of MCE attendees, who have already registered and make new friends even today. Follow us on <a href="https://www.facebook.com/MCEConf"><strong>Facebook</strong></a> and <a href="https://twitter.com/mceconf"><strong>Twitter</strong></a> to get all the updates. Networking is on! <br></p>
  <br>
           		        <div style="margin:auto;"> <a href="https://mixer.mceconf.com/" target="_blank" class="hvr-fade-ticket buy_button">CHECK WHO IS COMING</a></div>
  <br>
           		      <p class="white_txt_org"> If you have any questions, just let us know at <a href="mailto:idea.mixer@mceconf.com"><strong>idea.mixer@mceconf.com</strong></a>-->
                      <h2 class="section-heading" style="color:#363839; padding: 0 0 20px; width:100%; text-align:left;"><strong style="color:#e61763">About Teckzite</strong></h2>
                      <p style="font-size:19px;font-family:arial;text-align: justify;word-spacing:4px;line-height:30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <font style="color:#0080C0;font-family:Adobe Gothic Std;font-weight:bold;font-size:20px;text-align:left;">TeckZite18</font>
                     is an authentic annual technical fest organised by RGUKT, which whets the student's appetite with the taste of innovation. Our students are quite enthusiastic and fascinated in organizing technical fests and national events. Our university  organized a technical fest at campus level (Intra-university) by the name Teckzite 2k14 in 2014 and Teckzite 2k15 in 2015,  which had a participation of 2000+ students and ROBOZEST-2K14(a 2 day Robotics inter-college workshop which was attended by 450 students) which was quite successful in bringing out the talents and merits of the students.  So we are looking forward to aggrandize it to national level, fortunately we have gained the consent and blessings from our beloved Vice-Chancellor  Prof. V Ramachandra Raju garu and our Director Prof. V Venkata Dasu garu to organize a national level technical fest on 23th and 24th of March by the label Techzite 2k18 with a schematic sketch. This fest is going to be an amalgamation of technical and non-technical events. The main objective of this TECKZITE-2K18 is to expose the students to a broader understanding of the science and technology and to stimulate a spark of innovation in their dream fields. TECKZITE-2K18 is an incredible platform to showcase all the hidden talents of the students.Learning should be both funny and beneficial, thus we assure that the students will have a joyous cum informative ride in this innovative journey. This entire fest is organized by   <font style="color:#0080C0;font-family:algerian;font-weight:bold;font-size:20px;text-align:left;">STUDENT DEVELOPMENT && CAMPUS ACTIVITIES CELL (SDCAC) </font>.
                     </p>
                    </p>
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
