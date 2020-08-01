<?php
require_once("site-settings.php");
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

?>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#" class="is_basic loading">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=yes,initial-scale=1, maximum-scale=1, minimum-scale=1">
<meta name="format-detection" content="telephone=no,address=no,email=no">
<meta name="application-name" content="<?php echo $title;?>"/>
<meta name="theme-color" content="#0000fa">



<script src="jquery.min.js"></script>
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
<link rel="canonical" href="" />
<link rel="next" href="" />
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
<body id="lowlayer" data-page="about"  >

<div id="document">
	<div class="page-container" id="about" data-namespace="about" data-pagetype="about">
	<header id="header">
		<div id="header-inner" class="clearfix">
			<h1  style="color:blue;font-size:27px;margin-top:10px; ">
				Teckzite'18
			</h1>


						<p id="header-text"></p>
			<div id="lang-navi" class="pc">
				
			</div>
			<div id="gnavi-trigger">
				
					<div class="line" style="color:#fff;"><img src="assets/img/toggle.png" style="width:150%;margin-top:-600%">Menu</div>
				
			</div>
					</div>
	</header>

		<nav id="gnavi" class="js__full-screen">
		<div id="gnavi-inner">

			<div id="gnavi-main">
				<div id="gnavi-main-child" class="clearfix">
					<?php include_once('navigation.php');?>
					<div class="banner-container js__flashing pc">
												<!--<p class="banner"><a href="">
													<span class="copy">INDUSTRIAL REVOLUTIONS OF THE SKY</span>
							<span class="more">EXPERRIENCE</span>
						</a></p>
						<p class="notice">THIS WEBGL EXPERIENCE IS USING HIGH-DEFINITION GRAPHICS. IF YOU EXPERIENCE ISSUES, USEGOOGLE CHROME OR FIREFOX, OR <a href="technology/index.html">BASIC TECHNOLOGY page-container</a>.</p>-->
					</div>
					

					<div id="sp-lang-navi" class="sp js__flashing">
						<div id="sp-lang-navi-inner">
							<p class="en active"><a href="">EN</a></p>
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

						<h2><?php echo $title;?></h2>


					</div>
				</div>
			</div><!-- /.bg-container -->

		</div>
	</nav>