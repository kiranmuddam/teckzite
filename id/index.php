<?php
 	error_reporting(0);
    session_start();
    @mysql_connect("localhost","root",'') or die(mysql_error());
    @mysql_select_db("teckzite18") or die(mysql_error());
 
  if(isset($_GET['id']) && !empty($_GET['id'])){
    $stuid=trim(strip_tags(stripcslashes(htmlentities($_GET['id']))));
  }

    if(isset($_SESSION['stuid']) && !empty($_SESSION['stuid']) && isset($_SESSION['web']) && !empty($_SESSION['web']) && empty($_GET['id']))
{
    $stuid=$_SESSION['stuid'];
}
    $q=mysql_query("SELECT * FROM users WHERE stuid='".$stuid."' AND paid='yes'");
    $co=mysql_num_rows($q);

    if($co>0){
    $qu=mysql_fetch_array($q);
    header("Content-type: image/jpeg");
    $imgPath = 'id.jpg';
    $image = imagecreatefromjpeg($imgPath);
    $color = imagecolorallocate($image, 0,0,0);
    $tzid = $qu['tzid'];
    $idnum=$qu['stuid'];
    $name=$qu['stuname'];
    $year=$qu['year']." / ".$qu['branch'];
    imagettftext($image, 44, 0, 685, 440, $color, "../assets/fonts/NotoSansJP-Black.otf", $tzid);
    imagettftext($image, 44, 0, 685, 590, $color, "../assets/fonts/NotoSansJP-Black.otf", $idnum);
    imagettftext($image, 44, 0, 685, 740, $color, "../assets/fonts/NotoSansJP-Black.otf", $name);
    imagettftext($image, 44, 0, 685, 900, $color, "../assets/fonts/NotoSansJP-Black.otf", $year);
    imagejpeg($image);
}
else{
    echo "Please complete payment process.";
}

?>