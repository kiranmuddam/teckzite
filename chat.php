<?php
session_start();
require_once("site-settings.php");


//reading blocked ips
$isblocked=mysql_num_rows(mysql_query("SELECT * FROM `blockedips` WHERE ip='$ip'"));
if($isblocked>0){echo "Your Ip has been blocked";}

//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isset($_SESSION['stuid']) && !empty($_SESSION['stuid']) && isset($_SESSION['web']) && !empty($_SESSION['web']))
{
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;
if(isset($_GET['eid']))
{
$eid=strip_tags(trim(mysql_real_escape_string($_GET['eid'])));
$isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Participant - Organizer Chating'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{
$que=mysql_query("SELECT * FROM partoorgmsg WHERE eid='$eid' AND sender='".$_SESSION['stuid']."' ORDER BY sno DESC");
while($q=mysql_fetch_array($que))
{
$sender=$stuid;
if($q['reply']!=""){echo "<p style='color:green;font-weight:bold;'> Organizer : <span style='color:black;font-weight:normal;'>".$q['subject']."</span></p>";}
echo "<p style='color:blue;font-weight:bold;'>".$sender." : <span style='color:black;font-weight:normal;'>".$q['subject']."</span></p>";
}
}
else
{
echo "<br><br><center><p style='color:red'>Chating Option has been disabled</p></center>";	
}
}
}
else
{
echo "<br><br><center><p style='color:red;'>Please Login</p></center>";	
}

?>

