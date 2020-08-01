<?php
include("site-settings.php");
//reading blocked ips
$isblocked=mysql_num_rows(mysql_query("SELECT * FROM `blockedips` WHERE ip='$ip'"));
if($isblocked>0){header("location:error.php");}

//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isloggedin())
{
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;
}
if(!isset($_SESSION['visited'])){mysql_query("UPDATE visits SET visits950=visits950+1");$_SESSION['visited']="yes";}
$vis=mysql_fetch_array(mysql_query("SELECT * FROM visits"));

?>
<!DOCTYPE html>
<html prefix="og:" class="is_basic loading">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=yes,initial-scale=1, maximum-scale=1, minimum-scale=1">
<meta name="format-detection" content="telephone=no,address=no,email=no">
<meta name="application-name" content="<?php echo $title;?>"/>
<meta name="theme-color" content="#0000fa">

<script src="js/jquery.min.js"></script>
<script src="assets/js/lib.js"></script>
<script src="webgl/js/lib/lib-head.pack.min8a8b.js?0218181232"></script>

<script>
    
    if (Useragnt.mobile) {
        document.write('<meta name="viewport" content="width=device-width,user-scalable=yes,initial-scale=1, maximum-scale=1, minimum-scale=1">');
    } else if (Useragnt.tablet) {
        document.write('<meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=1280">');
    } else {
        document.write('<meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=1280">');
    }

</script>

<link rel="stylesheet" type="text/css" href="assets/css/style8a8b.css?0218181232">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/infinite-slider.css">
<title><?php echo $title;?></title>
<meta name="description" content="The official techfest of Rajiv Gandhi University of Knowledge Technologies, Nuzvid"/>
<meta name="robots" content="noodp"/>
<link rel="canonical" href="index.html" />
<link rel="next" href="page/2/index.html" />
<meta property="og:locale" content="In" />
<meta property="og:type" content="Event Website" />
<meta property="og:title" content="<?php echo $title;?> | RGUKTN" />
<meta property="og:description" content="The official techfest of Rajiv Gandhi University of Knowledge Technologies, Nuzvid" />
<meta property="og:url" content="https://www.teckzite.in/" />
<meta property="og:site_name" content="<?php echo $title;?>  | RGUKTN" />

		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/teckzite.in\/assets\/js\/wp-emoji-release.min.js"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}

 #navbar ul { 
	margin: 0; 
	padding: 5px; 
	list-style-type: none; 
	text-align: center; 
	
	} 
 
#navbar ul li {  
	display: inline; 
	} 
 

 
#navbar ul li a:hover { 
	color: #000; 
	background-color: #000; 
	} 
	#navbar {
   
    overflow: hidden;
    position: fixed;
    bottom: 5%;
    width: 100%;
}
.socialimg{
	width:3%;

}
ul#menu li {
    display:inline;
    font-size:21px;
    color:white;
    font-family: raleway;
    word-spacing:30px;
}
.webpartner{


}
</style>

</head>
<body id="top-page" data-page="top"  >

<div id="document">
	<div class="page-container" id="top" data-namespace="top" data-pagetype="top">
	<header id="header">
		<div id="header-inner" class="clearfix">
			<!--<h1  style="color:white;font-size:27px;margin-top:10px; ">
				<?php echo $title;?>
			</h1>-->

						<p id="header-text" style="color:white;">Rajiv Gandhi University Of Knowledge Technologies , Nuzvid</p>
			<div id="lang-navi" class="white pc">
		
			</div>
			<div id="gnavi-trigger">
				
					<div class="line" style="color: #fff !important;"><img src="assets/img/toggle.png" style="width:200%;"><b> Menu</b></div>
				
			</div>
					</div>
	</header>

		<nav id="gnavi" class="js__full-screen">
		<div id="gnavi-inner">

			<div id="gnavi-main">
				<div id="gnavi-main-child" class="clearfix">
				<?php include("navigation.php"); ?>
						<div class="banner-container js__flashing pc">
												
					</div>
					

					<div id="sp-lang-navi" class="sp js__flashing">
						<div id="sp-lang-navi-inner">
							<p class="en active"><a href="#">EN</a></p>
						</div>
					</div>


				</div>
			</div><!-- /#gnavi-main -->

			<div id="gnavi-close" class="close-icon">
				<svg version="1.1" id="svg-close" class="js__svg-draw" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
					 y="0px" width="17px" height="17px" viewBox="0 0 17 17" enable-background="new 0 0 17 17" xml:space="preserve">
					<line fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" x1="1" y1="1" x2="16" y2="16"/>
					<line fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" x1="1" y1="16" x2="16" y2="1"/>
				</svg>
			</div>


			<div class="bg-container">
				<div class="line">
					<div class="line-child color1"></div>
					<div class="line-child color2"></div>
					<div class="line-child color3"></div>
				</div>
				<div class="line">
					<div class="line-child color1"></div>
					<div class="line-child color2"></div>
					<div class="line-child color3"></div>
				</div>
				<div class="line">
					<div class="line-child color1"></div>
					<div class="line-child color2"></div>
					<div class="line-child color3"></div>
				</div>
				<div class="line">
					<div class="line-child color1"></div>
					<div class="line-child color2"></div>
					<div class="line-child color3"></div>
				</div>
				<div class="line">
					<div class="line-child color1"></div>
					<div class="line-child color2"></div>
					<div class="line-child color3"></div>
				</div>
				<div class="logo">
					<div class="logo-inner">

						<h2><a href="http://teckzite.in" style="color:white;text-decoration:none;font-family: 'Rajdhani',sans-serif;"><?php echo $title;?></a></h2>


					</div>
				</div>
			</div><!-- /.bg-container -->

		</div>
	</nav>

	
		<main id="body">

 	<div class="js__mv" data-ratio="1.6">
		<div id="kv-container" class="js__full-screen">


		
	

				<div id="loader">
<h1 id="counter" style="color:white;text-align:center;margin-top:20%;"></h1>
					<div id="loader-inner">
						<div id="kv-hold-area">
                     

							<div id="kv-hold-area-inner" style="margin-top:-70%;">

								<p class="text left"><span class="js__shuffle"><a href="about.php" target="_new">About Teckzite'18</a></span></p>
								<p class="text right"><span class="js__shuffle">Browse All Events</span></p>

								<div class="object-container">

									<div class="drone">
										<img src="assets/img/common/drone_icon.svg" alt="">
									</div>

									<div class="border-lighr">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
											 y="0px" width="218px" height="112px" viewBox="0 0 218 112" enable-background="new 0 0 218 112" xml:space="preserve">
											<path fill="none" stroke="#FFFFFF" stroke-miterlimit="10" d="M172.507,56.24l-31.442,53.264l-64.01,0.506L45.489,56.253
												L78.932,0.996h38.26"/>
											<path fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" d="M0.489,55.5h45v1h-45V55.5z"/>
											<path fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" d="M172.069,55.972h45v1h-45V55.972z"/>
										</svg>
									</div>
									<div class="border-bold">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
												 y="0px" width="136px" height="126px" viewBox="0 0 136 126" enable-background="new 0 0 136 126" xml:space="preserve">
											<polygon fill="none" stroke="#FFFFFF" stroke-width="6" stroke-miterlimit="10" points="4.969,63.775 37.58,9 101.284,9
												132.969,63.223 100.591,118 34.806,118 "/>
										</svg>
									</div>
									<div class="gage">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
											 y="0px" width="116px" height="100px" viewBox="0 0 116 100" enable-background="new 0 0 116 100" xml:space="preserve">
										<polygon fill="none" stroke="#00D2FF" stroke-width="4" stroke-miterlimit="10" points="1.969,50.741 30.421,3 86,3 113.643,50.259
											85.395,98 28,98 "/>
										</svg>
									</div>

									<div class="gage-light no1">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
											 y="0px" width="116px" height="100px" viewBox="0 0 116 100" enable-background="new 0 0 116 100" xml:space="preserve">
										<polygon fill="none" stroke="#00D2FF" stroke-width="3" stroke-miterlimit="10" points="1.969,50.741 30.421,3 86,3 113.643,50.259
											85.395,98 28,98 "/>
										</svg>
									</div>


									<div class="gage-light no2">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
											 y="0px" width="116px" height="100px" viewBox="0 0 116 100" enable-background="new 0 0 116 100" xml:space="preserve">
										<polygon fill="none" stroke="#00D2FF" stroke-width="0.5" stroke-miterlimit="10" points="1.969,50.741 30.421,3 86,3 113.643,50.259
											85.395,98 28,98 "/>
										</svg>
									</div>

								</div>
								</div>

						</div><br><br>
						<div style="width:13%;margin-left:5%;margin-top:6%;" class="webpartner">
							
								<h5 style="text-align:center;color: white;">Web Partner</h5><a href="https://www.smartquint.com" target="_new"><img src="assets/img/partners/smartquint.png" style="width:80%;"></a>
						</div>
<div class="row" style="width:100%;margin-top:5%;margin-left:15%;">
						<ul id="menu">
							<li ><a href="https://facebook.com/teckzite" target="_new"><img src="assets/img/social/facebook.png" class="socialimg"></a>/teckzite</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li><a href="https://youtube.com/teckzite18" target="_new"><img src="assets/img/social/youtube.png" class="socialimg"></a>/teckzite</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li><a href="https://twitter.com/teckzite18" target="_new"><img src="assets/img/social/twitter.png" class="socialimg"></a>/teckzite</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li><img src="assets/img/social/gmail.png" class="socialimg">/support@teckzite.in</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li><a href="https://facebook.com/teckzite" target="_new"><img src="assets/img/social/phone.png" class="socialimg"></a>/9090909090</li>
						</ul>
					</div>
							<!-- /#kv-hold-area -->
</div>
					
					<div class="bg-container">
						<div class="line"></div>
						<div class="line"></div>
						<div class="line"></div>
						<div class="line"></div>
						<div class="line"></div>
					</div>
				</div><!-- /#loader -->


				<div id="kv-contents">

					<div id="kv-main-contents" class="js__posi-v-center">
						<div class="js__base-h">
							<h2 id="kv-copy" style="margin-top:4%;"><div class="js__shuffle"><?php echo $title;?></div></h2><p style="margin-top:-3%;font-size:20px;font-family:raleway;">--break the bleak</p>
						</div>


						<div class="btn-center sp">
							<div class="js__flashing btn_flash">
								<div class="btn">
									<div class="btn-inner">
										<a href="events">Browse Events</a>
										<svg version="1.1" class="btn-svg pc" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
	 y="0px" width="399.381px" height="54.834px" viewBox="0 0 399.381 54.834" enable-background="new 0 0 399.381 54.834"
	 xml:space="preserve">
	<polygon fill="#0000FA" points="379.586,0 19.795,0 0,27.418 19.795,54.834 379.586,54.834 399.381,27.418 "/>
	<path fill="#0000FA" d="M379.074,1l19.073,26.418l-19.073,26.416H20.307L1.233,27.418L20.307,1H379.074 M379.586,0H19.795L0,27.418
		l19.795,27.416h359.791l19.795-27.416L379.586,0L379.586,0z"/>
</svg>
<svg version="1.1" class="btn-svg sp" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
	 y="0px" width="191.927px" height="39.917px" viewBox="0 0 191.927 39.917" enable-background="new 0 0 191.927 39.917"
	 xml:space="preserve">
	<polygon fill="#0000FA" points="177.13,0 14.797,0 0,19.958 14.797,39.917 177.13,39.917 191.927,19.958 "/>
	<path fill="#0000FA" d="M176.626,1l14.056,18.958l-14.056,18.958H15.301L1.245,19.958L15.301,1H176.626 M177.13,0H14.797L0,19.958
		l14.797,19.958H177.13l14.797-19.958L177.13,0L177.13,0z"/>
</svg>									</div>
								</div>
							</div>
						</div>

					</div><!-- /#kv-main-contents -->

					<!--<p id="kv-bottom-text"><span class="js__flashing"><span id="kv-bottom-text-inner">
						THIS WEBGL EXPERIENCE IS USING HIGH-DEFINITION GRAPHICS. IF YOU EXPERIENCE ISSUES, USE
							GOOGLE CHROME OR FIREFOX, OR <a href="technology/index.html">BASIC TECHNOLOGY page-container</a>.
					</span></span></p>-->
				<!--	<div class="container" style="">
  <section class="customer-logos slider">
    <div class="slide"><img src="assets/img/partners/smartquint.png"></div>
<div class="slide"><img src="assets/img/partners/smartquint.png"></div>    
<div class="slide"><img src="assets/img/partners/smartquint.png"></div>
<div class="slide"><img src="assets/img/partners/smartquint.png"></div>
<div class="slide"><img src="assets/img/partners/smartquint.png"></div>    
<div class="slide"><img src="assets/img/partners/smartquint.png"></div>
  </section>
</div>-->

						</div>

					<div class="bottom-contents">
						<div class="bottom-contents-inner clearfix">

							<!--dl class="sound clearfix pc">
								<dt>SOUND</dt>
								<dd>
									<div class="volum on">
										<div class="volum-inner">
											<div class="line"></div>
											<div class="line"></div>
											<div class="line"></div>
											<div class="line"></div>
											<div class="line"></div>
											<div class="line"></div>
										</div>
									</div>
								</dd>
							</dl-->

					</div>



				</div><!-- /#kv-contents -->



				<div id="kv-bg-container">
					<video id="kv-bg-video" class="ua-pc" width="1920" height="1080" muted="muted" loop="loop"><source src="teckzite-background.mp4" type="video/mp4" /></video>
					<!--audio id="kv-bg-audio" class="ua-pc" loop="loop"><source src="assets/soud/top.mp3" type="audio/mp3"></audio-->





				</div>



			</div><!-- /#kv-container -->
		</div>

		


</main><!-- /#body -->
    
        

    </div><!-- #page-container -->


</div><!-- /#document -->
<script type="text/javascript">
	$(document).ready(function(){
  $('.customer-logos').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 1000,
    arrows: false,
    dots: false,
    pauseOnHover: false,
    responsive: [{
      breakpoint: 768,
      settings: {
        slidesToShow: 4
      }
    }, {
      breakpoint: 520,
      settings: {
        slidesToShow: 3
      }
    }]
  });
});
</script>
<!-- Display the countdown timer in an element -->


<script>
// Set the date we're counting down to
var countDownDate = new Date("Mar 22, 2018 17:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now an the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("counter").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("counter").innerHTML = "EXPIRED";
  }
}, 1000);
</script>


<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/slick.js"></script>
<script src="webgl/js/lib/lib-body.pack.min.js"></script>
<script src="assets/js/video8a8b.js?0218181232"></script>
<script src="assets/_js/scroll8a8b.js?0218181232"></script>
<script src="assets/js/fullscreen8a8b.js?0218181232"></script>
<script src="assets/js/contact8a8b.js?0218181232"></script>
<script src="assets/_js/body8a8b.js?0218181232"></script>
<script type='text/javascript' src='admin/wp-includes/js/wp-embed.mineff2.js?ver=4.7.9'></script>
</body>
</html>